if(DEFINED ENV{CMAKE_FORGE_DIR} AND IS_DIRECTORY $ENV{CMAKE_FORGE_DIR} AND NOT DEFINED FORGE_ENABLED)
	list(APPEND CMAKE_MODULE_PATH "$ENV{CMAKE_FORGE_DIR}")

	#Load the configuration and check that all values are defined
	include(ForgeConfig)
	include(ForgeConfigVariables)
	forge_config_check()
	forge_config_finalize()

	if(DEFINED TOOLCHAIN)
		set(CMAKE_TOOLCHAIN_FILE $ENV{CMAKE_FORGE_DIR}/toolchain/${TOOLCHAIN}.cmake)
	endif()
endif()

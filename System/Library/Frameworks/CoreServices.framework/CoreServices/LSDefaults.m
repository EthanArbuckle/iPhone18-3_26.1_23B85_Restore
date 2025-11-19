@interface LSDefaults
@end

@implementation LSDefaults

uint64_t __45___LSDefaults_proxyUIDForCurrentEffectiveUID__block_invoke(uint64_t a1)
{
  if (getuid() || (result = [*(a1 + 32) isInXCTestRigInsecure], result))
  {
    result = _CFGetEUID();
    proxyUIDForCurrentEffectiveUID_euid = result;
    proxyUIDForCurrentEffectiveUID_hasEUID = 1;
  }

  return result;
}

void __48___LSDefaults_markLocalizationsStoredInDatabase__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAppleInternal])
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    markLocalizationsStoredInDatabase_result = [v1 BOOLForKey:@"LSMarkLocalizationsStoredInDatabase"];
  }
}

void __37___LSDefaults_preferredLocalizations__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 objectForInfoDictionaryKey:@"CFBundleAllowMixedLocalizations"];

  v1 = v4;
  if (v4)
  {
    v2 = objc_opt_respondsToSelector();
    v1 = v4;
    if (v2)
    {
      v3 = [v4 BOOLValue];
      v1 = v4;
      preferredLocalizations_useUserLangList = v3;
    }
  }
}

void __35___LSDefaults_currentSchemaVersion__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  currentSchemaVersion_sResult = 1;
  v0 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 134349056;
    v3 = 18874393;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_INFO, "LaunchServices database schema version: %{public}ld", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __37___LSDefaults_preferredLocalizations__block_invoke_2()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 preferredLocalizations];
  v1 = preferredLocalizations_bundleLocalizations;
  preferredLocalizations_bundleLocalizations = v0;
}

id __33___LSDefaults_systemContainerURL__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 75))
  {
    v1 = _LSDefaultsBaseSystemContainerURL();
    v2 = [v1 URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];

    if (v2)
    {
      v3 = [MEMORY[0x1E696AC08] defaultManager];
      [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:0];
    }
  }

  else
  {
    emitSandboxExceptionAndMaybeAbortForSneakyURLUsage();
    v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];
  }

  return v2;
}

id __31___LSDefaults_userContainerURL__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 75) & 1) == 0)
  {
    emitSandboxExceptionAndMaybeAbortForSneakyURLUsage();
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];
    goto LABEL_24;
  }

  if (!container_query_create())
  {
    goto LABEL_33;
  }

  container_query_set_class();
  v1 = *MEMORY[0x1E69E9980];
  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v19 = container_error_copy_unlocalized_description();
    v20 = _LSDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __31___LSDefaults_userContainerURL__block_invoke_cold_7();
    }

    free(v19);
    goto LABEL_33;
  }

  path = container_get_path();
  v3 = _LSDefaultLog();
  v4 = v3;
  if (!path)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __31___LSDefaults_userContainerURL__block_invoke_cold_6();
    }

LABEL_33:
    container_query_free();
    goto LABEL_34;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __31___LSDefaults_userContainerURL__block_invoke_cold_1(path, v4);
  }

  v5 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
  v6 = [v5 URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];

  v7 = container_copy_sandbox_token();
  if (v7)
  {
    v8 = v7;
    v9 = sandbox_extension_consume();
    if (v9 < 0)
    {
      v13 = *__error();
      v11 = _LSDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __31___LSDefaults_userContainerURL__block_invoke_cold_2();
      }
    }

    else
    {
      v10 = v9;
      v11 = _LSDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __31___LSDefaults_userContainerURL__block_invoke_cold_3(v10, v11);
      }
    }

    free(v8);
  }

  else
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __31___LSDefaults_userContainerURL__block_invoke_cold_4();
    }
  }

  container_query_free();
  if (!v6)
  {
LABEL_34:
    v21 = _LSDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __31___LSDefaults_userContainerURL__block_invoke_cold_8();
    }

    abort();
  }

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0;
  v15 = [v14 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v22];
  v16 = v22;

  if ((v15 & 1) == 0)
  {
    v17 = _LSDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __31___LSDefaults_userContainerURL__block_invoke_cold_5();
    }
  }

LABEL_24:

  return v6;
}

id __38___LSDefaults_systemGroupContainerURL__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 75))
  {
    v7 = 1;
    v1 = container_system_group_path_for_identifier();
    if (v1)
    {
      v2 = v1;
      v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
      v4 = [v3 URLByAppendingPathComponent:@"Library/Caches" isDirectory:1];

      free(v2);
    }

    else
    {
      v5 = _LSDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __38___LSDefaults_systemGroupContainerURL__block_invoke_cold_1(&v7, v5);
      }

      v4 = 0;
    }
  }

  else
  {
    emitSandboxExceptionAndMaybeAbortForSneakyURLUsage();
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/"];
  }

  return v4;
}

void __31___LSDefaults_simulatorRootURL__block_invoke()
{
  v0 = getenv("SIMULATOR_ROOT");
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v2 = simulatorRootURL_result;
    simulatorRootURL_result = v1;
  }
}

void __38___LSDefaults_simulatorRuntimeVersion__block_invoke()
{
  v0 = getenv("SIMULATOR_RUNTIME_VERSION");
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    v2 = simulatorRuntimeVersion_result;
    simulatorRuntimeVersion_result = v1;
  }
}

void __43___LSDefaults_simulatorRuntimeBuildVersion__block_invoke()
{
  v0 = getenv("SIMULATOR_RUNTIME_BUILD_VERSION");
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    v2 = simulatorRuntimeBuildVersion_result;
    simulatorRuntimeBuildVersion_result = v1;
  }
}

void __51___LSDefaults_simulatorSharedResourcesDirectoryURL__block_invoke()
{
  v0 = getenv("SIMULATOR_SHARED_RESOURCES_DIRECTORY");
  if (v0)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    v2 = simulatorSharedResourcesDirectoryURL_result;
    simulatorSharedResourcesDirectoryURL_result = v1;
  }
}

const char *__41___LSDefaults_classesWithNameForXCTests___block_invoke(uint64_t a1, Class cls)
{
  result = class_getName(cls);
  if (result)
  {
    Name = class_getName(cls);
    result = strcmp(Name, *(a1 + 40));
    if (!result)
    {
      return [*(a1 + 32) setByAddingObject:cls];
    }
  }

  return result;
}

void __42___LSDefaults_alwaysUseDebugOpenWithMenus__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isAppleInternal])
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];
    alwaysUseDebugOpenWithMenus_result = [v1 BOOLForKey:@"LSAlwaysUseDebugOpenWithMenus"];
  }
}

void __28___LSDefaults_isRegionChina__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MGCopyAnswer();
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"CH"];
    isRegionChina_result = v3 == 0;
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (isRegionChina_result)
  {
    goto LABEL_9;
  }

  if (__LSDefaultsGetSharedInstance_onceToken != -1)
  {
    __LSDefaultsGetSharedInstance_cold_1();
  }

  if ([__LSDefaultsGetSharedInstance_sharedInstance isAppleInternal])
  {
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    isRegionChina_result = [v4 BOOLForKey:@"LSLocalizeLikeChina"];
  }

LABEL_9:

  objc_autoreleasePoolPop(v0);
}

id __25___LSDefaults_HMACSecret__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x20uLL, bytes);
  v0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:bytes length:32];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446467;
  v4 = "NSURL *_LSDefaultsUserContainerURL(void)";
  v5 = 2081;
  v6 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: got user container URL %{private}s from containermanagerd", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = "NSURL *_LSDefaultsUserContainerURL(void)";
  v5 = 2048;
  v6 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: consumed sandbox token for container, handle = %llu", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __31___LSDefaults_userContainerURL__block_invoke_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __38___LSDefaults_systemGroupContainerURL__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 136446722;
  v6 = "NSURL *_LSDefaultsSystemGroupContainerURL(void)";
  v7 = 2048;
  v8 = v3;
  v9 = 2082;
  error_description = container_get_error_description();
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "%{public}s: error %llu getting container path: %{public}s", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

@end
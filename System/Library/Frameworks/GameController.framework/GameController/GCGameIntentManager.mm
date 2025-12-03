@interface GCGameIntentManager
+ (void)initialize;
- (GCGameIntentManager)init;
- (void)_ui_launchApplicationWithBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)launchApplicationWithBundleIdentifier:(id)identifier;
- (void)toggleGamesFolder;
- (void)tryPresentAppLibraryPod;
- (void)ui_togglePlatformGamesLibrary;
@end

@implementation GCGameIntentManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    LoadGameControllerUIFramework(2);
  }
}

- (GCGameIntentManager)init
{
  v6.receiver = self;
  v6.super_class = GCGameIntentManager;
  v2 = [(GCGameIntentManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69D4238]);
    service = v2->_service;
    v2->_service = v3;
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GCGameIntentManager;
  [(GCGameIntentManager *)&v2 dealloc];
}

- (void)launchApplicationWithBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E6963608];
  identifierCopy = identifier;
  defaultWorkspace = [v3 defaultWorkspace];
  [defaultWorkspace openApplicationWithBundleID:identifierCopy];
}

- (void)_ui_launchApplicationWithBundleIdentifier:(id)identifier
{
  if (gc_isInternalBuild())
  {
    [GCGameIntentManager _ui_launchApplicationWithBundleIdentifier:];
  }
}

- (void)ui_togglePlatformGamesLibrary
{
  if (gc_isInternalBuild())
  {
    [GCGameIntentManager _ui_launchApplicationWithBundleIdentifier:];
  }
}

- (void)toggleGamesFolder
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 code] == 7)
  {
    if (gc_isInternalBuild())
    {
      __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_3();
    }

    [*(a1 + 32) tryPresentAppLibraryPod];
  }

  else
  {
    isInternalBuild = gc_isInternalBuild();
    if (v3)
    {
      if (isInternalBuild)
      {
        __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_1();
      }
    }

    else if (isInternalBuild)
    {
      __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_2();
    }
  }
}

- (void)tryPresentAppLibraryPod
{
  service = self->_service;
  6014 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 6014];
  [(SBSHomeScreenService *)service presentAppLibraryCategoryPodForCategoryIdentifier:6014 completion:&__block_literal_global_19];
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (gc_isInternalBuild())
    {
      __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_1();
    }

    if ([v2 code] == 2)
    {
      if (gc_isInternalBuild())
      {
        __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_4();
      }

      SBSSuspendFrontmostApplication();
    }

    else
    {
      v3 = [v2 code];
      isInternalBuild = gc_isInternalBuild();
      if (v3 == 9)
      {
        if (isInternalBuild)
        {
          __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_3();
        }
      }

      else if (isInternalBuild)
      {
        __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_2();
      }
    }
  }
}

- (void)_ui_launchApplicationWithBundleIdentifier:.cold.1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_2()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 2u);
  }
}

void __40__GCGameIntentManager_toggleGamesFolder__block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_3()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void __46__GCGameIntentManager_tryPresentAppLibraryPod__block_invoke_cold_4()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end
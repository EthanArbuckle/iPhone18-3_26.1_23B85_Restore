@interface AXInvertColorsController
+ (void)_updateStatus;
+ (void)initializeMonitoring;
+ (void)loadInvertColorsBundle;
@end

@implementation AXInvertColorsController

+ (void)loadInvertColorsBundle
{
  if (loadInvertColorsBundle_onceToken != -1)
  {
    +[AXInvertColorsController loadInvertColorsBundle];
  }
}

void __50__AXInvertColorsController_loadInvertColorsBundle__block_invoke()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = AXAccessibilityBundlesDirectory();
  v1 = MEMORY[0x29EDB9F48];
  v2 = [v0 stringByAppendingPathComponent:@"InvertColorsManager.bundle"];
  v3 = [v1 bundleWithPath:v2];

  v4 = AXLogInvertColorsLoadBundles();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = v3;
    _os_log_impl(&dword_29BADF000, v4, OS_LOG_TYPE_INFO, "Invert colors bundle %{public}@", buf, 0xCu);
  }

  if (([v3 isLoaded] & 1) == 0)
  {
    v11 = 0;
    v5 = [v3 loadAndReturnError:&v11];
    v6 = v11;
    v7 = v6;
    if (!v5 || v6)
    {
      v9 = AXLogInvertColorsLoadBundles();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __50__AXInvertColorsController_loadInvertColorsBundle__block_invoke_cold_1(v3, v7, v9);
      }
    }

    else
    {
      [objc_msgSend(v3 "principalClass")];
      v7 = AXLogInvertColorsLoadBundles();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = [v3 principalClass];
      *buf = 138543362;
      v13 = v8;
      v9 = v8;
      _os_log_impl(&dword_29BADF000, v7, OS_LOG_TYPE_INFO, "Loading: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:

  v10 = *MEMORY[0x29EDCA608];
}

+ (void)initializeMonitoring
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _handleInvertColorsPreload, *MEMORY[0x29EDC84C8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  [v4 addObserver:a1 selector:sel__updateStatus name:*MEMORY[0x29EDC7ED0] object:0];

  [a1 _updateStatus];
}

+ (void)_updateStatus
{
  if (UIAccessibilityIsInvertColorsEnabled() || _AXSShouldLoadInvertBundles())
  {

    [a1 loadInvertColorsBundle];
  }
}

void __50__AXInvertColorsController_loadInvertColorsBundle__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_29BADF000, log, OS_LOG_TYPE_ERROR, "Could not load: %{public}@ %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

@end
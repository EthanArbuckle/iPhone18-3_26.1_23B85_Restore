@interface AXBLookingGlassManager
+ (void)initializeMonitor;
- (AXBLookingGlassManager)init;
- (void)_showLookingGlassMenu;
- (void)_updateLookingGlassServicesIfNeeded;
@end

@implementation AXBLookingGlassManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_8 != -1)
  {
    +[AXBLookingGlassManager initializeMonitor];
  }
}

uint64_t __43__AXBLookingGlassManager_initializeMonitor__block_invoke()
{
  _SharedLookingGlassManager = objc_alloc_init(AXBLookingGlassManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBLookingGlassManager)init
{
  v6.receiver = self;
  v6.super_class = AXBLookingGlassManager;
  v2 = [(AXBLookingGlassManager *)&v6 init];
  if (v2)
  {
    v3 = AXLogLookingGlass();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(AXBLookingGlassManager *)v3 init];
    }

    v4 = _AXSTripleClickCopyOptions();
    if (_AXSTripleClickContainsOption())
    {
      [(AXBLookingGlassManager *)v2 _updateLookingGlassServicesIfNeeded];
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return v2;
}

- (void)_updateLookingGlassServicesIfNeeded
{
  if (LookingGlassServicesLibraryCore())
  {
    sharedInstance = [getLookingGlassServicesClass() sharedInstance];
    [sharedInstance updateLookingGlassServices];
  }
}

- (void)_showLookingGlassMenu
{
  if (LookingGlassServicesLibraryCore())
  {
    v2 = AXLogLookingGlassUI();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_29BBBD000, v2, OS_LOG_TYPE_DEFAULT, "About to show looking glass menu", v4, 2u);
    }

    sharedInstance = [getLookingGlassServicesClass() sharedInstance];
    [sharedInstance showLookingGlassMenu];
  }
}

@end
@interface AXBInternalBundleLoaderManager
+ (void)initializeMonitor;
- (AXBInternalBundleLoaderManager)init;
@end

@implementation AXBInternalBundleLoaderManager

+ (void)initializeMonitor
{
  if (initializeMonitor_onceToken_1 != -1)
  {
    +[AXBInternalBundleLoaderManager initializeMonitor];
  }
}

uint64_t __51__AXBInternalBundleLoaderManager_initializeMonitor__block_invoke()
{
  _SharedInternalBundleLoaderManager = objc_alloc_init(AXBInternalBundleLoaderManager);

  return MEMORY[0x2A1C71028]();
}

- (AXBInternalBundleLoaderManager)init
{
  if (AXIsInternalInstall())
  {
    v7.receiver = self;
    v7.super_class = AXBInternalBundleLoaderManager;
    v3 = [(AXBInternalBundleLoaderManager *)&v7 init];
    v4 = v3;
    if (v3)
    {
      [(AXBInternalBundleLoaderManager *)v3 _loadInternalBundle];
    }

    self = v4;
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __53__AXBInternalBundleLoaderManager__loadInternalBundle__block_invoke()
{
  v1 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/AppleInternal/Library/AccessibilityUIServices/AXBInternalBundleLoader.bundle"];
  v0 = [v1 principalClass];
  if (v0)
  {
  }
}

@end
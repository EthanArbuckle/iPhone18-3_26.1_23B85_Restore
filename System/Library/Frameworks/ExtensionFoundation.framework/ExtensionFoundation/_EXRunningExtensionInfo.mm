@interface _EXRunningExtensionInfo
+ (_EXRunningExtensionInfo)extensionInfoForCurrentProcess;
+ (void)notifyExtensionMainCalled;
- (id)initForCurrentProcess;
@end

@implementation _EXRunningExtensionInfo

+ (_EXRunningExtensionInfo)extensionInfoForCurrentProcess
{
  if (s_extensionMainCalled == 1)
  {
    if (extensionInfoForCurrentProcess_onceToken != -1)
    {
      +[_EXRunningExtensionInfo extensionInfoForCurrentProcess];
    }

    v3 = extensionInfoForCurrentProcess_extensionForCurrentProcess;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)notifyExtensionMainCalled
{
  if (notifyExtensionMainCalled_onceToken != -1)
  {
    +[_EXRunningExtensionInfo notifyExtensionMainCalled];
  }
}

- (id)initForCurrentProcess
{
  v20.receiver = self;
  v20.super_class = _EXRunningExtensionInfo;
  v2 = [(_EXRunningExtensionInfo *)&v20 init];
  if (v2)
  {
    bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = bundleRecordForCurrentProcess;
      bundleIdentifier = [v4 bundleIdentifier];
      bundleIdentifier = v2->_bundleIdentifier;
      v2->_bundleIdentifier = bundleIdentifier;

      containingBundleRecord = [v4 containingBundleRecord];
      bundleIdentifier2 = [containingBundleRecord bundleIdentifier];
      containerBundleIdentifier = v2->_containerBundleIdentifier;
      v2->_containerBundleIdentifier = bundleIdentifier2;

      extensionPointRecord = [v4 extensionPointRecord];

      sDKDictionary = [extensionPointRecord SDKDictionary];
      v12 = [sDKDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];

      v13 = [v12 _EX_stringForKey:@"NSExtensionContainingViewControllerClass"];
      containingViewControllerClassName = v2->_containingViewControllerClassName;
      v2->_containingViewControllerClassName = v13;

      sDKDictionary2 = [extensionPointRecord SDKDictionary];
      v16 = [sDKDictionary2 objectForKey:@"XPCService" ofClass:objc_opt_class()];

      v17 = [v16 _EX_stringForKey:@"RunLoopType"];
      runLoopType = v2->_runLoopType;
      v2->_runLoopType = v17;
    }

    else
    {
      extensionPointRecord = v2;
      v2 = 0;
    }
  }

  return v2;
}

@end
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
    v3 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
      v5 = [v4 bundleIdentifier];
      bundleIdentifier = v2->_bundleIdentifier;
      v2->_bundleIdentifier = v5;

      v7 = [v4 containingBundleRecord];
      v8 = [v7 bundleIdentifier];
      containerBundleIdentifier = v2->_containerBundleIdentifier;
      v2->_containerBundleIdentifier = v8;

      v10 = [v4 extensionPointRecord];

      v11 = [v10 SDKDictionary];
      v12 = [v11 objectForKey:@"NSExtension" ofClass:objc_opt_class()];

      v13 = [v12 _EX_stringForKey:@"NSExtensionContainingViewControllerClass"];
      containingViewControllerClassName = v2->_containingViewControllerClassName;
      v2->_containingViewControllerClassName = v13;

      v15 = [v10 SDKDictionary];
      v16 = [v15 objectForKey:@"XPCService" ofClass:objc_opt_class()];

      v17 = [v16 _EX_stringForKey:@"RunLoopType"];
      runLoopType = v2->_runLoopType;
      v2->_runLoopType = v17;
    }

    else
    {
      v10 = v2;
      v2 = 0;
    }
  }

  return v2;
}

@end
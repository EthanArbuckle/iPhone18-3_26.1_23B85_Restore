@interface EXEnumeratorConfig
- (EXEnumeratorConfig)init;
@end

@implementation EXEnumeratorConfig

- (EXEnumeratorConfig)init
{
  v21.receiver = self;
  v21.super_class = EXEnumeratorConfig;
  v2 = [(EXEnumeratorConfig *)&v21 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v4 = [v3 URLForResource:@"config" withExtension:@"plist"];
    extensionPointsConfigURL = v2->_extensionPointsConfigURL;
    v2->_extensionPointsConfigURL = v4;

    v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2->_extensionPointsConfigURL];
    v7 = [v6 _EX_dictionaryForKey:@"LegacyExtensionPointAllowList"];
    legacyExtensionPointAllowList = v2->_legacyExtensionPointAllowList;
    v2->_legacyExtensionPointAllowList = v7;

    v9 = MEMORY[0x1E695DF20];
    v10 = [v3 URLForResource:@"compatibility" withExtension:@"plist"];
    v11 = [v9 dictionaryWithContentsOfURL:v10];

    v12 = [v11 _EX_dictionaryForKey:@"LegacyExtensionPointAllowList"];
    compatibilityExtensionPointAllowList = v2->_compatibilityExtensionPointAllowList;
    v2->_compatibilityExtensionPointAllowList = v12;

    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/" isDirectory:1];
    rootURL = v2->_rootURL;
    v2->_rootURL = v14;

    v16 = [(NSURL *)v2->_rootURL URLByAppendingPathComponent:@"System/Library/xpc/launchd.plist" isDirectory:0];
    xpcExtensionsCache = v2->_xpcExtensionsCache;
    v2->_xpcExtensionsCache = v16;

    v18 = [(NSURL *)v2->_rootURL URLByAppendingPathComponent:@"System/Library/xpc/extensions.plist" isDirectory:0];
    xpcExtensionPointsCache = v2->_xpcExtensionPointsCache;
    v2->_xpcExtensionPointsCache = v18;

    v2->_includePlaceholders = 0;
  }

  return v2;
}

@end
@interface _EXDefaults
+ (id)sharedInstance;
- (BOOL)appleInternal;
- (BOOL)enforceXPCCacheCodeSigning;
- (BOOL)preferInProcessDiscovery;
- (BOOL)useItemProviderXPCConnection;
- (NSSet)allowedUnsandboxedExtensionPoints;
- (NSSet)alwaysEnabledExtensionBundleIdentifiers;
- (NSSet)errorTypes;
- (NSSet)extensionItemTypes;
- (NSSet)imageTypes;
- (NSSet)itemProviderTypes;
- (NSSet)plistAndValueTypes;
- (NSSet)plistTypes;
- (id)_init;
@end

@implementation _EXDefaults

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_EXDefaults sharedInstance];
  }

  v3 = sharedInstance_defaults;

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _EXDefaults;
  return [(_EXDefaults *)&v3 init];
}

- (BOOL)preferInProcessDiscovery
{
  if (preferInProcessDiscovery_onceToken != -1)
  {
    [_EXDefaults preferInProcessDiscovery];
  }

  return preferInProcessDiscovery_value;
}

- (NSSet)errorTypes
{
  if (errorTypes_onceToken != -1)
  {
    [_EXDefaults errorTypes];
  }

  v3 = errorTypes_errorTypes;

  return v3;
}

- (NSSet)extensionItemTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___EXDefaults_extensionItemTypes__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  if (extensionItemTypes_onceToken != -1)
  {
    dispatch_once(&extensionItemTypes_onceToken, block);
  }

  return extensionItemTypes_types;
}

- (BOOL)useItemProviderXPCConnection
{
  if (useItemProviderXPCConnection_onceToken != -1)
  {
    [_EXDefaults useItemProviderXPCConnection];
  }

  return useItemProviderXPCConnection_value;
}

- (NSSet)plistTypes
{
  if (plistTypes_onceToken != -1)
  {
    [_EXDefaults plistTypes];
  }

  v3 = plistTypes_plistTypes;

  return v3;
}

- (BOOL)appleInternal
{
  if (appleInternal_once != -1)
  {
    [_EXDefaults appleInternal];
  }

  return appleInternal_appleInternal;
}

- (NSSet)plistAndValueTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___EXDefaults_plistAndValueTypes__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  if (plistAndValueTypes_onceToken != -1)
  {
    dispatch_once(&plistAndValueTypes_onceToken, block);
  }

  return plistAndValueTypes_types;
}

- (NSSet)itemProviderTypes
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___EXDefaults_itemProviderTypes__block_invoke;
  block[3] = &unk_1E6E4DC28;
  block[4] = self;
  if (itemProviderTypes_onceToken != -1)
  {
    dispatch_once(&itemProviderTypes_onceToken, block);
  }

  return itemProviderTypes_types;
}

- (NSSet)imageTypes
{
  if (imageTypes_onceToken != -1)
  {
    [_EXDefaults imageTypes];
  }

  v3 = imageTypes_types;

  return v3;
}

- (NSSet)alwaysEnabledExtensionBundleIdentifiers
{
  if (alwaysEnabledExtensionBundleIdentifiers_onceToken != -1)
  {
    [_EXDefaults alwaysEnabledExtensionBundleIdentifiers];
  }

  v3 = alwaysEnabledExtensionBundleIdentifiers_alwaysEnabled;

  return v3;
}

- (BOOL)enforceXPCCacheCodeSigning
{
  if (enforceXPCCacheCodeSigning_onceToken != -1)
  {
    [_EXDefaults enforceXPCCacheCodeSigning];
  }

  v2 = _os_feature_enabled_impl();
  if (enforceXPCCacheCodeSigning_codeSigningEnforcementIsDisabled)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (!v3)
  {
    v4 = _EXDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1847D1000, v4, OS_LOG_TYPE_DEFAULT, "XPC extension point cache code signing will not be enforced", v6, 2u);
    }
  }

  return v3;
}

- (NSSet)allowedUnsandboxedExtensionPoints
{
  if (_os_feature_enabled_impl())
  {
    if (allowedUnsandboxedExtensionPoints_onceToken != -1)
    {
      [_EXDefaults allowedUnsandboxedExtensionPoints];
    }

    v2 = allowedUnsandboxedExtensionPoints_allowList;
  }

  else
  {
    v2 = objc_opt_new();
  }

  return v2;
}

@end
@interface NSDictionary(LSPluginSDKResolutionAdditions)
- (id)ls_resolvePlugInKitInfoPlistWithDictionary:()LSPluginSDKResolutionAdditions;
@end

@implementation NSDictionary(LSPluginSDKResolutionAdditions)

- (id)ls_resolvePlugInKitInfoPlistWithDictionary:()LSPluginSDKResolutionAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  if (![v4 count])
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(LSPluginSDKResolutionAdditions) *)self ls_resolvePlugInKitInfoPlistWithDictionary:v4, v6];
    }
  }

  [v5 removeObjectForKey:@"NSExtensionSandboxProfile"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __91__NSDictionary_LSPluginSDKResolutionAdditions__ls_resolvePlugInKitInfoPlistWithDictionary___block_invoke;
  v12[3] = &unk_1E6A1A3F0;
  v7 = v5;
  v13 = v7;
  v14 = v4;
  v8 = v4;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)ls_resolvePlugInKitInfoPlistWithDictionary:()LSPluginSDKResolutionAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Attempting to merge SDK dictionary into PlugInKit plist %@ but SDK is %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end
@interface ATXApplicationExtensionRecord
+ (BOOL)isDebuggingAllowedForExtensionBundleId:(id)id;
+ (id)containerBundleIdForExtensionBundleId:(id)id;
+ (id)localizedNameForExtensionBundleId:(id)id;
+ (id)recordForExtensionBundleId:(id)id;
@end

@implementation ATXApplicationExtensionRecord

+ (id)recordForExtensionBundleId:(id)id
{
  idCopy = id;
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:idCopy error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationExtensionRecord *)idCopy recordForExtensionBundleId:v5, v6];
    }

LABEL_4:

    goto LABEL_6;
  }

  if (!v4)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationRecord *)idCopy recordForBundleId:v6];
    }

    goto LABEL_4;
  }

LABEL_6:

  return v4;
}

+ (id)localizedNameForExtensionBundleId:(id)id
{
  v3 = [self recordForExtensionBundleId:id];
  localizedName = [v3 localizedName];

  return localizedName;
}

+ (id)containerBundleIdForExtensionBundleId:(id)id
{
  v3 = [self recordForExtensionBundleId:id];
  containingBundleRecord = [v3 containingBundleRecord];
  bundleIdentifier = [containingBundleRecord bundleIdentifier];

  return bundleIdentifier;
}

+ (BOOL)isDebuggingAllowedForExtensionBundleId:(id)id
{
  v3 = [self recordForExtensionBundleId:id];
  entitlements = [v3 entitlements];
  v5 = [entitlements objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

  if ([v5 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    containingBundleRecord = [v3 containingBundleRecord];
    entitlements2 = [containingBundleRecord entitlements];
    v9 = [entitlements2 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

    bOOLValue = [v9 BOOLValue];
  }

  return bOOLValue;
}

+ (void)recordForExtensionBundleId:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "Couldn't fetch record for bundle %@, error: %@", &v3, 0x16u);
}

@end
@interface ATXApplicationExtensionRecord
+ (BOOL)isDebuggingAllowedForExtensionBundleId:(id)a3;
+ (id)containerBundleIdForExtensionBundleId:(id)a3;
+ (id)localizedNameForExtensionBundleId:(id)a3;
+ (id)recordForExtensionBundleId:(id)a3;
@end

@implementation ATXApplicationExtensionRecord

+ (id)recordForExtensionBundleId:(id)a3
{
  v3 = a3;
  v8 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v3 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationExtensionRecord *)v3 recordForExtensionBundleId:v5, v6];
    }

LABEL_4:

    goto LABEL_6;
  }

  if (!v4)
  {
    v6 = __atxlog_handle_default();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXApplicationRecord *)v3 recordForBundleId:v6];
    }

    goto LABEL_4;
  }

LABEL_6:

  return v4;
}

+ (id)localizedNameForExtensionBundleId:(id)a3
{
  v3 = [a1 recordForExtensionBundleId:a3];
  v4 = [v3 localizedName];

  return v4;
}

+ (id)containerBundleIdForExtensionBundleId:(id)a3
{
  v3 = [a1 recordForExtensionBundleId:a3];
  v4 = [v3 containingBundleRecord];
  v5 = [v4 bundleIdentifier];

  return v5;
}

+ (BOOL)isDebuggingAllowedForExtensionBundleId:(id)a3
{
  v3 = [a1 recordForExtensionBundleId:a3];
  v4 = [v3 entitlements];
  v5 = [v4 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

  if ([v5 BOOLValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 containingBundleRecord];
    v8 = [v7 entitlements];
    v9 = [v8 objectForKey:@"get-task-allow" ofClass:objc_opt_class()];

    v6 = [v9 BOOLValue];
  }

  return v6;
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
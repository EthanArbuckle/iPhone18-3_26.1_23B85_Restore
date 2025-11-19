@interface LSBundleProxy(HKAppExtensions)
+ (id)hk_appExtensionContainerBundleForConnection:()HKAppExtensions;
@end

@implementation LSBundleProxy(HKAppExtensions)

+ (id)hk_appExtensionContainerBundleForConnection:()HKAppExtensions
{
  v3 = a3;
  v4 = v3;
  v5 = MEMORY[0x1E6963620];
  if (v3)
  {
    [v3 auditToken];
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v6 = [v5 bundleRecordForAuditToken:v15 error:&v14];
  v7 = v14;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v9 = [v8 containingBundleRecord];
      v10 = MEMORY[0x1E6963618];
      v11 = [v9 URL];
      v12 = [v10 bundleProxyForURL:v11];

      goto LABEL_12;
    }

    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[LSBundleProxy(HKAppExtensions) hk_appExtensionContainerBundleForConnection:];
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[LSBundleProxy(HKAppExtensions) hk_appExtensionContainerBundleForConnection:];
    }
  }

  v12 = 0;
LABEL_12:

  return v12;
}

+ (void)hk_appExtensionContainerBundleForConnection:()HKAppExtensions .cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "Expected application extension record for %{public}@ but got %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)hk_appExtensionContainerBundleForConnection:()HKAppExtensions .cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1(&dword_19197B000, v0, v1, "Failed to create bundle record for %{public}@ with error %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end
@interface SRTCCStorePassThrough
+ (void)initialize;
- (BOOL)isOverriddenForService:(id)a3;
- (id)bundleIdentifiersDisabledForService:(id)a3;
- (id)bundleIdentifiersForService:(id)a3;
- (id)informationForBundleId:(id)a3;
- (int64_t)preflightAuthorizationStatusForService:(id)a3;
@end

@implementation SRTCCStorePassThrough

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    SRLogTCCStore = os_log_create("com.apple.SensorKit", "TCCStore");
  }
}

- (id)bundleIdentifiersForService:(id)a3
{
  v3 = TCCAccessCopyBundleIdentifiersForService();

  return v3;
}

- (id)bundleIdentifiersDisabledForService:(id)a3
{
  v3 = TCCAccessCopyBundleIdentifiersDisabledForService();

  return v3;
}

- (BOOL)isOverriddenForService:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (!TCCAccessGetOverride())
  {
    v4 = SRLogTCCStore;
    if (os_log_type_enabled(SRLogTCCStore, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = a3;
      _os_log_error_impl(&dword_1C914D000, v4, OS_LOG_TYPE_ERROR, "Could not retrieve authorization override information for TCC service %{public}@", buf, 0xCu);
    }
  }

  result = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)informationForBundleId:(id)a3
{
  v3 = TCCAccessCopyInformationForBundleId();

  return v3;
}

- (int64_t)preflightAuthorizationStatusForService:(id)a3
{
  v3 = TCCAccessPreflight();
  if (v3 == 1)
  {
    return 2;
  }

  else
  {
    return v3 == 0;
  }
}

@end
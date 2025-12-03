@interface SRTCCStorePassThrough
+ (void)initialize;
- (BOOL)isOverriddenForService:(id)service;
- (id)bundleIdentifiersDisabledForService:(id)service;
- (id)bundleIdentifiersForService:(id)service;
- (id)informationForBundleId:(id)id;
- (int64_t)preflightAuthorizationStatusForService:(id)service;
@end

@implementation SRTCCStorePassThrough

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100016990 = os_log_create("com.apple.SensorKit", "TCCStore");
  }
}

- (id)bundleIdentifiersForService:(id)service
{
  v3 = TCCAccessCopyBundleIdentifiersForService();

  return v3;
}

- (id)bundleIdentifiersDisabledForService:(id)service
{
  v3 = TCCAccessCopyBundleIdentifiersDisabledForService();

  return v3;
}

- (BOOL)isOverriddenForService:(id)service
{
  if (!TCCAccessGetOverride())
  {
    v4 = qword_100016990;
    if (os_log_type_enabled(qword_100016990, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      serviceCopy = service;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not retrieve authorization override information for TCC service %{public}@", buf, 0xCu);
    }
  }

  return 0;
}

- (id)informationForBundleId:(id)id
{
  v3 = TCCAccessCopyInformationForBundleId();

  return v3;
}

- (int64_t)preflightAuthorizationStatusForService:(id)service
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
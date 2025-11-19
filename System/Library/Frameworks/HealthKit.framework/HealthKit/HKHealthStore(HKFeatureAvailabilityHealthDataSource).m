@interface HKHealthStore(HKFeatureAvailabilityHealthDataSource)
@end

@implementation HKHealthStore(HKFeatureAvailabilityHealthDataSource)

- (void)_sleepFeatureAvailabilityProvider:()HKFeatureAvailabilityHealthDataSource .cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id<HKFeatureAvailabilityProviding>  _Nullable getSleepFeatureAvailabilityProviding(NSString *__strong, HKHealthStore *__strong, __strong HKFeatureIdentifier)"}];
  [v0 handleFailureInFunction:v1 file:@"HKFeatureAvailabilityHealthDataSource.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_sleepFeatureAvailabilityProvider:()HKFeatureAvailabilityHealthDataSource .cold.2(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_19197B000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] HK_TARGET_OS_HAS_SLEEP_DAEMON true but missing getSleepFeatureAvailabilityProviding()", &v4, 0xCu);

  v3 = *MEMORY[0x1E69E9840];
}

@end
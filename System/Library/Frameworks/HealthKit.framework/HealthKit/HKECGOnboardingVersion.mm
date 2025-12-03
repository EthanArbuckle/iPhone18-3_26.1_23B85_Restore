@interface HKECGOnboardingVersion
+ (unint64_t)newestAvailableVersion;
@end

@implementation HKECGOnboardingVersion

+ (unint64_t)newestAvailableVersion
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[_HKBehavior isAppleInternalInstall])
  {
    hk_heartRhythmDefaults = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
    v3 = [hk_heartRhythmDefaults objectForKey:@"ECGOnboardingVersionOverrideKey"];

    if ([v3 unsignedIntegerValue])
    {
      _HKInitializeLogging();
      v4 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v10 = 136446466;
        v11 = "+[HKECGOnboardingVersion newestAvailableVersion]";
        v12 = 1024;
        unsignedIntegerValue = [v3 unsignedIntegerValue];
        _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s] Apply override onboarding version: %i", &v10, 0x12u);
      }

      unsignedIntegerValue2 = [v3 unsignedIntegerValue];

      goto LABEL_9;
    }
  }

  _HKInitializeLogging();
  v7 = HKLogHeartRhythm;
  unsignedIntegerValue2 = 4;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "+[HKECGOnboardingVersion newestAvailableVersion]";
    v12 = 1024;
    unsignedIntegerValue = 4;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s] Newest available version: %i", &v10, 0x12u);
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return unsignedIntegerValue2;
}

@end
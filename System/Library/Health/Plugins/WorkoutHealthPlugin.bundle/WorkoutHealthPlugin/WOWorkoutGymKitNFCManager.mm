@interface WOWorkoutGymKitNFCManager
+ (id)_isWorkoutNFCAllDayEnabledString;
+ (void)disableGymKitNFCSwitchOnOldHardwareIfNeeded;
@end

@implementation WOWorkoutGymKitNFCManager

+ (void)disableGymKitNFCSwitchOnOldHardwareIfNeeded
{
  v23[2] = self;
  v23[1] = a2;
  v2 = [NSUserDefaults alloc];
  v23[0] = [v2 initWithSuiteName:kHKConnectedGymPreferencesDomain];
  v22 = [v23[0] BOOLForKey:@"ConnectedGymDisableGymKitNFCSwitchOnOldHardwareCompleted"];
  _HKInitializeLogging();
  v21 = HKLogWorkouts;
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    v3 = @"YES";
    if ((v22 & 1) == 0)
    {
      v3 = @"NO";
    }

    v9 = v3;
    v12 = +[WOWorkoutGymKitNFCManager _isWorkoutNFCAllDayEnabledString];
    v19 = v12;
    __os_log_helper_16_2_2_8_64_8_64(v25, v9, v19);
    _os_log_impl(&dword_0, log, type, "[WorkoutGymKitNFC] Disable GymKit NFC Switch On Old Hardware Completed: %@, NFC All Day Enabled: %@", v25, 0x16u);

    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v21, 0);
  if (v22)
  {
    _HKInitializeLogging();
    v18 = HKLogWorkouts;
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v18;
      v8 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_impl(&dword_0, v7, v8, "[WorkoutGymKitNFC] One time Disable GymKit NFC Switch On Old Hardware (all day support) already completed", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
  }

  else
  {
    FISetWorkoutNFCAllDayEnabled();
    [v23[0] setBool:1 forKey:@"ConnectedGymDisableGymKitNFCSwitchOnOldHardwareCompleted"];
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v14;
      v6 = +[WOWorkoutGymKitNFCManager _isWorkoutNFCAllDayEnabledString];
      v13 = v6;
      __os_log_helper_16_2_1_8_64(v24, v13);
      _os_log_impl(&dword_0, v4, v5, "[WorkoutGymKitNFC] One time Disable GymKit NFC Switch On Old Hardware (all day support), NFC All Day Enabled: %@", v24, 0xCu);

      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(v23, 0);
}

+ (id)_isWorkoutNFCAllDayEnabledString
{
  if (FIIsWorkoutNFCAllDayEnabled())
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return v2;
}

@end
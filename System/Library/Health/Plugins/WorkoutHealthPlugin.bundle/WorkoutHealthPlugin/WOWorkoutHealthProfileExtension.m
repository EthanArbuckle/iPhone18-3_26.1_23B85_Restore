@interface WOWorkoutHealthProfileExtension
+ (BOOL)_isOldWatchSeries:(id)a3;
- (WOWorkoutHealthProfileExtension)initWithProfile:(id)a3;
- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5;
- (id)listenerEndpointForClient:(id)a3 error:(id *)a4;
@end

@implementation WOWorkoutHealthProfileExtension

- (WOWorkoutHealthProfileExtension)initWithProfile:(id)a3
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v33;
  v33 = 0;
  v31.receiver = v3;
  v31.super_class = WOWorkoutHealthProfileExtension;
  v33 = [(WOWorkoutHealthProfileExtension *)&v31 init];
  objc_storeStrong(&v33, v33);
  if (v33)
  {
    [(WOWorkoutHealthProfileExtension *)v33 setProfile:location[0]];
    v18 = +[_HKBehavior sharedBehavior];
    v30 = [v18 currentDeviceProductType];

    v29 = [WOWorkoutHealthProfileExtension _isOldWatchSeries:v30];
    v4 = [NSUserDefaults alloc];
    v19 = [v4 initWithSuiteName:kHKConnectedGymPreferencesDomain];
    v20 = [v19 BOOLForKey:@"ConnectedGymDebugDisableGymKitNFCSwitchOnAllHardware"];

    v28 = v20;
    if (v20 & 1) != 0 || (v29)
    {
      _HKInitializeLogging();
      v27 = HKLogWorkouts;
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v5 = @"YES";
        }

        else
        {
          v5 = @"NO";
        }

        if (v28)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        __os_log_helper_16_2_2_8_64_8_64(v35, v5, v6);
        _os_log_impl(&dword_0, v27, v26, "[WorkoutGymKitNFC] Initializing WOWorkoutGymKitNFCManager, disableGymKitNFCSwitch (oldHardware: %@ || allHardware: %@)", v35, 0x16u);
      }

      objc_storeStrong(&v27, 0);
      +[WOWorkoutGymKitNFCManager disableGymKitNFCSwitchOnOldHardwareIfNeeded];
    }

    else
    {
      _HKInitializeLogging();
      v25 = HKLogWorkouts;
      v24 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (v29)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        if (v28)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        __os_log_helper_16_2_4_8_64_8_64_8_64_8_64(v34, v7, v8, kHKConnectedGymPreferencesDomain, @"ConnectedGymDebugDisableGymKitNFCSwitchOnAllHardware");
        _os_log_impl(&dword_0, v25, v24, "[WorkoutGymKitNFC] Not initializing WOWorkoutGymKitNFCManager, disableGymKitNFCSwitch (oldHardware: %@ || allHardware: %@), for testing on all hardware: defaults write %@ %@ 1", v34, 0x2Au);
      }

      objc_storeStrong(&v25, 0);
    }

    v14 = [[HDXPCListener alloc] initWithLabel:@"WorkoutHealthPlugin"];
    [(WOWorkoutHealthProfileExtension *)v33 setListener:?];

    v15 = v33;
    v16 = [(WOWorkoutHealthProfileExtension *)v33 listener];
    [(HDXPCListener *)v16 setDelegate:v15];

    v17 = [(WOWorkoutHealthProfileExtension *)v33 listener];
    [(HDXPCListener *)v17 resume];

    v9 = +[WOWorkoutExternalProviderObserver sharedInstance];
    _HKInitializeLogging();
    oslog = HKLogWorkouts;
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = oslog;
      v13 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_impl(&dword_0, v12, v13, "Workout Profile Extension Loaded.", v21, 2u);
    }

    objc_storeStrong(&oslog, 0);
    objc_storeStrong(&v30, 0);
  }

  v11 = v33;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  return v11;
}

+ (BOOL)_isOldWatchSeries:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = 1;
  if (([location[0] hasPrefix:HKProductTypePrefixAppleWatchFirstGeneration] & 1) == 0)
  {
    v4 = 1;
    if (([location[0] hasPrefix:HKProductTypePrefixAppleWatchSeries1Series2] & 1) == 0)
    {
      v4 = 1;
      if (([location[0] hasPrefix:HKProductTypePrefixAppleWatchSeries3] & 1) == 0)
      {
        v4 = 1;
        if (([location[0] hasPrefix:HKProductTypePrefixAppleWatchSeries4] & 1) == 0)
        {
          v4 = 1;
          if (([location[0] hasPrefix:HKProductTypePrefixAppleWatchSeries5] & 1) == 0)
          {
            v4 = 1;
            if (([location[0] hasPrefix:HKProductTypePrefixAppleWatch5SENonCellularSmall] & 1) == 0)
            {
              v4 = 1;
              if (([location[0] hasPrefix:HKProductTypePrefixAppleWatch5SENonCellularBig] & 1) == 0)
              {
                v4 = 1;
                if (([location[0] hasPrefix:HKProductTypePrefixAppleWatch5SECellularSmall] & 1) == 0)
                {
                  v4 = [location[0] hasPrefix:HKProductTypePrefixAppleWatch5SECellularBig];
                }
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)listenerEndpointForClient:(id)a3 error:(id *)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(WOWorkoutHealthProfileExtension *)v8 listener];
  v6 = [(HDXPCListener *)v5 endpoint];

  objc_storeStrong(location, 0);

  return v6;
}

- (id)exportObjectForListener:(id)a3 client:(id)a4 error:(id *)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [WOWorkoutQueryServer serverWithClient:v9 profile:v11->_profile error:a5];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end
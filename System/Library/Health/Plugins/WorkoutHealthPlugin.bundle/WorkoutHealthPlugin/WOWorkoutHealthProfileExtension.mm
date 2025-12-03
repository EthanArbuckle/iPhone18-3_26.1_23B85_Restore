@interface WOWorkoutHealthProfileExtension
+ (BOOL)_isOldWatchSeries:(id)series;
- (WOWorkoutHealthProfileExtension)initWithProfile:(id)profile;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
- (id)listenerEndpointForClient:(id)client error:(id *)error;
@end

@implementation WOWorkoutHealthProfileExtension

- (WOWorkoutHealthProfileExtension)initWithProfile:(id)profile
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, profile);
  v3 = selfCopy;
  selfCopy = 0;
  v31.receiver = v3;
  v31.super_class = WOWorkoutHealthProfileExtension;
  selfCopy = [(WOWorkoutHealthProfileExtension *)&v31 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(WOWorkoutHealthProfileExtension *)selfCopy setProfile:location[0]];
    v18 = +[_HKBehavior sharedBehavior];
    currentDeviceProductType = [v18 currentDeviceProductType];

    v29 = [WOWorkoutHealthProfileExtension _isOldWatchSeries:currentDeviceProductType];
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
    [(WOWorkoutHealthProfileExtension *)selfCopy setListener:?];

    v15 = selfCopy;
    listener = [(WOWorkoutHealthProfileExtension *)selfCopy listener];
    [(HDXPCListener *)listener setDelegate:v15];

    listener2 = [(WOWorkoutHealthProfileExtension *)selfCopy listener];
    [(HDXPCListener *)listener2 resume];

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
    objc_storeStrong(&currentDeviceProductType, 0);
  }

  v11 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

+ (BOOL)_isOldWatchSeries:(id)series
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, series);
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

- (id)listenerEndpointForClient:(id)client error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  listener = [(WOWorkoutHealthProfileExtension *)selfCopy listener];
  endpoint = [(HDXPCListener *)listener endpoint];

  objc_storeStrong(location, 0);

  return endpoint;
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v9 = 0;
  objc_storeStrong(&v9, client);
  v8 = [WOWorkoutQueryServer serverWithClient:v9 profile:selfCopy->_profile error:error];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v8;
}

@end
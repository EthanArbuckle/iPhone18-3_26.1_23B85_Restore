@interface ATXModeEntityCorrelatorInternalState
- (ATXModeEntityCorrelatorInternalState)init;
@end

@implementation ATXModeEntityCorrelatorInternalState

- (ATXModeEntityCorrelatorInternalState)init
{
  v32.receiver = self;
  v32.super_class = ATXModeEntityCorrelatorInternalState;
  v2 = [(ATXModeEntityCorrelatorInternalState *)&v32 init];
  if (v2)
  {
    v3 = objc_opt_new();
    globalEntityOccurrences = v2->_globalEntityOccurrences;
    v2->_globalEntityOccurrences = v3;

    v5 = objc_opt_new();
    modeLocalEntityOccurrences = v2->_modeLocalEntityOccurrences;
    v2->_modeLocalEntityOccurrences = v5;

    v7 = objc_opt_new();
    totalGlobalLaunchesHistogramPerEntity = v2->_totalGlobalLaunchesHistogramPerEntity;
    v2->_totalGlobalLaunchesHistogramPerEntity = v7;

    v9 = objc_opt_new();
    totalModeLaunchesHistogramPerEntity = v2->_totalModeLaunchesHistogramPerEntity;
    v2->_totalModeLaunchesHistogramPerEntity = v9;

    v11 = objc_opt_new();
    localDeviceGlobalAppLaunchesHistogramPerEntity = v2->_localDeviceGlobalAppLaunchesHistogramPerEntity;
    v2->_localDeviceGlobalAppLaunchesHistogramPerEntity = v11;

    v13 = objc_opt_new();
    localDeviceModeAppLaunchesHistogramPerEntity = v2->_localDeviceModeAppLaunchesHistogramPerEntity;
    v2->_localDeviceModeAppLaunchesHistogramPerEntity = v13;

    v15 = objc_opt_new();
    macPortableGlobalAppLaunchesHistogramPerEntity = v2->_macPortableGlobalAppLaunchesHistogramPerEntity;
    v2->_macPortableGlobalAppLaunchesHistogramPerEntity = v15;

    v17 = objc_opt_new();
    macPortableModeAppLaunchesHistogramPerEntity = v2->_macPortableModeAppLaunchesHistogramPerEntity;
    v2->_macPortableModeAppLaunchesHistogramPerEntity = v17;

    v19 = objc_opt_new();
    macDesktopGlobalAppLaunchesHistogramPerEntity = v2->_macDesktopGlobalAppLaunchesHistogramPerEntity;
    v2->_macDesktopGlobalAppLaunchesHistogramPerEntity = v19;

    v21 = objc_opt_new();
    macDesktopModeAppLaunchesHistogramPerEntity = v2->_macDesktopModeAppLaunchesHistogramPerEntity;
    v2->_macDesktopModeAppLaunchesHistogramPerEntity = v21;

    v23 = objc_opt_new();
    entitiesSeenForMostRecentModeEvent = v2->_entitiesSeenForMostRecentModeEvent;
    v2->_entitiesSeenForMostRecentModeEvent = v23;

    v25 = objc_opt_new();
    uniqueModeOccurrences = v2->_uniqueModeOccurrences;
    v2->_uniqueModeOccurrences = v25;

    v27 = objc_opt_new();
    entityToEntityFeaturesDict = v2->_entityToEntityFeaturesDict;
    v2->_entityToEntityFeaturesDict = v27;

    v29 = objc_opt_new();
    today = v2->_today;
    v2->_today = v29;
  }

  return v2;
}

@end
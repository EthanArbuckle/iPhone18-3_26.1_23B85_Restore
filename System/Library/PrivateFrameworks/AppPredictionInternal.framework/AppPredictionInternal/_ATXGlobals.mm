@interface _ATXGlobals
+ (_ATXGlobals)sharedInstance;
+ (id)abHelperWithMobileAssetsGivenAssetClass:(Class)a3;
+ (id)abHelperWithTrialAssetsGivenAssetClass:(Class)a3;
- (BOOL)allowBehavioralPredictionsOnLockscreen;
- (BOOL)cdnDownloaderIsEnabled;
- (BOOL)disableLocationQualityChecksForHeroApp;
- (BOOL)onlyAcceptBecomeCurrentNSUAs;
- (BOOL)onlyUseEligibleForPrediction;
- (BOOL)sessionLoggingCurrentLOITypeEnable;
- (BOOL)sessionLoggingGymDistanceEnable;
- (BOOL)sessionLoggingHomeDistanceEnable;
- (BOOL)sessionLoggingSchoolDistanceEnable;
- (BOOL)sessionLoggingWorkDistanceEnable;
- (_ATXGlobals)initWithAssetClass:(Class)a3;
- (_ATXGlobals)initWithEmptyAssetClass;
- (double)actionCoarseGeoHashDecayHalflife;
- (double)actionExperienceHighConfidenceThreshold;
- (double)actionExperienceMediumConfidenceThreshold;
- (double)actionPredictionHighConfidenceThresholdForBlendingLayerCoreML;
- (double)actionPredictionInternalBuildSessionLogSamplingRate;
- (double)actionPredictionInternalBuildShadowLogSamplingRate;
- (double)actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML;
- (double)actionPredictionSessionLogSamplingRate;
- (double)actionPredictionSessionLoggingDurationResolutionSec;
- (double)actionPredictionShadowLogSamplingRate;
- (double)actionSpecificGeoHashDecayHalflife;
- (double)airplaneModeLaunchDecayHalflife;
- (double)appActionAirplaneModeLaunchDecayHalflife;
- (double)appActionCoreMotionLaunchDecayHalflife;
- (double)appActionDayOfWeekLaunchDecayHalflife;
- (double)appActionLaunchDecayHalflife;
- (double)appActionLaunchSequenceDecayHalflife;
- (double)appActionTrendingLaunchDecayHalflife;
- (double)appActionUnlockTimeDecayHalflife;
- (double)appActionWifiSSIDLaunchDecayHalflife;
- (double)appAndActionCoarseTimePowLocationDecayHalflife;
- (double)appAndActionSpecificTimePowLocationDecayHalflife;
- (double)appCoarseGeoHashDecayHalflife;
- (double)appConfirmsCoarseGeoHashDecayHalflife;
- (double)appConfirmsDayOfWeekDecayHalflife;
- (double)appConfirmsSpecificGeoHashDecayHalflife;
- (double)appConfirmsTwoHourTimeIntervalDecayHalflife;
- (double)appDirectoryConfirmsCoarseGeohashDecayHalflife;
- (double)appDirectoryConfirmsCoarseTimePOWLocationDecayHalflife;
- (double)appDirectoryConfirmsDayOfWeekDecayHalflife;
- (double)appDirectoryConfirmsSpecificGeohashDecayHalflife;
- (double)appDirectoryConfirmsSpecificTimeDOWLocationDecayHalflife;
- (double)appDirectoryConfirmsTwoHourTimeIntervalDecayHalflife;
- (double)appDirectoryExplicitRejectsCoarseTimePOWLocationDecayHalflife;
- (double)appDirectoryLaunchDecayHalflife;
- (double)appDirectoryRejectsCoarseGeohashDecayHalflife;
- (double)appDirectoryRejectsCoarseTimePOWLocationDecayHalflife;
- (double)appDirectoryRejectsDayOfWeekDecayHalflife;
- (double)appDirectoryRejectsSpecificGeohashDecayHalflife;
- (double)appDirectoryRejectsSpecificTimeDOWLocationDecayHalflife;
- (double)appDirectoryRejectsTwoHourTimeIntervalDecayHalflife;
- (double)appExplicitRejectsCoarseTimePOWLocationDecayHalflife;
- (double)appLaunchDecayHalflife;
- (double)appLaunchesTwoHourTimeIntervalDecayHalflife;
- (double)appPredictionBlendedScoreNormalizationConstant;
- (double)appPredictionGlobalScoreMultiplierPerApp;
- (double)appPredictionHighConfidenceThresholdForBlendingLayerCoreML;
- (double)appPredictionMediumConfidenceThresholdForBlendingLayerCoreML;
- (double)appRejectsCoarseGeoHashDecayHalflife;
- (double)appRejectsDayOfWeekDecayHalflife;
- (double)appRejectsSpecificGeoHashDecayHalflife;
- (double)appRejectsTwoHourTimeIntervalDecayHalflife;
- (double)appSpecificGeoHashDecayHalflife;
- (double)appZoom7GeoHashDecayHalflife;
- (double)behavioralHomeScreenActionMinimumConfidenceThreshold;
- (double)behavioralModeRelevanceDelay;
- (double)behavioralModeRelevanceDuration;
- (double)cacheRefreshIntervalForDisabledActionConsumerSubType;
- (double)cacheRefreshIntervalForDisabledAppConsumerSubType;
- (double)clippingThresholdForGaussianDist;
- (double)coreMotionLaunchDecayHalflife;
- (double)dayOfWeekLaunchDecayHalflife;
- (double)defaultPeriodicLoggerEnrollmentPeriodSeconds;
- (double)defaultPeriodicLoggerEnrollmentRate;
- (double)defaultPeriodicLoggerUploadIntervalSeconds;
- (double)defaultPredictionRefreshRate;
- (double)documentAirplaneModeDecayHalflife;
- (double)documentAmbientLightDecayHalflife;
- (double)documentCategoryDayOfWeekDecayHalflife;
- (double)documentCategoryOpenDecayHalflife;
- (double)documentCategoryPartOfWeekDecayHalflife;
- (double)documentCategoryTrendingOpenDecayHalflife;
- (double)documentConfirmsDecayHalflife;
- (double)documentCoreMotionOpenDecayHalflife;
- (double)documentDayOfWeekDecayHalflife;
- (double)documentOpenDecayHalflife;
- (double)documentPartOfWeekDecayHalflife;
- (double)documentPredictionHighConfidenceThresholdForBlendingLayerCoreML;
- (double)documentPredictionMediumConfidenceThresholdForBlendingLayerCoreML;
- (double)documentTrendingOpenDecayHalflife;
- (double)documentUnlockTimeDecayHalflife;
- (double)documentWifiOpenDecayHalflife;
- (double)donationWeighingStrength;
- (double)heuristicActionExperienceHighConfidenceThreshold;
- (double)heuristicActionExperienceMediumConfidenceThreshold;
- (double)heuristicsBaseScore;
- (double)homeScreenAppConfirmsCoarseGeohashDecayHalflife;
- (double)homeScreenAppConfirmsCoarseTimePOWLocationDecayHalflife;
- (double)homeScreenAppConfirmsDayOfWeekDecayHalflife;
- (double)homeScreenAppConfirmsSpecificGeohashDecayHalflife;
- (double)homeScreenAppConfirmsSpecificTimeDOWLocationDecayHalflife;
- (double)homeScreenAppConfirmsTwoHourTimeIntervalDecayHalflife;
- (double)homeScreenAppExplicitRejectsCoarseTimePOWLocationDecayHalflife;
- (double)homeScreenAppRejectsCoarseGeohashDecayHalflife;
- (double)homeScreenAppRejectsCoarseTimePOWLocationDecayHalflife;
- (double)homeScreenAppRejectsDayOfWeekDecayHalflife;
- (double)homeScreenAppRejectsSpecificGeohashDecayHalflife;
- (double)homeScreenAppRejectsSpecificTimeDOWLocationDecayHalflife;
- (double)homeScreenAppRejectsTwoHourTimeIntervalDecayHalflife;
- (double)homescreenLaunchDecayHalflife;
- (double)launchAndLocationHarvesterSamplingRate;
- (double)launchSequenceDecayHalflife;
- (double)maximumActionFeedbackMeanCalculationEntryAge;
- (double)maximumSlotFeedbackDatabaseEntryAge;
- (double)maximumSlotResolutionDatabaseEntryAge;
- (double)notificationsCustomerSamplingRate;
- (double)notificationsHistoryDecayHalflife;
- (double)notificationsInternalSamplingRate;
- (double)notificationsSeedSamplingRate;
- (double)nsuaDonationWeight;
- (double)penaltyForMultipleActionsPerApp;
- (double)poiCategoryDecayHalfLife;
- (double)predictedRouteAcceptThreshold;
- (double)predictionsForMultiStageLoggingLimit;
- (double)predictionsPerAppActionLimit;
- (double)recentAppsHeuristicLookBackSeconds;
- (double)scoreThresholdForBehavioralModeRelevance;
- (double)scoreThresholdForSavingAppsToModeFiles;
- (double)scoreThresholdForSavingContactsToModeFiles;
- (double)sessionLoggingDistanceAccuracy;
- (double)sessionObjectLogSamplingRate;
- (double)shadowLogSamplingRate;
- (double)shouldIgnoreUpcomingMediaExpirationDateForTV;
- (double)slotResolutionDayOfWeekLaunchDecayHalflife;
- (double)slotResolutionLaunchDecayHalflife;
- (double)slotResolutionLocationLaunchDecayHalflife;
- (double)slotResolutionMotionTypeLaunchDecayHalflife;
- (double)slotResolutionPartOfWeekLaunchDecayHalflife;
- (double)slotResolutionPreviousLocationLaunchDecayHalflife;
- (double)slotResolutionRatioSmoothingThreshold;
- (double)slotResolutionTimeOfDayLaunchDecayHalflife;
- (double)smoothedBudgetForTimeOfDayStd;
- (double)smoothedCountForCoarseTimeOfDayStd;
- (double)smoothedCountForTimeOfDayStd;
- (double)spotlightLaunchDecayHalflife;
- (double)timeAndDayAppLaunchesDecayHalflife;
- (double)trendingLaunchDecayHalflife;
- (double)unlockTimeDecayHalflife;
- (double)wifiSSIDLaunchDecayHalflife;
- (id)abGroupIdentifier;
- (id)actionFallbacksBlendingModelVersion;
- (id)actionPredictionBlendingModelVersion;
- (id)appPredictionBlendingModelVersion;
- (id)approvedSiriKitIntents;
- (id)blacklistedAppActionsHelper:(id)a3;
- (id)blacklistedAppsForAppPredictions;
- (id)blacklistedAppsForLockscreenPredictions;
- (id)enabledFallbackActions;
- (id)enabledFallbackActionsMacOS;
- (id)heuristicPredictionBlendingModelVersion;
- (id)ineligibleRemoteAppsForAppPredictionsMacOS;
- (id)initForTestingWithMobileAssetAssetsOnly;
- (id)initForTestingWithTrialAssetsOnly;
- (id)launchAndLocationHarvesterAppBlacklist;
- (id)launchAndLocationHarvesterGenreIdBlacklist;
- (id)magicalMomentsEnabledPredictionExperts;
- (id)messageContentBlacklist;
- (id)penalizedFallbackActions;
- (id)personalizationBlacklistedBundleIds;
- (id)toolKitBasedFallbackActionsMacOS;
- (id)triggerPresetMinutes;
- (id)whitelistedActionKeysForHomeScreen;
- (id)whitelistedActionTypesForAnchorModelLogging;
- (id)whitelistedActionTypesForHomeScreen;
- (id)whitelistedAnchorsForMagicalMomentsOnHomeScreen;
- (id)whitelistedBundlesForAnchorModelLogging;
- (id)whitelistedDonationDaemonBundleIds;
- (int)actionExperienceHighConfidenceAppActionCountThreshold;
- (int)actionExperienceMediumConfidenceAppActionCountThreshold;
- (int)actionPredictionFirstStageBeamWidth;
- (int)actionPredictionFirstStageBeamWidthMacOS;
- (int)actionPredictionSessionLoggingBottomBlockMaxItemsToLog;
- (int)actionSpotlightCaptureRateActionAppLaunchThresholdSeconds;
- (int)actionSpotlightCaptureRateForwardQueryThresholdSeconds;
- (int)actionSpotlightCaptureRateSecondsAfterSessionEnd;
- (int)appConnectionMinAverageLaunches;
- (int)appConnectionMinTotalLaunches;
- (int)donationWeighingScheme;
- (int)extraAppsToLog;
- (int)extraIntentsToLog;
- (int)extraSASAppsToLog;
- (int)fallbackActionsEngagementPriorAlpha;
- (int)fallbackActionsEngagementPriorBeta;
- (int)heuristicsEngagementPriorAlpha;
- (int)heuristicsEngagementPriorBeta;
- (int)homeScreenMaxValidCacheAge;
- (int)locationOfInterestSearchRadius;
- (int)lockscreenMaxValidCacheAge;
- (int)maxDistanceToDropOffLocationInMetersForRequestRideIntent;
- (int)maxHeuristicAppActionCount;
- (int)maxMagicalMomentsPredictions;
- (int)maxNumberOfActionDataMetricsToLogViaAWD;
- (int)maxNumberOfActionTypesPerApp;
- (int)maxSettingsZKWSuggestionsToBlend;
- (int)maxValidATXActionResponseCacheAgeSec;
- (int)maximumParameterCombinations;
- (int)maximumSpotlightPredictions;
- (int)messageContentTimeElapsed;
- (int)minDistanceToDropOffLocationInMetersForRequestRideIntent;
- (int)minimumTimespanForOnceOffActions;
- (int)numberOfActionsToKeepForLogging;
- (int)numberOfRandomAppActionTypesToKeepForLogging;
- (int)numberOfRandomSlotsToKeepForLogging;
- (int)numberOfTopSASAppsToLog;
- (int)previousAppActionCompareCount;
- (int)sessionLoggingAppSequenceLength;
- (int)sessionLoggingUniqueAppActionSequenceLength;
- (int)spotlightMaxValidCacheAge;
- (unint64_t)maxElementsToPerisistPerEntityForModeBackup;
- (unint64_t)menuItemPredictionsPerAppLimitMacOS;
- (unint64_t)personalizationRequiredActionHistorySeconds;
- (unint64_t)personalizationRequiredCountForRelevance;
- (unint64_t)predictionsPerAppActionLimitMacOS;
- (unint64_t)recentAppsHeuristicMaxRecents;
- (unint64_t)transitionLookaheadMaxSeconds;
- (unint64_t)transitionLookaheadMinSeconds;
@end

@implementation _ATXGlobals

+ (_ATXGlobals)sharedInstance
{
  if (sharedInstance__pasOnceToken7_38 != -1)
  {
    +[_ATXGlobals sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_46;

  return v3;
}

- (BOOL)cdnDownloaderIsEnabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXCDNDownloaderTriggerManagerIsEnabled"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)defaultPredictionRefreshRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"CacheRefreshInterval"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 451.0;
  }

  return v5;
}

- (id)whitelistedDonationDaemonBundleIds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionWhitelistedDonationDaemonBundleIds"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)actionPredictionBlendingModelVersion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionBlendingModelVersion"];
  v3 = NSClassFromString(&cfstr_Nsstring.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"1.0";
  }

  v8 = v7;

  return v7;
}

- (_ATXGlobals)initWithAssetClass:(Class)a3
{
  v9.receiver = self;
  v9.super_class = _ATXGlobals;
  v4 = [(_ATXGlobals *)&v9 init];
  if (v4)
  {
    v5 = MEMORY[0x277CEB3C0];
    if (!a3)
    {
      a3 = objc_opt_class();
    }

    v6 = [v5 dictionaryFromLazyPlistWithLegacyPathForClass:a3];
    parameters = v4->_parameters;
    v4->_parameters = v6;
  }

  return v4;
}

- (_ATXGlobals)initWithEmptyAssetClass
{
  v6.receiver = self;
  v6.super_class = _ATXGlobals;
  v2 = [(_ATXGlobals *)&v6 init];
  v3 = v2;
  if (v2)
  {
    parameters = v2->_parameters;
    v2->_parameters = 0;
  }

  return v3;
}

+ (id)abHelperWithTrialAssetsGivenAssetClass:(Class)a3
{
  v3 = MEMORY[0x277CEB3C0];
  if (a3)
  {
    a1 = a3;
  }

  v4 = NSStringFromClass(a1);
  v5 = [v3 rawDictionaryUsingTrialForResource:v4 ofType:@"plplist"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)abHelperWithMobileAssetsGivenAssetClass:(Class)a3
{
  v3 = MEMORY[0x277CEB3C0];
  if (a3)
  {
    a1 = a3;
  }

  v4 = NSStringFromClass(a1);
  v5 = [v3 rawDictionaryUsingMobileAssetsForResource:v4 ofType:@"plplist"];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)initForTestingWithTrialAssetsOnly
{
  v6.receiver = self;
  v6.super_class = _ATXGlobals;
  v2 = [(_ATXGlobals *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryFromLazyPlistWithLegacyPathForClass:objc_opt_class()];
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (id)initForTestingWithMobileAssetAssetsOnly
{
  v6.receiver = self;
  v6.super_class = _ATXGlobals;
  v2 = [(_ATXGlobals *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryFromLazyPlistWithLegacyPathForClass:objc_opt_class()];
    parameters = v2->_parameters;
    v2->_parameters = v3;
  }

  return v2;
}

- (id)abGroupIdentifier
{
  v2 = MEMORY[0x277CEB3C0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 rawDictionaryUsingMobileAssetsForResource:v4 ofType:@"plplist"];

  v6 = [objc_alloc(MEMORY[0x277CEB3C8]) initWithAssetContents:v5];
  v7 = [v6 groupIdentifier];

  return v7;
}

- (double)appLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homescreenLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomescreenLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)spotlightLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SpotlightLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)airplaneModeLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AirplaneModeLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)trendingLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"TrendingLaunchDecayHalfLife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)wifiSSIDLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WifiSSIDLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)coreMotionLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"CoreMotionLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)timeAndDayAppLaunchesDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"TimeAndDayAppLaunchesDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)unlockTimeDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"UnlockTimeDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)dayOfWeekLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DayOfWeekLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)launchSequenceDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LaunchSequenceDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionAirplaneModeLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionAirplaneModeLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionTrendingLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionTrendingLaunchDecayHalfLife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionWifiSSIDLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionWifiSSIDLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionCoreMotionLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionCoreMotionLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionUnlockTimeDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionUnlockTimeDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionDayOfWeekLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionDayOfWeekLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appActionLaunchSequenceDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppActionLaunchSequenceDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionTimeOfDayLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionTimeOfDayLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionPartOfWeekLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionPartOfWeekLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionDayOfWeekLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionDayOfWeekLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionLocationLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionLocationLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionPreviousLocationLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionPreviousLocationLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)slotResolutionMotionTypeLaunchDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionMotionTypeLaunchDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)notificationsHistoryDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NotificationsHistoryDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appAndActionCoarseTimePowLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppAndActionCoarseTimePowLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appAndActionSpecificTimePowLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppAndActionSpecificTimePowLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appSpecificGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppSpecificGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appCoarseGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppCoarseGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appZoom7GeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppZoom7GeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)actionSpecificGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionSpecificGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)actionCoarseGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionCoarseGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appLaunchesTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppLaunchesTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appConfirmsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConfirmsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appRejectsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppRejectsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appConfirmsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConfirmsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appRejectsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppRejectsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appConfirmsCoarseGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConfirmsCoarseGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appRejectsCoarseGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppRejectsCoarseGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appConfirmsSpecificGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConfirmsSpecificGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appRejectsSpecificGeoHashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppRejectsSpecificGeoHashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appExplicitRejectsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppExplicitRejectsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsSpecificTimeDOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsSpecificTimeDOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsCoarseGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsCoarseGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppConfirmsSpecificGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppConfirmsSpecificGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsSpecificTimeDOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsSpecificTimeDOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsCoarseGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsCoarseGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppRejectsSpecificGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppRejectsSpecificGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)homeScreenAppExplicitRejectsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenAppExplicitRejectsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsSpecificTimeDOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsSpecificTimeDOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsCoarseGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsCoarseGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryConfirmsSpecificGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryConfirmsSpecificGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsSpecificTimeDOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsSpecificTimeDOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsTwoHourTimeIntervalDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsTwoHourTimeIntervalDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsCoarseGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsCoarseGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryRejectsSpecificGeohashDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryRejectsSpecificGeohashDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)appDirectoryExplicitRejectsCoarseTimePOWLocationDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppDirectoryExplicitRejectsCoarseTimePOWLocationDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)poiCategoryDecayHalfLife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PoiCategoryDecayHalfLife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentUnlockTimeDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentUnlockTimeDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentAirplaneModeDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentAirplaneModeDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentTrendingOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentTrendingOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentConfirmsDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentConfirmsDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentCategoryOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentCategoryOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentCategoryDayOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentCategoryDayOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentCategoryTrendingOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentCategoryTrendingOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentWifiOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentWifiOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentCoreMotionOpenDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentCoreMotionOpenDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentPartOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentPartOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentAmbientLightDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentAmbientLightDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)documentCategoryPartOfWeekDecayHalflife
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentCategoryPartOfWeekDecayHalflife"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)sessionObjectLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionObjectLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)shadowLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ShadowLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)actionPredictionShadowLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionShadowLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)actionPredictionInternalBuildShadowLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionInternalBuildShadowLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)actionPredictionSessionLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionSessionLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)actionPredictionInternalBuildSessionLogSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionInternalBuildSessionLogSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)notificationsInternalSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NotificationsInternalSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)notificationsSeedSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NotificationsSeedSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)notificationsCustomerSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NotificationsCustomerSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.02;
  }

  return v5;
}

- (double)maximumSlotResolutionDatabaseEntryAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumSlotResolutionDatabaseEntryAge"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (double)maximumSlotFeedbackDatabaseEntryAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumSlotFeedbackDatabaseEntryAge"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 90.0;
  }

  return v5;
}

- (double)maximumActionFeedbackMeanCalculationEntryAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumActionFeedbackMeanCalculationEntryAge"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 7.0;
  }

  return v5;
}

- (int)actionPredictionFirstStageBeamWidth
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionFirstStageBeamWidth"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (int)actionPredictionFirstStageBeamWidthMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionFirstStageBeamWidthMacOS"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (int)minimumTimespanForOnceOffActions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinimumTimespanForOnceOffActions"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 1800;
  }

  return v4;
}

- (int)extraAppsToLog
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ExtraAppsToLog"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)numberOfTopSASAppsToLog
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NumberOfTopSASAppsToLog"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)extraSASAppsToLog
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ExtraSASAppsToLog"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)extraIntentsToLog
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ExtraIntentsToLog"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)appConnectionMinTotalLaunches
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConnectionMinTotalLaunches"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)appConnectionMinAverageLaunches
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppConnectionMinAverageLaunches"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)heuristicActionExperienceHighConfidenceThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicActionExperienceHighConfidenceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)actionExperienceHighConfidenceThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionExperienceHighConfidenceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (int)actionExperienceHighConfidenceAppActionCountThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionExperienceHighConfidenceAppActionCountThreshold"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)heuristicActionExperienceMediumConfidenceThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicActionExperienceMediumConfidenceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (double)actionExperienceMediumConfidenceThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionExperienceMediumConfidenceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = INFINITY;
  }

  return v5;
}

- (int)actionExperienceMediumConfidenceAppActionCountThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionExperienceMediumConfidenceAppActionCountThreshold"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)behavioralHomeScreenActionMinimumConfidenceThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"BehavioralHomeScreenActionMinimumConfidenceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -9000.0;
  }

  return v5;
}

- (BOOL)allowBehavioralPredictionsOnLockscreen
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AllowBehavioralPredictionsOnLockscreen"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)smoothedCountForTimeOfDayStd
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SmoothedCountForTimeOfDayStd"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  return v5;
}

- (double)smoothedCountForCoarseTimeOfDayStd
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SmoothedCountForCoarseTimeOfDayStd"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 60.0;
  }

  return v5;
}

- (double)smoothedBudgetForTimeOfDayStd
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SmoothedBudgetForTimeOfDayStd"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 60.0;
  }

  return v5;
}

- (double)clippingThresholdForGaussianDist
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ClippingThresholdForGaussianDist"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2.0;
  }

  return v5;
}

- (double)slotResolutionRatioSmoothingThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SlotResolutionRatioSmoothingThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (int)locationOfInterestSearchRadius
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LocationOfInterestSearchRadius"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 400;
  }

  return v4;
}

- (id)whitelistedBundlesForAnchorModelLogging
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WhitelistedBundlesForAnchorModelLogging"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)whitelistedActionTypesForAnchorModelLogging
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WhitelistedActionTypesForAnchorModelLogging"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (id)whitelistedActionKeysForHomeScreen
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WhitelistedActionKeysForHomeScreen"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)whitelistedActionTypesForHomeScreen
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WhitelistedActionTypesForHomeScreen"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)blacklistedAppsForAppPredictions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionBlacklistedApps"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)ineligibleRemoteAppsForAppPredictionsMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"IneligibleRemoteAppsForAppPredictionsMacOS"];
  v3 = v2;
  v4 = MEMORY[0x277CBEBF8];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_412];

  return v6;
}

- (id)blacklistedAppsForLockscreenPredictions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionBlacklistedAppActionsForLockscreenPredictions"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)blacklistedAppActionsHelper:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:a3];
  v5 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if ([v11 count] != 2)
        {
          [(_ATXGlobals *)a2 blacklistedAppActionsHelper:?];
        }

        v12 = objc_alloc(MEMORY[0x277D42648]);
        v13 = [v11 firstObject];
        v14 = [v11 lastObject];
        v15 = [v12 initWithFirst:v13 second:v14];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = [v5 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (int)maxMagicalMomentsPredictions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MagicalMomentsMaxPredictions"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)maxSettingsZKWSuggestionsToBlend
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SettingsZKWMaxPredictions"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (id)magicalMomentsEnabledPredictionExperts
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MagicalMomentsEnabledPredictionExperts"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (double)cacheRefreshIntervalForDisabledAppConsumerSubType
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"CacheRefreshIntervalForDisabledAppConsumerSubType"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 3600.0;
  }

  return v4;
}

- (double)cacheRefreshIntervalForDisabledActionConsumerSubType
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"CacheRefreshIntervalForDisabledActionConsumerSubType"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 3600.0;
  }

  return v4;
}

- (double)defaultPeriodicLoggerUploadIntervalSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PeriodicLoggerUploadIntervalSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 604801.0;
  }

  return v5;
}

- (double)defaultPeriodicLoggerEnrollmentPeriodSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PeriodicLoggerEnrollmentPeriodSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 2592001.0;
  }

  return v5;
}

- (double)defaultPeriodicLoggerEnrollmentRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PeriodicLoggerEnrollmentRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.1;
  }

  return v5;
}

- (BOOL)sessionLoggingHomeDistanceEnable
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingHomeDistanceEnable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)sessionLoggingWorkDistanceEnable
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingWorkDistanceEnable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)sessionLoggingSchoolDistanceEnable
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingSchoolDistanceEnable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)sessionLoggingGymDistanceEnable
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingGymDistanceEnable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)sessionLoggingDistanceAccuracy
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingDistanceAccuracy"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5000.0;
  }

  return v5;
}

- (BOOL)sessionLoggingCurrentLOITypeEnable
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingLOITypeEnable"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)sessionLoggingAppSequenceLength
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingAppSequenceLength"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)sessionLoggingUniqueAppActionSequenceLength
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SessionLoggingUniqueAppActionSequenceLength"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)nsuaDonationWeight
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NSUADonationWeight"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (double)predictionsPerAppActionLimit
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PredictionsPerAppActionLimit"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (unint64_t)predictionsPerAppActionLimitMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PredictionsPerAppActionLimitMacOS"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (unint64_t)menuItemPredictionsPerAppLimitMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MenuItemPredictionsPerAppLimitMacOS"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (double)predictionsForMultiStageLoggingLimit
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PredictionsForMultiStageLoggingLimit"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 10.0;
  }

  return v5;
}

- (double)penaltyForMultipleActionsPerApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PenaltyForMultipleActionsPerApp"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -10000.0;
  }

  return v5;
}

- (id)approvedSiriKitIntents
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ApprovedSiriKitIntents"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)messageContentBlacklist
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MessageContentBlacklist"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (int)messageContentTimeElapsed
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MessageContentSecondsElapsed"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 5400;
  }

  return v4;
}

- (BOOL)onlyUseEligibleForPrediction
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"OnlyUseEligibleForPrediction"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)onlyAcceptBecomeCurrentNSUAs
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"OnlyAcceptBecomeCurrentNSUAs"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)previousAppActionCompareCount
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PreviousAppActionCompareCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (int)maxHeuristicAppActionCount
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxHeuristicAppActionCount"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (int)maxValidATXActionResponseCacheAgeSec
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxValidATXResponseCacheAgeSec"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 3600;
  }

  return v4;
}

- (int)actionSpotlightCaptureRateSecondsAfterSessionEnd
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionSpotlightCaptureRateSecondsAfterSessionEnd"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 15;
  }

  return v4;
}

- (int)actionSpotlightCaptureRateForwardQueryThresholdSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionSpotlightCaptureRateForwardQueryThresholdSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 180;
  }

  return v4;
}

- (int)actionSpotlightCaptureRateActionAppLaunchThresholdSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionSpotlightCaptureRateActionAppLaunchThresholdSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (int)actionPredictionSessionLoggingBottomBlockMaxItemsToLog
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionSessionLoggingBottomBlockMaxItemsToLog"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)actionPredictionSessionLoggingDurationResolutionSec
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionSessionLoggingDurationResolutionSec"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10.0;
  }

  return v4;
}

- (double)appPredictionGlobalScoreMultiplierPerApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionGlobalScoreMultiplier"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 50.0;
  }

  return v5;
}

- (double)appPredictionBlendedScoreNormalizationConstant
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionBlendedScoreNormalizationConstant"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1000.0;
  }

  return v5;
}

- (int)numberOfRandomAppActionTypesToKeepForLogging
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NumberOfRandomAppActionTypesToKeepForLogging"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (int)numberOfRandomSlotsToKeepForLogging
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NumberOfRandomSlotsToKeepForLogging"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (int)numberOfActionsToKeepForLogging
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"NumberOfActionsToKeepForLogging"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 120;
  }

  return v4;
}

- (int)maximumSpotlightPredictions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumSpotlightPredictions"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (int)maximumParameterCombinations
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaximumParameterCombinations"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (int)maxNumberOfActionTypesPerApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxNumberOfActionTypesPerApp"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

- (double)heuristicsBaseScore
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicsBaseScore"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 20.0;
  }

  return v5;
}

- (int)heuristicsEngagementPriorAlpha
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicsEngagementPriorAlpha"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 30;
  }

  return v4;
}

- (int)heuristicsEngagementPriorBeta
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicsEngagementPriorBeta"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 70;
  }

  return v4;
}

- (int)fallbackActionsEngagementPriorAlpha
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"FallbackActionsEngagementPriorAlpha"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (int)fallbackActionsEngagementPriorBeta
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"FallbackActionsEngagementPriorBeta"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 40;
  }

  return v4;
}

- (int)donationWeighingScheme
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DonationWeighingScheme"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)donationWeighingStrength
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DonationWeighingStrength"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.0;
  }

  return v5;
}

- (int)spotlightMaxValidCacheAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"SpotlightMaxValidCacheAgeInSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 86400;
  }

  return v4;
}

- (int)lockscreenMaxValidCacheAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LockscreenMaxValidCacheAgeInSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 86400;
  }

  return v4;
}

- (int)homeScreenMaxValidCacheAge
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HomeScreenMaxValidCacheAgeInSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 86400;
  }

  return v4;
}

- (int)minDistanceToDropOffLocationInMetersForRequestRideIntent
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MinDistanceToDropOffLocationInMetersForRequestRideIntent"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 4000;
  }

  return v4;
}

- (int)maxDistanceToDropOffLocationInMetersForRequestRideIntent
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxDistanceToDropOffLocationInMetersForRequestRideIntent"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 121000;
  }

  return v4;
}

- (double)predictedRouteAcceptThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXPredictedRouteAcceptThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)shouldIgnoreUpcomingMediaExpirationDateForTV
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ShouldIgnoreUpcomingMediaExpirationDateForTV"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1.0;
  }

  return v4;
}

- (id)personalizationBlacklistedBundleIds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesPersonalizationBlacklistedBundleIds"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (unint64_t)personalizationRequiredActionHistorySeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesPersonalizationRequiredActionHistorySeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 1209600;
  }

  return v4;
}

- (unint64_t)personalizationRequiredCountForRelevance
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesPersonalizationRequiredCountForRelevance"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

- (id)triggerPresetMinutes
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesTriggerPresetMinutes"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &unk_283A58AD8;
  }

  v5 = v4;

  return v4;
}

- (unint64_t)transitionLookaheadMaxSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesTransitionLookaheadMaxSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 43200;
  }

  return v4;
}

- (unint64_t)transitionLookaheadMinSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DailyRoutinesTransitionLookaheadMinSeconds"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appPredictionBlendingModelVersion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionBlendingModelVersion"];
  v3 = NSClassFromString(&cfstr_Nsstring.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"1.0";
  }

  v8 = v7;

  return v7;
}

- (id)actionFallbacksBlendingModelVersion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionFallbacksBlendingModelVersion"];
  v3 = NSClassFromString(&cfstr_Nsstring.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"1.0";
  }

  v8 = v7;

  return v7;
}

- (id)heuristicPredictionBlendingModelVersion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"HeuristicPredictionBlendingModelVersion"];
  v3 = NSClassFromString(&cfstr_Nsstring.isa);
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"1.0";
  }

  v8 = v7;

  return v7;
}

- (id)enabledFallbackActions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"EnabledFallbackActions"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)enabledFallbackActionsMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"EnabledFallbackActionsMacOS"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)penalizedFallbackActions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"PenalizedFallbackActions"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (int)maxNumberOfActionDataMetricsToLogViaAWD
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxNumberOfActionDataMetricsToLogViaAWD"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (double)launchAndLocationHarvesterSamplingRate
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LaunchAndLocationHarvesterSamplingRate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.05;
  }

  return v5;
}

- (id)launchAndLocationHarvesterAppBlacklist
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LaunchAndLocationHarvesterAppBlacklist"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)launchAndLocationHarvesterGenreIdBlacklist
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"LaunchAndLocationHarvesterGenreIdBlacklist"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (unint64_t)recentAppsHeuristicMaxRecents
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"RecentAppsHeuristicMaxRecents"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (double)recentAppsHeuristicLookBackSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"RecentAppsHeuristicLookBackSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

- (BOOL)disableLocationQualityChecksForHeroApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DisableLocationQualityChecksForHeroApp"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)whitelistedAnchorsForMagicalMomentsOnHomeScreen
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"WhitelistedAnchorsForMagicalMomentsOnHomeScreen"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (unint64_t)maxElementsToPerisistPerEntityForModeBackup
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"MaxElementsToPerisistPerEntityForModeBackup"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)scoreThresholdForSavingAppsToModeFiles
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ScoreThresholdForSavingAppsToModeFiles"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.05;
  }

  return v5;
}

- (double)scoreThresholdForSavingContactsToModeFiles
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ScoreThresholdForSavingContactsToModeFiles"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.05;
  }

  return v5;
}

- (double)scoreThresholdForBehavioralModeRelevance
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ScoreThresholdForBehavioralModeRelevance"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.05;
  }

  return v5;
}

- (double)behavioralModeRelevanceDuration
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"BehavioralModeRelevanceDuration"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

- (double)behavioralModeRelevanceDelay
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"BehavioralModeRelevanceDelay"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 60.0;
  }

  return v5;
}

- (double)appPredictionMediumConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionMediumConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.65;
  }

  return v5;
}

- (double)appPredictionHighConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"AppPredictionHighConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.8;
  }

  return v5;
}

- (double)actionPredictionMediumConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionMediumConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.3;
  }

  return v5;
}

- (double)actionPredictionHighConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ActionPredictionHighConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)documentPredictionMediumConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentPredictionMediumConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.65;
  }

  return v5;
}

- (double)documentPredictionHighConfidenceThresholdForBlendingLayerCoreML
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"DocumentPredictionHighConfidenceThresholdForBlendingLayerCoreML"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.8;
  }

  return v5;
}

- (id)toolKitBasedFallbackActionsMacOS
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ToolKitBasedFallbackActionsMacOS"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (void)blacklistedAppActionsHelper:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXGlobals.m" lineNumber:784 description:@"Blacklisted item must have exactly two items"];
}

@end
@interface EKDebugPreferences
+ (id)shared;
- (EKDebugPreferences)init;
- (NSString)overriddenTravelAdvisoryHypothesisCurrentTrafficDensity;
- (NSString)overriddenTravelAdvisoryHypothesisRouteName;
- (NSString)overriddenTravelAdvisoryHypothesisTransportType;
- (NSString)overriddenTravelAdvisoryHypothesisTravelState;
- (double)availabilityFreshnessWindow;
- (double)overriddenTravelAdvisoryHypothesisAggressiveTravelTime;
- (double)overriddenTravelAdvisoryHypothesisConservativeTravelTime;
- (double)overriddenTravelAdvisoryHypothesisEstimatedTravelTime;
- (void)setAvailabilityFreshnessWindow:(double)window;
- (void)setOverriddenTravelAdvisoryHypothesisAggressiveTravelTime:(double)time;
- (void)setOverriddenTravelAdvisoryHypothesisConservativeTravelTime:(double)time;
- (void)setOverriddenTravelAdvisoryHypothesisEstimatedTravelTime:(double)time;
@end

@implementation EKDebugPreferences

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[EKDebugPreferences shared];
  }

  v3 = shared_sharedPreferences_0;

  return v3;
}

uint64_t __28__EKDebugPreferences_shared__block_invoke()
{
  shared_sharedPreferences_0 = objc_alloc_init(EKDebugPreferences);

  return MEMORY[0x1EEE66BB8]();
}

- (EKDebugPreferences)init
{
  v7.receiver = self;
  v7.super_class = EKDebugPreferences;
  v2 = [(EKDebugPreferences *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6993020]);
    v4 = [v3 initWithDomain:*MEMORY[0x1E6993168]];
    preferences = v2->_preferences;
    v2->_preferences = v4;

    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overrideTravelAdvisoryHypothesis"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisTransportType"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisConservativeTravelTime"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisEstimatedTravelTime"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisAggressiveTravelTime"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisSupportsLiveTraffic"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisCurrentTrafficDensity"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisRouteName"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisTravelState"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.preventMarkingTravelAdvisoryEntriesAsDismissed"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.forceDisplayOfNewTravelAdvisoryHypotheses"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.saveGeocodedLocationsInTravelEngine"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.performAgendaEntryEqualityChecksInTravelEngine"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.verifyIntegrityOfAvailabilityTimeSearchTimelines"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.showDepartureDateForTransitTimeToLeave"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.shouldBypassTravelEngineThrottle"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkit.debug.preference.notification.syntheticTravelAdvisoriesEnabled"];
  }

  return v2;
}

- (double)availabilityFreshnessWindow
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"availabilityFreshnessWindow" expectedClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 120.0;
  }

  return v5;
}

- (void)setAvailabilityFreshnessWindow:(double)window
{
  if (window >= 0.0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:window];
    [(CalPreferences *)self->_preferences setValueForPreference:@"availabilityFreshnessWindow" value:v4 notificationName:@"com.apple.eventkit.debug.preference.notification.availabilityFreshnessWindow"];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKDebugPreferences setAvailabilityFreshnessWindow:];
  }
}

- (NSString)overriddenTravelAdvisoryHypothesisTransportType
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisTransportType" expectedClass:v3];
}

- (double)overriddenTravelAdvisoryHypothesisConservativeTravelTime
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisConservativeTravelTime" expectedClass:objc_opt_class()];
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

- (void)setOverriddenTravelAdvisoryHypothesisConservativeTravelTime:(double)time
{
  if (time >= 0.0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [(CalPreferences *)self->_preferences setValueForPreference:@"overriddenTravelAdvisoryHypothesisConservativeTravelTime" value:v4 notificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisConservativeTravelTime"];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKDebugPreferences setOverriddenTravelAdvisoryHypothesisConservativeTravelTime:];
  }
}

- (double)overriddenTravelAdvisoryHypothesisEstimatedTravelTime
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisEstimatedTravelTime" expectedClass:objc_opt_class()];
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

- (void)setOverriddenTravelAdvisoryHypothesisEstimatedTravelTime:(double)time
{
  if (time >= 0.0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [(CalPreferences *)self->_preferences setValueForPreference:@"overriddenTravelAdvisoryHypothesisEstimatedTravelTime" value:v4 notificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisEstimatedTravelTime"];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKDebugPreferences setOverriddenTravelAdvisoryHypothesisEstimatedTravelTime:];
  }
}

- (double)overriddenTravelAdvisoryHypothesisAggressiveTravelTime
{
  v2 = [(CalPreferences *)self->_preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisAggressiveTravelTime" expectedClass:objc_opt_class()];
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

- (void)setOverriddenTravelAdvisoryHypothesisAggressiveTravelTime:(double)time
{
  if (time >= 0.0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [(CalPreferences *)self->_preferences setValueForPreference:@"overriddenTravelAdvisoryHypothesisAggressiveTravelTime" value:v4 notificationName:@"com.apple.eventkit.debug.preference.notification.overriddenTravelAdvisoryHypothesisAggressiveTravelTime"];
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    [EKDebugPreferences setOverriddenTravelAdvisoryHypothesisAggressiveTravelTime:];
  }
}

- (NSString)overriddenTravelAdvisoryHypothesisCurrentTrafficDensity
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisCurrentTrafficDensity" expectedClass:v3];
}

- (NSString)overriddenTravelAdvisoryHypothesisRouteName
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisRouteName" expectedClass:v3];
}

- (NSString)overriddenTravelAdvisoryHypothesisTravelState
{
  preferences = self->_preferences;
  v3 = objc_opt_class();

  return [(CalPreferences *)preferences getValueForPreference:@"overriddenTravelAdvisoryHypothesisTravelState" expectedClass:v3];
}

- (void)setAvailabilityFreshnessWindow:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Will not set an availability freshness window of less than 0.  Given value: [%f]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setOverriddenTravelAdvisoryHypothesisConservativeTravelTime:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Will not set an overridden travel advisory hypothesis conservative travel time of less than 0.  Given value: [%f]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setOverriddenTravelAdvisoryHypothesisEstimatedTravelTime:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Will not set an overridden travel advisory hypothesis estimated travel time of less than 0.  Given value: [%f]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setOverriddenTravelAdvisoryHypothesisAggressiveTravelTime:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_4(&dword_1A805E000, v0, v1, "Will not set an overridden travel advisory hypothesis aggressive travel time of less than 0.  Given value: [%f]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
@interface ATXNotificationManagementMAConstants
+ (ATXNotificationManagementMAConstants)sharedInstance;
- (ATXNotificationManagementMAConstants)init;
- (double)backupStartTimeoutSeconds;
- (double)backupTimeoutScaleFactor;
- (double)interruptionManagementStartTimeoutSeconds;
- (double)interruptionManagementTimeoutScaleFactor;
- (double)interruptionManagerPromptAllowScoreThreshold;
- (double)interruptionManagerPromptBlockScoreThreshold;
- (double)interruptionManagerRecommendationDenyListThresholdForApps;
- (double)interruptionManagerRecommendationDenyListThresholdForContacts;
- (double)interruptionManagerRecommendationThresholdForApps;
- (double)interruptionManagerRecommendationThresholdForContacts;
- (double)interruptionManagerThresholdForCandidateAppSuggestionForAllowList;
- (double)interruptionManagerThresholdForCandidateAppSuggestionForDenyList;
- (double)interruptionManagerThresholdForCandidateContactSuggestionForAllowList;
- (double)interruptionManagerThresholdForCandidateContactSuggestionForDenyList;
- (double)interruptionManagerThresholdForRecommendedAppSuggestionForAllowList;
- (double)interruptionManagerThresholdForRecommendedAppSuggestionForDenyList;
- (double)interruptionManagerThresholdForRecommendedContactSuggestionForAllowList;
- (double)interruptionManagerThresholdForRecommendedContactSuggestionForDenyList;
- (double)sendToDigestEngagementRateThreshold;
- (double)sendToDigestStartTimeoutSeconds;
- (double)sendToDigestTimeoutScaleFactor;
- (double)smartPauseManagerEngagementRateThresholdForApp;
- (double)smartPauseManagerEngagementRateThresholdForThread;
- (double)smartPauseManagerExpirationSeconds;
- (double)smartPauseManagerPauseDurationSeconds;
- (double)smartPauseManagerRefreshIntervalSeconds;
- (double)smartPauseStartTimeoutSeconds;
- (double)smartPauseTimeoutScaleFactor;
- (double)thresholdForShowingDigestOnboardingSuggestion;
- (double)thresholdForShowingDigestOnboardingSuggestionToSeedUsers;
- (double)urgencyTuningStartTimeoutSeconds;
- (double)urgencyTuningTimeoutScaleFactor;
- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfNotifications;
- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfNotificationsPerApp;
- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfSuggestions;
- (int64_t)ATXNotificationAndSuggestionDatabase_pruningBatchSize;
- (int64_t)ATXUserEducationSuggestionExploreFacesServer_gracePeriod;
- (int64_t)ATXUserEducationSuggestionExploreFacesServer_maxHour;
- (int64_t)ATXUserEducationSuggestionExploreFacesServer_minHour;
- (int64_t)ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion;
- (int64_t)ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds;
- (int64_t)chinSuggestionsAreDisabled;
- (int64_t)digestOnboardingSuggestionHour;
- (int64_t)digestOnboardingSuggestionMinute;
- (int64_t)interruptionManagerMaxAppSuggestionsForDenyList;
- (int64_t)interruptionManagerMaxContactSuggestionsForDenyList;
- (int64_t)interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForAllowList;
- (int64_t)interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForDenyList;
- (int64_t)interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForAllowList;
- (int64_t)interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForDenyList;
- (int64_t)interruptionManagerMaxSuggestions;
- (int64_t)numIgnoresToReject;
- (int64_t)numPreviousDaysToCheckForNotificationProblemForDigestOnboardingSuggestion;
- (int64_t)sendMessagesToDigestManagerMaxNumNonEngagementsAllowedForMessageNotifications;
- (int64_t)sendToDigestThresholdForNumNonEngagements;
- (int64_t)smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForApp;
- (int64_t)smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForThread;
- (int64_t)urgencyTuningManagerMaxNumNonEngagementsAllowedForUrgentNotifications;
- (unint64_t)digestOnboardingSuggestionMinimumActiveNotifications;
- (unint64_t)digestOnboardingSuggestionMinimumUniqueBundleIds;
@end

@implementation ATXNotificationManagementMAConstants

- (ATXNotificationManagementMAConstants)init
{
  v8.receiver = self;
  v8.super_class = ATXNotificationManagementMAConstants;
  v2 = [(ATXNotificationManagementMAConstants *)&v8 init];
  if (v2)
  {
    v3 = [ATXAssets2 dictionaryWithLegacyPathForClass:objc_opt_class()];
    v4 = [[ATXAssetsABHelper alloc] initWithAssetContents:v3];
    abGroupContents = [(ATXAssetsABHelper *)v4 abGroupContents];
    parameters = v2->_parameters;
    v2->_parameters = abGroupContents;
  }

  return v2;
}

+ (ATXNotificationManagementMAConstants)sharedInstance
{
  if (sharedInstance__pasOnceToken2_0 != -1)
  {
    +[ATXNotificationManagementMAConstants sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_11;

  return v3;
}

void __54__ATXNotificationManagementMAConstants_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_11;
  sharedInstance__pasExprOnceResult_11 = v1;

  objc_autoreleasePoolPop(v0);
}

- (double)interruptionManagerRecommendationThresholdForContacts
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerRecommendationThresholdForContacts"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (double)interruptionManagerRecommendationThresholdForApps
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerRecommendationThresholdForApps"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.4;
  }

  return v5;
}

- (double)interruptionManagerRecommendationDenyListThresholdForApps
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerRecommendationDenyListThresholdForApps"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.4;
  }

  return v5;
}

- (double)interruptionManagerRecommendationDenyListThresholdForContacts
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerRecommendationDenyListThresholdForContacts"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (int64_t)interruptionManagerMaxSuggestions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxSuggestions"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxAppSuggestionsForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxAppSuggestionsForDenyList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 12;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxContactSuggestionsForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxContactSuggestionsForDenyList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  return integerValue;
}

- (double)interruptionManagerPromptAllowScoreThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerPromptAllowScoreThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.7;
  }

  return v5;
}

- (double)interruptionManagerPromptBlockScoreThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerPromptBlockScoreThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -0.01;
  }

  return v5;
}

- (double)thresholdForShowingDigestOnboardingSuggestion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"thresholdForShowingDigestOnboardingSuggestion"];
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

- (int64_t)numPreviousDaysToCheckForNotificationProblemForDigestOnboardingSuggestion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"numPreviousDaysToCheckForNotificationProblemForDigestOnboardingSuggestion"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (int64_t)digestOnboardingSuggestionHour
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"digestOnboardingSuggestionHour"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 18;
  }

  return integerValue;
}

- (int64_t)digestOnboardingSuggestionMinute
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"digestOnboardingSuggestionMinute"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (double)smartPauseManagerPauseDurationSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerPauseDurationSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1800.0;
  }

  return v5;
}

- (double)smartPauseManagerExpirationSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerExpirationSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 600.0;
  }

  return v5;
}

- (double)smartPauseManagerRefreshIntervalSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerRefreshIntervalSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 5.0;
  }

  return v5;
}

- (int64_t)urgencyTuningManagerMaxNumNonEngagementsAllowedForUrgentNotifications
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"urgencyTuningManagerMaxNumNonEngagementsAllowedForUrgentNotifications"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (int64_t)sendMessagesToDigestManagerMaxNumNonEngagementsAllowedForMessageNotifications
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"sendMessagesToDigestManagerMaxNumNonEngagementsAllowedForMessageNotifications"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (double)thresholdForShowingDigestOnboardingSuggestionToSeedUsers
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"thresholdForShowingDigestOnboardingSuggestionToSeedUsers"];
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

- (int64_t)smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForThread
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForThread"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 15;
  }

  return integerValue;
}

- (int64_t)smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerThresholdForNumNotificationsReceivedInLastFiveMinutesForApp"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  return integerValue;
}

- (double)smartPauseManagerEngagementRateThresholdForThread
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerEngagementRateThresholdForThread"];
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

- (double)smartPauseManagerEngagementRateThresholdForApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseManagerEngagementRateThresholdForApp"];
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

- (double)sendToDigestEngagementRateThreshold
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"sendToDigestEngagementRateThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.15;
  }

  return v5;
}

- (int64_t)sendToDigestThresholdForNumNonEngagements
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"sendToDigestThresholdForNumNonEngagements"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  return integerValue;
}

- (double)urgencyTuningStartTimeoutSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"urgencyTuningStartTimeoutSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 604800.0;
  }

  return v5;
}

- (double)urgencyTuningTimeoutScaleFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"urgencyTuningTimeoutScaleFactor"];
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

- (double)smartPauseStartTimeoutSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseStartTimeoutSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 86400.0;
  }

  return v5;
}

- (double)smartPauseTimeoutScaleFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"smartPauseTimeoutScaleFactor"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 1.5;
  }

  return v5;
}

- (double)interruptionManagementStartTimeoutSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagementStartTimeoutSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 604800.0;
  }

  return v5;
}

- (double)interruptionManagementTimeoutScaleFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagementTimeoutScaleFactor"];
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

- (double)sendToDigestStartTimeoutSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"sendToDigestStartTimeoutSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 604800.0;
  }

  return v5;
}

- (double)sendToDigestTimeoutScaleFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"sendToDigestTimeoutScaleFactor"];
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

- (double)backupStartTimeoutSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"backupStartTimeoutSeconds"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 604800.0;
  }

  return v5;
}

- (double)backupTimeoutScaleFactor
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"backupTimeoutScaleFactor"];
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

- (int64_t)numIgnoresToReject
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"numIgnoresToReject"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (int64_t)chinSuggestionsAreDisabled
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"chinSuggestionsAreDisabled"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)digestOnboardingSuggestionMinimumActiveNotifications
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"digestOnboardingSuggestionMinimumActiveNotifications"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 5;
  }

  return integerValue;
}

- (unint64_t)digestOnboardingSuggestionMinimumUniqueBundleIds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"digestOnboardingSuggestionMinimumUniqueBundleIds"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForDenyList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 11;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxRecommendedAndCandidateContactSuggestionsForAllowList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 11;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForDenyList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 11;
  }

  return integerValue;
}

- (int64_t)interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerMaxRecommendedAndCandidateAppSuggestionsForAllowList"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 11;
  }

  return integerValue;
}

- (double)interruptionManagerThresholdForRecommendedContactSuggestionForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForRecommendedContactSuggestionForAllowList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (double)interruptionManagerThresholdForRecommendedContactSuggestionForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForRecommendedContactSuggestionForDenyList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.35;
  }

  return v5;
}

- (double)interruptionManagerThresholdForCandidateContactSuggestionForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForCandidateContactSuggestionForAllowList"];
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

- (double)interruptionManagerThresholdForCandidateContactSuggestionForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForCandidateContactSuggestionForDenyList"];
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

- (double)interruptionManagerThresholdForRecommendedAppSuggestionForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForRecommendedAppSuggestionForAllowList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.4;
  }

  return v5;
}

- (double)interruptionManagerThresholdForRecommendedAppSuggestionForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForRecommendedAppSuggestionForDenyList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.4;
  }

  return v5;
}

- (double)interruptionManagerThresholdForCandidateAppSuggestionForAllowList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForCandidateAppSuggestionForAllowList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.15;
  }

  return v5;
}

- (double)interruptionManagerThresholdForCandidateAppSuggestionForDenyList
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"interruptionManagerThresholdForCandidateAppSuggestionForDenyList"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.15;
  }

  return v5;
}

- (int64_t)ATXUserEducationSuggestionExploreFacesServer_minHour
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXUserEducationSuggestionExploreFacesServer_minHour"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 18;
  }

  return integerValue;
}

- (int64_t)ATXUserEducationSuggestionExploreFacesServer_maxHour
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXUserEducationSuggestionExploreFacesServer_maxHour"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 22;
  }

  return integerValue;
}

- (int64_t)ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3600;
  }

  return integerValue;
}

- (int64_t)ATXUserEducationSuggestionExploreFacesServer_gracePeriod
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXUserEducationSuggestionExploreFacesServer_gracePeriod"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 1800;
  }

  return integerValue;
}

- (int64_t)ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfNotificationsPerApp
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXNotificationAndSuggestionDatabase_maxNumberOfNotificationsPerApp"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 10000;
  }

  return integerValue;
}

- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfNotifications
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXNotificationAndSuggestionDatabase_maxNumberOfNotifications"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 100000;
  }

  return integerValue;
}

- (int64_t)ATXNotificationAndSuggestionDatabase_maxNumberOfSuggestions
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXNotificationAndSuggestionDatabase_maxNumberOfSuggestions"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 100000;
  }

  return integerValue;
}

- (int64_t)ATXNotificationAndSuggestionDatabase_pruningBatchSize
{
  v2 = [(NSDictionary *)self->_parameters objectForKeyedSubscript:@"ATXNotificationAndSuggestionDatabase_pruningBatchSize"];
  v3 = v2;
  if (v2)
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 5000;
  }

  return integerValue;
}

@end
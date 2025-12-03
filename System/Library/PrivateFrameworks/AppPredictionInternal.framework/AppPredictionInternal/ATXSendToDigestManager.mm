@interface ATXSendToDigestManager
- (ATXSendToDigestManager)init;
- (ATXSendToDigestManager)initWithDataStore:(id)store;
- (BOOL)bundleIdEligibleForSendToDigestSuggestions:(id)suggestions;
- (id)_proposeSendToDigestForNotification:(id)notification bundleData:(id)data;
- (id)activeSuggestions;
- (id)currentSuggestionsGivenCandiateNotifications:(id)notifications;
@end

@implementation ATXSendToDigestManager

- (ATXSendToDigestManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSendToDigestManager *)self initWithDataStore:v3];

  return v4;
}

- (ATXSendToDigestManager)initWithDataStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ATXSendToDigestManager;
  v6 = [(ATXSendToDigestManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    v8 = objc_opt_new();
    notificationSettingsReader = v7->_notificationSettingsReader;
    v7->_notificationSettingsReader = v8;

    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    notificationManagementMAConstants = v7->_notificationManagementMAConstants;
    v7->_notificationManagementMAConstants = mEMORY[0x277CEB710];
  }

  return v7;
}

- (BOOL)bundleIdEligibleForSendToDigestSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader doesAppSendNotificationsToDigest:suggestionsCopy]& 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [ATXSessionTaggingAppEntity genreIdForBundleId:suggestionsCopy];
    v7 = v6;
    v8 = &unk_283A575C0;
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v10 = [MEMORY[0x277CBEB98] setWithArray:&unk_283A58BF8];
    v5 = [v10 containsObject:v9];
  }

  return v5;
}

- (id)currentSuggestionsGivenCandiateNotifications:(id)notifications
{
  notificationsCopy = notifications;
  notificationDigestDeliveryTimes = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader notificationDigestDeliveryTimes];
  v6 = [notificationDigestDeliveryTimes count];

  if (v6)
  {
    dataStore = self->_dataStore;
    v8 = [notificationsCopy _pas_mappedArrayWithTransform:&__block_literal_global_231];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = [(ATXNotificationAndSuggestionDatastore *)dataStore getSmartPauseFeaturesForBundleIds:v8 sinceTimestamp:v9 + -2592000.0];

    v11 = [ATXSmartPauseDatabaseQueryResult groupByBundleId:v10];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__ATXSendToDigestManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2;
    v15[3] = &unk_2785A10E0;
    v16 = v11;
    selfCopy = self;
    v12 = v11;
    v13 = [notificationsCopy _pas_mappedArrayWithTransform:v15];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

id __71__ATXSendToDigestManager_currentSuggestionsGivenCandiateNotifications___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 bundleID];
    v7 = [v5 objectForKeyedSubscript:v6];

    v8 = [*(a1 + 40) _proposeSendToDigestForNotification:v3 bundleData:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)activeSuggestions
{
  v3 = [(ATXNotificationAndSuggestionDatastore *)self->_dataStore getTopOfProminentStackNotificationsWithLimit:10];
  v4 = [(ATXSendToDigestManager *)self currentSuggestionsGivenCandiateNotifications:v3];

  return v4;
}

- (id)_proposeSendToDigestForNotification:(id)notification bundleData:(id)data
{
  notificationCopy = notification;
  dataCopy = data;
  countPositiveEngagements = [dataCopy countPositiveEngagements];
  countNotifications = [dataCopy countNotifications];

  bundleID = [notificationCopy bundleID];
  uuid = [notificationCopy uuid];
  if (([notificationCopy isMessage] & 1) != 0 || objc_msgSend(notificationCopy, "urgency") == 1 || (-[ATXNotificationManagementMAConstants sendToDigestEngagementRateThreshold](self->_notificationManagementMAConstants, "sendToDigestEngagementRateThreshold"), v12 < countPositiveEngagements / countNotifications) || countNotifications - countPositiveEngagements <= -[ATXNotificationManagementMAConstants sendToDigestThresholdForNumNonEngagements](self->_notificationManagementMAConstants, "sendToDigestThresholdForNumNonEngagements") || !-[ATXSendToDigestManager bundleIdEligibleForSendToDigestSuggestions:](self, "bundleIdEligibleForSendToDigestSuggestions:", bundleID))
  {
    v16 = 0;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277CEB6F0]);
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CBEAA8] now];
    v16 = [v13 initSendToDigestSuggestionWithUUID:v14 bundleID:bundleID timestamp:v15 triggerNotificationUUID:uuid];
  }

  return v16;
}

@end
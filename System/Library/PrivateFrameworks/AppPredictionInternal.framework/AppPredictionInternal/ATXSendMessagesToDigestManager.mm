@interface ATXSendMessagesToDigestManager
- (ATXSendMessagesToDigestManager)init;
- (ATXSendMessagesToDigestManager)initWithDataStore:(id)store;
- (BOOL)bundleIdIsEligibleForSendMessagesToDigestSuggestions:(id)suggestions;
- (id)activeSuggestions;
- (id)sendMessagesToDigestSuggestion:(id)suggestion uuid:(id)uuid engagementStatus:(id)status;
@end

@implementation ATXSendMessagesToDigestManager

- (ATXSendMessagesToDigestManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXSendMessagesToDigestManager *)self initWithDataStore:v3];

  return v4;
}

- (ATXSendMessagesToDigestManager)initWithDataStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ATXSendMessagesToDigestManager;
  v6 = [(ATXSendMessagesToDigestManager *)&v13 init];
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

- (BOOL)bundleIdIsEligibleForSendMessagesToDigestSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ([(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader doesAppSendNotificationsToDigest:suggestionsCopy])
  {
    v5 = [(ATXNotificationSettingsReaderProtocol *)self->_notificationSettingsReader doesAppAllowMessageBreakthrough:suggestionsCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)activeSuggestions
{
  dataStore = self->_dataStore;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [(ATXNotificationAndSuggestionDatastore *)dataStore engagementStatusOfActiveAndProminentAndMessageNotificationsSinceTimestamp:?];

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16;
  v13 = __Block_byref_object_dispose__16;
  v14 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ATXSendMessagesToDigestManager_activeSuggestions__block_invoke;
  v8[3] = &unk_278598AC8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __51__ATXSendMessagesToDigestManager_activeSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) bundleIdIsEligibleForSendMessagesToDigestSuggestions:v10])
  {
    v6 = *(a1 + 32);
    v7 = [v5 first];
    v8 = [v5 second];
    v9 = [v6 sendMessagesToDigestSuggestion:v10 uuid:v7 engagementStatus:v8];

    if (v9)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
    }
  }
}

- (id)sendMessagesToDigestSuggestion:(id)suggestion uuid:(id)uuid engagementStatus:(id)status
{
  suggestionCopy = suggestion;
  uuidCopy = uuid;
  statusCopy = status;
  first = [statusCopy first];
  unsignedIntegerValue = [first unsignedIntegerValue];

  second = [statusCopy second];

  unsignedIntegerValue2 = [second unsignedIntegerValue];
  if (unsignedIntegerValue || unsignedIntegerValue2 <= [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants sendMessagesToDigestManagerMaxNumNonEngagementsAllowedForMessageNotifications])
  {
    v18 = 0;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CEB6F0]);
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [v15 initSendToMessagesDigestSuggestionWithUUID:v16 bundleID:suggestionCopy timestamp:v17 triggerNotificationUUID:uuidCopy];
  }

  return v18;
}

@end
@interface ATXUrgencyTuningManager
- (ATXUrgencyTuningManager)init;
- (ATXUrgencyTuningManager)initWithDataStore:(id)store;
- (id)activeSuggestions;
- (id)urgencyTuningSuggestion:(id)suggestion uuid:(id)uuid engagementStatus:(id)status;
@end

@implementation ATXUrgencyTuningManager

- (ATXUrgencyTuningManager)init
{
  v3 = objc_opt_new();
  v4 = [(ATXUrgencyTuningManager *)self initWithDataStore:v3];

  return v4;
}

- (ATXUrgencyTuningManager)initWithDataStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = ATXUrgencyTuningManager;
  v6 = [(ATXUrgencyTuningManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    notificationManagementMAConstants = v7->_notificationManagementMAConstants;
    v7->_notificationManagementMAConstants = mEMORY[0x277CEB710];
  }

  return v7;
}

- (id)activeSuggestions
{
  dataStore = self->_dataStore;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [(ATXNotificationAndSuggestionDatastore *)dataStore engagementStatusOfActiveAndProminentNotificationsWithUrgency:1 sinceTimestamp:?];

  v6 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ATXUrgencyTuningManager_activeSuggestions__block_invoke;
  v11[3] = &unk_27859F1C0;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

void __44__ATXUrgencyTuningManager_activeSuggestions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v6 first];
  v9 = [v6 second];

  v11 = [v5 urgencyTuningSuggestion:v7 uuid:v8 engagementStatus:v9];

  v10 = v11;
  if (v11)
  {
    [*(a1 + 40) addObject:v11];
    v10 = v11;
  }
}

- (id)urgencyTuningSuggestion:(id)suggestion uuid:(id)uuid engagementStatus:(id)status
{
  suggestionCopy = suggestion;
  uuidCopy = uuid;
  statusCopy = status;
  first = [statusCopy first];
  unsignedIntegerValue = [first unsignedIntegerValue];

  second = [statusCopy second];

  unsignedIntegerValue2 = [second unsignedIntegerValue];
  if (unsignedIntegerValue || unsignedIntegerValue2 <= [(ATXNotificationManagementMAConstants *)self->_notificationManagementMAConstants urgencyTuningManagerMaxNumNonEngagementsAllowedForUrgentNotifications])
  {
    v18 = 0;
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CEB6F0]);
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CBEAA8] now];
    v18 = [v15 initUrgencyTuningSuggestionWithUUID:v16 bundleID:suggestionCopy timestamp:v17 triggerNotificationUUID:uuidCopy];
  }

  return v18;
}

@end
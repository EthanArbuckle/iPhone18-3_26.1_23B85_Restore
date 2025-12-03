@interface FRMenuBarClearDataManager
- (BOOL)isSyncingEnabled;
- (FRMenuBarClearDataManager)initWithAccount:(id)account clearReadingHistoryManager:(id)manager personalizationData:(id)data analyticsController:(id)controller newsletterManager:(id)newsletterManager userEventHistoryStorage:(id)storage userActivityManager:(id)activityManager clearableUserEmbedding:(id)self0;
- (void)clearAllData;
- (void)clearHistory;
- (void)clearRecommendations;
- (void)resetIdentifier;
@end

@implementation FRMenuBarClearDataManager

- (FRMenuBarClearDataManager)initWithAccount:(id)account clearReadingHistoryManager:(id)manager personalizationData:(id)data analyticsController:(id)controller newsletterManager:(id)newsletterManager userEventHistoryStorage:(id)storage userActivityManager:(id)activityManager clearableUserEmbedding:(id)self0
{
  accountCopy = account;
  managerCopy = manager;
  dataCopy = data;
  controllerCopy = controller;
  newsletterManagerCopy = newsletterManager;
  storageCopy = storage;
  activityManagerCopy = activityManager;
  embeddingCopy = embedding;
  v28.receiver = self;
  v28.super_class = FRMenuBarClearDataManager;
  v19 = [(FRMenuBarClearDataManager *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v20->_clearReadingHistoryManager, manager);
    objc_storeStrong(&v20->_personalizationData, data);
    objc_storeStrong(&v20->_analyticsController, controller);
    objc_storeStrong(&v20->_newsletterManager, newsletterManager);
    objc_storeStrong(&v20->_userEventHistoryStorage, storage);
    objc_storeStrong(&v20->_userActivityManager, activityManager);
    objc_storeStrong(&v20->_clearableUserEmbedding, embedding);
  }

  return v20;
}

- (BOOL)isSyncingEnabled
{
  account = [(FRMenuBarClearDataManager *)self account];
  isPrivateDataSyncingEnabled = [account isPrivateDataSyncingEnabled];

  return isPrivateDataSyncingEnabled;
}

- (void)clearAllData
{
  [(FRMenuBarClearDataManager *)self clearHistory];
  [(FRMenuBarClearDataManager *)self clearRecommendations];
  [(FRMenuBarClearDataManager *)self resetIdentifier];
  userActivityManager = [(FRMenuBarClearDataManager *)self userActivityManager];
  [userActivityManager clearAllSavedUserActivities];
}

- (void)clearHistory
{
  clearReadingHistoryManager = [(FRMenuBarClearDataManager *)self clearReadingHistoryManager];
  [clearReadingHistoryManager clearHistory];

  [(FRMenuBarClearDataManager *)self clearRecommendations];
  userActivityManager = [(FRMenuBarClearDataManager *)self userActivityManager];
  [userActivityManager clearAllSavedUserActivities];
}

- (void)clearRecommendations
{
  personalizationData = [(FRMenuBarClearDataManager *)self personalizationData];
  [personalizationData clearPersonalizationData];

  userEventHistoryStorage = [(FRMenuBarClearDataManager *)self userEventHistoryStorage];
  [userEventHistoryStorage clearHistory];

  clearableUserEmbedding = [(FRMenuBarClearDataManager *)self clearableUserEmbedding];
  [clearableUserEmbedding clearHistory];

  newsletterManager = [(FRMenuBarClearDataManager *)self newsletterManager];
  [newsletterManager deletePersonalizationVector];

  userActivityManager = [(FRMenuBarClearDataManager *)self userActivityManager];
  [userActivityManager clearAllSavedUserActivities];
}

- (void)resetIdentifier
{
  v3 = +[UIApplication sharedApplication];
  key_window = [v3 key_window];
  windowScene = [key_window windowScene];
  session = [windowScene session];
  persistentIdentifier = [session persistentIdentifier];

  analyticsController = [(FRMenuBarClearDataManager *)self analyticsController];
  [analyticsController endSessionForReason:1 byStartingNewSession:1 resetUserID:1 forSceneID:persistentIdentifier];

  userActivityManager = [(FRMenuBarClearDataManager *)self userActivityManager];
  [userActivityManager clearAllSavedUserActivities];
}

@end
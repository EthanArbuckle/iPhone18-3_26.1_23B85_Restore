@interface FRMenuBarClearDataManager
- (BOOL)isSyncingEnabled;
- (FRMenuBarClearDataManager)initWithAccount:(id)a3 clearReadingHistoryManager:(id)a4 personalizationData:(id)a5 analyticsController:(id)a6 newsletterManager:(id)a7 userEventHistoryStorage:(id)a8 userActivityManager:(id)a9 clearableUserEmbedding:(id)a10;
- (void)clearAllData;
- (void)clearHistory;
- (void)clearRecommendations;
- (void)resetIdentifier;
@end

@implementation FRMenuBarClearDataManager

- (FRMenuBarClearDataManager)initWithAccount:(id)a3 clearReadingHistoryManager:(id)a4 personalizationData:(id)a5 analyticsController:(id)a6 newsletterManager:(id)a7 userEventHistoryStorage:(id)a8 userActivityManager:(id)a9 clearableUserEmbedding:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = FRMenuBarClearDataManager;
  v19 = [(FRMenuBarClearDataManager *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_account, a3);
    objc_storeStrong(&v20->_clearReadingHistoryManager, a4);
    objc_storeStrong(&v20->_personalizationData, a5);
    objc_storeStrong(&v20->_analyticsController, a6);
    objc_storeStrong(&v20->_newsletterManager, a7);
    objc_storeStrong(&v20->_userEventHistoryStorage, a8);
    objc_storeStrong(&v20->_userActivityManager, a9);
    objc_storeStrong(&v20->_clearableUserEmbedding, a10);
  }

  return v20;
}

- (BOOL)isSyncingEnabled
{
  v2 = [(FRMenuBarClearDataManager *)self account];
  v3 = [v2 isPrivateDataSyncingEnabled];

  return v3;
}

- (void)clearAllData
{
  [(FRMenuBarClearDataManager *)self clearHistory];
  [(FRMenuBarClearDataManager *)self clearRecommendations];
  [(FRMenuBarClearDataManager *)self resetIdentifier];
  v3 = [(FRMenuBarClearDataManager *)self userActivityManager];
  [v3 clearAllSavedUserActivities];
}

- (void)clearHistory
{
  v3 = [(FRMenuBarClearDataManager *)self clearReadingHistoryManager];
  [v3 clearHistory];

  [(FRMenuBarClearDataManager *)self clearRecommendations];
  v4 = [(FRMenuBarClearDataManager *)self userActivityManager];
  [v4 clearAllSavedUserActivities];
}

- (void)clearRecommendations
{
  v3 = [(FRMenuBarClearDataManager *)self personalizationData];
  [v3 clearPersonalizationData];

  v4 = [(FRMenuBarClearDataManager *)self userEventHistoryStorage];
  [v4 clearHistory];

  v5 = [(FRMenuBarClearDataManager *)self clearableUserEmbedding];
  [v5 clearHistory];

  v6 = [(FRMenuBarClearDataManager *)self newsletterManager];
  [v6 deletePersonalizationVector];

  v7 = [(FRMenuBarClearDataManager *)self userActivityManager];
  [v7 clearAllSavedUserActivities];
}

- (void)resetIdentifier
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 key_window];
  v5 = [v4 windowScene];
  v6 = [v5 session];
  v9 = [v6 persistentIdentifier];

  v7 = [(FRMenuBarClearDataManager *)self analyticsController];
  [v7 endSessionForReason:1 byStartingNewSession:1 resetUserID:1 forSceneID:v9];

  v8 = [(FRMenuBarClearDataManager *)self userActivityManager];
  [v8 clearAllSavedUserActivities];
}

@end
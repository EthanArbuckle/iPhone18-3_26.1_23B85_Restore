@interface UNUserNotificationCenter
+ (UNUserNotificationCenter)currentNotificationCenter;
- (BOOL)supportsContentExtensions;
- (UNUserNotificationCenter)init;
- (UNUserNotificationCenter)initWithBundleIdentifier:(id)a3 queue:(id)a4;
- (UNUserNotificationCenterDelegatePrivate)privateDelegate;
- (id)badgeNumber;
- (id)clearedInfoForDataProviderMigration;
- (id)delegate;
- (id)deliveredNotifications;
- (id)notificationCategories;
- (id)notificationSettings;
- (id)notificationSettingsForTopics;
- (id)notificationTopics;
- (id)pendingNotificationRequests;
- (void)addNotificationRequest:(UNNotificationRequest *)request withCompletionHandler:(void *)completionHandler;
- (void)didChangeSettings:(id)a3;
- (void)didOpenApplicationForResponse:(id)a3;
- (void)didReceiveNotificationResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)getBadgeNumberWithCompletionHandler:(id)a3;
- (void)getDeliveredNotificationsWithCompletionHandler:(void *)completionHandler;
- (void)getNotificationCategoriesWithCompletionHandler:(void *)completionHandler;
- (void)getNotificationSettingsForTopicsWithCompletionHandler:(id)a3;
- (void)getNotificationSettingsWithCompletionHandler:(void *)completionHandler;
- (void)getNotificationTopicsWithCompletionHandler:(id)a3;
- (void)getPendingNotificationRequestsWithCompletionHandler:(void *)completionHandler;
- (void)removeAllDeliveredNotifications;
- (void)removeAllPendingNotificationRequests;
- (void)removeDeliveredNotificationsWithIdentifiers:(NSArray *)identifiers;
- (void)removePendingNotificationRequestsWithIdentifiers:(NSArray *)identifiers;
- (void)removeSimilarNotificationRequests:(id)a3;
- (void)replaceContentForRequestWithIdentifier:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5;
- (void)requestAuthorizationWithOptions:(UNAuthorizationOptions)options completionHandler:(void *)completionHandler;
- (void)requestRemoveAuthorizationWithCompletionHandler:(id)a3;
- (void)setBadgeCount:(NSInteger)newBadgeCount withCompletionHandler:(void *)completionHandler;
- (void)setBadgeNumber:(id)a3 withCompletionHandler:(id)a4;
- (void)setBadgeString:(id)a3 withCompletionHandler:(id)a4;
- (void)setNotificationCategories:(NSSet *)categories;
- (void)setNotificationRequests:(id)a3 completionHandler:(id)a4;
- (void)setNotificationTopics:(id)a3 withCompletionHandler:(id)a4;
- (void)setWantsNotificationResponsesDelivered;
@end

@implementation UNUserNotificationCenter

+ (UNUserNotificationCenter)currentNotificationCenter
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (currentNotificationCenter_onceToken != -1)
  {
    dispatch_once(&currentNotificationCenter_onceToken, v4);
  }

  v2 = currentNotificationCenter___sharedInstance;

  return v2;
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  if (!v2)
  {
    __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_1(a1);
  }

  v3 = [v2 objectForInfoDictionaryKey:@"CFBundlePackageType"];
  if (![v3 isEqualToString:@"APPL"])
  {
    v5 = [v2 bundleURL];
    v13 = 0;
    v6 = [v5 getResourceValue:&v13 forKey:*MEMORY[0x1E695DB70] error:0];
    v7 = v13;
    v8 = v7;
    if (v6)
    {
      if ([v7 BOOLValue])
      {
        v4 = [v2 bundleIdentifier];
        if (!v4)
        {
          __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_4();
          goto LABEL_10;
        }
      }

      else
      {
        v9 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
        if (!v9)
        {
          __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_2();
        }

        v10 = [v9 un_applicationBundleIdentifier];
        if (!v10)
        {
          __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_3(a1, v9, v5, v8);
          goto LABEL_17;
        }

        v4 = v10;
      }

      goto LABEL_16;
    }

LABEL_10:

    goto LABEL_17;
  }

  v4 = [v2 bundleIdentifier];
  if (v4)
  {
LABEL_16:
    v11 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:v4];
    v12 = currentNotificationCenter___sharedInstance;
    currentNotificationCenter___sharedInstance = v11;

    goto LABEL_17;
  }

  __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_5();
LABEL_17:
}

- (id)notificationSettings
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 notificationSettingsForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (BOOL)supportsContentExtensions
{
  v2 = objc_opt_class();

  return [v2 supportsContentExtensions];
}

- (id)deliveredNotifications
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 deliveredNotificationsForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (UNUserNotificationCenter)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UNUserNotificationCenter.m" lineNumber:92 description:@"use +currentNotificationCenter"];

  return 0;
}

- (UNUserNotificationCenter)initWithBundleIdentifier:(id)a3 queue:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [UNUserNotificationCenter initWithBundleIdentifier:queue:];
  }

  v14.receiver = self;
  v14.super_class = UNUserNotificationCenter;
  v8 = [(UNUserNotificationCenter *)&v14 init];
  if (v8)
  {
    UNRegisterUserNotificationsLogging();
    v9 = UNLogConnections;
    if (os_log_type_enabled(UNLogConnections, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1B85E3000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Creating a user notification center", buf, 0xCu);
    }

    v10 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v10;

    objc_storeStrong(&v8->_queue, a4);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)setWantsNotificationResponsesDelivered
{
  v3 = +[UNUserNotificationCenterDelegateConnectionListener sharedInstance];
  [v3 setDelegate:self forBundleIdentifier:self->_bundleIdentifier];
}

- (void)requestAuthorizationWithOptions:(UNAuthorizationOptions)options completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = +[UNUserNotificationServiceConnection sharedInstance];
  [v7 requestAuthorizationWithOptions:options forBundleIdentifier:self->_bundleIdentifier completionHandler:v6];
}

- (void)requestRemoveAuthorizationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 requestRemoveAuthorizationForBundleIdentifier:self->_bundleIdentifier completionHandler:v4];
}

- (void)getNotificationSettingsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getNotificationSettingsForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (void)setNotificationCategories:(NSSet *)categories
{
  v4 = categories;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 setNotificationCategories:v4 forBundleIdentifier:self->_bundleIdentifier];
}

- (id)notificationCategories
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 notificationCategoriesForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (void)getNotificationCategoriesWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getNotificationCategoriesForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (id)pendingNotificationRequests
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 pendingNotificationRequestsForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (void)getPendingNotificationRequestsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getPendingNotificationRequestsForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (void)addNotificationRequest:(UNNotificationRequest *)request withCompletionHandler:(void *)completionHandler
{
  v6 = request;
  v7 = completionHandler;
  v8 = +[UNUserNotificationServiceConnection sharedInstance];
  [(UNNotificationRequest *)v6 addSecurityScope:@"com.apple.app-sandbox.read-write"];
  bundleIdentifier = self->_bundleIdentifier;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __73__UNUserNotificationCenter_addNotificationRequest_withCompletionHandler___block_invoke;
  v15 = &unk_1E7CFFD20;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  [v8 addNotificationRequest:v11 forBundleIdentifier:bundleIdentifier withCompletionHandler:&v12];
  [(UNNotificationRequest *)v11 removeSecurityScope:v12];
}

void __73__UNUserNotificationCenter_addNotificationRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v7[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [UNAttachmentUtilities deleteAttachmentFilesInRequestsIfNecessary:v4];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)replaceContentForRequestWithIdentifier:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = +[UNUserNotificationServiceConnection sharedInstance];
  [v8 addSecurityScope:@"com.apple.app-sandbox.read-write"];
  bundleIdentifier = self->_bundleIdentifier;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __104__UNUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_completionHandler___block_invoke;
  v18 = &unk_1E7CFFD20;
  v19 = v8;
  v20 = v9;
  v13 = v9;
  v14 = v8;
  [v11 replaceContentForRequestWithIdentifier:v10 bundleIdentifier:bundleIdentifier replacementContent:v14 completionHandler:&v15];

  [v14 removeSecurityScope];
}

void __104__UNUserNotificationCenter_replaceContentForRequestWithIdentifier_replacementContent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 32))
  {
    v7[0] = *(a1 + 32);
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [UNAttachmentUtilities deleteAttachmentFilesInContentsIfNecessary:v4];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setNotificationRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UNUserNotificationServiceConnection sharedInstance];
  [v6 enumerateObjectsUsingBlock:&__block_literal_global_11];
  bundleIdentifier = self->_bundleIdentifier;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __70__UNUserNotificationCenter_setNotificationRequests_completionHandler___block_invoke_2;
  v15 = &unk_1E7CFFD20;
  v16 = v6;
  v17 = v7;
  v10 = v7;
  v11 = v6;
  [v8 setNotificationRequests:v11 forBundleIdentifier:bundleIdentifier completionHandler:&v12];
  [v11 enumerateObjectsUsingBlock:{&__block_literal_global_42, v12, v13, v14, v15}];
}

uint64_t __70__UNUserNotificationCenter_setNotificationRequests_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [UNAttachmentUtilities deleteAttachmentFilesInRequestsIfNecessary:?];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)removePendingNotificationRequestsWithIdentifiers:(NSArray *)identifiers
{
  v4 = identifiers;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 removePendingNotificationRequestsWithIdentifiers:v4 forBundleIdentifier:self->_bundleIdentifier completionHandler:0];
}

- (void)removeSimilarNotificationRequests:(id)a3
{
  v4 = a3;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 removeSimilarNotificationRequests:v4 forBundleIdentifier:self->_bundleIdentifier completionHandler:0];
}

- (void)removeAllPendingNotificationRequests
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  [v3 removeAllPendingNotificationRequestsForBundleIdentifier:self->_bundleIdentifier completionHandler:0];
}

- (void)getDeliveredNotificationsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getDeliveredNotificationsForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (void)removeDeliveredNotificationsWithIdentifiers:(NSArray *)identifiers
{
  v4 = identifiers;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 removeDeliveredNotificationsWithIdentifiers:v4 forBundleIdentifier:self->_bundleIdentifier completionHandler:0];
}

- (void)removeAllDeliveredNotifications
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  [v3 removeAllDeliveredNotificationsForBundleIdentifier:self->_bundleIdentifier completionHandler:0];
}

- (id)badgeNumber
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 badgeNumberForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (void)getBadgeNumberWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getBadgeNumberForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (void)setBadgeNumber:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UNUserNotificationServiceConnection sharedInstance];
  [v8 setBadgeNumber:v7 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v6];
}

- (void)setBadgeCount:(NSInteger)newBadgeCount withCompletionHandler:(void *)completionHandler
{
  v9 = completionHandler;
  v6 = +[UNUserNotificationServiceConnection sharedInstance];
  if (newBadgeCount < 0)
  {
    bundleIdentifier = self->_bundleIdentifier;
    UNLogToDeveloper(@"[UNUserNotificationCenter setBadgeCount:(NSInteger)]", @"[%{public}@] Error received an invalid badge count. %{public}lu");
    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:1600 userInfo:{0, bundleIdentifier, newBadgeCount}];
    v9[2](v9, v7);
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:newBadgeCount];
    [v6 setBadgeCount:v7 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v9];
  }

LABEL_6:
}

- (void)setBadgeString:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UNUserNotificationServiceConnection sharedInstance];
  [v8 setBadgeString:v7 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v6];
}

- (void)didReceiveNotificationResponse:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__UNUserNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7CFF8E8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

void __81__UNUserNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1[4] + 8));
    [v5 userNotificationCenter:a1[4] didReceiveNotificationResponse:a1[5] withCompletionHandler:a1[6]];
  }

  else
  {
    v4 = *(a1[6] + 16);

    v4();
  }
}

- (void)didChangeSettings:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__UNUserNotificationCenter_didChangeSettings___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __46__UNUserNotificationCenter_didChangeSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 userNotificationCenter:*(a1 + 32) didChangeSettings:*(a1 + 40)];
  }
}

- (void)didOpenApplicationForResponse:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__UNUserNotificationCenter_didOpenApplicationForResponse___block_invoke;
  v7[3] = &unk_1E7CFF910;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __58__UNUserNotificationCenter_didOpenApplicationForResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 32));
    [v4 userNotificationCenter:*(a1 + 32) didOpenApplicationForResponse:*(a1 + 40)];
  }
}

- (void)setNotificationTopics:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[UNUserNotificationServiceConnection sharedInstance];
  [v8 setNotificationTopics:v7 forBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v6];
}

- (void)getNotificationTopicsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getNotificationTopicsForBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (id)notificationTopics
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 notificationTopicsForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (void)getNotificationSettingsForTopicsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[UNUserNotificationServiceConnection sharedInstance];
  [v5 getNotificationSettingsForTopicsWithBundleIdentifier:self->_bundleIdentifier withCompletionHandler:v4];
}

- (id)notificationSettingsForTopics
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 notificationSettingsForTopicsWithBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (id)clearedInfoForDataProviderMigration
{
  v3 = +[UNUserNotificationServiceConnection sharedInstance];
  v4 = [v3 clearedInfoForBundleIdentifier:self->_bundleIdentifier];

  return v4;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UNUserNotificationCenterDelegatePrivate)privateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_privateDelegate);

  return WeakRetained;
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 32) object:*(a1 + 40) file:@"UNUserNotificationCenter.m" lineNumber:41 description:@"mainBundle is nil"];
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = [v0 bundleURL];
  [v2 handleFailureInMethod:v4 object:v3 file:@"UNUserNotificationCenter.m" lineNumber:63 description:{@"bundleProxyForCurrentProcess is nil: mainBundle.bundleURL %@", v5}];
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = objc_opt_class();
  v12 = [a2 bundleIdentifier];
  [v8 handleFailureInMethod:v10 object:v9 file:@"UNUserNotificationCenter.m" lineNumber:66 description:{@"application bundle identifier for %@ with bundle identifier %@", v11, v12}];
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(v1 + 32) object:*(v1 + 40) file:@"UNUserNotificationCenter.m" lineNumber:56 description:{@"UNUserNotificationCenter could not determine bundleIdentifier of the application: bundleURL=%@", v0}];
}

void __53__UNUserNotificationCenter_currentNotificationCenter__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_0();
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = [v0 bundleURL];
  [v5 handleFailureInMethod:v3 object:v2 file:@"UNUserNotificationCenter.m" lineNumber:47 description:{@"mainBundle.bundleIdentifier is nil: mainBundle.bundleURL %@", v4}];
}

- (void)initWithBundleIdentifier:queue:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"UNUserNotificationCenter.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier != nil"}];
}

@end
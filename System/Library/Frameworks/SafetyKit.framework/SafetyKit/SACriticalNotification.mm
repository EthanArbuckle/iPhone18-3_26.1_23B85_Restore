@interface SACriticalNotification
- (SACriticalNotification)initWithBundleManager:(id)manager;
- (id)_createNotification;
- (void)_createNotification;
- (void)sendNotificationWithCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation SACriticalNotification

- (SACriticalNotification)initWithBundleManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = SACriticalNotification;
  v6 = [(SACriticalNotification *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleManager, manager);
    v8 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.sosd.usernotification"];
    center = v7->_center;
    v7->_center = v8;

    [(UNUserNotificationCenter *)v7->_center setDelegate:v7];
    [(UNUserNotificationCenter *)v7->_center setWantsNotificationResponsesDelivered];
    v10 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"CRASH" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:0];
    v11 = v7->_center;
    v12 = [MEMORY[0x277CBEB98] setWithObject:v10];
    [(UNUserNotificationCenter *)v11 setNotificationCategories:v12];
  }

  return v7;
}

- (void)sendNotificationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  _createNotification = [(SACriticalNotification *)self _createNotification];
  if (!_createNotification)
  {
    v5 = [SAError errorWithCode:4];
    handlerCopy[2](handlerCopy, v5);
  }

  [(UNUserNotificationCenter *)self->_center addNotificationRequest:_createNotification withCompletionHandler:handlerCopy];
}

- (id)_createNotification
{
  v2 = +[SAAuthorization approvedBundleId];
  if (!v2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectForInfoDictionaryKey:@"CFBundleName"];

LABEL_5:
    v6 = objc_opt_new();
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"NOTIFICATION_TITLE" value:&stru_284DA6B88 table:0];
    [v6 setTitle:v8];

    v9 = MEMORY[0x277CCACA8];
    v10 = [v7 localizedStringForKey:@"NOTIFICATION_BODY" value:&stru_284DA6B88 table:0];
    v11 = [v9 stringWithFormat:v10, v5];
    [v6 setBody:v11];

    defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
    [v6 setSound:defaultSound];

    [v6 setCategoryIdentifier:@"CRASH"];
    [v6 setShouldBackgroundDefaultAction:1];
    [v6 setShouldShowSubordinateIcon:1];
    [v6 setShouldIgnoreDoNotDisturb:1];
    v13 = [MEMORY[0x277CE1FB0] iconForApplicationIdentifier:v2];
    [v6 setIcon:v13];

    v14 = [MEMORY[0x277CE1FC0] requestWithIdentifier:@"SACriticalNotification" content:v6 trigger:0];

    goto LABEL_9;
  }

  v5 = sa_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SACriticalNotification *)v5 _createNotification];
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = sa_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SACriticalNotification userNotificationCenter:responseCopy didReceiveNotificationResponse:v9 withCompletionHandler:?];
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v11 = [actionIdentifier isEqualToString:@"com.apple.UNNotificationDefaultActionIdentifier"];

  if (v11)
  {
    v12 = sa_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23AA4D000, v12, OS_LOG_TYPE_DEFAULT, "Launching app in foreground because of 3P notification interaction", v13, 2u);
    }

    [(SABundleManager *)self->_bundleManager wakeApprovedAppsWithReason:2 completion:0];
  }

  handlerCopy[2](handlerCopy);
}

- (void)_createNotification
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_23AA4D000, log, OS_LOG_TYPE_ERROR, "Unable to get Bundle for currently authorized app: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(void *)a1 didReceiveNotificationResponse:(NSObject *)a2 withCompletionHandler:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 actionIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_23AA4D000, a2, OS_LOG_TYPE_DEBUG, "Notification response: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
@interface ANUserNotificationController
+ (id)sharedController;
- (ANUserNotificationController)init;
- (ANUserNotificationControllerDelegate)delegate;
- (BOOL)_canUpdateUserNotificationForHome:(id)a3;
- (BOOL)canPostUserNotificationForAnnouncement:(id)a3 home:(id)a4;
- (BOOL)hasDeliveredNotificationsWithGroupID:(id)a3;
- (id)_contentForSendFailureForAnnouncement:(id)a3 homeName:(id)a4;
- (id)_userInfoForFailedDeliveryForAnnouncement:(id)a3;
- (id)contentBodyForAnnouncers:(id)a3 inHome:(id)a4;
- (void)_postNotificationWithContent:(id)a3 requestID:(id)a4;
- (void)_replaceContentForRequestWithRequestID:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5;
- (void)_replaceContentForRequestsWithThreadID:(id)a3 replacementContent:(id)a4;
- (void)_setContentExpirationDate:(id)a3 forNotificationsWithThreadIDs:(id)a4;
- (void)cleanForExit;
- (void)contentWithAnnouncement:(ANAnnouncement *)a3 groupAnnouncements:(NSArray *)a4 home:(HMHome *)a5 threadIdentifier:(NSString *)a6 isReplacement:(BOOL)a7 suspendExpiration:(BOOL)a8 completionHandler:(id)a9;
- (void)pauseExpirationForNotificationsWithGroupIDs:(id)a3;
- (void)postNotificationForAnnouncement:(id)a3 groupAnnouncements:(id)a4 home:(id)a5 groupID:(id)a6;
- (void)postSendFailureNotificationForAnnouncement:(id)a3;
- (void)removeNotificationWithGroupID:(id)a3;
- (void)resumeExpirationForNotificationsWithGroupIDs:(id)a3;
- (void)updateNotificationForAnnouncements:(id)a3 home:(id)a4 groupID:(id)a5;
@end

@implementation ANUserNotificationController

- (ANUserNotificationController)init
{
  v6.receiver = self;
  v6.super_class = ANUserNotificationController;
  v2 = [(ANUserNotificationController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.Home"];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v3;
  }

  return v2;
}

+ (id)sharedController
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ANUserNotificationController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken != -1)
  {
    dispatch_once(&sharedController_onceToken, block);
  }

  v2 = sharedController_sharedController;

  return v2;
}

uint64_t __48__ANUserNotificationController_sharedController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedController_sharedController = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)canPostUserNotificationForAnnouncement:(id)a3 home:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEABE0];
  v5 = a4;
  v6 = [v4 isHomeAppInstalled];
  v7 = [v5 an_announceNotificationsEnabledForCurrentUserWithOverrideHomeLocationStatus:0];

  v8 = ANLogHandleUserNotificationsController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = &stru_2851BDB18;
    v13 = 1024;
    v14 = v7 & v6;
    v15 = 1024;
    v16 = v6;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Can Post User Notification: %d (Home App Installed: %d, Enabled for Home: %d)", &v11, 0x1Eu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 & v6;
}

- (void)postNotificationForAnnouncement:(id)a3 groupAnnouncements:(id)a4 home:(id)a5 groupID:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(ANUserNotificationController *)self canPostUserNotificationForAnnouncement:v10 home:v12])
  {
    v14 = [MEMORY[0x277CEAB80] sharedInstance];
    v15 = [v14 BOOLForDefault:*MEMORY[0x277CEA990]];

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = [v10 identifier];
    }

    v18 = v16;
    v19 = [(ANUserNotificationController *)self notificationCenter];
    v22 = [v19 deliveredNotifications];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke;
    v29[3] = &unk_278C86440;
    v20 = v18;
    v30 = v20;
    v21 = [v22 na_firstObjectPassingTest:v29];

    LODWORD(v22) = [(ANUserNotificationController *)self suspendNotificationExpiration];
    objc_initWeak(buf, self);
    v23 = [(ANUserNotificationController *)self suspendNotificationExpiration];
    if (v21)
    {
      v22 = v22;
    }

    else
    {
      v22 = 0;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke_2;
    v25[3] = &unk_278C86468;
    objc_copyWeak(&v27, buf);
    v28 = v22;
    v17 = v20;
    v26 = v17;
    [(ANUserNotificationController *)self contentWithAnnouncement:v10 groupAnnouncements:v11 home:v12 threadIdentifier:v13 isReplacement:v22 suspendExpiration:v23 completionHandler:v25];

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  else
  {
    v17 = ANLogHandleUserNotificationsController();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v17, OS_LOG_TYPE_DEFAULT, "%@Skip posting user notification", buf, 0xCu);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    [WeakRetained _replaceContentForRequestWithRequestID:v5 replacementContent:v3 completionHandler:0];
  }

  else
  {
    [WeakRetained _postNotificationWithContent:v3 requestID:v5];
  }
}

- (void)updateNotificationForAnnouncements:(id)a3 home:(id)a4 groupID:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(ANUserNotificationController *)self _canUpdateUserNotificationForHome:v9])
  {
    v14 = ANLogHandleUserNotificationsController();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "%@Skip updating user notification", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if ([v8 count])
  {
    v11 = [MEMORY[0x277CEAB80] sharedInstance];
    v12 = [v11 BOOLForDefault:*MEMORY[0x277CEA990]];

    if (v12)
    {
      v13 = [v8 firstObject];
      v21 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    }

    else
    {
      v14 = v8;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__ANUserNotificationController_updateNotificationForAnnouncements_home_groupID___block_invoke;
    v16[3] = &unk_278C864B8;
    v16[4] = self;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v12;
    [v14 enumerateObjectsUsingBlock:v16];

LABEL_9:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __80__ANUserNotificationController_updateNotificationForAnnouncements_home_groupID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = [v5 suspendNotificationExpiration];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__ANUserNotificationController_updateNotificationForAnnouncements_home_groupID___block_invoke_2;
  v10[3] = &unk_278C86490;
  objc_copyWeak(&v13, &location);
  v14 = *(a1 + 64);
  v11 = *(a1 + 56);
  v9 = v3;
  v12 = v9;
  [v5 contentWithAnnouncement:v9 groupAnnouncements:v4 home:v6 threadIdentifier:v7 isReplacement:1 suspendExpiration:v8 completionHandler:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __80__ANUserNotificationController_updateNotificationForAnnouncements_home_groupID___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = [*(a1 + 40) identifier];
  }

  v5 = v4;
  [WeakRetained _replaceContentForRequestWithRequestID:v4 replacementContent:v6 completionHandler:0];
}

- (void)removeNotificationWithGroupID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCenter = self->_notificationCenter;
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v6, v8, v9];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanForExit
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEAB80] sharedInstance];
  v4 = [v3 BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if ((v4 & 1) == 0)
  {
    v5 = objc_opt_new();
    v34 = self;
    v35 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = [(ANUserNotificationController *)self notificationCenter];
    v7 = [v6 pendingNotificationRequests];

    v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [v12 content];
          v14 = [v13 categoryIdentifier];
          v15 = [v14 isEqualToString:@"ANAnnouncement"];

          if (v15)
          {
            v16 = [v12 identifier];
            [v5 addObject:v16];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v9);
    }

    v33 = v5;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = [(ANUserNotificationController *)v34 notificationCenter];
    v18 = [v17 deliveredNotifications];

    v19 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v37;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          v24 = [v23 request];
          v25 = [v24 content];
          v26 = [v25 categoryIdentifier];
          v27 = [v26 isEqualToString:@"ANAnnouncement"];

          if (v27)
          {
            v28 = [v23 request];
            v29 = [v28 identifier];
            [v35 addObject:v29];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v20);
    }

    v30 = [(ANUserNotificationController *)v34 notificationCenter];
    [v30 removePendingNotificationRequestsWithIdentifiers:v33];

    v31 = [(ANUserNotificationController *)v34 notificationCenter];
    [v31 removeDeliveredNotificationsWithIdentifiers:v35];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)pauseExpirationForNotificationsWithGroupIDs:(id)a3
{
  v4 = a3;
  [(ANUserNotificationController *)self setSuspendNotificationExpiration:1];
  [(ANUserNotificationController *)self _setContentExpirationDate:0 forNotificationsWithThreadIDs:v4];
}

- (void)resumeExpirationForNotificationsWithGroupIDs:(id)a3
{
  v4 = MEMORY[0x277CEAB80];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v8 = [v6 numberForDefault:*MEMORY[0x277CEA878]];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v8, "integerValue")}];
  [(ANUserNotificationController *)self _setContentExpirationDate:v7 forNotificationsWithThreadIDs:v5];

  [(ANUserNotificationController *)self setSuspendNotificationExpiration:0];
}

- (void)postSendFailureNotificationForAnnouncement:(id)a3
{
  v4 = MEMORY[0x277CEAB58];
  v5 = a3;
  v6 = [v5 remoteSessionDictionary];
  v10 = [v4 contextFromDictionary:v6];

  v7 = [v10 homeName];
  v8 = [(ANUserNotificationController *)self _contentForSendFailureForAnnouncement:v5 homeName:v7];

  v9 = [v5 identifier];

  [(ANUserNotificationController *)self _postNotificationWithContent:v8 requestID:v9];
}

- (BOOL)hasDeliveredNotificationsWithGroupID:(id)a3
{
  v4 = a3;
  v5 = [(ANUserNotificationController *)self notificationCenter];
  v6 = [v5 deliveredNotifications];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ANUserNotificationController_hasDeliveredNotificationsWithGroupID___block_invoke;
  v11[3] = &unk_278C86440;
  v12 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v11];
  v9 = v8 != 0;

  return v9;
}

uint64_t __69__ANUserNotificationController_hasDeliveredNotificationsWithGroupID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 request];
  v5 = [v4 content];
  v6 = [v5 categoryIdentifier];
  if ([v6 isEqualToString:@"ANAnnouncement"])
  {
    v7 = [v3 request];
    v8 = [v7 content];
    v9 = [v8 threadIdentifier];
    v10 = [v9 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)contentBodyForAnnouncers:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  switch(v7)
  {
    case 2:
      v8 = [v5 objectAtIndexedSubscript:0];
      [v8 isUser];
      v11 = [v8 nameInHome:v6];
      v12 = [v5 objectAtIndexedSubscript:1];
      v13 = [v12 nameInHome:v6];
      v20 = v12;
      [v12 isUser];
      v14 = ANLocalizedString();
      v10 = v11;
      [v11 isEqualToString:v14];

      v15 = ANLocalizedString();
      [v13 isEqualToString:v15];

      v9 = ANLocalizedStringWithFormat();

      break;
    case 1:
      v8 = [v5 objectAtIndexedSubscript:0];
      [v8 isUser];
      v10 = [v8 nameInHome:v6];
      v9 = ANLocalizedStringWithFormat();
      break;
    case 0:
      v8 = ANLocalizedString();
      v9 = ANLocalizedStringWithFormat();
      goto LABEL_11;
    default:
      v8 = [v5 objectAtIndexedSubscript:0];
      v16 = [v8 isUser];
      v10 = [v8 nameInHome:v6];
      v17 = @"USER_NOTIFICATION_THREE_OR_MORE_SENDER_BODY_LOCATION_%@_%lu";
      if (v16)
      {
        v17 = @"USER_NOTIFICATION_THREE_OR_MORE_SENDER_BODY_PERSON_%@_%lu";
      }

      v18 = v17;
      [v5 count];
      v9 = ANLocalizedStringWithFormat();

      break;
  }

LABEL_11:

  return v9;
}

- (BOOL)_canUpdateUserNotificationForHome:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CEABE0] isHomeAppInstalled];
  v4 = ANLogHandleUserNotificationsController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = &stru_2851BDB18;
    v9 = 1024;
    v10 = v3;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Can Update User Notification: %d (Home App Installed: %d)", &v7, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_contentForSendFailureForAnnouncement:(id)a3 homeName:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = ANLocalizedString();
  [v6 setTitle:v7];

  v8 = ANLocalizedString();
  [v6 setBody:v8];

  [v6 setCategoryIdentifier:@"ANAnnouncement"];
  v9 = [MEMORY[0x277CE1FE0] defaultSound];
  [v6 setSound:v9];

  v10 = [(ANUserNotificationController *)self _userInfoForFailedDeliveryForAnnouncement:v5];
  [v6 setUserInfo:v10];

  v11 = [v5 defaultActionURL];

  [v6 setDefaultActionURL:v11];
  [v6 setShouldBackgroundDefaultAction:1];
  [v6 setShouldSuppressDefaultAction:1];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  v12 = [v6 copy];

  return v12;
}

- (id)_userInfoForFailedDeliveryForAnnouncement:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:&unk_2851C49C8 forKeyedSubscript:*MEMORY[0x277CEAAE8]];
  v5 = [v3 sendFailureDictionary];

  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CEAAD0]];
  v6 = MEMORY[0x277CCABB0];
  v7 = +[ANHomeManager shared];
  v8 = [v7 allHomes];
  v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CEAAD8]];

  v10 = [v4 copy];

  return v10;
}

- (void)_postNotificationWithContent:(id)a3 requestID:(id)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CE1FC0] requestWithIdentifier:a4 content:v6 trigger:0];
  notificationCenter = self->_notificationCenter;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ANUserNotificationController__postNotificationWithContent_requestID___block_invoke;
  v11[3] = &unk_278C864E0;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(UNUserNotificationCenter *)notificationCenter addNotificationRequest:v10 withCompletionHandler:v11];
}

void __71__ANUserNotificationController__postNotificationWithContent_requestID___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleUserNotificationsController();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = &stru_2851BDB18;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Failed to add notification: %@", &v9, 0x16u);
    }

    v5 = +[ANAnalytics shared];
    [v5 error:5012];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = [*(a1 + 40) expirationDate];
    v9 = 138412802;
    v10 = &stru_2851BDB18;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Added notification. ID = %@, Expiration = %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setContentExpirationDate:(id)a3 forNotificationsWithThreadIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANUserNotificationController *)self notificationCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__ANUserNotificationController__setContentExpirationDate_forNotificationsWithThreadIDs___block_invoke;
  v11[3] = &unk_278C86508;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  [v8 getDeliveredNotificationsWithCompletionHandler:v11];
}

void __88__ANUserNotificationController__setContentExpirationDate_forNotificationsWithThreadIDs___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a2;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v22)
  {
    v2 = *v28;
    v19 = v24;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v27 + 1) + 8 * i);
        v5 = [v4 request];
        v6 = [v5 content];
        v7 = [v6 categoryIdentifier];
        if ([v7 isEqualToString:@"ANAnnouncement"])
        {
          v8 = *(a1 + 32);
          v9 = [v4 request];
          v10 = [v9 content];
          v11 = [v10 threadIdentifier];
          LODWORD(v8) = [v8 containsObject:v11];

          if (!v8)
          {
            continue;
          }

          v12 = [v4 request];
          v13 = [v12 content];
          v5 = [v13 mutableCopy];

          [v5 setExpirationDate:*(a1 + 40)];
          v14 = *(a1 + 48);
          v15 = [v4 request];
          v16 = [v15 identifier];
          v17 = [v5 copy];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v24[0] = __88__ANUserNotificationController__setContentExpirationDate_forNotificationsWithThreadIDs___block_invoke_2;
          v24[1] = &unk_278C864E0;
          v25 = *(a1 + 40);
          v26 = v4;
          [v14 _replaceContentForRequestWithRequestID:v16 replacementContent:v17 completionHandler:v23];

          v6 = v25;
        }

        else
        {
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v22);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __88__ANUserNotificationController__setContentExpirationDate_forNotificationsWithThreadIDs___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = ANLogHandleUserNotificationsController();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) request];
      v6 = [v5 identifier];
      v8 = 138412802;
      v9 = &stru_2851BDB18;
      v10 = 2112;
      v11 = v4;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_23F525000, v3, OS_LOG_TYPE_DEFAULT, "%@Set Expiration to (%@) For Notification with Request Identifier: %@", &v8, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_replaceContentForRequestWithRequestID:(id)a3 replacementContent:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ANUserNotificationController *)self notificationCenter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__ANUserNotificationController__replaceContentForRequestWithRequestID_replacementContent_completionHandler___block_invoke;
  v14[3] = &unk_278C86530;
  v15 = v8;
  v16 = v9;
  v12 = v9;
  v13 = v8;
  [v11 replaceContentForRequestWithIdentifier:v13 replacementContent:v10 completionHandler:v14];
}

void __108__ANUserNotificationController__replaceContentForRequestWithRequestID_replacementContent_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ANLogHandleUserNotificationsController();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v10 = 138412802;
      v11 = &stru_2851BDB18;
      v12 = 2112;
      v13 = v6;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_ERROR, "%@Failed to replace Notification Content For Request Identifier (%@). Error = %@", &v10, 0x20u);
    }

    v5 = +[ANAnalytics shared];
    [v5 error:5013];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138412546;
    v11 = &stru_2851BDB18;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_23F525000, v5, OS_LOG_TYPE_DEFAULT, "%@Replaced Content for Notification with Request Identifier: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_replaceContentForRequestsWithThreadID:(id)a3 replacementContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ANUserNotificationController *)self notificationCenter];
  v9 = [v8 deliveredNotifications];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke;
  v15[3] = &unk_278C86440;
  v16 = v6;
  v10 = v6;
  v11 = [v9 na_filter:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke_2;
  v13[3] = &unk_278C86558;
  v13[4] = self;
  v14 = v7;
  v12 = v7;
  [v11 enumerateObjectsUsingBlock:v13];
}

uint64_t __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 content];
  v5 = [v4 threadIdentifier];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

void __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = [a2 request];
  v4 = [v5 identifier];
  [v3 _replaceContentForRequestWithRequestID:v4 replacementContent:*(a1 + 40) completionHandler:0];
}

- (ANUserNotificationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contentWithAnnouncement:(ANAnnouncement *)a3 groupAnnouncements:(NSArray *)a4 home:(HMHome *)a5 threadIdentifier:(NSString *)a6 isReplacement:(BOOL)a7 suspendExpiration:(BOOL)a8 completionHandler:(id)a9
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  *(v21 + 32) = a5;
  *(v21 + 40) = a6;
  *(v21 + 48) = a7;
  *(v21 + 49) = a8;
  *(v21 + 56) = v20;
  *(v21 + 64) = self;
  v22 = sub_23F5883B4();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_23F58D718;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_23F58D720;
  v24[5] = v23;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = self;
  sub_23F57A118(0, 0, v19, &unk_23F58D728, v24);
}

@end
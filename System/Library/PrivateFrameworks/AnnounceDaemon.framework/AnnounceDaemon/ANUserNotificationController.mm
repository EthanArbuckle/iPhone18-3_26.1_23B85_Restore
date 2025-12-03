@interface ANUserNotificationController
+ (id)sharedController;
- (ANUserNotificationController)init;
- (ANUserNotificationControllerDelegate)delegate;
- (BOOL)_canUpdateUserNotificationForHome:(id)home;
- (BOOL)canPostUserNotificationForAnnouncement:(id)announcement home:(id)home;
- (BOOL)hasDeliveredNotificationsWithGroupID:(id)d;
- (id)_contentForSendFailureForAnnouncement:(id)announcement homeName:(id)name;
- (id)_userInfoForFailedDeliveryForAnnouncement:(id)announcement;
- (id)contentBodyForAnnouncers:(id)announcers inHome:(id)home;
- (void)_postNotificationWithContent:(id)content requestID:(id)d;
- (void)_replaceContentForRequestWithRequestID:(id)d replacementContent:(id)content completionHandler:(id)handler;
- (void)_replaceContentForRequestsWithThreadID:(id)d replacementContent:(id)content;
- (void)_setContentExpirationDate:(id)date forNotificationsWithThreadIDs:(id)ds;
- (void)cleanForExit;
- (void)contentWithAnnouncement:(ANAnnouncement *)announcement groupAnnouncements:(NSArray *)announcements home:(HMHome *)home threadIdentifier:(NSString *)identifier isReplacement:(BOOL)replacement suspendExpiration:(BOOL)expiration completionHandler:(id)handler;
- (void)pauseExpirationForNotificationsWithGroupIDs:(id)ds;
- (void)postNotificationForAnnouncement:(id)announcement groupAnnouncements:(id)announcements home:(id)home groupID:(id)d;
- (void)postSendFailureNotificationForAnnouncement:(id)announcement;
- (void)removeNotificationWithGroupID:(id)d;
- (void)resumeExpirationForNotificationsWithGroupIDs:(id)ds;
- (void)updateNotificationForAnnouncements:(id)announcements home:(id)home groupID:(id)d;
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
  block[4] = self;
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

- (BOOL)canPostUserNotificationForAnnouncement:(id)announcement home:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CEABE0];
  homeCopy = home;
  isHomeAppInstalled = [v4 isHomeAppInstalled];
  v7 = [homeCopy an_announceNotificationsEnabledForCurrentUserWithOverrideHomeLocationStatus:0];

  v8 = ANLogHandleUserNotificationsController();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138413058;
    v12 = &stru_2851BDB18;
    v13 = 1024;
    v14 = v7 & isHomeAppInstalled;
    v15 = 1024;
    v16 = isHomeAppInstalled;
    v17 = 1024;
    v18 = v7;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Can Post User Notification: %d (Home App Installed: %d, Enabled for Home: %d)", &v11, 0x1Eu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 & isHomeAppInstalled;
}

- (void)postNotificationForAnnouncement:(id)announcement groupAnnouncements:(id)announcements home:(id)home groupID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  announcementCopy = announcement;
  announcementsCopy = announcements;
  homeCopy = home;
  dCopy = d;
  if ([(ANUserNotificationController *)self canPostUserNotificationForAnnouncement:announcementCopy home:homeCopy])
  {
    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v15 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA990]];

    if (v15)
    {
      identifier = dCopy;
    }

    else
    {
      identifier = [announcementCopy identifier];
    }

    v18 = identifier;
    notificationCenter = [(ANUserNotificationController *)self notificationCenter];
    deliveredNotifications = [notificationCenter deliveredNotifications];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke;
    v29[3] = &unk_278C86440;
    v20 = v18;
    v30 = v20;
    v21 = [deliveredNotifications na_firstObjectPassingTest:v29];

    LODWORD(deliveredNotifications) = [(ANUserNotificationController *)self suspendNotificationExpiration];
    objc_initWeak(buf, self);
    suspendNotificationExpiration = [(ANUserNotificationController *)self suspendNotificationExpiration];
    if (v21)
    {
      deliveredNotifications = deliveredNotifications;
    }

    else
    {
      deliveredNotifications = 0;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __96__ANUserNotificationController_postNotificationForAnnouncement_groupAnnouncements_home_groupID___block_invoke_2;
    v25[3] = &unk_278C86468;
    objc_copyWeak(&v27, buf);
    v28 = deliveredNotifications;
    v17 = v20;
    v26 = v17;
    [(ANUserNotificationController *)self contentWithAnnouncement:announcementCopy groupAnnouncements:announcementsCopy home:homeCopy threadIdentifier:dCopy isReplacement:deliveredNotifications suspendExpiration:suspendNotificationExpiration completionHandler:v25];

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

- (void)updateNotificationForAnnouncements:(id)announcements home:(id)home groupID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  announcementsCopy = announcements;
  homeCopy = home;
  dCopy = d;
  if (![(ANUserNotificationController *)self _canUpdateUserNotificationForHome:homeCopy])
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

  if ([announcementsCopy count])
  {
    mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
    v12 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA990]];

    if (v12)
    {
      firstObject = [announcementsCopy firstObject];
      v21 = firstObject;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    }

    else
    {
      v14 = announcementsCopy;
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __80__ANUserNotificationController_updateNotificationForAnnouncements_home_groupID___block_invoke;
    v16[3] = &unk_278C864B8;
    v16[4] = self;
    v17 = announcementsCopy;
    v18 = homeCopy;
    v19 = dCopy;
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

- (void)removeNotificationWithGroupID:(id)d
{
  v9 = *MEMORY[0x277D85DE8];
  notificationCenter = self->_notificationCenter;
  dCopy = d;
  v4 = MEMORY[0x277CBEA60];
  dCopy2 = d;
  v6 = [v4 arrayWithObjects:&dCopy count:1];
  [(UNUserNotificationCenter *)notificationCenter removePendingNotificationRequestsWithIdentifiers:v6, dCopy, v9];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanForExit
{
  v46 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEAB80] = [MEMORY[0x277CEAB80] sharedInstance];
  v4 = [mEMORY[0x277CEAB80] BOOLForDefault:*MEMORY[0x277CEA8B8]];

  if ((v4 & 1) == 0)
  {
    v5 = objc_opt_new();
    selfCopy = self;
    v35 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    notificationCenter = [(ANUserNotificationController *)self notificationCenter];
    pendingNotificationRequests = [notificationCenter pendingNotificationRequests];

    v8 = [pendingNotificationRequests countByEnumeratingWithState:&v40 objects:v45 count:16];
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
            objc_enumerationMutation(pendingNotificationRequests);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          content = [v12 content];
          categoryIdentifier = [content categoryIdentifier];
          v15 = [categoryIdentifier isEqualToString:@"ANAnnouncement"];

          if (v15)
          {
            identifier = [v12 identifier];
            [v5 addObject:identifier];
          }
        }

        v9 = [pendingNotificationRequests countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v9);
    }

    v33 = v5;

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    notificationCenter2 = [(ANUserNotificationController *)selfCopy notificationCenter];
    deliveredNotifications = [notificationCenter2 deliveredNotifications];

    v19 = [deliveredNotifications countByEnumeratingWithState:&v36 objects:v44 count:16];
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
            objc_enumerationMutation(deliveredNotifications);
          }

          v23 = *(*(&v36 + 1) + 8 * j);
          request = [v23 request];
          content2 = [request content];
          categoryIdentifier2 = [content2 categoryIdentifier];
          v27 = [categoryIdentifier2 isEqualToString:@"ANAnnouncement"];

          if (v27)
          {
            request2 = [v23 request];
            identifier2 = [request2 identifier];
            [v35 addObject:identifier2];
          }
        }

        v20 = [deliveredNotifications countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v20);
    }

    notificationCenter3 = [(ANUserNotificationController *)selfCopy notificationCenter];
    [notificationCenter3 removePendingNotificationRequestsWithIdentifiers:v33];

    notificationCenter4 = [(ANUserNotificationController *)selfCopy notificationCenter];
    [notificationCenter4 removeDeliveredNotificationsWithIdentifiers:v35];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)pauseExpirationForNotificationsWithGroupIDs:(id)ds
{
  dsCopy = ds;
  [(ANUserNotificationController *)self setSuspendNotificationExpiration:1];
  [(ANUserNotificationController *)self _setContentExpirationDate:0 forNotificationsWithThreadIDs:dsCopy];
}

- (void)resumeExpirationForNotificationsWithGroupIDs:(id)ds
{
  v4 = MEMORY[0x277CEAB80];
  dsCopy = ds;
  sharedInstance = [v4 sharedInstance];
  v8 = [sharedInstance numberForDefault:*MEMORY[0x277CEA878]];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{objc_msgSend(v8, "integerValue")}];
  [(ANUserNotificationController *)self _setContentExpirationDate:v7 forNotificationsWithThreadIDs:dsCopy];

  [(ANUserNotificationController *)self setSuspendNotificationExpiration:0];
}

- (void)postSendFailureNotificationForAnnouncement:(id)announcement
{
  v4 = MEMORY[0x277CEAB58];
  announcementCopy = announcement;
  remoteSessionDictionary = [announcementCopy remoteSessionDictionary];
  v10 = [v4 contextFromDictionary:remoteSessionDictionary];

  homeName = [v10 homeName];
  v8 = [(ANUserNotificationController *)self _contentForSendFailureForAnnouncement:announcementCopy homeName:homeName];

  identifier = [announcementCopy identifier];

  [(ANUserNotificationController *)self _postNotificationWithContent:v8 requestID:identifier];
}

- (BOOL)hasDeliveredNotificationsWithGroupID:(id)d
{
  dCopy = d;
  notificationCenter = [(ANUserNotificationController *)self notificationCenter];
  deliveredNotifications = [notificationCenter deliveredNotifications];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__ANUserNotificationController_hasDeliveredNotificationsWithGroupID___block_invoke;
  v11[3] = &unk_278C86440;
  v12 = dCopy;
  v7 = dCopy;
  v8 = [deliveredNotifications na_firstObjectPassingTest:v11];
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

- (id)contentBodyForAnnouncers:(id)announcers inHome:(id)home
{
  announcersCopy = announcers;
  homeCopy = home;
  v7 = [announcersCopy count];
  switch(v7)
  {
    case 2:
      v8 = [announcersCopy objectAtIndexedSubscript:0];
      [v8 isUser];
      v11 = [v8 nameInHome:homeCopy];
      v12 = [announcersCopy objectAtIndexedSubscript:1];
      v13 = [v12 nameInHome:homeCopy];
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
      v8 = [announcersCopy objectAtIndexedSubscript:0];
      [v8 isUser];
      v10 = [v8 nameInHome:homeCopy];
      v9 = ANLocalizedStringWithFormat();
      break;
    case 0:
      v8 = ANLocalizedString();
      v9 = ANLocalizedStringWithFormat();
      goto LABEL_11;
    default:
      v8 = [announcersCopy objectAtIndexedSubscript:0];
      isUser = [v8 isUser];
      v10 = [v8 nameInHome:homeCopy];
      v17 = @"USER_NOTIFICATION_THREE_OR_MORE_SENDER_BODY_LOCATION_%@_%lu";
      if (isUser)
      {
        v17 = @"USER_NOTIFICATION_THREE_OR_MORE_SENDER_BODY_PERSON_%@_%lu";
      }

      v18 = v17;
      [announcersCopy count];
      v9 = ANLocalizedStringWithFormat();

      break;
  }

LABEL_11:

  return v9;
}

- (BOOL)_canUpdateUserNotificationForHome:(id)home
{
  v13 = *MEMORY[0x277D85DE8];
  isHomeAppInstalled = [MEMORY[0x277CEABE0] isHomeAppInstalled];
  v4 = ANLogHandleUserNotificationsController();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412802;
    v8 = &stru_2851BDB18;
    v9 = 1024;
    v10 = isHomeAppInstalled;
    v11 = 1024;
    v12 = isHomeAppInstalled;
    _os_log_impl(&dword_23F525000, v4, OS_LOG_TYPE_DEFAULT, "%@Can Update User Notification: %d (Home App Installed: %d)", &v7, 0x18u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return isHomeAppInstalled;
}

- (id)_contentForSendFailureForAnnouncement:(id)announcement homeName:(id)name
{
  announcementCopy = announcement;
  v6 = objc_opt_new();
  v7 = ANLocalizedString();
  [v6 setTitle:v7];

  v8 = ANLocalizedString();
  [v6 setBody:v8];

  [v6 setCategoryIdentifier:@"ANAnnouncement"];
  defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  [v6 setSound:defaultSound];

  v10 = [(ANUserNotificationController *)self _userInfoForFailedDeliveryForAnnouncement:announcementCopy];
  [v6 setUserInfo:v10];

  defaultActionURL = [announcementCopy defaultActionURL];

  [v6 setDefaultActionURL:defaultActionURL];
  [v6 setShouldBackgroundDefaultAction:1];
  [v6 setShouldSuppressDefaultAction:1];
  [v6 setShouldPreventNotificationDismissalAfterDefaultAction:1];
  v12 = [v6 copy];

  return v12;
}

- (id)_userInfoForFailedDeliveryForAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  v4 = objc_opt_new();
  [v4 setObject:&unk_2851C49C8 forKeyedSubscript:*MEMORY[0x277CEAAE8]];
  sendFailureDictionary = [announcementCopy sendFailureDictionary];

  [v4 setObject:sendFailureDictionary forKeyedSubscript:*MEMORY[0x277CEAAD0]];
  v6 = MEMORY[0x277CCABB0];
  v7 = +[ANHomeManager shared];
  allHomes = [v7 allHomes];
  v9 = [v6 numberWithUnsignedInteger:{objc_msgSend(allHomes, "count")}];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x277CEAAD8]];

  v10 = [v4 copy];

  return v10;
}

- (void)_postNotificationWithContent:(id)content requestID:(id)d
{
  contentCopy = content;
  v7 = [MEMORY[0x277CE1FC0] requestWithIdentifier:d content:contentCopy trigger:0];
  notificationCenter = self->_notificationCenter;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__ANUserNotificationController__postNotificationWithContent_requestID___block_invoke;
  v11[3] = &unk_278C864E0;
  v12 = v7;
  v13 = contentCopy;
  v9 = contentCopy;
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

- (void)_setContentExpirationDate:(id)date forNotificationsWithThreadIDs:(id)ds
{
  dateCopy = date;
  dsCopy = ds;
  notificationCenter = [(ANUserNotificationController *)self notificationCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__ANUserNotificationController__setContentExpirationDate_forNotificationsWithThreadIDs___block_invoke;
  v11[3] = &unk_278C86508;
  v12 = dsCopy;
  v13 = dateCopy;
  selfCopy = self;
  v9 = dateCopy;
  v10 = dsCopy;
  [notificationCenter getDeliveredNotificationsWithCompletionHandler:v11];
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

- (void)_replaceContentForRequestWithRequestID:(id)d replacementContent:(id)content completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  contentCopy = content;
  notificationCenter = [(ANUserNotificationController *)self notificationCenter];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __108__ANUserNotificationController__replaceContentForRequestWithRequestID_replacementContent_completionHandler___block_invoke;
  v14[3] = &unk_278C86530;
  v15 = dCopy;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = dCopy;
  [notificationCenter replaceContentForRequestWithIdentifier:v13 replacementContent:contentCopy completionHandler:v14];
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

- (void)_replaceContentForRequestsWithThreadID:(id)d replacementContent:(id)content
{
  dCopy = d;
  contentCopy = content;
  notificationCenter = [(ANUserNotificationController *)self notificationCenter];
  deliveredNotifications = [notificationCenter deliveredNotifications];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke;
  v15[3] = &unk_278C86440;
  v16 = dCopy;
  v10 = dCopy;
  v11 = [deliveredNotifications na_filter:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__ANUserNotificationController__replaceContentForRequestsWithThreadID_replacementContent___block_invoke_2;
  v13[3] = &unk_278C86558;
  v13[4] = self;
  v14 = contentCopy;
  v12 = contentCopy;
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

- (void)contentWithAnnouncement:(ANAnnouncement *)announcement groupAnnouncements:(NSArray *)announcements home:(HMHome *)home threadIdentifier:(NSString *)identifier isReplacement:(BOOL)replacement suspendExpiration:(BOOL)expiration completionHandler:(id)handler
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E39C9E8, &qword_23F58D708);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  v20 = _Block_copy(handler);
  v21 = swift_allocObject();
  *(v21 + 16) = announcement;
  *(v21 + 24) = announcements;
  *(v21 + 32) = home;
  *(v21 + 40) = identifier;
  *(v21 + 48) = replacement;
  *(v21 + 49) = expiration;
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
  announcementCopy = announcement;
  announcementsCopy = announcements;
  homeCopy = home;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23F57A118(0, 0, v19, &unk_23F58D728, v24);
}

@end
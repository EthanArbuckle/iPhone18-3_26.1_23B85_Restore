@interface BCSNotificationManager
+ (id)sharedManager;
- (BCSNotificationManager)init;
- (id)_notificationWithIdentifier:(id)a3;
- (id)_userNotificationCenterForCodeType:(int64_t)a3;
- (void)_addRequestForNotification:(id)a3 codeType:(int64_t)a4;
- (void)_configureUserNotificationCenter;
- (void)didReceiveNotificationResponse:(id)a3;
- (void)invalidate;
- (void)scheduleNotification:(id)a3 codeType:(int64_t)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)withdrawNotificationsWithProcessID:(int)a3 codeType:(int64_t)a4;
@end

@implementation BCSNotificationManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BCSNotificationManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sharedManager;

  return v2;
}

uint64_t __39__BCSNotificationManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_sharedManager = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BCSNotificationManager)init
{
  v8.receiver = self;
  v8.super_class = BCSNotificationManager;
  v2 = [(BCSNotificationManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(BCSNotificationManager *)v2 _configureUserNotificationCenter];
    v4 = [MEMORY[0x277CBEB58] set];
    notifications = v3->_notifications;
    v3->_notifications = v4;

    v6 = v3;
  }

  return v3;
}

- (void)_configureUserNotificationCenter
{
  v3 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.barcodesupport.qrcode"];
  qrCodeUserNotificationCenter = self->_qrCodeUserNotificationCenter;
  self->_qrCodeUserNotificationCenter = v3;

  [(UNUserNotificationCenter *)self->_qrCodeUserNotificationCenter setDelegate:self];
  [(UNUserNotificationCenter *)self->_qrCodeUserNotificationCenter setWantsNotificationResponsesDelivered];
  v5 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.barcodesupport.nfc"];
  nfcUserNotificationCenter = self->_nfcUserNotificationCenter;
  self->_nfcUserNotificationCenter = v5;

  [(UNUserNotificationCenter *)self->_nfcUserNotificationCenter setDelegate:self];
  v7 = self->_nfcUserNotificationCenter;

  [(UNUserNotificationCenter *)v7 setWantsNotificationResponsesDelivered];
}

- (void)invalidate
{
  [(UNUserNotificationCenter *)self->_qrCodeUserNotificationCenter removeAllPendingNotificationRequests];
  qrCodeUserNotificationCenter = self->_qrCodeUserNotificationCenter;
  self->_qrCodeUserNotificationCenter = 0;

  [(UNUserNotificationCenter *)self->_nfcUserNotificationCenter removeAllPendingNotificationRequests];
  nfcUserNotificationCenter = self->_nfcUserNotificationCenter;
  self->_nfcUserNotificationCenter = 0;
}

- (id)_userNotificationCenterForCodeType:(int64_t)a3
{
  if ((a3 - 1) <= 2)
  {
    a2 = *(&self->super.isa + qword_2419D2168[a3 - 1]);
  }

  return a2;
}

- (void)scheduleNotification:(id)a3 codeType:(int64_t)a4
{
  v7 = a3;
  if ([v7 shouldSkipBanner])
  {
    v6 = [v7 identifier];
    [v7 handleActionWithIdentifier:v6 notificationResponseOriginID:&stru_2853953A0];
  }

  else
  {
    [(BCSNotificationManager *)self _addRequestForNotification:v7 codeType:a4];
  }
}

- (void)_addRequestForNotification:(id)a3 codeType:(int64_t)a4
{
  v8 = a3;
  v6 = [v8 request];
  if (v6)
  {
    v7 = [(BCSNotificationManager *)self _userNotificationCenterForCodeType:a4];
    [v7 addNotificationRequest:v6 withCompletionHandler:&__block_literal_global_4];

    [(NSMutableSet *)self->_notifications addObject:v8];
  }
}

void __62__BCSNotificationManager__addRequestForNotification_codeType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __62__BCSNotificationManager__addRequestForNotification_codeType___block_invoke_cold_1(v2);
  }
}

- (id)_notificationWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_notifications;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)withdrawNotificationsWithProcessID:(int)a3 codeType:(int64_t)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [MEMORY[0x277CBEB18] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = self->_notifications;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        if ([v13 requestingProcessID] == a3)
        {
          v14 = [v13 identifier];
          [v7 addObject:v14];

          [v6 addObject:v13];
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v15 = [(BCSNotificationManager *)self _userNotificationCenterForCodeType:a4];
  [v15 removePendingNotificationRequestsWithIdentifiers:v7];
  [v15 removeDeliveredNotificationsWithIdentifiers:v7];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(NSMutableSet *)self->_notifications removeObject:*(*(&v23 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveNotificationResponse:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 actionIdentifier];
  v6 = [v4 notification];
  v7 = [v6 request];
  v8 = [v7 identifier];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = v5;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSNotificationManager: did receive notification response with action identifier %{public}@ and request identifier %{public}@", &v13, 0x16u);
  }

  v9 = [(BCSNotificationManager *)self _notificationWithIdentifier:v8];
  if (v9)
  {
    [(NSMutableSet *)self->_notifications removeObject:v9];
  }

  if (([v5 isEqualToString:*MEMORY[0x277CE20F0]] & 1) == 0)
  {
    if ([v5 isEqualToString:*MEMORY[0x277CE20E8]])
    {
      v10 = v8;

      v5 = v10;
    }

    if ([v9 shouldHandleBulletinActionWithIdentifier:v5])
    {
      v11 = [v4 originIdentifier];
      [v9 handleActionWithIdentifier:v5 notificationResponseOriginID:v11];
    }

    [v9 didHandleBulletinActionWithIdentifier:v5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a5;
  [(BCSNotificationManager *)self didReceiveNotificationResponse:a4];
  v7[2]();
}

void __62__BCSNotificationManager__addRequestForNotification_codeType___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  v3 = 138543362;
  v4 = v1;
  _os_log_error_impl(&dword_241993000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "BCSNotificationManager: error adding notification request: %{public}@", &v3, 0xCu);

  v2 = *MEMORY[0x277D85DE8];
}

@end
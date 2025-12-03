@interface MTAccountController
+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification;
- (BOOL)activeAccountIsManagedAppleID;
- (BOOL)isPrimaryUserActiveAccount;
- (BOOL)isUserLoggedIn;
- (MTAccountController)init;
- (id)_activeAccountBlocking;
- (id)activeAccount;
- (id)activeDsid;
- (id)activeEmail;
- (id)activeFullName;
- (id)activeStorefront;
- (void)_updateActiveAccount;
- (void)dealloc;
- (void)didChangeStoreAccount:(id)account;
- (void)fetchActiveAccountWithCompletion:(id)completion;
- (void)setActiveAccount:(id)account;
@end

@implementation MTAccountController

- (MTAccountController)init
{
  v22.receiver = self;
  v22.super_class = MTAccountController;
  v2 = [(MTAccountController *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.podcasts.MTAccountController.accountQueue", 0);
    accountQueue = v2->_accountQueue;
    v2->_accountQueue = v3;

    v5 = dispatch_queue_create("com.apple.podcasts.MTAccountController.callbackQueue", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    objc_msgSend__updateActiveAccount(v2, v7, v8, v9, v10);
    v11 = objc_opt_new();
    inFlightAuthRequests = v2->_inFlightAuthRequests;
    v2->_inFlightAuthRequests = v11;

    v13 = objc_opt_new();
    declinedAuthRequests = v2->_declinedAuthRequests;
    v2->_declinedAuthRequests = v13;

    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v15, v16, v17, v18);
    objc_msgSend_addObserver_selector_name_object_(v19, v20, v2, sel_didChangeStoreAccount_, *MEMORY[0x277CB8DB8], 0);
  }

  return v2;
}

- (void)dealloc
{
  v6 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a2, v2, v3, v4);
  objc_msgSend_removeObserver_(v6, v7, self, v8, v9);

  v10.receiver = self;
  v10.super_class = MTAccountController;
  [(MTAccountController *)&v10 dealloc];
}

- (id)activeAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_233535B44;
  v10 = sub_233535B54;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_233535B5C;
  v5[3] = &unk_2789DE588;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setActiveAccount:(id)account
{
  accountCopy = account;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233535C2C;
  v7[3] = &unk_2789DE5B0;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(accountQueue, v7);
}

- (BOOL)isPrimaryUserActiveAccount
{
  v10 = objc_msgSend_ams_DSID(self->__activeAccount, a2, v2, v3, v4);
  if (v10)
  {
    v11 = objc_msgSend_activeDsid(self, v6, v7, v8, v9);
    v16 = objc_msgSend_ams_DSID(self->__activeAccount, v12, v13, v14, v15);
    isEqualToNumber = objc_msgSend_isEqualToNumber_(v11, v17, v16, v18, v19);
  }

  else
  {
    isEqualToNumber = 0;
  }

  return isEqualToNumber;
}

- (void)fetchActiveAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  accountQueue = self->_accountQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_233535E18;
  v7[3] = &unk_2789DE600;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accountQueue, v7);
}

- (id)activeDsid
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  v10 = objc_msgSend_ams_DSID(v5, v6, v7, v8, v9);

  return v10;
}

- (id)activeStorefront
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  v10 = objc_msgSend_ams_storefront(v5, v6, v7, v8, v9);

  return v10;
}

- (id)activeEmail
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  v10 = objc_msgSend_username(v5, v6, v7, v8, v9);

  return v10;
}

- (id)activeFullName
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  v10 = objc_msgSend_ams_fullName(v5, v6, v7, v8, v9);

  return v10;
}

- (BOOL)isUserLoggedIn
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  v10 = objc_msgSend_ams_DSID(v5, v6, v7, v8, v9);
  v11 = v10 != 0;

  return v11;
}

- (BOOL)activeAccountIsManagedAppleID
{
  v5 = objc_msgSend_activeAccount(self, a2, v2, v3, v4);
  isManagedAppleID = objc_msgSend_ams_isManagedAppleID(v5, v6, v7, v8, v9);

  return isManagedAppleID;
}

- (void)didChangeStoreAccount:(id)account
{
  if (objc_msgSend_iTunesAccountDidChangeForACAccountNotification_(MTAccountController, a2, account, v3, v4))
  {
    objc_msgSend__updateActiveAccount(self, v6, v7, v8, v9);
    if (objc_msgSend_isUserLoggedIn(self, v10, v11, v12, v13))
    {
      v20 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v14, v15, v16, v17);
      objc_msgSend_postNotificationName_object_(v20, v18, @"MTShouldCheckShowWelcomeNotification", 0, v19);
    }
  }
}

- (id)_activeAccountBlocking
{
  v5 = objc_msgSend_ams_sharedAccountStore(MEMORY[0x277CB8F48], a2, v2, v3, v4);
  v10 = objc_msgSend_ams_activeiTunesAccount(v5, v6, v7, v8, v9);

  return v10;
}

- (void)_updateActiveAccount
{
  v6 = objc_msgSend_activeDsid(self, a2, v2, v3, v4);
  v11 = objc_msgSend_stringValue(v6, v7, v8, v9, v10);

  accountQueue = self->_accountQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_233536230;
  v14[3] = &unk_2789DE5B0;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_async(accountQueue, v14);
}

+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification
{
  notificationCopy = notification;
  v8 = objc_msgSend_userInfo(notificationCopy, v4, v5, v6, v7);
  v9 = *MEMORY[0x277CB8C90];
  v17 = objc_msgSend_objectForKeyedSubscript_(v8, v10, *MEMORY[0x277CB8C90], v11, v12);
  if (v17)
  {
    v18 = objc_msgSend_userInfo(notificationCopy, v13, v14, v15, v16);
    v22 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v9, v20, v21);
    isEqualToString = objc_msgSend_isEqualToString_(v22, v23, *MEMORY[0x277CB8D58], v24, v25);
  }

  else
  {
    isEqualToString = 1;
  }

  return isEqualToString;
}

@end
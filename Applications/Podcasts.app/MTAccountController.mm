@interface MTAccountController
+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification;
+ (void)openAccountsPanel;
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
- (void)promptAccountAuthenticationWithDebugReason:(id)reason forced:(BOOL)forced;
- (void)setActiveAccount:(id)account;
- (void)signOut;
@end

@implementation MTAccountController

- (MTAccountController)init
{
  v13.receiver = self;
  v13.super_class = MTAccountController;
  v2 = [(MTAccountController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.podcasts.MTAccountController.accountQueue", 0);
    accountQueue = v2->_accountQueue;
    v2->_accountQueue = v3;

    v5 = dispatch_queue_create("com.apple.podcasts.MTAccountController.callbackQueue", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    [(MTAccountController *)v2 _updateActiveAccount];
    v7 = objc_opt_new();
    inFlightAuthRequests = v2->_inFlightAuthRequests;
    v2->_inFlightAuthRequests = v7;

    v9 = objc_opt_new();
    declinedAuthRequests = v2->_declinedAuthRequests;
    v2->_declinedAuthRequests = v9;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"didChangeStoreAccount:" name:ACDAccountStoreDidChangeNotification object:0];
  }

  return v2;
}

- (void)_updateActiveAccount
{
  activeDsid = [(MTAccountController *)self activeDsid];
  stringValue = [activeDsid stringValue];

  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000804C;
  v7[3] = &unk_1004D8798;
  v7[4] = self;
  v8 = stringValue;
  v6 = stringValue;
  dispatch_async(accountQueue, v7);
}

- (id)activeDsid
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  return ams_DSID;
}

- (id)activeAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008A6C;
  v10 = sub_10003B50C;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000801C;
  v5[3] = &unk_1004D9068;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_activeAccountBlocking
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (BOOL)isUserLoggedIn
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];
  v4 = ams_DSID != 0;

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTAccountController;
  [(MTAccountController *)&v4 dealloc];
}

- (void)setActiveAccount:(id)account
{
  accountCopy = account;
  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DA740;
  v7[3] = &unk_1004D8798;
  v8 = accountCopy;
  selfCopy = self;
  v6 = accountCopy;
  dispatch_async(accountQueue, v7);
}

- (BOOL)isPrimaryUserActiveAccount
{
  ams_DSID = [(ACAccount *)self->__activeAccount ams_DSID];
  if (ams_DSID)
  {
    activeDsid = [(MTAccountController *)self activeDsid];
    ams_DSID2 = [(ACAccount *)self->__activeAccount ams_DSID];
    v6 = [activeDsid isEqualToNumber:ams_DSID2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchActiveAccountWithCompletion:(id)completion
{
  completionCopy = completion;
  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DA92C;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accountQueue, v7);
}

- (id)activeStorefront
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_storefront = [activeAccount ams_storefront];

  return ams_storefront;
}

- (id)activeEmail
{
  activeAccount = [(MTAccountController *)self activeAccount];
  username = [activeAccount username];

  return username;
}

- (id)activeFullName
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_fullName = [activeAccount ams_fullName];

  return ams_fullName;
}

- (BOOL)activeAccountIsManagedAppleID
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_isManagedAppleID = [activeAccount ams_isManagedAppleID];

  return ams_isManagedAppleID;
}

- (void)didChangeStoreAccount:(id)account
{
  if ([MTAccountController iTunesAccountDidChangeForACAccountNotification:account])
  {
    [(MTAccountController *)self _updateActiveAccount];
    if ([(MTAccountController *)self isUserLoggedIn])
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 postNotificationName:@"MTShouldCheckShowWelcomeNotification" object:0];
    }

    else
    {
      callbackQueue = self->_callbackQueue;

      dispatch_async(callbackQueue, &stru_1004DBB20);
    }
  }
}

+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = ACAccountTypeIdentifierKey;
  v6 = [userInfo objectForKeyedSubscript:ACAccountTypeIdentifierKey];
  if (v6)
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:v5];
    v9 = [v8 isEqualToString:ACAccountTypeIdentifieriTunesStore];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (void)openAccountsPanel
{
  v3 = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
  v2 = +[UIApplication sharedApplication];
  [v2 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)promptAccountAuthenticationWithDebugReason:(id)reason forced:(BOOL)forced
{
  reasonCopy = reason;
  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Prompting for sign-in with reason %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DAED0;
  block[3] = &unk_1004DA0E0;
  forcedCopy = forced;
  block[4] = self;
  v10 = reasonCopy;
  v8 = reasonCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)signOut
{
  activeAccount = [(MTAccountController *)self activeAccount];
  accountStore = [activeAccount accountStore];
  activeAccount2 = [(MTAccountController *)self activeAccount];
  [accountStore removeAccount:activeAccount2 withCompletionHandler:&stru_1004DBBB0];
}

@end
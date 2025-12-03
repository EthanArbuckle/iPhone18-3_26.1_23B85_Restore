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

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTAccountController;
  [(MTAccountController *)&v4 dealloc];
}

- (id)activeAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100011AFC;
  v10 = sub_100011B0C;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011B14;
  v5[3] = &unk_10002CE68;
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
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011BE4;
  v7[3] = &unk_10002CFA0;
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
  v7[2] = sub_100011DD0;
  v7[3] = &unk_10002CFC8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(accountQueue, v7);
}

- (id)activeDsid
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];

  return ams_DSID;
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

- (BOOL)isUserLoggedIn
{
  activeAccount = [(MTAccountController *)self activeAccount];
  ams_DSID = [activeAccount ams_DSID];
  v4 = ams_DSID != 0;

  return v4;
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
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 postNotificationName:@"MTShouldCheckShowWelcomeNotification" object:0];
    }
  }
}

- (id)_activeAccountBlocking
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (void)_updateActiveAccount
{
  activeDsid = [(MTAccountController *)self activeDsid];
  stringValue = [activeDsid stringValue];

  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000121E8;
  v7[3] = &unk_10002CFA0;
  v7[4] = self;
  v8 = stringValue;
  v6 = stringValue;
  dispatch_async(accountQueue, v7);
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

@end
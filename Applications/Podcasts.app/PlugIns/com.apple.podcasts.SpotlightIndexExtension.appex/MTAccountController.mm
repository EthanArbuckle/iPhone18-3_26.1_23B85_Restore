@interface MTAccountController
+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)a3;
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
- (void)didChangeStoreAccount:(id)a3;
- (void)fetchActiveAccountWithCompletion:(id)a3;
- (void)setActiveAccount:(id)a3;
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
  v9 = sub_10000827C;
  v10 = sub_10000828C;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100008294;
  v5[3] = &unk_100014AE8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setActiveAccount:(id)a3
{
  v4 = a3;
  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008364;
  v7[3] = &unk_100014788;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

- (BOOL)isPrimaryUserActiveAccount
{
  v3 = [(ACAccount *)self->__activeAccount ams_DSID];
  if (v3)
  {
    v4 = [(MTAccountController *)self activeDsid];
    v5 = [(ACAccount *)self->__activeAccount ams_DSID];
    v6 = [v4 isEqualToNumber:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchActiveAccountWithCompletion:(id)a3
{
  v4 = a3;
  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008550;
  v7[3] = &unk_100014710;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

- (id)activeDsid
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_DSID];

  return v3;
}

- (id)activeStorefront
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_storefront];

  return v3;
}

- (id)activeEmail
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 username];

  return v3;
}

- (id)activeFullName
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_fullName];

  return v3;
}

- (BOOL)isUserLoggedIn
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_DSID];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)activeAccountIsManagedAppleID
{
  v2 = [(MTAccountController *)self activeAccount];
  v3 = [v2 ams_isManagedAppleID];

  return v3;
}

- (void)didChangeStoreAccount:(id)a3
{
  if ([MTAccountController iTunesAccountDidChangeForACAccountNotification:a3])
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
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

- (void)_updateActiveAccount
{
  v3 = [(MTAccountController *)self activeDsid];
  v4 = [v3 stringValue];

  accountQueue = self->_accountQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008968;
  v7[3] = &unk_100014788;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accountQueue, v7);
}

+ (BOOL)iTunesAccountDidChangeForACAccountNotification:(id)a3
{
  v3 = a3;
  v4 = [v3 userInfo];
  v5 = ACAccountTypeIdentifierKey;
  v6 = [v4 objectForKeyedSubscript:ACAccountTypeIdentifierKey];
  if (v6)
  {
    v7 = [v3 userInfo];
    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = [v8 isEqualToString:ACAccountTypeIdentifieriTunesStore];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end
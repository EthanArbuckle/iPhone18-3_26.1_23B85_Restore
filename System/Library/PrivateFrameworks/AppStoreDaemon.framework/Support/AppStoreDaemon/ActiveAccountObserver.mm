@interface ActiveAccountObserver
+ (ACAccount)activeAccount;
+ (ACAccount)activeSandboxAccount;
+ (id)sharedInstance;
- (ActiveAccountObserver)init;
- (id)oneAccountDSIDWithLogKey:(id)a3 refetchIfNeeded:(BOOL)a4;
- (void)handleAccountStoreDidChangeNotification:(id)a3;
- (void)handleSandboxAccountDidChangeNotification:(id)a3;
- (void)handleStorefrontChangedNotification:(id)a3;
@end

@implementation ActiveAccountObserver

+ (ACAccount)activeAccount
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

+ (id)sharedInstance
{
  if (qword_1005AA938 != -1)
  {
    dispatch_once(&qword_1005AA938, &stru_10051EEA0);
  }

  v3 = qword_1005AA940;

  return v3;
}

- (ActiveAccountObserver)init
{
  v20.receiver = self;
  v20.super_class = ActiveAccountObserver;
  v2 = [(ActiveAccountObserver *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AccountStore", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[ACAccountStore ams_sharedAccountStore];
    v7 = [v6 ams_activeiTunesAccount];
    account = v2->_account;
    v2->_account = v7;

    v9 = [(ACAccount *)v2->_account ams_storefront];
    cachedStoreFront = v2->_cachedStoreFront;
    v2->_cachedStoreFront = v9;

    v11 = objc_alloc_init(UnfairLock);
    lock = v2->_lock;
    v2->_lock = v11;

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = v2->_account;
      v16 = v14;
      v17 = [(ACAccount *)v15 ams_DSID];
      *buf = 138543618;
      v22 = v14;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Intialized with account account: %{public}@", buf, 0x16u);
    }

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"handleAccountStoreDidChangeNotification:" name:@"com.apple.appstored.ASDItunesAccountDidChangeNotification" object:0];
    [v18 addObserver:v2 selector:"handleSandboxAccountDidChangeNotification:" name:@"com.apple.appstored.ASDSandboxAccountDidChangeNotification" object:0];
    [v18 addObserver:v2 selector:"handleStorefrontChangedNotification:" name:@"com.apple.StoreServices.StorefrontChanged" object:0];
  }

  return v2;
}

+ (ACAccount)activeSandboxAccount
{
  v2 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  v3 = [v2 ams_activeiTunesAccount];

  return v3;
}

- (id)oneAccountDSIDWithLogKey:(id)a3 refetchIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!self->_account)
  {
    v9 = 0;
    goto LABEL_16;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100259BE0;
  v29 = sub_100259BF0;
  v30 = 0;
  lock = self->_lock;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100259BF8;
  v24[3] = &unk_10051B638;
  v24[4] = self;
  v24[5] = &v25;
  sub_100379C5C(lock, v24);
  v8 = v26[5];
  if (!v8 || v4)
  {
    if (!v8 || !v4 || ([v8 isEqualToNumber:&off_100547548] & 1) != 0)
    {
      v10 = dispatch_semaphore_create(0);
      v11 = +[AMSAccountCachedServerData sharedInstance];
      account = self->_account;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100259C0C;
      v20[3] = &unk_10051EEC8;
      v21 = v6;
      v23 = &v25;
      v13 = v10;
      v22 = v13;
      [v11 intForKey:3 account:account logKey:v21 staleValueAcceptable:0 completionHandler:v20];

      v14 = dispatch_time(0, 5000000000);
      if (dispatch_semaphore_wait(v13, v14))
      {
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Timed out attempting to lookup oneAccountDSID", buf, 2u);
        }
      }

      else
      {
        v16 = self->_lock;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100259D00;
        v18[3] = &unk_10051EEF0;
        v18[4] = self;
        v18[5] = &v25;
        sub_100379C5C(v16, v18);
      }

      v9 = v26[5];

      goto LABEL_15;
    }

    v8 = v26[5];
  }

  v9 = v8;
LABEL_15:
  _Block_object_dispose(&v25, 8);

LABEL_16:

  return v9;
}

- (void)handleSandboxAccountDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received sandbox account changed notification", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100259E4C;
  v9[3] = &unk_10051B570;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(dispatchQueue, v9);
}

- (void)handleAccountStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025A0C4;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)handleStorefrontChangedNotification:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025AA4C;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
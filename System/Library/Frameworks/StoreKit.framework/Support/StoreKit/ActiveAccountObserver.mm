@interface ActiveAccountObserver
+ (ACAccount)activeAccount;
+ (ACAccount)activeSandboxAccount;
+ (BOOL)_shouldNotifyChangeFromExistingAccount:(id)account toCurrentAccount:(id)currentAccount;
+ (id)sharedInstance;
+ (void)_postAccountDidChangeFromOldAccount:(id)account withAccountStore:(id)store;
- (ActiveAccountObserver)init;
- (void)handleAccountStoreDidChangeNotification:(id)notification;
- (void)handleSandboxAccountDidChangeNotification:(id)notification;
@end

@implementation ActiveAccountObserver

+ (id)sharedInstance
{
  if (qword_1003D4920 != -1)
  {
    sub_1002D12E4();
  }

  v3 = qword_1003D4928;

  return v3;
}

- (ActiveAccountObserver)init
{
  v16.receiver = self;
  v16.super_class = ActiveAccountObserver;
  v2 = [(ActiveAccountObserver *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.storekit.AccountStore", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = +[ACAccountStore ams_sharedAccountStore];
    ams_activeiTunesAccount = [v5 ams_activeiTunesAccount];
    account = v2->_account;
    v2->_account = ams_activeiTunesAccount;

    if (qword_1003D4978 != -1)
    {
      sub_1002D12F8();
    }

    v8 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = v2->_account;
      v12 = v10;
      ams_DSID = [(ACAccount *)v11 ams_DSID];
      *buf = 138543619;
      v18 = v10;
      v19 = 2113;
      v20 = ams_DSID;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Intialized with account: %{private}@", buf, 0x16u);
    }

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"handleAccountStoreDidChangeNotification:" name:@"com.apple.appstored.ASDItunesAccountDidChangeNotification" object:0];
    [v14 addObserver:v2 selector:"handleSandboxAccountDidChangeNotification:" name:@"com.apple.appstored.ASDSandboxAccountDidChangeNotification" object:0];
  }

  return v2;
}

+ (ACAccount)activeAccount
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

+ (ACAccount)activeSandboxAccount
{
  v2 = [ACAccountStore ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  ams_activeiTunesAccount = [v2 ams_activeiTunesAccount];

  return ams_activeiTunesAccount;
}

- (void)handleSandboxAccountDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  if (qword_1003D4978 != -1)
  {
    sub_1002D1320();
  }

  v5 = qword_1003D4930;
  if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received sandbox account changed notification", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073790;
  block[3] = &unk_100380818;
  v11 = notificationCopy;
  v9 = notificationCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)handleAccountStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073904;
  v7[3] = &unk_10037F868;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, v7);
}

+ (void)_postAccountDidChangeFromOldAccount:(id)account withAccountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v7 = dispatch_get_global_queue(21, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100073E58;
  v10[3] = &unk_10037F868;
  v11 = accountCopy;
  v12 = storeCopy;
  v8 = storeCopy;
  v9 = accountCopy;
  dispatch_async(v7, v10);
}

+ (BOOL)_shouldNotifyChangeFromExistingAccount:(id)account toCurrentAccount:(id)currentAccount
{
  accountCopy = account;
  currentAccountCopy = currentAccount;
  v7 = currentAccountCopy;
  if (!(accountCopy | currentAccountCopy))
  {
    goto LABEL_2;
  }

  if (!accountCopy && currentAccountCopy)
  {
    if (qword_1003D4978 != -1)
    {
      sub_1002D1320();
    }

    v9 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEBUG))
    {
      sub_1002D1548(v9);
    }

LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

  if (accountCopy && !currentAccountCopy)
  {
    if (qword_1003D4978 != -1)
    {
      sub_1002D1320();
    }

    v10 = qword_1003D4930;
    if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEBUG))
    {
      sub_1002D149C(v10);
    }

    goto LABEL_15;
  }

  ams_DSID = [currentAccountCopy ams_DSID];
  if (ams_DSID)
  {
    v13 = ams_DSID;
    ams_DSID2 = [accountCopy ams_DSID];
    if (ams_DSID2)
    {
      v15 = ams_DSID2;
      ams_DSID3 = [v7 ams_DSID];
      ams_DSID4 = [accountCopy ams_DSID];
      v18 = [ams_DSID3 isEqualToNumber:ams_DSID4];

      if ((v18 & 1) == 0)
      {
        if (qword_1003D4978 != -1)
        {
          sub_1002D1320();
        }

        v19 = qword_1003D4930;
        if (os_log_type_enabled(qword_1003D4930, OS_LOG_TYPE_DEBUG))
        {
          sub_1002D13F0(v19);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

LABEL_2:
  v8 = 0;
LABEL_16:

  return v8;
}

@end
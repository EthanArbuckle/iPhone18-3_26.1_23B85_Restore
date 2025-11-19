@interface JSACookieStorage
+ (JSACookieStorage)sharedInstance;
- (JSACookieStorage)init;
- (NSDictionary)activeCookiesForDefaultURL;
- (void)_handleCookieDidExpire:(id)a3;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)dealloc;
- (void)deleteCookie:(id)a3 :(id)a4;
- (void)notificationHandler:(id)a3;
- (void)registerOnCookieStorageChange:(id)a3;
- (void)setCookie:(id)a3 :(id)a4;
@end

@implementation JSACookieStorage

+ (JSACookieStorage)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_266AC;
  block[3] = &unk_B25E8;
  block[4] = a1;
  if (qword_CC1B0 != -1)
  {
    dispatch_once(&qword_CC1B0, block);
  }

  v2 = qword_CC1B8;

  return v2;
}

- (JSACookieStorage)init
{
  v23.receiver = self;
  v23.super_class = JSACookieStorage;
  v2 = [(JSACookieStorage *)&v23 init];
  if (v2)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INTERACTIVE, 0);
    v6 = dispatch_queue_create("com.apple.iBooks.JSACookieStorage", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = [NSURL URLWithString:@"https://www.apple.com/"];
    defaultURL = v2->_defaultURL;
    v2->_defaultURL = v8;

    objc_initWeak(&location, v2);
    v10 = [BUCoalescingCallBlock alloc];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_26934;
    v20 = &unk_B35A8;
    objc_copyWeak(&v21, &location);
    v11 = [v10 initWithNotifyBlock:&v17 blockDescription:@"JSACookieStorage"];
    updateCookiesCoalescingCallBlock = v2->_updateCookiesCoalescingCallBlock;
    v2->_updateCookiesCoalescingCallBlock = v11;

    [(BUCoalescingCallBlock *)v2->_updateCookiesCoalescingCallBlock setCoalescingDelay:0.2, v17, v18, v19, v20];
    sub_8334C(v2, 0);
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
    [v13 addObserver:v2 selector:"notificationHandler:" name:NSHTTPCookieManagerCookiesChangedNotification object:v14];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_833F4, AMSAccountCookiesChangedNotificationName, 0, 0);
    v16 = +[BUAccountsProvider sharedProvider];
    [v16 addObserver:v2 accountTypes:1];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = +[BUAccountsProvider sharedProvider];
  [v5 removeObserver:self accountTypes:1];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(JSACookieStorage *)self invalidationTimers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10) invalidate];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(JSACookieStorage *)self setInvalidationTimers:0];
  v11.receiver = self;
  v11.super_class = JSACookieStorage;
  [(JSACookieStorage *)&v11 dealloc];
}

- (NSDictionary)activeCookiesForDefaultURL
{
  activeCookiesForDefaultURL = self->_activeCookiesForDefaultURL;
  if (!activeCookiesForDefaultURL)
  {
    self->_activeCookiesForDefaultURL = &__NSDictionary0__struct;

    activeCookiesForDefaultURL = self->_activeCookiesForDefaultURL;
  }

  return activeCookiesForDefaultURL;
}

- (void)setCookie:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSHTTPCookie alloc];
  v9 = [v8 jsa_initWithScriptingCookie:v7];

  v10 = +[BUAccountsProvider sharedProvider];
  v11 = [v10 localStoreAccount];

  v20 = v9;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  [v11 ams_addCookies:v12];

  if ([v11 isDirty])
  {
    v13 = +[ACAccountStore bu_sharedAccountStore];
    v14 = [v13 ams_saveAccount:v11 verifyCredentials:0];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_834CC;
    v18[3] = &unk_B35D0;
    v18[4] = self;
    v19 = v6;
    v15 = v6;
    [v14 resultWithCompletion:v18];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_26E60;
    v16[3] = &unk_B20D8;
    v17 = v6;
    v14 = v6;
    sub_8334C(self, v16);
    v15 = v17;
  }
}

- (void)deleteCookie:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v6 domain];
  if (!v10)
  {

    goto LABEL_6;
  }

  v11 = v10;
  v12 = [v6 path];

  if (!v12)
  {
LABEL_6:
    v18 = +[JSABridge sharedInstance];
    [v18 enqueueValueCall:v7 arguments:0 file:@"JSACookieStorage.m" line:148];

    goto LABEL_7;
  }

  v21[0] = NSHTTPCookieName;
  v13 = [v6 name];
  v22[0] = v13;
  v21[1] = NSHTTPCookieDomain;
  v14 = [v6 domain];
  v22[1] = v14;
  v21[2] = NSHTTPCookiePath;
  v15 = [v6 path];
  v22[2] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

  v17 = +[ACAccountStore bu_sharedAccountStore];
  [v17 ams_removeCookiesMatchingProperties:v16 error:0];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_270F0;
  v19[3] = &unk_B20D8;
  v20 = v7;
  sub_8334C(self, v19);

LABEL_7:
}

- (void)registerOnCookieStorageChange:(id)a3
{
  v4 = a3;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Registering on cookie storage change", v7, 2u);
  }

  v6 = [JSManagedValue managedValueWithValue:v4];

  [(JSACookieStorage *)self setCookieStorageChangeHandler:v6];
}

- (void)notificationHandler:(id)a3
{
  v5 = JSALog();
  if (sub_27AEC(v5))
  {
    sub_27ACC(&dword_0, v6, v7, "[JSACookieStorage] Received NSHTTPCookieStorage changed notification", v8, v9, v10, v11, 0);
  }

  if (self)
  {
    sub_27B04();
  }
}

- (void)_handleCookieDidExpire:(id)a3
{
  v5 = JSALog();
  if (sub_27AEC(v5))
  {
    sub_27ACC(&dword_0, v6, v7, "[JSACookieStorage] A cookie has expired", v8, v9, v10, v11, 0);
  }

  if (self)
  {
    sub_27B04();
  }
}

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  v6 = JSALog();
  if (sub_27AEC(v6))
  {
    sub_27ACC(&dword_0, v7, v8, "[JSACookieStorage] Received account changed notification", v9, v10, v11, v12, 0);
  }

  if (self)
  {
    sub_27B04();
  }
}

@end
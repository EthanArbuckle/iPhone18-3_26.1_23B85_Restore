@interface JSAStore
+ (JSAStore)sharedInstance;
- (BOOL)isAuthenticated;
- (JSAAccount)account;
- (JSAStore)init;
- (NSString)platform;
- (NSString)storeFrontIdentifier;
- (void)_updateRestrictionsAndNotifyIfNeeded;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)accountControllerDidAttemptSignIn:(id)in;
- (void)accountDidAttemptSignOut:(uint64_t)out;
- (void)accountWillAttemptSignOut:(uint64_t)out;
- (void)addObserver:(id)observer;
- (void)beginDelayingNotifications;
- (void)dealloc;
- (void)endDelayingNotifications;
- (void)registerOnAccountChange:(id)change;
- (void)registerOnRestrictionChange:(id)change;
- (void)registerOnStorefrontChange:(id)change;
- (void)removeObserver:(id)observer;
- (void)unregisterOnAccountChange:(id)change;
- (void)unregisterOnRestrictionChange;
- (void)unregisterOnStorefrontChange;
@end

@implementation JSAStore

- (JSAStore)init
{
  v29.receiver = self;
  v29.super_class = JSAStore;
  v2 = [(JSAStore *)&v29 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("JSAStore.Account", v3);
    accountQueue = v2->_accountQueue;
    v2->_accountQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("JSAStore.Callback", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("JSAStore.Restrictions", v9);
    restrictionsQueue = v2->_restrictionsQueue;
    v2->_restrictionsQueue = v10;

    v2->_accessLock._os_unfair_lock_opaque = 0;
    v12 = [[JSAAccount alloc] initWithDelegate:v2];
    account = v2->_account;
    v2->_account = v12;

    v14 = +[NSArray array];
    accountHandlers = v2->_accountHandlers;
    v2->_accountHandlers = v14;

    v16 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v16;

    v18 = +[BUAccountsProvider sharedProvider];
    currentStorefront = [v18 currentStorefront];
    storeFrontIdentifier = v2->_storeFrontIdentifier;
    v2->_storeFrontIdentifier = currentStorefront;

    v21 = +[BURestrictionsProvider sharedInstance];
    [v21 addObserver:v2];

    v22 = +[BURestrictionsProvider sharedInstance];
    v2->_allowsAccountModification = [v22 isAccountModificationAllowed];

    v23 = +[BURestrictionsProvider sharedInstance];
    v2->_allowsErotica = [v23 isExplicitContentAllowed];

    v24 = +[BURestrictionsProvider sharedInstance];
    v2->_allowsStore = [v24 isBookStoreAllowed];

    v2->_isRunningInStoreDemoMode = +[UIApplication isRunningInStoreDemoMode];
    v25 = +[JSAAccountController sharedController];
    [v25 addObserver:v2];

    v26 = +[BUAccountsProvider sharedProvider];
    [v26 addObserver:v2 accountTypes:1];

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v2 selector:"_updateRestrictionsAndNotifyIfNeeded" name:UIApplicationWillEnterForegroundNotification object:0];

    [(JSAStore *)v2 _updateRestrictionsAndNotifyIfNeeded];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BUAccountsProvider sharedProvider];
  [v4 removeObserver:self accountTypes:1];

  v5 = +[BURestrictionsProvider sharedInstance];
  [v5 removeObserver:self];

  v6 = +[JSAAccountController sharedController];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = JSAStore;
  [(JSAStore *)&v7 dealloc];
}

+ (JSAStore)sharedInstance
{
  if (qword_CC1A0 != -1)
  {
    sub_83188();
  }

  v3 = qword_CC1A8;

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_accessLock);
  [(NSMutableArray *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_accessLock);
}

- (NSString)storeFrontIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_25138;
  v10 = sub_25148;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_25150;
  v5[3] = &unk_B2508;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)platform
{
  v2 = +[UIDevice currentDevice];
  if ([v2 userInterfaceIdiom] == &dword_0 + 1)
  {

    return @"iPad";
  }

  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_4 + 1)
  {
    return @"iPad";
  }

  v6 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v6 userInterfaceIdiom];

  if (!userInterfaceIdiom2)
  {
    return @"iPhone";
  }

  v8 = JSALog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_8319C(v8);
  }

  return 0;
}

- (JSAAccount)account
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_25138;
  v10 = sub_25148;
  v11 = 0;
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_25364;
  v5[3] = &unk_B2508;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accountQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)registerOnStorefrontChange:(id)change
{
  changeCopy = change;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[JSAStore registerOnStorefrontChange:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v6 = [JSManagedValue managedValueWithValue:changeCopy];

  storefrontChangeHandler = self->_storefrontChangeHandler;
  self->_storefrontChangeHandler = v6;
}

- (void)unregisterOnStorefrontChange
{
  storefrontChangeHandler = self->_storefrontChangeHandler;
  self->_storefrontChangeHandler = 0;
  _objc_release_x1();
}

- (void)registerOnAccountChange:(id)change
{
  changeCopy = change;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[JSAStore registerOnAccountChange:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  callbackQueue = [(JSAStore *)self callbackQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_255AC;
  v8[3] = &unk_B2128;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(callbackQueue, v8);
}

- (void)unregisterOnAccountChange:(id)change
{
  changeCopy = change;
  callbackQueue = [(JSAStore *)self callbackQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_256D4;
  v7[3] = &unk_B2128;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(callbackQueue, v7);
}

- (void)registerOnRestrictionChange:(id)change
{
  changeCopy = change;
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[JSAStore registerOnRestrictionChange:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v6 = [JSManagedValue managedValueWithValue:changeCopy];

  restrictionHandler = self->_restrictionHandler;
  self->_restrictionHandler = v6;
}

- (void)unregisterOnRestrictionChange
{
  restrictionHandler = self->_restrictionHandler;
  self->_restrictionHandler = 0;
  _objc_release_x1();
}

- (BOOL)isAuthenticated
{
  account = [(JSAStore *)self account];
  if (account)
  {
    account2 = [(JSAStore *)self account];
    uniqueIdentifier = [account2 uniqueIdentifier];
    v6 = [uniqueIdentifier length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)beginDelayingNotifications
{
  if (![(JSAStore *)self shouldDelayNotifications])
  {
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Store] begin delaying notifications", v5, 2u);
    }

    [(JSAStore *)self setShouldDelayNotifications:1];
    callbackQueue = [(JSAStore *)self callbackQueue];
    dispatch_suspend(callbackQueue);
  }
}

- (void)endDelayingNotifications
{
  if ([(JSAStore *)self shouldDelayNotifications])
  {
    v3 = JSALog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Store] end delaying notifications", v5, 2u);
    }

    [(JSAStore *)self setShouldDelayNotifications:0];
    callbackQueue = [(JSAStore *)self callbackQueue];
    dispatch_resume(callbackQueue);
  }
}

- (void)_updateRestrictionsAndNotifyIfNeeded
{
  objc_initWeak(&location, self);
  restrictionsQueue = [(JSAStore *)self restrictionsQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_25AA8;
  v4[3] = &unk_B23B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(restrictionsQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Store] account store did change", buf, 2u);
  }

  objc_initWeak(buf, self);
  accountQueue = self->_accountQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_261C8;
  block[3] = &unk_B23B0;
  objc_copyWeak(&v8, buf);
  dispatch_async(accountQueue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)accountControllerDidAttemptSignIn:(id)in
{
  objc_initWeak(&location, self);
  accountQueue = self->_accountQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_263F4;
  v5[3] = &unk_B23B0;
  objc_copyWeak(&v6, &location);
  dispatch_async(accountQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)accountDidAttemptSignOut:(uint64_t)out
{
  if (out)
  {
    v3 = sub_265BC(out);
    sub_265E0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v13 = v5;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v3);
          }

          v5 = sub_265EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
          if (v5)
          {
            v5 = [v2 storeDidAttemptSignOut:v1];
          }

          ++v15;
        }

        while (v13 != v15);
        sub_265E0();
        v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
        v13 = v5;
      }

      while (v5);
    }
  }
}

- (void)accountWillAttemptSignOut:(uint64_t)out
{
  if (out)
  {
    v3 = sub_265BC(out);
    sub_265E0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v13 = v5;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v3);
          }

          v5 = sub_265EC(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
          if (v5)
          {
            v5 = [v2 storeWillAttemptSignOut:v1];
          }

          ++v15;
        }

        while (v13 != v15);
        sub_265E0();
        v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
        v13 = v5;
      }

      while (v5);
    }
  }
}

@end
@interface ASKRebootstrapCoordinator
+ (ASKRebootstrapCoordinator)sharedCoordinator;
- (ASKRebootstrapCoordinator)init;
- (id)registerCleanupHandler:(id)a3;
- (void)beginDelayingNotifications;
- (void)endDelayingNotifications;
- (void)notify;
- (void)removeCleanupHandler:(id)a3;
- (void)scheduleNotification;
@end

@implementation ASKRebootstrapCoordinator

+ (ASKRebootstrapCoordinator)sharedCoordinator
{
  if (sharedCoordinator_onceToken[0] != -1)
  {
    +[ASKRebootstrapCoordinator sharedCoordinator];
  }

  v3 = sharedCoordinator_sharedCoordinator;

  return v3;
}

void __46__ASKRebootstrapCoordinator_sharedCoordinator__block_invoke(id a1)
{
  sharedCoordinator_sharedCoordinator = objc_alloc_init(ASKRebootstrapCoordinator);

  _objc_release_x1();
}

- (ASKRebootstrapCoordinator)init
{
  v15.receiver = self;
  v15.super_class = ASKRebootstrapCoordinator;
  v2 = [(ASKRebootstrapCoordinator *)&v15 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [ASKStorefrontChangeProvider alloc];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = __33__ASKRebootstrapCoordinator_init__block_invoke;
    v12 = &unk_4AF208;
    objc_copyWeak(&v13, &location);
    v4 = [(ASKStorefrontChangeProvider *)v3 initWithBlock:&v9];
    changeObserver = v2->_changeObserver;
    v2->_changeObserver = v4;

    v6 = [NSHashTable weakObjectsHashTable:v9];
    handlerTokens = v2->_handlerTokens;
    v2->_handlerTokens = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __33__ASKRebootstrapCoordinator_init__block_invoke(uint64_t a1)
{
  v2 = +[AMSLogConfig ask_generalLogConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "Storefront change detected", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained performSelectorOnMainThread:"scheduleNotification" withObject:0 waitUntilDone:0];
}

- (void)scheduleNotification
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"notify" object:0];
  if ([(ASKRebootstrapCoordinator *)self delayCount])
  {
    v3 = +[AMSLogConfig ask_generalLogConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Deferring storefront change notification", v6, 2u);
    }

    [(ASKRebootstrapCoordinator *)self setHasPendingNotification:1];
  }

  else
  {
    v7 = NSRunLoopCommonModes;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    [(ASKRebootstrapCoordinator *)self performSelector:"notify" withObject:0 afterDelay:v5 inModes:1.0];
  }
}

- (void)notify
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(ASKRebootstrapCoordinator *)self handlerTokens];
  v4 = [v3 copy];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) handler];
        v9[2]();

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [(ASKRebootstrapCoordinator *)self appBootstrapHandler];

  if (v10)
  {
    v11 = [(ASKRebootstrapCoordinator *)self appBootstrapHandler];
    v11[2]();
  }
}

- (void)beginDelayingNotifications
{
  v3 = [(ASKRebootstrapCoordinator *)self delayCount]+ 1;

  [(ASKRebootstrapCoordinator *)self setDelayCount:v3];
}

- (void)endDelayingNotifications
{
  if ([(ASKRebootstrapCoordinator *)self delayCount])
  {
    [(ASKRebootstrapCoordinator *)self setDelayCount:[(ASKRebootstrapCoordinator *)self delayCount]- 1];
    if (![(ASKRebootstrapCoordinator *)self delayCount])
    {
      if ([(ASKRebootstrapCoordinator *)self hasPendingNotification])
      {
        v3 = +[AMSLogConfig ask_generalLogConfig];
        if (!v3)
        {
          v3 = +[AMSLogConfig sharedConfig];
        }

        v4 = [v3 OSLogObject];
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          *v5 = 0;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "Flushing deferred storefront change notification", v5, 2u);
        }

        [(ASKRebootstrapCoordinator *)self performSelector:"notify" withObject:0 afterDelay:0.0];
        [(ASKRebootstrapCoordinator *)self setHasPendingNotification:0];
      }
    }
  }
}

- (id)registerCleanupHandler:(id)a3
{
  v4 = a3;
  v5 = [[ASKStorefrontChangeHandlerToken alloc] initWithHandler:v4];

  v6 = [(ASKRebootstrapCoordinator *)self handlerTokens];
  [v6 addObject:v5];

  return v5;
}

- (void)removeCleanupHandler:(id)a3
{
  v4 = a3;
  v5 = [(ASKRebootstrapCoordinator *)self handlerTokens];
  [v5 removeObject:v4];
}

@end
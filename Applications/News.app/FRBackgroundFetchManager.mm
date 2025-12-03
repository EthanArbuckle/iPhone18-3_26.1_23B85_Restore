@interface FRBackgroundFetchManager
+ (double)timeSinceLastBackgroundFetch;
- (FRBackgroundFetchManager)initWithResolver:(id)resolver appConfigManager:(id)manager privateDataContext:(id)context subscriptionController:(id)controller privateDataUpdateCoordinator:(id)coordinator todayAgent:(id)agent;
- (void)_peformBackgroundFetchWithReason:(int64_t)reason timeout:(double)timeout completionHandler:(id)handler;
- (void)addFetchable:(id)fetchable;
- (void)peformBackgroundFetchWithReason:(int64_t)reason timeout:(double)timeout completionHandler:(id)handler;
@end

@implementation FRBackgroundFetchManager

- (FRBackgroundFetchManager)initWithResolver:(id)resolver appConfigManager:(id)manager privateDataContext:(id)context subscriptionController:(id)controller privateDataUpdateCoordinator:(id)coordinator todayAgent:(id)agent
{
  resolverCopy = resolver;
  managerCopy = manager;
  contextCopy = context;
  controllerCopy = controller;
  obj = coordinator;
  coordinatorCopy = coordinator;
  agentCopy = agent;
  agentCopy2 = agent;
  v29 = resolverCopy;
  if (!resolverCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E3F4();
    if (managerCopy)
    {
      goto LABEL_6;
    }
  }

  else if (managerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E4B8();
  }

LABEL_6:
  if (!contextCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E57C();
    if (controllerCopy)
    {
      goto LABEL_11;
    }
  }

  else if (controllerCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E640();
  }

LABEL_11:
  if (!coordinatorCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E704();
    if (agentCopy2)
    {
      goto LABEL_16;
    }
  }

  else if (agentCopy2)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10006E7C8();
  }

LABEL_16:
  v30.receiver = self;
  v30.super_class = FRBackgroundFetchManager;
  v20 = [(FRBackgroundFetchManager *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_resolver, resolver);
    objc_storeStrong(&v21->_appConfigManager, manager);
    objc_storeStrong(&v21->_privateDataContext, context);
    objc_storeStrong(&v21->_subscriptionController, controller);
    objc_storeStrong(&v21->_privateDataUpdateCoordinator, obja);
    objc_storeStrong(&v21->_todayAgent, agentCopy);
    v22 = +[NSMutableSet set];
    fetchables = v21->_fetchables;
    v21->_fetchables = v22;
  }

  return v21;
}

- (void)addFetchable:(id)fetchable
{
  fetchableCopy = fetchable;
  if (!+[NSThread isMainThread]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10006E88C();
  }

  if ([(FRBackgroundFetchManager *)self backgroundFetchInProgress]&& os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10006E960();
  }

  fetchables = [(FRBackgroundFetchManager *)self fetchables];
  [fetchables addObject:fetchableCopy];
}

- (void)peformBackgroundFetchWithReason:(int64_t)reason timeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  +[NSThread isMainThread];
  if ([(FRBackgroundFetchManager *)self backgroundFetchInProgress])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 2, 0);
    }
  }

  else
  {
    [(FRBackgroundFetchManager *)self setBackgroundFetchInProgress:1];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003480C;
    v9[3] = &unk_1000C3A70;
    v9[4] = self;
    v10 = handlerCopy;
    [(FRBackgroundFetchManager *)self _peformBackgroundFetchWithReason:reason timeout:v9 completionHandler:timeout];
  }
}

- (void)_peformBackgroundFetchWithReason:(int64_t)reason timeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  +[NSThread isMainThread];
  v8 = +[NSDate date];
  dispatch_time(0, (timeout * 1000000000.0));
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100034BC4;
  v32[3] = &unk_1000C3A70;
  v9 = v8;
  v33 = v9;
  v10 = handlerCopy;
  v34 = v10;
  v11 = objc_retainBlock(v32);
  v12 = dispatch_group_create();
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 1;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 1;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = sub_100009B88;
  v26[4] = sub_100009F18;
  v27 = 0;
  dispatch_group_enter(v12);
  appConfigManager = [(FRBackgroundFetchManager *)self appConfigManager];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100034C5C;
  v18[3] = &unk_1000C3B38;
  v22 = v31;
  v23 = v30;
  v14 = v12;
  v19 = v14;
  selfCopy = self;
  v24 = v28;
  v25 = v26;
  v15 = v9;
  v21 = v15;
  [appConfigManager fetchAppConfigurationIfNeededWithCompletion:v18];

  v16 = &_dispatch_main_q;
  v17 = v11;
  FCDispatchGroupNotifyWithTimeout();

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v31, 8);
}

+ (double)timeSinceLastBackgroundFetch
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"lastBackgroundFetchDate"];

  if (v3)
  {
    v4 = +[NSDate date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5;
  }

  else
  {
    v6 = 1.79769313e308;
  }

  return v6;
}

@end
@interface TestFlightFeedbackManager
- (TestFlightFeedbackManager)init;
- (void)_handleNetworkStateDidChangeNotification:(id)notification;
- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion;
@end

@implementation TestFlightFeedbackManager

- (TestFlightFeedbackManager)init
{
  v19.receiver = self;
  v19.super_class = TestFlightFeedbackManager;
  v2 = [(TestFlightFeedbackManager *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeTaskPIDs = v2->_activeTaskPIDs;
    v2->_activeTaskPIDs = v3;

    v5 = objc_opt_new();
    activeTaskPIDsLock = v2->_activeTaskPIDsLock;
    v2->_activeTaskPIDsLock = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.TestFlightManager.callout", v7);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v8;

    v10 = [TestFlightFeedbackDatabaseStore alloc];
    v11 = sub_1001C0DF0();
    v12 = sub_1001C0EC4(v11);
    v13 = [(SQLiteDatabaseStore *)v10 initWithDatabase:v12];
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.appstored.TestFlightManager.dispatch", v15);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v16;
  }

  return v2;
}

- (void)_handleNetworkStateDidChangeNotification:(id)notification
{
  v4 = sub_100227468();
  isConnected = [v4 isConnected];

  if (isConnected)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100246580;
    block[3] = &unk_10051AF98;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)authenticateTask:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Starting dialog task", buf, 0xCu);
  }

  v10 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];
  present = [v10 present];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100247854;
  v13[3] = &unk_10051E068;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [present addFinishBlock:v13];
}

@end
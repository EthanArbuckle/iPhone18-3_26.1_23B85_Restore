@interface PurchaseHistoryManager
- (PurchaseHistoryManager)init;
- (void)_handleAccountChangedNotification;
- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler;
- (void)pushService:(id)service recoverFromDroppedMessagesOfActionType:(unint64_t)type completionHandler:(id)handler;
@end

@implementation PurchaseHistoryManager

- (PurchaseHistoryManager)init
{
  v25.receiver = self;
  v25.super_class = PurchaseHistoryManager;
  v2 = [(PurchaseHistoryManager *)&v25 init];
  if (v2)
  {
    v3 = [PurchaseHistoryDatabaseStore alloc];
    v4 = sub_1001C0DF0();
    v5 = sub_1001C0FB8(v4);
    v6 = [(SQLiteDatabaseStore *)v3 initWithDatabase:v5];
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AppStoreFoundation.PurchaseHistoryManager", v8);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v9;

    v11 = +[BagService appstoredService];
    bagService = v2->_bagService;
    v2->_bagService = v11;

    v13 = sub_1003BBF50();
    LOBYTE(v4) = [v13 isHRNMode];

    if ((v4 & 1) == 0)
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = v15;
        v17 = +[ActiveAccountObserver activeAccount];
        hashedDescription = [v17 hashedDescription];
        *buf = 138412546;
        v27 = v15;
        v28 = 2114;
        v29 = hashedDescription;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Begin observing, current account: %{public}@", buf, 0x16u);
      }

      v19 = +[NSNotificationCenter defaultCenter];
      v20 = +[ActiveAccountObserver sharedInstance];
      [v19 addObserver:v2 selector:"_handleAccountChangedNotification" name:@"AccountStorePrimaryAccountDidChange" object:v20];

      v21 = sub_100336524();
      sub_1003367D0(v21, v2, 1);
    }

    v2->_commandRunning = 0;
    v22 = objc_opt_new();
    commandStack = v2->_commandStack;
    v2->_commandStack = v22;
  }

  return v2;
}

- (void)pushService:(id)service didReceiveMessage:(id)message completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  bagService = self->_bagService;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10021E940;
  v13[3] = &unk_10051D970;
  selfCopy = self;
  v16 = handlerCopy;
  v14 = messageCopy;
  v11 = messageCopy;
  v12 = handlerCopy;
  [(BagService *)bagService recentBagOnQueue:dispatchQueue completionHandler:v13];
}

- (void)pushService:(id)service recoverFromDroppedMessagesOfActionType:(unint64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  bagService = self->_bagService;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10021EEC4;
  v10[3] = &unk_10051D998;
  v10[4] = self;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(BagService *)bagService recentBagOnQueue:dispatchQueue completionHandler:v10];
}

- (void)_handleAccountChangedNotification
{
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Updating after account changed", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10021F2F0;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
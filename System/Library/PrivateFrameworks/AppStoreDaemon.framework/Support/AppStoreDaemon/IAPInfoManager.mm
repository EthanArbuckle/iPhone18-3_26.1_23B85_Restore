@interface IAPInfoManager
- (IAPInfoManager)init;
- (void)_handleAccountChangedNotification;
- (void)pushService:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5;
- (void)pushService:(id)a3 recoverFromDroppedMessagesOfActionType:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation IAPInfoManager

- (IAPInfoManager)init
{
  v21.receiver = self;
  v21.super_class = IAPInfoManager;
  v2 = [(IAPInfoManager *)&v21 init];
  if (v2)
  {
    v3 = [IAPInfoDatabaseStore alloc];
    v4 = sub_1001C0DF0();
    v5 = sub_1001C0FB8(v4);
    v6 = [(SQLiteDatabaseStore *)v3 initWithDatabase:v5];
    databaseStore = v2->_databaseStore;
    v2->_databaseStore = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.AppStoreFoundation.IAPInfoManager", v8);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v9;

    v11 = sub_1003BBF50();
    LOBYTE(v4) = [v11 isHRNMode];

    if ((v4 & 1) == 0)
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = +[ActiveAccountObserver activeAccount];
        v16 = [v15 hashedDescription];
        *buf = 138412546;
        v23 = v13;
        v24 = 2114;
        v25 = v16;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@]: Begin observing, current account: %{public}@", buf, 0x16u);
      }

      v17 = +[NSNotificationCenter defaultCenter];
      v18 = +[ActiveAccountObserver sharedInstance];
      [v17 addObserver:v2 selector:"_handleAccountChangedNotification" name:@"AccountStorePrimaryAccountDidChange" object:v18];

      v19 = sub_100336524();
      sub_1003367D0(v19, v2, 23);
    }
  }

  return v2;
}

- (void)pushService:(id)a3 didReceiveMessage:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = sub_1003FA4F0(XPCRequestToken, 1);
  dispatchQueue = self->_dispatchQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10034BFA8;
  v11[3] = &unk_10051C078;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  sub_100005D90(dispatchQueue, v11);
}

- (void)pushService:(id)a3 recoverFromDroppedMessagesOfActionType:(unint64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  dispatchQueue = self->_dispatchQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10034C050;
  v9[3] = &unk_10051B2D0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  sub_100005D90(dispatchQueue, v9);
}

- (void)_handleAccountChangedNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10034C288;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
@interface ManagedPurchaseQueueDelegate
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
@end

@implementation ManagedPurchaseQueueDelegate

- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = sub_10037F164();
  v12 = sub_10037F344(v11);

  if (v12)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 logUUID];
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Interactive authentication requested but has been disabled for shared iPad", buf, 0xCu);
    }

    v15 = ASDErrorWithUserInfoAndFormat();
    v10[2](v10, 0, v15);
  }

  else
  {
    v16 = +[BagService appstoredService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002C6C0C;
    v17[3] = &unk_100521480;
    v18 = v9;
    v20 = v10;
    v19 = v8;
    [v16 bagWithCompletionHandler:v17];

    v15 = v18;
  }
}

@end
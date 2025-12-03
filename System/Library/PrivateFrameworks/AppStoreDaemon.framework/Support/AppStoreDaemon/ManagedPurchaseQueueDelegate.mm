@interface ManagedPurchaseQueueDelegate
- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
@end

@implementation ManagedPurchaseQueueDelegate

- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  purchaseCopy = purchase;
  completionCopy = completion;
  v11 = sub_10037F164();
  v12 = sub_10037F344(v11);

  if (v12)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      logUUID = [purchaseCopy logUUID];
      *buf = 138412290;
      v22 = logUUID;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Interactive authentication requested but has been disabled for shared iPad", buf, 0xCu);
    }

    v15 = ASDErrorWithUserInfoAndFormat();
    completionCopy[2](completionCopy, 0, v15);
  }

  else
  {
    v16 = +[BagService appstoredService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002C6C0C;
    v17[3] = &unk_100521480;
    v18 = purchaseCopy;
    v20 = completionCopy;
    v19 = requestCopy;
    [v16 bagWithCompletionHandler:v17];

    v15 = v18;
  }
}

@end
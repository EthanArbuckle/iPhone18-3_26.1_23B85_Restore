@interface PurchaseRequestTask
- (void)main;
@end

@implementation PurchaseRequestTask

- (void)main
{
  v45 = sub_1001DFF60();
  v46 = self;
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v4 = options;
  v5 = [(ASDRequestOptions *)v4 purchases];

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 count];
    if (v46)
    {
      client = v46->super._client;
    }

    else
    {
      client = 0;
    }

    v9 = client;
    v10 = [(XPCClient *)v9 clientID];
    *buf = 134218242;
    v58 = v7;
    v59 = 2114;
    v60 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Purchasing %ld app(s) for client: %{public}@", buf, 0x16u);
  }

  if ([v5 count])
  {
    if (v46)
    {
      v11 = v46->super._client;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [(XPCClient *)v12 clientID];

    if (v13)
    {
      v14 = [AMSProcessInfo alloc];
      if (v46)
      {
        v15 = v46->super._client;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [(XPCClient *)v16 clientID];
      v18 = [v14 initWithBundleIdentifier:v17];
    }

    else
    {
      v18 = 0;
    }

    v41 = v18;
    v44 = sub_1003FA53C(XPCRequestToken, v18);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v42 = v5;
    obj = v5;
    v19 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v51 + 1) + 8 * i);
          v24 = [_TtC9appstored6LogKey alloc];
          v25 = [v23 bundleID];
          v26 = [v23 itemID];
          v27 = [(LogKey *)v24 initWithBatchLogKey:0 logCode:@"BUY" externalID:0 bundleID:v25 itemID:v26];

          v28 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v27;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%@]: Starting purchase", buf, 0xCu);
          }

          v29 = dispatch_semaphore_create(0);
          v55 = v23;
          v30 = [NSArray arrayWithObjects:&v55 count:1];
          v47[0] = _NSConcreteStackBlock;
          v47[1] = 3221225472;
          v47[2] = sub_100389CC4;
          v47[3] = &unk_100525F48;
          v31 = v27;
          v48 = v31;
          v49 = v46;
          v32 = v29;
          v50 = v32;
          [v45 processPurchases:v30 failBatchOnError:0 requestToken:v44 withReplyHandler:v47];

          v33 = dispatch_time(0, 7200000000000);
          if (dispatch_semaphore_wait(v32, v33))
          {
            v34 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v58 = v31;
              _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "[%@]: Purchase never completed after two hours", buf, 0xCu);
            }

            v35 = ASDErrorWithTitleAndMessage();
            v36 = [[ASDPurchaseResponse alloc] initWithError:v35];
            sub_100389E00(v46, v36);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v20);
    }

    v5 = v42;
  }

  v37 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    if (v46)
    {
      v38 = v46->super._client;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = [(XPCClient *)v39 clientID];
    *buf = 138543362;
    v58 = v40;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Purchasing complete for client: %{public}@", buf, 0xCu);
  }
}

@end
@interface ASDPersistentRequest
- (void)startUsingProxy:(id)a3 withErrorHandler:(id)a4;
@end

@implementation ASDPersistentRequest

- (void)startUsingProxy:(id)a3 withErrorHandler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(a3 + 1);
    v8 = WeakRetained;
    if (WeakRetained)
    {
      v9 = *(WeakRetained + 1);
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_4:
  v10 = v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self;
    v12 = [ASDSystemAppMetadata alloc];
    v13 = [(ASDPersistentRequest *)v11 bundleID];
    v14 = [v12 initWithBundleID:v13];

    v15 = [v10 clientID];
    v16 = [v15 isEqualToString:@"com.apple.AppStore"];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = [(ASDPersistentRequest *)v11 isUserInitiated];
    }

    [v14 setUserInitiated:v17];
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(ASDPersistentRequest *)v11 bundleID];
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Starting legacy request from: %{public}@ for system application: %{public}@", buf, 0x16u);
    }

    v20 = sub_1001F6394();
    v27 = v14;
    v21 = [NSArray arrayWithObjects:&v27 count:1];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1002D1FA0;
    v23[3] = &unk_1005217B8;
    v24 = v10;
    v25 = v11;
    v26 = v6;
    v22 = v11;
    [v20 installSystemApps:v21 onPairedDevice:0 withReplyHandler:v23];
  }

  else
  {
    v14 = ASDErrorWithTitleAndMessage();
    (*(v6 + 2))(v6, v14);
  }
}

@end
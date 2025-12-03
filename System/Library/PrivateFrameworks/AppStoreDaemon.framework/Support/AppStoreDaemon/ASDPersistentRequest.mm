@interface ASDPersistentRequest
- (void)startUsingProxy:(id)proxy withErrorHandler:(id)handler;
@end

@implementation ASDPersistentRequest

- (void)startUsingProxy:(id)proxy withErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (proxy)
  {
    WeakRetained = objc_loadWeakRetained(proxy + 1);
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
    selfCopy = self;
    v12 = [ASDSystemAppMetadata alloc];
    bundleID = [(ASDPersistentRequest *)selfCopy bundleID];
    v14 = [v12 initWithBundleID:bundleID];

    clientID = [v10 clientID];
    v16 = [clientID isEqualToString:@"com.apple.AppStore"];

    if (v16)
    {
      isUserInitiated = 1;
    }

    else
    {
      isUserInitiated = [(ASDPersistentRequest *)selfCopy isUserInitiated];
    }

    [v14 setUserInitiated:isUserInitiated];
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      bundleID2 = [(ASDPersistentRequest *)selfCopy bundleID];
      *buf = 138543618;
      v29 = v10;
      v30 = 2114;
      v31 = bundleID2;
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
    v25 = selfCopy;
    v26 = handlerCopy;
    v22 = selfCopy;
    [v20 installSystemApps:v21 onPairedDevice:0 withReplyHandler:v23];
  }

  else
  {
    v14 = ASDErrorWithTitleAndMessage();
    (*(handlerCopy + 2))(handlerCopy, v14);
  }
}

@end
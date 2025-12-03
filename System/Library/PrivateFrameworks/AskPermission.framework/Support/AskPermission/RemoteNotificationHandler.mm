@interface RemoteNotificationHandler
+ (RemoteNotificationHandler)sharedHandler;
- (id)_accountMediaTypes;
- (id)_activeStoreDSIDs;
- (id)_allStoreDSIDs;
- (id)_cloudDSID;
- (id)_storeDSIDsForMediaType:(id)type onlyIncludeActive:(BOOL)active;
- (id)effectiveNotificationEnvironmentPromise;
- (void)_handleApproverNotification:(id)notification;
- (void)_handleCloudNotificationPayload:(id)payload;
- (void)_handleStoreNotificationPayload:(id)payload;
- (void)_registerCloudPublicToken:(id)token;
- (void)_startConnection;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)handleLegacyStoreNotificationPayload:(id)payload;
- (void)start;
@end

@implementation RemoteNotificationHandler

+ (RemoteNotificationHandler)sharedHandler
{
  if (qword_100063D00 != -1)
  {
    sub_10001C210();
  }

  v3 = qword_100063D08;

  return v3;
}

- (void)start
{
  apsQueue = [(RemoteNotificationHandler *)self apsQueue];

  if (!apsQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.AskPermission.RemoteNotificationHandler", v4);
    [(RemoteNotificationHandler *)self setApsQueue:v5];
  }

  v6 = [AMSBag bagForProfile:@"AskPermission" profileVersion:@"1"];
  [(RemoteNotificationHandler *)self setBag:v6];

  [(RemoteNotificationHandler *)self _startConnection];
}

- (id)effectiveNotificationEnvironmentPromise
{
  v3 = +[APDefaults notificationEnvironment];
  if (v3)
  {
    if (v3 == 2)
    {
      v4 = &off_100058028;
    }

    else
    {
      if (v3 != 1)
      {
        goto LABEL_8;
      }

      v4 = &off_100058010;
    }

    self = [AMSPromise promiseWithResult:v4];
  }

  else
  {
    v5 = [(RemoteNotificationHandler *)self bag];
    v6 = [v5 stringForKey:@"push-notifications/environment"];
    valuePromise = [v6 valuePromise];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100019710;
    v9[3] = &unk_100055578;
    v9[4] = self;
    self = [valuePromise continueWithBlock:v9];
  }

LABEL_8:

  return self;
}

- (void)handleLegacyStoreNotificationPayload:(id)payload
{
  payloadCopy = payload;
  apsQueue = [(RemoteNotificationHandler *)self apsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019A80;
  v7[3] = &unk_100054D70;
  v7[4] = self;
  v8 = payloadCopy;
  v6 = payloadCopy;
  dispatch_async(apsQueue, v7);
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v8 = v14;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received public token", buf, 0xCu);
  }

  effectiveNotificationEnvironmentPromise = [(RemoteNotificationHandler *)self effectiveNotificationEnvironmentPromise];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019C08;
  v11[3] = &unk_1000555A0;
  v11[4] = self;
  v12 = tokenCopy;
  v10 = tokenCopy;
  [effectiveNotificationEnvironmentPromise addFinishBlock:v11];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  apsQueue = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(apsQueue);

  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 138543362;
    *&v22[4] = objc_opt_class();
    v9 = *&v22[4];
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Received APS notification", v22, 0xCu);
  }

  userInfo = [messageCopy userInfo];
  if (!userInfo)
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *v22 = 138543362;
      *&v22[4] = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Notification doesn't contain payload", v22, 0xCu);
    }

    goto LABEL_18;
  }

  topic = [messageCopy topic];
  v12 = [topic isEqualToString:@"com.icloud.askpermission"];

  if (!v12)
  {
    topic2 = [messageCopy topic];
    v18 = [topic2 isEqualToString:@"com.apple.askpermissiond"];

    if (v18)
    {
      [(RemoteNotificationHandler *)self _handleStoreNotificationPayload:userInfo];
      goto LABEL_19;
    }

    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      topic3 = [messageCopy topic];
      *v22 = 138543618;
      *&v22[4] = v19;
      *&v22[12] = 2114;
      *&v22[14] = topic3;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Unsupported notification topic. Topic: %{public}@", v22, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  [(RemoteNotificationHandler *)self _handleCloudNotificationPayload:userInfo];
LABEL_19:
}

- (void)_startConnection
{
  v8[0] = @"com.icloud.askpermission";
  v8[1] = @"com.apple.askpermissiond";
  v3 = [NSArray arrayWithObjects:v8 count:2];
  effectiveNotificationEnvironmentPromise = [(RemoteNotificationHandler *)self effectiveNotificationEnvironmentPromise];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A0BC;
  v6[3] = &unk_1000555A0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [effectiveNotificationEnvironmentPromise addFinishBlock:v6];
}

- (void)_handleCloudNotificationPayload:(id)payload
{
  payloadCopy = payload;
  apsQueue = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(apsQueue);

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = objc_opt_class();
    v8 = v31;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking cloud notification", buf, 0xCu);
  }

  _cloudDSID = [(RemoteNotificationHandler *)self _cloudDSID];
  if (_cloudDSID)
  {
    v10 = [payloadCopy objectForKeyedSubscript:@"0"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && ([_cloudDSID isEqualToNumber:v11] & 1) == 0)
    {
      oSLogObject4 = +[APLogConfig sharedDaemonConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[APLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v31 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Payload request DSID doesn't match cloud DSID", buf, 0xCu);
      }
    }

    else
    {
      v15 = [payloadCopy objectForKeyedSubscript:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        oSLogObject4 = v15;
      }

      else
      {
        oSLogObject4 = 0;
      }

      if (oSLogObject4)
      {
        oSLogObject2 = [payloadCopy objectForKeyedSubscript:@"purchaseAuthorizationId"];
        if (!oSLogObject2)
        {
          v17 = +[APLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[APLogConfig sharedConfig];
          }

          oSLogObject3 = [v17 OSLogObject];
          if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138543362;
            v31 = v19;
            v20 = v19;
          }
        }

        v16OSLogObject = [[FamilyRequestTask alloc] initWithDSID:v11];
        perform = [(FamilyRequestTask *)v16OSLogObject perform];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001A82C;
        v27[3] = &unk_1000555C8;
        v27[4] = self;
        v28 = oSLogObject4;
        v29 = payloadCopy;
        [perform resultWithCompletion:v27];
      }

      else
      {
        oSLogObject2 = +[APLogConfig sharedDaemonConfig];
        if (!oSLogObject2)
        {
          oSLogObject2 = +[APLogConfig sharedConfig];
        }

        v16OSLogObject = [oSLogObject2 OSLogObject];
        if (os_log_type_enabled(v16OSLogObject, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          *buf = 138543362;
          v31 = v25;
          v26 = v25;
          _os_log_impl(&_mh_execute_header, v16OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Payload doesn't contain request identifier", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v11 = +[APLogConfig sharedDaemonConfig];
    if (!v11)
    {
      v11 = +[APLogConfig sharedConfig];
    }

    oSLogObject4 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v31 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: No cloud account", buf, 0xCu);
    }
  }
}

- (void)_handleApproverNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [[ApproverRemoteNotificationTask alloc] initWithPayload:notificationCopy];

  perform = [(ApproverRemoteNotificationTask *)v5 perform];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AB80;
  v7[3] = &unk_100054F78;
  v7[4] = self;
  [perform addFinishBlock:v7];
}

- (void)_handleStoreNotificationPayload:(id)payload
{
  payloadCopy = payload;
  apsQueue = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(apsQueue);

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v8 = v26;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking store notification", buf, 0xCu);
  }

  _activeStoreDSIDs = [(RemoteNotificationHandler *)self _activeStoreDSIDs];
  if ([_activeStoreDSIDs count])
  {
    v10 = [payloadCopy objectForKeyedSubscript:@"0"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && ([_activeStoreDSIDs containsObject:v11] & 1) == 0)
    {
      oSLogObject3 = +[APLogConfig sharedDaemonConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[APLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v18 = objc_opt_class();
      perform = v18;
      stringValue = [v11 stringValue];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = stringValue;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Payload request DSID doesn't match store DSIDs: %@", buf, 0x16u);
    }

    else
    {
      v15 = [payloadCopy objectForKeyedSubscript:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        oSLogObject3 = v15;
      }

      else
      {
        oSLogObject3 = 0;
      }

      if (oSLogObject3)
      {
        oSLogObject2 = [[FamilyRequestTask alloc] initWithDSID:v11];
        perform = [oSLogObject2 perform];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001B154;
        v22[3] = &unk_1000555F0;
        v22[4] = self;
        v23 = payloadCopy;
        v24 = 0;
        [perform resultWithCompletion:v22];
      }

      else
      {
        oSLogObject2 = +[APLogConfig sharedDaemonConfig];
        if (!oSLogObject2)
        {
          oSLogObject2 = +[APLogConfig sharedConfig];
        }

        perform = [oSLogObject2 OSLogObject];
        if (os_log_type_enabled(perform, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138543362;
          v26 = v20;
          v21 = v20;
          _os_log_impl(&_mh_execute_header, perform, OS_LOG_TYPE_ERROR, "%{public}@: Payload doesn't contain request identifier", buf, 0xCu);
        }
      }
    }

LABEL_29:
    goto LABEL_30;
  }

  v11 = +[APLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[APLogConfig sharedConfig];
  }

  oSLogObject3 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    *buf = 138543362;
    v26 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: No store accounts", buf, 0xCu);
  }

LABEL_30:
}

- (void)_registerCloudPublicToken:(id)token
{
  tokenCopy = token;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v7 = v18;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering cloud push token", buf, 0xCu);
  }

  v8 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiCloudAccount = [v8 ams_activeiCloudAccount];
  if (ams_activeiCloudAccount)
  {
    v10 = [[FARegisterPushTokenRequest alloc] initWithPushToken:tokenCopy];
    username = [ams_activeiCloudAccount username];
    [v10 setUsernameOrDSID:username];

    ams_password = [ams_activeiCloudAccount ams_password];
    [v10 setPasswordOrToken:ams_password];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001B890;
    v16[3] = &unk_100055168;
    v16[4] = self;
    [v10 startRequestWithCompletionHandler:v16];
  }

  else
  {
    v10 = +[APLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[APLogConfig sharedConfig];
    }

    oSLogObject2 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v18 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Could not register push token, no active iCloud account", buf, 0xCu);
    }
  }
}

- (id)_cloudDSID
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  ams_activeiCloudAccount = [v2 ams_activeiCloudAccount];
  ams_DSID = [ams_activeiCloudAccount ams_DSID];

  return ams_DSID;
}

- (id)_accountMediaTypes
{
  v4 = AMSAccountMediaTypeProduction;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)_activeStoreDSIDs
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v5 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting ACTIVE Store Accounts", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _accountMediaTypes = [(RemoteNotificationHandler *)self _accountMediaTypes];
  v8 = [_accountMediaTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(_accountMediaTypes);
        }

        v12 = [(RemoteNotificationHandler *)self _storeDSIDsForMediaType:*(*(&v14 + 1) + 8 * i) onlyIncludeActive:1];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [_accountMediaTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_allStoreDSIDs
{
  v3 = +[APLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v5 = v20;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting ALL Store Accounts", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _accountMediaTypes = [(RemoteNotificationHandler *)self _accountMediaTypes];
  v8 = [_accountMediaTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(_accountMediaTypes);
        }

        v12 = [(RemoteNotificationHandler *)self _storeDSIDsForMediaType:*(*(&v14 + 1) + 8 * i) onlyIncludeActive:0];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [_accountMediaTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_storeDSIDsForMediaType:(id)type onlyIncludeActive:(BOOL)active
{
  activeCopy = active;
  typeCopy = type;
  v29 = objc_alloc_init(NSMutableArray);
  v27 = typeCopy;
  v5 = [ACAccountStore ams_sharedAccountStoreForMediaType:typeCopy];
  ams_iTunesAccounts = [v5 ams_iTunesAccounts];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = ams_iTunesAccounts;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v8)
  {
    v10 = v8;
    v30 = *v33;
    v11 = "com.apple.AskPermission";
    v12 = &APCustomError_ptr;
    *&v9 = 138544130;
    v26 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        ams_DSID = [v14 ams_DSID];
        if (os_variant_has_internal_content())
        {
          sharedDaemonConfig = [v12[256] sharedDaemonConfig];
          if (!sharedDaemonConfig)
          {
            sharedDaemonConfig = [v12[256] sharedConfig];
          }

          oSLogObject = [sharedDaemonConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v12;
            v19 = v11;
            v20 = v7;
            v21 = objc_opt_class();
            v28 = v21;
            isActive = [v14 isActive];
            *buf = v26;
            v37 = v21;
            v7 = v20;
            v11 = v19;
            v12 = v18;
            v38 = 2112;
            v39 = v27;
            v40 = 2112;
            v41 = ams_DSID;
            v42 = 1024;
            v43 = isActive;
            _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Store: %@ - DSID: %@ - Active: %d", buf, 0x26u);
          }
        }

        if (!activeCopy)
        {
          if (!ams_DSID)
          {
            goto LABEL_21;
          }

LABEL_20:
          [v29 addObject:ams_DSID];
          goto LABEL_21;
        }

        if ([v14 isActive])
        {
          v23 = ams_DSID == 0;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          goto LABEL_20;
        }

LABEL_21:
      }

      v10 = [v7 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v10);
  }

  v24 = [NSArray arrayWithArray:v29];

  return v24;
}

@end
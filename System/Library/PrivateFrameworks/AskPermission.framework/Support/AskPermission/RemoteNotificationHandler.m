@interface RemoteNotificationHandler
+ (RemoteNotificationHandler)sharedHandler;
- (id)_accountMediaTypes;
- (id)_activeStoreDSIDs;
- (id)_allStoreDSIDs;
- (id)_cloudDSID;
- (id)_storeDSIDsForMediaType:(id)a3 onlyIncludeActive:(BOOL)a4;
- (id)effectiveNotificationEnvironmentPromise;
- (void)_handleApproverNotification:(id)a3;
- (void)_handleCloudNotificationPayload:(id)a3;
- (void)_handleStoreNotificationPayload:(id)a3;
- (void)_registerCloudPublicToken:(id)a3;
- (void)_startConnection;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)handleLegacyStoreNotificationPayload:(id)a3;
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
  v3 = [(RemoteNotificationHandler *)self apsQueue];

  if (!v3)
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
    v7 = [v6 valuePromise];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100019710;
    v9[3] = &unk_100055578;
    v9[4] = self;
    self = [v7 continueWithBlock:v9];
  }

LABEL_8:

  return self;
}

- (void)handleLegacyStoreNotificationPayload:(id)a3
{
  v4 = a3;
  v5 = [(RemoteNotificationHandler *)self apsQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019A80;
  v7[3] = &unk_100054D70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Received public token", buf, 0xCu);
  }

  v9 = [(RemoteNotificationHandler *)self effectiveNotificationEnvironmentPromise];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100019C08;
  v11[3] = &unk_1000555A0;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  [v9 addFinishBlock:v11];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v5 = a4;
  v6 = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(v6);

  v7 = +[APLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[APLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 138543362;
    *&v22[4] = objc_opt_class();
    v9 = *&v22[4];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Received APS notification", v22, 0xCu);
  }

  v10 = [v5 userInfo];
  if (!v10)
  {
    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *v22 = 138543362;
      *&v22[4] = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Notification doesn't contain payload", v22, 0xCu);
    }

    goto LABEL_18;
  }

  v11 = [v5 topic];
  v12 = [v11 isEqualToString:@"com.icloud.askpermission"];

  if (!v12)
  {
    v17 = [v5 topic];
    v18 = [v17 isEqualToString:@"com.apple.askpermissiond"];

    if (v18)
    {
      [(RemoteNotificationHandler *)self _handleStoreNotificationPayload:v10];
      goto LABEL_19;
    }

    v13 = +[APLogConfig sharedDaemonConfig];
    if (!v13)
    {
      v13 = +[APLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = v19;
      v21 = [v5 topic];
      *v22 = 138543618;
      *&v22[4] = v19;
      *&v22[12] = 2114;
      *&v22[14] = v21;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Unsupported notification topic. Topic: %{public}@", v22, 0x16u);
    }

LABEL_18:

    goto LABEL_19;
  }

  [(RemoteNotificationHandler *)self _handleCloudNotificationPayload:v10];
LABEL_19:
}

- (void)_startConnection
{
  v8[0] = @"com.icloud.askpermission";
  v8[1] = @"com.apple.askpermissiond";
  v3 = [NSArray arrayWithObjects:v8 count:2];
  v4 = [(RemoteNotificationHandler *)self effectiveNotificationEnvironmentPromise];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001A0BC;
  v6[3] = &unk_1000555A0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 addFinishBlock:v6];
}

- (void)_handleCloudNotificationPayload:(id)a3
{
  v4 = a3;
  v5 = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = objc_opt_class();
    v8 = v31;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking cloud notification", buf, 0xCu);
  }

  v9 = [(RemoteNotificationHandler *)self _cloudDSID];
  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"0"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && ([v9 isEqualToNumber:v11] & 1) == 0)
    {
      v12 = +[APLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[APLogConfig sharedConfig];
      }

      v16 = [v12 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138543362;
        v31 = v23;
        v24 = v23;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Payload request DSID doesn't match cloud DSID", buf, 0xCu);
      }
    }

    else
    {
      v15 = [v4 objectForKeyedSubscript:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v16 = [v4 objectForKeyedSubscript:@"purchaseAuthorizationId"];
        if (!v16)
        {
          v17 = +[APLogConfig sharedDaemonConfig];
          if (!v17)
          {
            v17 = +[APLogConfig sharedConfig];
          }

          v18 = [v17 OSLogObject];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138543362;
            v31 = v19;
            v20 = v19;
          }
        }

        v21 = [[FamilyRequestTask alloc] initWithDSID:v11];
        v22 = [(FamilyRequestTask *)v21 perform];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001A82C;
        v27[3] = &unk_1000555C8;
        v27[4] = self;
        v28 = v12;
        v29 = v4;
        [v22 resultWithCompletion:v27];
      }

      else
      {
        v16 = +[APLogConfig sharedDaemonConfig];
        if (!v16)
        {
          v16 = +[APLogConfig sharedConfig];
        }

        v21 = [v16 OSLogObject];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_opt_class();
          *buf = 138543362;
          v31 = v25;
          v26 = v25;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@: Payload doesn't contain request identifier", buf, 0xCu);
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

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v31 = v13;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: No cloud account", buf, 0xCu);
    }
  }
}

- (void)_handleApproverNotification:(id)a3
{
  v4 = a3;
  v5 = [[ApproverRemoteNotificationTask alloc] initWithPayload:v4];

  v6 = [(ApproverRemoteNotificationTask *)v5 perform];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AB80;
  v7[3] = &unk_100054F78;
  v7[4] = self;
  [v6 addFinishBlock:v7];
}

- (void)_handleStoreNotificationPayload:(id)a3
{
  v4 = a3;
  v5 = [(RemoteNotificationHandler *)self apsQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[APLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[APLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = objc_opt_class();
    v8 = v26;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Checking store notification", buf, 0xCu);
  }

  v9 = [(RemoteNotificationHandler *)self _activeStoreDSIDs];
  if ([v9 count])
  {
    v10 = [v4 objectForKeyedSubscript:@"0"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && ([v9 containsObject:v11] & 1) == 0)
    {
      v12 = +[APLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[APLogConfig sharedConfig];
      }

      v16 = [v12 OSLogObject];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v18 = objc_opt_class();
      v17 = v18;
      v19 = [v11 stringValue];
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@: Payload request DSID doesn't match store DSIDs: %@", buf, 0x16u);
    }

    else
    {
      v15 = [v4 objectForKeyedSubscript:@"8"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v15;
      }

      else
      {
        v12 = 0;
      }

      if (v12)
      {
        v16 = [[FamilyRequestTask alloc] initWithDSID:v11];
        v17 = [v16 perform];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10001B154;
        v22[3] = &unk_1000555F0;
        v22[4] = self;
        v23 = v4;
        v24 = 0;
        [v17 resultWithCompletion:v22];
      }

      else
      {
        v16 = +[APLogConfig sharedDaemonConfig];
        if (!v16)
        {
          v16 = +[APLogConfig sharedConfig];
        }

        v17 = [v16 OSLogObject];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138543362;
          v26 = v20;
          v21 = v20;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Payload doesn't contain request identifier", buf, 0xCu);
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

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_opt_class();
    *buf = 138543362;
    v26 = v13;
    v14 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@: No store accounts", buf, 0xCu);
  }

LABEL_30:
}

- (void)_registerCloudPublicToken:(id)a3
{
  v4 = a3;
  v5 = +[APLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = objc_opt_class();
    v7 = v18;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Registering cloud push token", buf, 0xCu);
  }

  v8 = +[ACAccountStore ams_sharedAccountStore];
  v9 = [v8 ams_activeiCloudAccount];
  if (v9)
  {
    v10 = [[FARegisterPushTokenRequest alloc] initWithPushToken:v4];
    v11 = [v9 username];
    [v10 setUsernameOrDSID:v11];

    v12 = [v9 ams_password];
    [v10 setPasswordOrToken:v12];

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

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      *buf = 138543362;
      v18 = v14;
      v15 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Could not register push token, no active iCloud account", buf, 0xCu);
    }
  }
}

- (id)_cloudDSID
{
  v2 = +[ACAccountStore ams_sharedAccountStore];
  v3 = [v2 ams_activeiCloudAccount];
  v4 = [v3 ams_DSID];

  return v4;
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting ACTIVE Store Accounts", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(RemoteNotificationHandler *)self _accountMediaTypes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [(RemoteNotificationHandler *)self _storeDSIDsForMediaType:*(*(&v14 + 1) + 8 * i) onlyIncludeActive:1];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_opt_class();
    v5 = v20;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Getting ALL Store Accounts", buf, 0xCu);
  }

  v6 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(RemoteNotificationHandler *)self _accountMediaTypes];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [(RemoteNotificationHandler *)self _storeDSIDsForMediaType:*(*(&v14 + 1) + 8 * i) onlyIncludeActive:0];
        [v6 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_storeDSIDsForMediaType:(id)a3 onlyIncludeActive:(BOOL)a4
{
  v31 = a4;
  v4 = a3;
  v29 = objc_alloc_init(NSMutableArray);
  v27 = v4;
  v5 = [ACAccountStore ams_sharedAccountStoreForMediaType:v4];
  v6 = [v5 ams_iTunesAccounts];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v6;
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
        v15 = [v14 ams_DSID];
        if (os_variant_has_internal_content())
        {
          v16 = [v12[256] sharedDaemonConfig];
          if (!v16)
          {
            v16 = [v12[256] sharedConfig];
          }

          v17 = [v16 OSLogObject];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v12;
            v19 = v11;
            v20 = v7;
            v21 = objc_opt_class();
            v28 = v21;
            v22 = [v14 isActive];
            *buf = v26;
            v37 = v21;
            v7 = v20;
            v11 = v19;
            v12 = v18;
            v38 = 2112;
            v39 = v27;
            v40 = 2112;
            v41 = v15;
            v42 = 1024;
            v43 = v22;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Store: %@ - DSID: %@ - Active: %d", buf, 0x26u);
          }
        }

        if (!v31)
        {
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          [v29 addObject:v15];
          goto LABEL_21;
        }

        if ([v14 isActive])
        {
          v23 = v15 == 0;
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
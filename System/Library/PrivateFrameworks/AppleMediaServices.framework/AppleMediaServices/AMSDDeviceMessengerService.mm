@interface AMSDDeviceMessengerService
+ (AMSDDeviceMessengerService)sharedService;
+ (BOOL)isConnectionEntitled:(id)a3;
- (AMSDDeviceMessengerService)init;
- (BOOL)_attemptAutomaticHandleForMessage:(id)a3;
- (BOOL)_sendMessage:(id)a3 withReplyHandler:(id)a4;
- (id)_determineDestinationsForMessage:(id)a3;
- (id)_getSavedMessages;
- (id)_messageWithProtobuf:(id)a3 fromID:(id)a4 context:(id)a5;
- (id)_replyForIncomingMessage:(id)a3;
- (id)_saveLocation;
- (int64_t)_determineDeviceTypeFromDeviceID:(id)a3 devices:(id)a4;
- (void)_cleanupSavedMessages;
- (void)_clearMessage:(id)a3;
- (void)_enumerateDelegatesWithBlock:(id)a3;
- (void)_handleErrorForIdentifier:(id)a3 error:(id)a4;
- (void)_handleIncomingMessage:(id)a3;
- (void)_handleIncomingReply:(id)a3;
- (void)_overwriteSavedMessages:(id)a3;
- (void)_saveMessage:(id)a3;
- (void)addDelegate:(id)a3;
- (void)getMessagesWithPurpose:(int64_t)a3 completion:(id)a4;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation AMSDDeviceMessengerService

+ (AMSDDeviceMessengerService)sharedService
{
  if (qword_1002E31E0 != -1)
  {
    sub_10021B174();
  }

  v3 = qword_1002E31E8;

  return v3;
}

- (AMSDDeviceMessengerService)init
{
  v29.receiver = self;
  v29.super_class = AMSDDeviceMessengerService;
  v2 = [(AMSDDeviceMessengerService *)&v29 init];
  if (!v2)
  {
LABEL_8:
    v16 = v2;
    goto LABEL_21;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.amsaccountsd.IDS", v3);
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = v4;

  v6 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.amsaccountsync"];
  service = v2->_service;
  v2->_service = v6;

  if (v2->_service)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v31 = v10;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Listening for service: %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(NSMutableArray);
    delegates = v2->_delegates;
    v2->_delegates = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    outgoingMessageReplyHandlers = v2->_outgoingMessageReplyHandlers;
    v2->_outgoingMessageReplyHandlers = v13;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_dispatchQueue];
    v15 = [(AMSDDeviceMessengerService *)v2 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100053BE4;
    block[3] = &unk_1002B04C0;
    v28 = v2;
    dispatch_async(v15, block);

    goto LABEL_8;
  }

  v17 = +[AMSUnitTests isRunningUnitTests];
  v18 = +[AMSLogConfig sharedConfig];
  v19 = v18;
  if (v17)
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create service: %{public}@", buf, 0x16u);
    }

    v22 = +[NSNotificationCenter defaultCenter];
    v23 = +[AMSLogConfig sharedConfig];
    [v22 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v23 userInfo:0];
  }

  else
  {
    if (!v18)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v19 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = objc_opt_class();
      *buf = 138543618;
      v31 = v25;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%{public}@: Failed to create service: %{public}@", buf, 0x16u);
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053CA0;
  v7[3] = &unk_1002B00E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

+ (BOOL)isConnectionEntitled:(id)a3
{
  v3 = [a3 valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (void)getMessagesWithPurpose:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching messages with purpose: %ld", buf, 0x16u);
  }

  v9 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053F0C;
  v11[3] = &unk_1002B0600;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_async(v9, v11);
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = [v6 logKey];
    *buf = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = v11;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending message: %{public}@", buf, 0x20u);
  }

  v12 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054134;
  block[3] = &unk_1002B03F8;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  dispatch_async(v12, block);
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  if (!a6)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: Message encountered error. ID: %{public}@ %{public}@", &v14, 0x20u);
    }

    [(AMSDDeviceMessengerService *)self _handleErrorForIdentifier:v10 error:v11];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v10 = a6;
  v11 = [(AMSDDeviceMessengerService *)self _messageWithProtobuf:a5 fromID:v10 context:a7];
  v12 = +[AMSLogConfig sharedConfig];
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = [v11 logKey];
      v18 = 138544130;
      v19 = v15;
      v20 = 2114;
      v21 = v16;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received message from: %{public}@ message: %{public}@", &v18, 0x2Au);
    }

    if ([v11 isReply])
    {
      [(AMSDDeviceMessengerService *)self _handleIncomingReply:v11];
    }

    else
    {
      [(AMSDDeviceMessengerService *)self _handleIncomingMessage:v11];
    }
  }

  else
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v13 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode received message from: %{public}@", &v18, 0x16u);
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a4;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@: Devices changed: %{public}@", &v8, 0x16u);
  }

  [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:&stru_1002B0668];
}

- (BOOL)_attemptAutomaticHandleForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 purpose];
  if (v5 == 1)
  {
    [(AMSDDeviceMessengerService *)self _clearMessage:v4];
  }

  return v5 == 1;
}

- (id)_determineDestinationsForMessage:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDeviceMessengerService *)self service];
  v6 = [v5 amsa_allDevices];

  v7 = objc_alloc_init(NSMutableSet);
  v8 = [v4 destination];
  v9 = [v8 type];

  if (v9 == 3)
  {
    v22 = [v4 destination];
    v23 = [v22 identifier];

    if (!v23)
    {
      goto LABEL_28;
    }

    v10 = [v4 destination];
    v24 = [v10 identifier];
    [v7 addObject:v24];
  }

  else if (v9 == 2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v6;
    v17 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v32 + 1) + 8 * i) isLocallyPaired])
          {
            v21 = IDSCopyIDForDevice();
            [v7 addObject:v21];
          }
        }

        v18 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (v9 != 1)
    {
      goto LABEL_28;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v37;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v36 + 1) + 8 * j);
          if ([v15 isLocallyPaired] && objc_msgSend(v15, "isActive"))
          {
            v16 = IDSCopyIDForDevice();
            [v7 addObject:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v12);
    }
  }

LABEL_28:
  v25 = +[AMSLogConfig sharedConfig];
  if (!v25)
  {
    v25 = +[AMSLogConfig sharedConfig];
  }

  v26 = [v25 OSLogObject];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    v28 = [v4 logKey];
    v29 = [v4 destination];
    v30 = [v29 type];
    *buf = 138544130;
    v41 = v27;
    v42 = 2114;
    v43 = v28;
    v44 = 2048;
    v45 = v30;
    v46 = 2114;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determined destinations for type: %ld result: %{public}@", buf, 0x2Au);
  }

  return v7;
}

- (int64_t)_determineDeviceTypeFromDeviceID:(id)a3 devices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v10 = [(AMSDDeviceMessengerService *)self service];
      v8 = [v10 amsa_allDevices];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = v8;
    v9 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v12 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          v15 = IDSCopyIDForDevice();
          if ([v15 isEqualToString:{v6, v17}])
          {
            if ([v14 isLocallyPaired] && (objc_msgSend(v14, "isActive") & 1) != 0)
            {
              v9 = 1;
            }

            else if ([v14 isLocallyPaired])
            {
              v9 = 2;
            }

            else
            {
              v9 = 3;
            }

            goto LABEL_22;
          }
        }

        v9 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_enumerateDelegatesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(AMSDDeviceMessengerService *)self delegates];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) weakObjectValue];
        if (v11)
        {
          v4[2](v4, v11);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(AMSDDeviceMessengerService *)self delegates];
  v13 = [v12 count];

  if ((v13 - 1) >= 0)
  {
    do
    {
      --v13;
      v14 = [(AMSDDeviceMessengerService *)self delegates];
      v15 = [v14 objectAtIndexedSubscript:v13];
      v16 = [v15 weakObjectValue];

      if (!v16)
      {
        v17 = [(AMSDDeviceMessengerService *)self delegates];
        [v17 removeObjectAtIndex:v13];
      }
    }

    while (v13 > 0);
  }
}

- (void)_handleErrorForIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000551A8;
    v18 = &unk_1002B0600;
    v20 = v10;
    v19 = v7;
    dispatch_async(v11, &v15);

    v12 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers:v15];
    [v12 setObject:0 forKeyedSubscript:v6];

    v13 = v20;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: Message error is missing a reply block", buf, 0xCu);
    }
  }
}

- (void)_handleIncomingMessage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (![(AMSDDeviceMessengerService *)self _attemptAutomaticHandleForMessage:v4])
  {
    [(AMSDDeviceMessengerService *)self _saveMessage:v4];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000552B0;
  v7[3] = &unk_1002B0690;
  v5 = v4;
  v8 = v5;
  [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:v7];
  v6 = [(AMSDDeviceMessengerService *)self _replyForIncomingMessage:v5];
  if (v6)
  {
    [(AMSDDeviceMessengerService *)self _sendMessage:v6 withReplyHandler:0];
  }
}

- (void)_handleIncomingReply:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
  v6 = [v4 messageID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005554C;
    block[3] = &unk_1002B0600;
    v21 = v7;
    v9 = v4;
    v20 = v9;
    dispatch_async(v8, block);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100055564;
    v17[3] = &unk_1002B0690;
    v10 = v9;
    v18 = v10;
    [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:v17];
    v11 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
    v12 = [v10 messageID];
    [v11 setObject:0 forKeyedSubscript:v12];

    v13 = v21;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = [v4 logKey];
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received reply but no handler exists", buf, 0x16u);
    }
  }
}

- (id)_messageWithProtobuf:(id)a3 fromID:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 type] == 1 && (v11 = [AMSXDProtoMessage alloc], objc_msgSend(v8, "data"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[AMSXDProtoMessage initWithData:](v11, "initWithData:", v12), v12, v13))
  {
    v14 = [AMSXDMessage messageFromProtoMessage:v13];
    v15 = [AMSXDDevice deviceFromIdentifier:v9];
    [v14 setOrigin:v15];

    v16 = [(AMSDDeviceMessengerService *)self _determineDeviceTypeFromDeviceID:v9 devices:0];
    v17 = [v14 origin];
    [v17 setType:v16];

    v18 = +[NSDate now];
    [v14 setReceiptDate:v18];

    if ([v14 isReply])
    {
      v19 = [v10 incomingResponseIdentifier];
      v20 = [v14 messageID];
      v21 = [v19 isEqualToString:v20];

      if ((v21 & 1) == 0)
      {
        v22 = +[AMSLogConfig sharedConfig];
        if (!v22)
        {
          v22 = +[AMSLogConfig sharedConfig];
        }

        v23 = [v22 OSLogObject];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          v24 = [v14 logKey];
          v25 = [v14 messageID];
          *buf = 138544130;
          v31 = v29;
          v32 = 2114;
          v33 = v24;
          v34 = 2114;
          v35 = v19;
          v36 = 2114;
          v37 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] messageID doesn't match the encoded message. %{public}@ != %{public}@", buf, 0x2Au);
        }
      }

      [v14 setMessageID:v19];
    }

    else
    {
      v28 = [v10 outgoingResponseIdentifier];
      [v14 setMessageID:v28];
    }
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v26 = [(AMSXDProtoMessage *)v13 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v9;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode protobuf data from: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_replyForIncomingMessage:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1002C23E8;
  }

  v7 = [@"reply-" stringByAppendingString:v6];

  v8 = [AMSXDMessage alloc];
  v9 = [v3 origin];
  v10 = [v8 initWithIdentifier:v7 destination:v9 purpose:objc_msgSend(v3 object:{"purpose"), 0}];

  v11 = [v3 messageID];
  [v10 setMessageID:v11];

  [v10 setIsReply:1];
  v12 = [v3 logKey];

  [v10 setLogKey:v12];

  return v10;
}

- (BOOL)_sendMessage:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AMSDDeviceMessengerService *)self _determineDestinationsForMessage:v6];
  v35 = v8;
  if ([v8 count])
  {
    [v6 setDestination:0];
  }

  else
  {
    v34 = [v6 logKey];
    v15 = AMSErrorWithFormat();

    [v6 setDestination:{0, v34}];
    if (v15)
    {
      goto LABEL_25;
    }
  }

  v9 = [v6 createProtoMessage];
  v10 = [IDSProtobuf alloc];
  v11 = [v9 data];
  v12 = [v10 initWithProtobufData:v11 type:1 isResponse:0];

  if (v12)
  {

    goto LABEL_5;
  }

  v33 = [v6 logKey];
  v15 = AMSErrorWithFormat();

  if (v15)
  {
LABEL_25:
    v18 = 0;
    LOBYTE(v17) = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_5:
  v13 = objc_alloc_init(NSMutableDictionary);
  if ([v6 isReply])
  {
    v14 = [v6 messageID];
    [v13 setObject:v14 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  else if (v7)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  v16 = [(AMSDDeviceMessengerService *)self service];
  v36 = 0;
  v37 = 0;
  v17 = [v16 sendProtobuf:v12 toDestinations:v8 priority:200 options:v13 identifier:&v37 error:&v36];
  v18 = v37;
  v15 = v36;

  if (v17 && !v15)
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      v22 = [v6 logKey];
      *buf = 138543874;
      v39 = v21;
      v40 = 2114;
      v41 = v22;
      v42 = 2114;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully sent message: %{public}@", buf, 0x20u);
    }

    if (([v6 isReply] & 1) == 0)
    {
      v23 = [v6 copy];
      v24 = +[NSDate now];
      [v23 setReceiptDate:v24];

      if (![(AMSDDeviceMessengerService *)self _attemptAutomaticHandleForMessage:v23])
      {
        [(AMSDDeviceMessengerService *)self _saveMessage:v23];
      }
    }

    if (v7)
    {
      v25 = [v7 copy];
      v26 = objc_retainBlock(v25);
      v27 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
      [v27 setObject:v26 forKeyedSubscript:v18];
    }

    v15 = 0;
    LOBYTE(v17) = 1;
    goto LABEL_32;
  }

LABEL_26:
  v28 = +[AMSLogConfig sharedConfig];
  if (!v28)
  {
    v28 = +[AMSLogConfig sharedConfig];
  }

  v29 = [v28 OSLogObject];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = objc_opt_class();
    v31 = [v6 logKey];
    *buf = 138544386;
    v39 = v30;
    v40 = 2114;
    v41 = v31;
    v42 = 2114;
    v43 = v6;
    v44 = 2114;
    v45 = v35;
    v46 = 2114;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send message: %{public}@ to: %{public}@ error: %{public}@", buf, 0x34u);
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 0, v15);
  }

LABEL_32:

  return v17;
}

- (void)_cleanupSavedMessages
{
  v3 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  [(AMSDDeviceMessengerService *)self _overwriteSavedMessages:v4];
}

- (void)_clearMessage:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  v6 = [v5 mutableCopy];

  if ([v6 count])
  {
    v17 = [v6 count];
    v7 = [v6 count];
    if (v7 - 1 >= 0)
    {
      v8 = v7;
      do
      {
        v9 = [v6 objectAtIndexedSubscript:--v8];
        v10 = [v9 identifier];
        v11 = [v4 identifier];
        v12 = [v10 isEqualToString:v11];

        if (v12)
        {
          [v6 removeObjectAtIndex:v8];
          v13 = +[AMSLogConfig sharedConfig];
          if (!v13)
          {
            v13 = +[AMSLogConfig sharedConfig];
          }

          v14 = [v13 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            v16 = [v9 logKey];
            *buf = 138543874;
            v21 = v15;
            v22 = 2114;
            v23 = v16;
            v24 = 2114;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing message: %{public}@", buf, 0x20u);
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 3221225472;
          v18[2] = sub_1000561AC;
          v18[3] = &unk_1002B0690;
          v19 = v9;
          [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:v18];
        }
      }

      while (v8 > 0);
    }

    if ([v6 count] != v17)
    {
      [(AMSDDeviceMessengerService *)self _overwriteSavedMessages:v6];
    }
  }
}

- (id)_getSavedMessages
{
  v2 = self;
  v3 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AMSDDeviceMessengerService *)v2 cachedMessages];

  if (v4)
  {
    v5 = [(AMSDDeviceMessengerService *)v2 cachedMessages];
    goto LABEL_37;
  }

  v6 = +[NSFileManager defaultManager];
  v7 = [(AMSDDeviceMessengerService *)v2 _saveLocation];
  v8 = [v7 path];
  v9 = [v6 fileExistsAtPath:v8];

  if (!v9)
  {
    v11 = 0;
    v12 = 0;
LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  v10 = [(AMSDDeviceMessengerService *)v2 _saveLocation];
  v44 = 0;
  v11 = [NSData dataWithContentsOfURL:v10 options:0 error:&v44];
  v12 = v44;

  if (v12 || !v11)
  {
LABEL_27:
    if (v12)
    {
      v31 = +[AMSLogConfig sharedConfig];
      if (!v31)
      {
        v31 = +[AMSLogConfig sharedConfig];
      }

      v32 = [v31 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v46 = v33;
        v47 = 2114;
        v48 = v12;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch saved messages. Error: %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_33;
  }

  v43 = 0;
  v13 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v43];
  v12 = v43;
  if (v12 || !v13)
  {

    goto LABEL_27;
  }

  v14 = [(AMSDDeviceMessengerService *)v2 service];
  v15 = [v14 amsa_allDevices];

  v16 = objc_alloc_init(NSMutableArray);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v17 = v13;
  v18 = [v17 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v35 = v11;
    v36 = v16;
    v38 = 0;
    v20 = *v40;
    obj = v17;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [[AMSXDMessage alloc] initWithJSONDictionary:*(*(&v39 + 1) + 8 * i)];
        v23 = [v22 origin];
        v24 = [v23 identifier];
        v25 = v2;
        v26 = [(AMSDDeviceMessengerService *)v2 _determineDeviceTypeFromDeviceID:v24 devices:v15];
        v27 = [v22 origin];
        [v27 setType:v26];

        if (v22 && ([v22 isExpired] & 1) == 0)
        {
          [v36 addObject:v22];
        }

        else
        {
          v38 = 1;
        }

        v2 = v25;
      }

      v19 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v19);

    if ((v38 & 1) == 0)
    {
      v12 = 0;
      v11 = v35;
      v16 = v36;
      goto LABEL_34;
    }

    v28 = +[AMSLogConfig sharedConfig];
    v11 = v35;
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543362;
      v46 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%{public}@: Found invalid messages", buf, 0xCu);
    }

    v16 = v36;
    [(AMSDDeviceMessengerService *)v25 _overwriteSavedMessages:v36];
  }

  else
  {
  }

  v12 = 0;
LABEL_34:
  if ([v16 count])
  {
    [(AMSDDeviceMessengerService *)v2 setCachedMessages:v16];
  }

  v5 = v16;

LABEL_37:

  return v5;
}

- (void)_overwriteSavedMessages:(id)a3
{
  v4 = a3;
  v36 = self;
  v5 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[AMSLogConfig sharedConfigOversize];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v45 = objc_opt_class();
    v46 = 2114;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@: Saving messages: %{public}@", buf, 0x16u);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        if (([v13 isReply] & 1) == 0)
        {
          if ([v13 isExpired])
          {
            v14 = +[AMSLogConfig sharedConfig];
            if (!v14)
            {
              v14 = +[AMSLogConfig sharedConfig];
            }

            v15 = [v14 OSLogObject];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_opt_class();
              v17 = [v13 logKey];
              *buf = 138543874;
              v45 = v16;
              v46 = 2114;
              v47 = v17;
              v48 = 2114;
              v49 = v13;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing expired message: %{public}@", buf, 0x20u);
            }

            goto LABEL_22;
          }

          v18 = [v13 identifier];
          v19 = [v18 length];

          if (v19)
          {
            v14 = [v13 JSONDictionary];
            [v35 addObject:v14];
          }

          else
          {
            v14 = +[AMSLogConfig sharedConfig];
            if (!v14)
            {
              v14 = +[AMSLogConfig sharedConfig];
            }

            v15 = [v14 OSLogObject];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v20 = objc_opt_class();
              v21 = [v13 logKey];
              *buf = 138543874;
              v45 = v20;
              v46 = 2114;
              v47 = v21;
              v48 = 2114;
              v49 = v13;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Removing message with empty identifier: %{public}@", buf, 0x20u);
            }

LABEL_22:
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v10);
  }

  if ([v35 count])
  {
    if (![NSJSONSerialization isValidJSONObject:v35])
    {
      v23 = +[AMSLogConfig sharedConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v30 = [v23 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        *buf = 138543362;
        v45 = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. (not JSON)", buf, 0xCu);
      }

      goto LABEL_47;
    }

    v38 = 0;
    v22 = [NSJSONSerialization dataWithJSONObject:v35 options:0 error:&v38];
    v23 = v38;
    if (v22)
    {
      v24 = [(AMSDDeviceMessengerService *)v36 _saveLocation];
      v37 = v23;
      [v22 writeToURL:v24 options:0 error:&v37];
      v25 = v23;
      v23 = v37;
    }

    else
    {
      v24 = +[AMSLogConfig sharedConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138543362;
        v45 = v32;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. (no JSONData)", buf, 0xCu);
      }
    }
  }

  else
  {
    v26 = +[NSFileManager defaultManager];
    v27 = [(AMSDDeviceMessengerService *)v36 _saveLocation];
    v28 = [v27 path];
    v29 = [v26 fileExistsAtPath:v28];

    if (!v29)
    {
      goto LABEL_48;
    }

    v22 = +[NSFileManager defaultManager];
    v24 = [(AMSDDeviceMessengerService *)v36 _saveLocation];
    v39 = 0;
    [v22 removeItemAtURL:v24 error:&v39];
    v23 = v39;
  }

  if (v23)
  {
    v30 = +[AMSLogConfig sharedConfig];
    if (!v30)
    {
      v30 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v30 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. Error: %{public}@", buf, 0x16u);
    }

LABEL_47:
  }

LABEL_48:
  [(AMSDDeviceMessengerService *)v36 setCachedMessages:0];
}

- (void)_saveMessage:(id)a3
{
  v4 = a3;
  v5 = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  if (!v4)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: No message to save", buf, 0xCu);
    }

    goto LABEL_13;
  }

  v6 = [v4 identifier];
  v7 = [v6 length];

  if (!v7)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = [v4 logKey];
      *buf = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = v15;
      v33 = 2114;
      v34 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Message is missing an identifier: %{public}@", buf, 0x20u);
    }

LABEL_13:

    goto LABEL_28;
  }

  v8 = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(NSMutableArray);
  }

  v12 = v11;

  v16 = [v4 identifier];

  if (v16)
  {
    v17 = [v12 count];
    if (v17 - 1 >= 0)
    {
      v19 = v17;
      *&v18 = 138543874;
      v28 = v18;
      while (1)
      {
        v20 = [v12 objectAtIndexedSubscript:{--v19, v28}];
        v21 = [v20 identifier];
        if (![v21 length])
        {
          goto LABEL_25;
        }

        v22 = [v20 identifier];
        v23 = [v4 identifier];
        v24 = [v22 isEqualToString:v23];

        if (v24)
        {
          break;
        }

LABEL_26:

        if (v19 <= 0)
        {
          goto LABEL_27;
        }
      }

      [v12 removeObjectAtIndex:v19];
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v21 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = [v4 logKey];
        *buf = v28;
        v30 = v26;
        v31 = 2114;
        v32 = v27;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing duplicate message: %{public}@", buf, 0x20u);
      }

LABEL_25:
      goto LABEL_26;
    }
  }

LABEL_27:
  [v12 addObject:v4];
  [(AMSDDeviceMessengerService *)self _overwriteSavedMessages:v12];
LABEL_28:
}

- (id)_saveLocation
{
  v2 = +[NSURL ams_cachesDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"AMSXDMessages.json"];

  return v3;
}

@end
@interface AMSDDeviceMessengerService
+ (AMSDDeviceMessengerService)sharedService;
+ (BOOL)isConnectionEntitled:(id)entitled;
- (AMSDDeviceMessengerService)init;
- (BOOL)_attemptAutomaticHandleForMessage:(id)message;
- (BOOL)_sendMessage:(id)message withReplyHandler:(id)handler;
- (id)_determineDestinationsForMessage:(id)message;
- (id)_getSavedMessages;
- (id)_messageWithProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (id)_replyForIncomingMessage:(id)message;
- (id)_saveLocation;
- (int64_t)_determineDeviceTypeFromDeviceID:(id)d devices:(id)devices;
- (void)_cleanupSavedMessages;
- (void)_clearMessage:(id)message;
- (void)_enumerateDelegatesWithBlock:(id)block;
- (void)_handleErrorForIdentifier:(id)identifier error:(id)error;
- (void)_handleIncomingMessage:(id)message;
- (void)_handleIncomingReply:(id)reply;
- (void)_overwriteSavedMessages:(id)messages;
- (void)_saveMessage:(id)message;
- (void)addDelegate:(id)delegate;
- (void)getMessagesWithPurpose:(int64_t)purpose completion:(id)completion;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
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

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v31 = v10;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Listening for service: %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc_init(NSMutableArray);
    delegates = v2->_delegates;
    v2->_delegates = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    outgoingMessageReplyHandlers = v2->_outgoingMessageReplyHandlers;
    v2->_outgoingMessageReplyHandlers = v13;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_dispatchQueue];
    dispatchQueue = [(AMSDDeviceMessengerService *)v2 dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100053BE4;
    block[3] = &unk_1002B04C0;
    v28 = v2;
    dispatch_async(dispatchQueue, block);

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

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      *buf = 138543618;
      v31 = v21;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create service: %{public}@", buf, 0x16u);
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

    oSLogObject3 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_FAULT))
    {
      v25 = objc_opt_class();
      *buf = 138543618;
      v31 = v25;
      v32 = 2114;
      v33 = @"com.apple.private.alloy.amsaccountsync";
      _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_FAULT, "%{public}@: Failed to create service: %{public}@", buf, 0x16u);
    }
  }

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053CA0;
  v7[3] = &unk_1002B00E8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(dispatchQueue, v7);
}

+ (BOOL)isConnectionEntitled:(id)entitled
{
  v3 = [entitled valueForEntitlement:@"com.apple.private.applemediaservices"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (void)getMessagesWithPurpose:(int64_t)purpose completion:(id)completion
{
  completionCopy = completion;
  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2048;
    purposeCopy = purpose;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching messages with purpose: %ld", buf, 0x16u);
  }

  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100053F0C;
  v11[3] = &unk_1002B0600;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, v11);
}

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    logKey = [messageCopy logKey];
    *buf = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = logKey;
    v22 = 2114;
    v23 = messageCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Sending message: %{public}@", buf, 0x20u);
  }

  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100054134;
  block[3] = &unk_1002B03F8;
  block[4] = self;
  v16 = messageCopy;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = messageCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543874;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = identifierCopy;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Message encountered error. ID: %{public}@ %{public}@", &v14, 0x20u);
    }

    [(AMSDDeviceMessengerService *)self _handleErrorForIdentifier:identifierCopy error:errorCopy];
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  dCopy = d;
  v11 = [(AMSDDeviceMessengerService *)self _messageWithProtobuf:protobuf fromID:dCopy context:context];
  v12 = +[AMSLogConfig sharedConfig];
  v13 = v12;
  if (v11)
  {
    if (!v12)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      logKey = [v11 logKey];
      v18 = 138544130;
      v19 = v15;
      v20 = 2114;
      v21 = logKey;
      v22 = 2114;
      v23 = dCopy;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received message from: %{public}@ message: %{public}@", &v18, 0x2Au);
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

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543618;
      v19 = objc_opt_class();
      v20 = 2114;
      v21 = dCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode received message from: %{public}@", &v18, 0x16u);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = objc_opt_class();
    v10 = 2114;
    v11 = changedCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Devices changed: %{public}@", &v8, 0x16u);
  }

  [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:&stru_1002B0668];
}

- (BOOL)_attemptAutomaticHandleForMessage:(id)message
{
  messageCopy = message;
  purpose = [messageCopy purpose];
  if (purpose == 1)
  {
    [(AMSDDeviceMessengerService *)self _clearMessage:messageCopy];
  }

  return purpose == 1;
}

- (id)_determineDestinationsForMessage:(id)message
{
  messageCopy = message;
  service = [(AMSDDeviceMessengerService *)self service];
  amsa_allDevices = [service amsa_allDevices];

  v7 = objc_alloc_init(NSMutableSet);
  destination = [messageCopy destination];
  type = [destination type];

  if (type == 3)
  {
    destination2 = [messageCopy destination];
    identifier = [destination2 identifier];

    if (!identifier)
    {
      goto LABEL_28;
    }

    destination3 = [messageCopy destination];
    identifier2 = [destination3 identifier];
    [v7 addObject:identifier2];
  }

  else if (type == 2)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    destination3 = amsa_allDevices;
    v17 = [destination3 countByEnumeratingWithState:&v32 objects:v48 count:16];
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
            objc_enumerationMutation(destination3);
          }

          if ([*(*(&v32 + 1) + 8 * i) isLocallyPaired])
          {
            v21 = IDSCopyIDForDevice();
            [v7 addObject:v21];
          }
        }

        v18 = [destination3 countByEnumeratingWithState:&v32 objects:v48 count:16];
      }

      while (v18);
    }
  }

  else
  {
    if (type != 1)
    {
      goto LABEL_28;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    destination3 = amsa_allDevices;
    v11 = [destination3 countByEnumeratingWithState:&v36 objects:v49 count:16];
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
            objc_enumerationMutation(destination3);
          }

          v15 = *(*(&v36 + 1) + 8 * j);
          if ([v15 isLocallyPaired] && objc_msgSend(v15, "isActive"))
          {
            v16 = IDSCopyIDForDevice();
            [v7 addObject:v16];
          }
        }

        v12 = [destination3 countByEnumeratingWithState:&v36 objects:v49 count:16];
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

  oSLogObject = [v25 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v27 = objc_opt_class();
    logKey = [messageCopy logKey];
    destination4 = [messageCopy destination];
    type2 = [destination4 type];
    *buf = 138544130;
    v41 = v27;
    v42 = 2114;
    v43 = logKey;
    v44 = 2048;
    v45 = type2;
    v46 = 2114;
    v47 = v7;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determined destinations for type: %ld result: %{public}@", buf, 0x2Au);
  }

  return v7;
}

- (int64_t)_determineDeviceTypeFromDeviceID:(id)d devices:(id)devices
{
  dCopy = d;
  devicesCopy = devices;
  if ([dCopy length])
  {
    if (devicesCopy)
    {
      amsa_allDevices = devicesCopy;
    }

    else
    {
      service = [(AMSDDeviceMessengerService *)self service];
      amsa_allDevices = [service amsa_allDevices];
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = amsa_allDevices;
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
          if ([v15 isEqualToString:{dCopy, v17}])
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

- (void)_enumerateDelegatesWithBlock:(id)block
{
  blockCopy = block;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  delegates = [(AMSDDeviceMessengerService *)self delegates];
  v7 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(delegates);
        }

        weakObjectValue = [*(*(&v18 + 1) + 8 * v10) weakObjectValue];
        if (weakObjectValue)
        {
          blockCopy[2](blockCopy, weakObjectValue);
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  delegates2 = [(AMSDDeviceMessengerService *)self delegates];
  v13 = [delegates2 count];

  if ((v13 - 1) >= 0)
  {
    do
    {
      --v13;
      delegates3 = [(AMSDDeviceMessengerService *)self delegates];
      v15 = [delegates3 objectAtIndexedSubscript:v13];
      weakObjectValue2 = [v15 weakObjectValue];

      if (!weakObjectValue2)
      {
        delegates4 = [(AMSDDeviceMessengerService *)self delegates];
        [delegates4 removeObjectAtIndex:v13];
      }
    }

    while (v13 > 0);
  }
}

- (void)_handleErrorForIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  outgoingMessageReplyHandlers = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
  v10 = [outgoingMessageReplyHandlers objectForKeyedSubscript:identifierCopy];

  if (v10)
  {
    v11 = dispatch_get_global_queue(21, 0);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000551A8;
    v18 = &unk_1002B0600;
    v20 = v10;
    v19 = errorCopy;
    dispatch_async(v11, &v15);

    v12 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers:v15];
    [v12 setObject:0 forKeyedSubscript:identifierCopy];

    v13 = v20;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v22 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Message error is missing a reply block", buf, 0xCu);
    }
  }
}

- (void)_handleIncomingMessage:(id)message
{
  messageCopy = message;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (![(AMSDDeviceMessengerService *)self _attemptAutomaticHandleForMessage:messageCopy])
  {
    [(AMSDDeviceMessengerService *)self _saveMessage:messageCopy];
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000552B0;
  v7[3] = &unk_1002B0690;
  v5 = messageCopy;
  v8 = v5;
  [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:v7];
  v6 = [(AMSDDeviceMessengerService *)self _replyForIncomingMessage:v5];
  if (v6)
  {
    [(AMSDDeviceMessengerService *)self _sendMessage:v6 withReplyHandler:0];
  }
}

- (void)_handleIncomingReply:(id)reply
{
  replyCopy = reply;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  outgoingMessageReplyHandlers = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
  messageID = [replyCopy messageID];
  v7 = [outgoingMessageReplyHandlers objectForKeyedSubscript:messageID];

  if (v7)
  {
    v8 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005554C;
    block[3] = &unk_1002B0600;
    v21 = v7;
    v9 = replyCopy;
    v20 = v9;
    dispatch_async(v8, block);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100055564;
    v17[3] = &unk_1002B0690;
    v10 = v9;
    v18 = v10;
    [(AMSDDeviceMessengerService *)self _enumerateDelegatesWithBlock:v17];
    outgoingMessageReplyHandlers2 = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
    messageID2 = [v10 messageID];
    [outgoingMessageReplyHandlers2 setObject:0 forKeyedSubscript:messageID2];

    v13 = v21;
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      logKey = [replyCopy logKey];
      *buf = 138543618;
      v23 = v15;
      v24 = 2114;
      v25 = logKey;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Received reply but no handler exists", buf, 0x16u);
    }
  }
}

- (id)_messageWithProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  if ([protobufCopy type] == 1 && (v11 = [AMSXDProtoMessage alloc], objc_msgSend(protobufCopy, "data"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[AMSXDProtoMessage initWithData:](v11, "initWithData:", v12), v12, v13))
  {
    v14 = [AMSXDMessage messageFromProtoMessage:v13];
    v15 = [AMSXDDevice deviceFromIdentifier:dCopy];
    [v14 setOrigin:v15];

    v16 = [(AMSDDeviceMessengerService *)self _determineDeviceTypeFromDeviceID:dCopy devices:0];
    origin = [v14 origin];
    [origin setType:v16];

    v18 = +[NSDate now];
    [v14 setReceiptDate:v18];

    if ([v14 isReply])
    {
      incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
      messageID = [v14 messageID];
      v21 = [incomingResponseIdentifier isEqualToString:messageID];

      if ((v21 & 1) == 0)
      {
        v22 = +[AMSLogConfig sharedConfig];
        if (!v22)
        {
          v22 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v22 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          logKey = [v14 logKey];
          messageID2 = [v14 messageID];
          *buf = 138544130;
          v31 = v29;
          v32 = 2114;
          v33 = logKey;
          v34 = 2114;
          v35 = incomingResponseIdentifier;
          v36 = 2114;
          v37 = messageID2;
          _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] messageID doesn't match the encoded message. %{public}@ != %{public}@", buf, 0x2Au);
        }
      }

      [v14 setMessageID:incomingResponseIdentifier];
    }

    else
    {
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      [v14 setMessageID:outgoingResponseIdentifier];
    }
  }

  else
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [(AMSXDProtoMessage *)v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = dCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to decode protobuf data from: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_replyForIncomingMessage:(id)message
{
  messageCopy = message;
  identifier = [messageCopy identifier];
  v5 = identifier;
  if (identifier)
  {
    v6 = identifier;
  }

  else
  {
    v6 = &stru_1002C23E8;
  }

  v7 = [@"reply-" stringByAppendingString:v6];

  v8 = [AMSXDMessage alloc];
  origin = [messageCopy origin];
  v10 = [v8 initWithIdentifier:v7 destination:origin purpose:objc_msgSend(messageCopy object:{"purpose"), 0}];

  messageID = [messageCopy messageID];
  [v10 setMessageID:messageID];

  [v10 setIsReply:1];
  logKey = [messageCopy logKey];

  [v10 setLogKey:logKey];

  return v10;
}

- (BOOL)_sendMessage:(id)message withReplyHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v8 = [(AMSDDeviceMessengerService *)self _determineDestinationsForMessage:messageCopy];
  v35 = v8;
  if ([v8 count])
  {
    [messageCopy setDestination:0];
  }

  else
  {
    logKey = [messageCopy logKey];
    v15 = AMSErrorWithFormat();

    [messageCopy setDestination:{0, logKey}];
    if (v15)
    {
      goto LABEL_25;
    }
  }

  createProtoMessage = [messageCopy createProtoMessage];
  v10 = [IDSProtobuf alloc];
  data = [createProtoMessage data];
  v12 = [v10 initWithProtobufData:data type:1 isResponse:0];

  if (v12)
  {

    goto LABEL_5;
  }

  logKey2 = [messageCopy logKey];
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
  if ([messageCopy isReply])
  {
    messageID = [messageCopy messageID];
    [v13 setObject:messageID forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
  }

  else if (handlerCopy)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionExpectsPeerResponseKey];
  }

  service = [(AMSDDeviceMessengerService *)self service];
  v36 = 0;
  v37 = 0;
  v17 = [service sendProtobuf:v12 toDestinations:v8 priority:200 options:v13 identifier:&v37 error:&v36];
  v18 = v37;
  v15 = v36;

  if (v17 && !v15)
  {
    v19 = +[AMSLogConfig sharedConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      logKey3 = [messageCopy logKey];
      *buf = 138543874;
      v39 = v21;
      v40 = 2114;
      v41 = logKey3;
      v42 = 2114;
      v43 = messageCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully sent message: %{public}@", buf, 0x20u);
    }

    if (([messageCopy isReply] & 1) == 0)
    {
      v23 = [messageCopy copy];
      v24 = +[NSDate now];
      [v23 setReceiptDate:v24];

      if (![(AMSDDeviceMessengerService *)self _attemptAutomaticHandleForMessage:v23])
      {
        [(AMSDDeviceMessengerService *)self _saveMessage:v23];
      }
    }

    if (handlerCopy)
    {
      v25 = [handlerCopy copy];
      v26 = objc_retainBlock(v25);
      outgoingMessageReplyHandlers = [(AMSDDeviceMessengerService *)self outgoingMessageReplyHandlers];
      [outgoingMessageReplyHandlers setObject:v26 forKeyedSubscript:v18];
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

  oSLogObject2 = [v28 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v30 = objc_opt_class();
    logKey4 = [messageCopy logKey];
    *buf = 138544386;
    v39 = v30;
    v40 = 2114;
    v41 = logKey4;
    v42 = 2114;
    v43 = messageCopy;
    v44 = 2114;
    v45 = v35;
    v46 = 2114;
    v47 = v15;
    _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to send message: %{public}@ to: %{public}@ error: %{public}@", buf, 0x34u);
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }

LABEL_32:

  return v17;
}

- (void)_cleanupSavedMessages
{
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  _getSavedMessages = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  [(AMSDDeviceMessengerService *)self _overwriteSavedMessages:_getSavedMessages];
}

- (void)_clearMessage:(id)message
{
  messageCopy = message;
  _getSavedMessages = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  v6 = [_getSavedMessages mutableCopy];

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
        identifier = [v9 identifier];
        identifier2 = [messageCopy identifier];
        v12 = [identifier isEqualToString:identifier2];

        if (v12)
        {
          [v6 removeObjectAtIndex:v8];
          v13 = +[AMSLogConfig sharedConfig];
          if (!v13)
          {
            v13 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v13 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            logKey = [v9 logKey];
            *buf = 138543874;
            v21 = v15;
            v22 = 2114;
            v23 = logKey;
            v24 = 2114;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing message: %{public}@", buf, 0x20u);
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
  selfCopy = self;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  cachedMessages = [(AMSDDeviceMessengerService *)selfCopy cachedMessages];

  if (cachedMessages)
  {
    cachedMessages2 = [(AMSDDeviceMessengerService *)selfCopy cachedMessages];
    goto LABEL_37;
  }

  v6 = +[NSFileManager defaultManager];
  _saveLocation = [(AMSDDeviceMessengerService *)selfCopy _saveLocation];
  path = [_saveLocation path];
  v9 = [v6 fileExistsAtPath:path];

  if (!v9)
  {
    v11 = 0;
    v12 = 0;
LABEL_33:
    v16 = 0;
    goto LABEL_34;
  }

  _saveLocation2 = [(AMSDDeviceMessengerService *)selfCopy _saveLocation];
  v44 = 0;
  v11 = [NSData dataWithContentsOfURL:_saveLocation2 options:0 error:&v44];
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

      oSLogObject = [v31 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v33 = objc_opt_class();
        *buf = 138543618;
        v46 = v33;
        v47 = 2114;
        v48 = v12;
        _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch saved messages. Error: %{public}@", buf, 0x16u);
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

  service = [(AMSDDeviceMessengerService *)selfCopy service];
  amsa_allDevices = [service amsa_allDevices];

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
        origin = [v22 origin];
        identifier = [origin identifier];
        v25 = selfCopy;
        v26 = [(AMSDDeviceMessengerService *)selfCopy _determineDeviceTypeFromDeviceID:identifier devices:amsa_allDevices];
        origin2 = [v22 origin];
        [origin2 setType:v26];

        if (v22 && ([v22 isExpired] & 1) == 0)
        {
          [v36 addObject:v22];
        }

        else
        {
          v38 = 1;
        }

        selfCopy = v25;
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

    oSLogObject2 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      *buf = 138543362;
      v46 = v30;
      _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Found invalid messages", buf, 0xCu);
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
    [(AMSDDeviceMessengerService *)selfCopy setCachedMessages:v16];
  }

  cachedMessages2 = v16;

LABEL_37:

  return cachedMessages2;
}

- (void)_overwriteSavedMessages:(id)messages
{
  messagesCopy = messages;
  selfCopy = self;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = +[AMSLogConfig sharedConfigOversize];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v45 = objc_opt_class();
    v46 = 2114;
    v47 = messagesCopy;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Saving messages: %{public}@", buf, 0x16u);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = messagesCopy;
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
            jSONDictionary = +[AMSLogConfig sharedConfig];
            if (!jSONDictionary)
            {
              jSONDictionary = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [jSONDictionary OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
            {
              v16 = objc_opt_class();
              logKey = [v13 logKey];
              *buf = 138543874;
              v45 = v16;
              v46 = 2114;
              v47 = logKey;
              v48 = 2114;
              v49 = v13;
              _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing expired message: %{public}@", buf, 0x20u);
            }

            goto LABEL_22;
          }

          identifier = [v13 identifier];
          v19 = [identifier length];

          if (v19)
          {
            jSONDictionary = [v13 JSONDictionary];
            [v35 addObject:jSONDictionary];
          }

          else
          {
            jSONDictionary = +[AMSLogConfig sharedConfig];
            if (!jSONDictionary)
            {
              jSONDictionary = +[AMSLogConfig sharedConfig];
            }

            oSLogObject2 = [jSONDictionary OSLogObject];
            if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
            {
              v20 = objc_opt_class();
              logKey2 = [v13 logKey];
              *buf = 138543874;
              v45 = v20;
              v46 = 2114;
              v47 = logKey2;
              v48 = 2114;
              v49 = v13;
              _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Removing message with empty identifier: %{public}@", buf, 0x20u);
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

      oSLogObject3 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        *buf = 138543362;
        v45 = v31;
        _os_log_impl(&_mh_execute_header, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. (not JSON)", buf, 0xCu);
      }

      goto LABEL_47;
    }

    v38 = 0;
    v22 = [NSJSONSerialization dataWithJSONObject:v35 options:0 error:&v38];
    v23 = v38;
    if (v22)
    {
      _saveLocation = [(AMSDDeviceMessengerService *)selfCopy _saveLocation];
      v37 = v23;
      [v22 writeToURL:_saveLocation options:0 error:&v37];
      oSLogObject4 = v23;
      v23 = v37;
    }

    else
    {
      _saveLocation = +[AMSLogConfig sharedConfig];
      if (!_saveLocation)
      {
        _saveLocation = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [_saveLocation OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        *buf = 138543362;
        v45 = v32;
        _os_log_impl(&_mh_execute_header, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. (no JSONData)", buf, 0xCu);
      }
    }
  }

  else
  {
    v26 = +[NSFileManager defaultManager];
    _saveLocation2 = [(AMSDDeviceMessengerService *)selfCopy _saveLocation];
    path = [_saveLocation2 path];
    v29 = [v26 fileExistsAtPath:path];

    if (!v29)
    {
      goto LABEL_48;
    }

    v22 = +[NSFileManager defaultManager];
    _saveLocation = [(AMSDDeviceMessengerService *)selfCopy _saveLocation];
    v39 = 0;
    [v22 removeItemAtURL:_saveLocation error:&v39];
    v23 = v39;
  }

  if (v23)
  {
    oSLogObject3 = +[AMSLogConfig sharedConfig];
    if (!oSLogObject3)
    {
      oSLogObject3 = +[AMSLogConfig sharedConfig];
    }

    v30OSLogObject = [oSLogObject3 OSLogObject];
    if (os_log_type_enabled(v30OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      *buf = 138543618;
      v45 = v34;
      v46 = 2114;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v30OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save messages. Error: %{public}@", buf, 0x16u);
    }

LABEL_47:
  }

LABEL_48:
  [(AMSDDeviceMessengerService *)selfCopy setCachedMessages:0];
}

- (void)_saveMessage:(id)message
{
  messageCopy = message;
  dispatchQueue = [(AMSDDeviceMessengerService *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (!messageCopy)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = objc_opt_class();
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: No message to save", buf, 0xCu);
    }

    goto LABEL_13;
  }

  identifier = [messageCopy identifier];
  v7 = [identifier length];

  if (!v7)
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      logKey = [messageCopy logKey];
      *buf = 138543874;
      v30 = v14;
      v31 = 2114;
      v32 = logKey;
      v33 = 2114;
      v34 = messageCopy;
      _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Message is missing an identifier: %{public}@", buf, 0x20u);
    }

LABEL_13:

    goto LABEL_28;
  }

  _getSavedMessages = [(AMSDDeviceMessengerService *)self _getSavedMessages];
  v9 = [_getSavedMessages mutableCopy];
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

  identifier2 = [messageCopy identifier];

  if (identifier2)
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
        identifier3 = [v20 identifier];
        if (![identifier3 length])
        {
          goto LABEL_25;
        }

        identifier4 = [v20 identifier];
        identifier5 = [messageCopy identifier];
        v24 = [identifier4 isEqualToString:identifier5];

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
      identifier3 = +[AMSLogConfig sharedConfig];
      if (!identifier3)
      {
        identifier3 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [identifier3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        logKey2 = [messageCopy logKey];
        *buf = v28;
        v30 = v26;
        v31 = 2114;
        v32 = logKey2;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&_mh_execute_header, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing duplicate message: %{public}@", buf, 0x20u);
      }

LABEL_25:
      goto LABEL_26;
    }
  }

LABEL_27:
  [v12 addObject:messageCopy];
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
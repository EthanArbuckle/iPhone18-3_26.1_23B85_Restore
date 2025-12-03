@interface XDCService
- (XDCService)init;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
@end

@implementation XDCService

- (XDCService)init
{
  v23.receiver = self;
  v23.super_class = XDCService;
  v2 = [(XDCService *)&v23 init];
  if (!v2)
  {
LABEL_6:
    v19 = v2;
    goto LABEL_10;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.appstored.XDCMessageBroker", v3);
  dispatchQueue = v2->_dispatchQueue;
  v2->_dispatchQueue = v4;

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.appstored.XDCMessageBroker.worker", v6);
  workerQueue = v2->_workerQueue;
  v2->_workerQueue = v7;

  v9 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.appstore"];
  service = v2->_service;
  v2->_service = v9;

  v11 = v2->_service;
  v12 = ASDLogHandleForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = @"com.apple.private.alloy.appstore";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Listening for service: %{public}@", buf, 0xCu);
    }

    v14 = objc_alloc_init(NSMutableDictionary);
    queuedMessages = v2->_queuedMessages;
    v2->_queuedMessages = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    messageHandlers = v2->_messageHandlers;
    v2->_messageHandlers = v16;

    [(IDSService *)v2->_service addDelegate:v2 queue:v2->_dispatchQueue];
    v18 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002EB664;
    block[3] = &unk_10051AF98;
    v22 = v2;
    dispatch_async(v18, block);

    goto LABEL_6;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v25 = @"com.apple.private.alloy.appstore";
    _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to create service: %{public}@", buf, 0xCu);
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v18 = 138543618;
      *&v18[4] = identifierCopy;
      *&v18[12] = 2114;
      *&v18[14] = errorCopy;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Sending: %{public}@ failed with error: %{public}@", v18, 0x16u);
    }

    v13 = identifierCopy;
    v14 = errorCopy;
    if (self)
    {
      dispatch_assert_queue_V2(self->_dispatchQueue);
      v15 = [(NSMutableDictionary *)self->_queuedMessages objectForKeyedSubscript:v13];
      v16 = [v15 copy];

      if (v16)
      {
        v17 = dispatch_get_global_queue(21, 0);
        *v18 = _NSConcreteStackBlock;
        *&v18[8] = 3221225472;
        *&v18[16] = sub_1002EC9B8;
        v19 = &unk_10051B790;
        v21 = v16;
        v20 = v14;
        dispatch_async(v17, v18);

        [(NSMutableDictionary *)self->_queuedMessages setObject:0 forKeyedSubscript:v13];
      }
    }
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  if ([protobufCopy isResponse])
  {
    incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];

    if (incomingResponseIdentifier)
    {
      v14 = incomingResponseIdentifier;
      v15 = protobufCopy;
      v16 = dCopy;
      if (self)
      {
        dispatch_assert_queue_V2(self->_dispatchQueue);
        v17 = [(NSMutableDictionary *)self->_queuedMessages objectForKeyedSubscript:v14];
        v18 = [v17 copy];

        v19 = ASDLogHandleForCategory();
        v20 = v19;
        if (v18)
        {
          v44 = dCopy;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            *&buf[4] = v14;
            *&buf[12] = 1024;
            *&buf[14] = [v15 type];
            *&buf[18] = 2114;
            *&buf[20] = v16;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Received reply for: %{public}@ type: %u from: %{public}@", buf, 0x1Cu);
          }

          v21 = sub_1002B0154();
          v20 = sub_1002B05FC(v21, v16, self->_service);

          v22 = sub_100342148([XDCMessage alloc], v15, v20, 0);
          dispatch_get_global_queue(21, 0);
          v23 = v16;
          v25 = v24 = v15;
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1002EC9D0;
          *&buf[24] = &unk_10051B790;
          v26 = v18;
          v48 = v22;
          v49 = v26;
          v27 = v22;
          dispatch_async(v25, buf);

          v15 = v24;
          v16 = v23;
          [(NSMutableDictionary *)self->_queuedMessages setObject:0 forKeyedSubscript:v14];

          dCopy = v44;
        }

        else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = [v15 type];
          *&buf[18] = 2114;
          *&buf[20] = v16;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Received reply but no handler exists for: %{public}@ type: %u from: %{public}@", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v43 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109378;
        *&buf[4] = [protobufCopy type];
        *&buf[8] = 2114;
        *&buf[10] = dCopy;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Received reply without outgoing identifier for type: %u from: %{public}@", buf, 0x12u);
      }
    }
  }

  else
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];

    incomingResponseIdentifier = outgoingResponseIdentifier;
    v29 = protobufCopy;
    v30 = dCopy;
    if (self)
    {
      dispatch_assert_queue_V2(self->_dispatchQueue);
      v31 = sub_1002B0154();
      v46 = sub_1002B05FC(v31, v30, self->_service);

      v32 = sub_100342148([XDCMessage alloc], v29, v46, incomingResponseIdentifier);
      v45 = v32;
      messageHandlers = self->_messageHandlers;
      if (v32)
      {
        v34 = v32[5];
      }

      else
      {
        v34 = 0;
      }

      v35 = [NSNumber numberWithUnsignedShort:v34];
      v36 = [(NSMutableDictionary *)messageHandlers objectForKeyedSubscript:v35];

      if (v36)
      {
        WeakRetained = objc_loadWeakRetained((v36 + 16));
        v38 = [WeakRetained methodSignatureForSelector:*(v36 + 8)];

        v39 = [NSInvocation invocationWithMethodSignature:v38];
        v40 = objc_loadWeakRetained((v36 + 16));
        [v39 setTarget:v40];

        [v39 setSelector:*(v36 + 8)];
        [v39 setArgument:&v45 atIndex:2];
        [v39 setArgument:&v46 atIndex:3];
        [v39 retainArguments];
        workerQueue = self->_workerQueue;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1002EC9E8;
        *&buf[24] = &unk_10051B570;
        v48 = v39;
        v49 = v36;
        v42 = v39;
        dispatch_async(workerQueue, buf);
      }

      else
      {
        v38 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = incomingResponseIdentifier;
          *&buf[12] = 1024;
          *&buf[14] = [v29 type];
          *&buf[18] = 2114;
          *&buf[20] = v30;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "No handler for received request for: %{public}@ type: %u from: %{public}@", buf, 0x1Cu);
        }
      }
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v11 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Updating after devices changed: %{public}@", buf, 0xCu);
  }

  v7 = sub_1002B0154();
  sub_1002B0C08(v7, changedCopy);

  v8 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002EC394;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(v8, block);
}

@end
@interface DAIDSMessengerProxy
+ (id)allowedDataClasses;
- (DAIDSMessageReceiver)receiver;
- (DAIDSMessengerProxy)init;
- (id)_createXPCConnection;
- (void)availableDestinationsWithCompletion:(id)completion;
- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7;
- (void)sendMessage:(id)message data:(id)data toDestination:(id)destination forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8;
- (void)setReceiver:(id)receiver;
@end

@implementation DAIDSMessengerProxy

- (DAIDSMessengerProxy)init
{
  v10.receiver = self;
  v10.super_class = DAIDSMessengerProxy;
  v2 = [(DAIDSMessengerProxy *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v3;

    v5 = dispatch_queue_create("com.apple.Diagnostics.deviceMessageReceiverQueue", 0);
    messageReceiverQueue = v2->_messageReceiverQueue;
    v2->_messageReceiverQueue = v5;

    _createXPCConnection = [(DAIDSMessengerProxy *)v2 _createXPCConnection];
    connection = v2->_connection;
    v2->_connection = _createXPCConnection;
  }

  return v2;
}

- (void)setReceiver:(id)receiver
{
  receiverCopy = receiver;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = receiverCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Setting receiver: %@", buf, 0xCu);
  }

  objc_storeWeak(&selfCopy->_receiver, receiverCopy);
  pendingTasks = [(DAIDSMessengerProxy *)selfCopy pendingTasks];
  v8 = [pendingTasks count] == 0;

  if (!v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      pendingTasks2 = [(DAIDSMessengerProxy *)selfCopy pendingTasks];
      v11 = [pendingTasks2 count];
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    pendingTasks3 = [(DAIDSMessengerProxy *)selfCopy pendingTasks];
    v13 = [pendingTasks3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(pendingTasks3);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [pendingTasks3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    pendingTasks4 = [(DAIDSMessengerProxy *)selfCopy pendingTasks];
    [pendingTasks4 removeAllObjects];
  }

  objc_sync_exit(selfCopy);
}

- (void)availableDestinationsWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(DAIDSMessengerProxy *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:&stru_1001BCE20];

  [v6 availableDestinationsWithCompletion:completionCopy];
}

- (void)sendMessage:(id)message data:(id)data toDestination:(id)destination forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8
{
  responseCopy = response;
  deliveryCopy = delivery;
  v14 = a8;
  destinationCopy = destination;
  dataCopy = data;
  messageCopy = message;
  connection = [(DAIDSMessengerProxy *)self connection];
  v19 = [connection remoteObjectProxyWithErrorHandler:&stru_1001BCE40];

  [v19 sendMessage:messageCopy data:dataCopy toDestination:destinationCopy forceLocalDelivery:deliveryCopy expectsResponse:responseCopy response:v14];
}

- (void)receiveMessage:(id)message data:(id)data fromDestination:(id)destination expectsResponse:(BOOL)response response:(id)a7
{
  messageCopy = message;
  dataCopy = data;
  destinationCopy = destination;
  v15 = a7;
  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    receiver = [(DAIDSMessengerProxy *)self receiver];
    *buf = 136315650;
    v41 = "[DAIDSMessengerProxy receiveMessage:data:fromDestination:expectsResponse:response:]";
    v42 = 2112;
    v43 = messageCopy;
    v44 = 2112;
    v45 = receiver;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] %s, message: %@, receiver: %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10001249C;
  v31 = &unk_1001BCE90;
  selfCopy = self;
  objc_copyWeak(&v37, &location);
  v18 = messageCopy;
  v33 = v18;
  v19 = dataCopy;
  v34 = v19;
  v20 = destinationCopy;
  v35 = v20;
  responseCopy = response;
  v21 = v15;
  v36 = v21;
  v22 = objc_retainBlock(&v28);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v24 = [(DAIDSMessengerProxy *)selfCopy2 receiver:v28];

  if (v24)
  {
    (v22[2])(v22);
  }

  else
  {
    v25 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Adding a pending task for the %@ message", buf, 0xCu);
    }

    pendingTasks = [(DAIDSMessengerProxy *)selfCopy2 pendingTasks];
    v27 = objc_retainBlock(v22);
    [pendingTasks addObject:v27];
  }

  objc_sync_exit(selfCopy2);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (id)_createXPCConnection
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.iosdiagnosticsd" options:4096];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageSender];
  v5 = +[DAIDSMessengerProxy allowedDataClasses];
  [v4 setClasses:v5 forSelector:"sendMessage:data:toDestination:forceLocalDelivery:expectsResponse:response:" argumentIndex:1 ofReply:0];

  v6 = +[DAIDSMessengerProxy allowedDataClasses];
  [v4 setClasses:v6 forSelector:"sendMessage:data:toDestination:forceLocalDelivery:expectsResponse:response:" argumentIndex:2 ofReply:1];

  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v16 count:2];
  v8 = [NSSet setWithArray:v7];
  [v4 setClasses:v8 forSelector:"availableDestinationsWithCompletion:" argumentIndex:0 ofReply:1];

  [v3 setRemoteObjectInterface:v4];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageReceiver];
  v10 = +[DAIDSMessengerProxy allowedDataClasses];
  [v9 setClasses:v10 forSelector:"receiveMessage:data:fromDestination:expectsResponse:response:" argumentIndex:1 ofReply:0];

  v11 = +[DAIDSMessengerProxy allowedDataClasses];
  [v9 setClasses:v11 forSelector:"receiveMessage:data:fromDestination:expectsResponse:response:" argumentIndex:1 ofReply:1];

  [v3 setExportedInterface:v9];
  [v3 setExportedObject:self];
  [v3 setInterruptionHandler:&stru_1001BCEB0];
  [v3 setInvalidationHandler:&stru_1001BCED0];
  [v3 resume];
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created connection: %@", &v14, 0xCu);
  }

  return v3;
}

+ (id)allowedDataClasses
{
  if (qword_100202D68 != -1)
  {
    sub_10015888C();
  }

  v3 = qword_100202D60;

  return v3;
}

- (DAIDSMessageReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

@end
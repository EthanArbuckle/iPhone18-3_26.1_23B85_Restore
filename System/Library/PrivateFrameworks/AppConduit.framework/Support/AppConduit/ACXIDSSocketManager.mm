@interface ACXIDSSocketManager
+ (id)sharedV1SocketManager;
+ (id)sharedV2SocketManager;
- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)writeData:(id)data error:(id *)error;
- (BOOL)writeDictionary:(id)dictionary error:(id *)error;
- (id)_initWithDelegate:(id)delegate queue:(id)queue serviceName:(id)name;
- (void)_doneUsingSocket;
- (void)_onInternalQueue_armSocketShutdownTimer;
- (void)_onInternalQueue_beginUsingSocketAsDelegate:(id)delegate onQueue:(id)queue tryWiFi:(BOOL)fi completion:(id)completion;
- (void)_onInternalQueue_disarmSocketShutdownTimer;
- (void)_onInternalQueue_initiateConnectionWithCompletionBlock:(id)block;
- (void)_onInternalQueue_resetSocketBecauseOfError:(id)error;
- (void)_onQueue_startSocketSetupTimer;
- (void)_onQueue_stopSocketSetupTimer;
- (void)_readSourceReturnedDictionaryOrData:(id)data error:(id)error;
- (void)_waitForSocket;
- (void)beginUsingSocketAsDelegate:(id)delegate onQueue:(id)queue tryWiFi:(BOOL)fi completion:(id)completion;
- (void)endUsingSocket;
- (void)handleIDSRelayConnection:(id)connection fromID:(id)d UUID:(id)iD context:(id)context;
- (void)handleIDSRelayConnectionResponseWithContext:(id)context;
- (void)resetSocket;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
@end

@implementation ACXIDSSocketManager

+ (id)sharedV1SocketManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012EF0;
  block[3] = &unk_10008CBE8;
  block[4] = self;
  if (qword_1000A47B8 != -1)
  {
    dispatch_once(&qword_1000A47B8, block);
  }

  v2 = qword_1000A47B0;

  return v2;
}

+ (id)sharedV2SocketManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012FE0;
  block[3] = &unk_10008CBE8;
  block[4] = self;
  if (qword_1000A47C8 != -1)
  {
    dispatch_once(&qword_1000A47C8, block);
  }

  v2 = qword_1000A47C0;

  return v2;
}

- (id)_initWithDelegate:(id)delegate queue:(id)queue serviceName:(id)name
{
  delegateCopy = delegate;
  queueCopy = queue;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = ACXIDSSocketManager;
  v12 = [(ACXIDSSocketManager *)&v24 init];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.AppConduit.SocketManager", v13);
  internalQueue = v12->_internalQueue;
  v12->_internalQueue = v14;

  v16 = dispatch_semaphore_create(1);
  socketInUse = v12->_socketInUse;
  v12->_socketInUse = v16;

  v12->_socketInUseCount = 0;
  objc_storeStrong(&v12->_delegate, delegate);
  objc_storeStrong(&v12->_queue, queue);
  v18 = [[IDSService alloc] initWithService:nameCopy];
  service = v12->_service;
  v12->_service = v18;

  if (v12->_service)
  {
    service = [(ACXIDSSocketManager *)v12 service];
    internalQueue = [(ACXIDSSocketManager *)v12 internalQueue];
    [service addDelegate:v12 queue:internalQueue];

LABEL_4:
    v22 = v12;
    goto LABEL_9;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v22 = 0;
LABEL_9:

  return v22;
}

- (void)_onInternalQueue_beginUsingSocketAsDelegate:(id)delegate onQueue:(id)queue tryWiFi:(BOOL)fi completion:(id)completion
{
  fiCopy = fi;
  delegateCopy = delegate;
  queueCopy = queue;
  completionCopy = completion;
  if (fiCopy && ![(ACXIDSSocketManager *)self wiFiAsserted])
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      MOLogWrite();
    }

    [(ACXIDSSocketManager *)self setWiFiAsserted:1];
    socket = [(ACXIDSSocketManager *)self socket];
    [socket noteWifiAsserted:1];

    service = [(ACXIDSSocketManager *)self service];
    [service setPreferInfraWiFi:1];
  }

  [(ACXIDSSocketManager *)self setDelegate:delegateCopy];
  [(ACXIDSSocketManager *)self setQueue:queueCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100013368;
  v17[3] = &unk_10008D118;
  v18 = completionCopy;
  v15 = completionCopy;
  sub_100005828(queueCopy, v17);
  socket2 = [(ACXIDSSocketManager *)self socket];
  [socket2 resumeReadSource];
}

- (void)beginUsingSocketAsDelegate:(id)delegate onQueue:(id)queue tryWiFi:(BOOL)fi completion:(id)completion
{
  delegateCopy = delegate;
  queueCopy = queue;
  completionCopy = completion;
  if (!delegateCopy || !queueCopy)
  {
    sub_100059B18();
  }

  v13 = completionCopy;
  [(ACXIDSSocketManager *)self _waitForSocket];
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100013498;
  v18[3] = &unk_10008D168;
  v18[4] = self;
  v19 = queueCopy;
  v20 = delegateCopy;
  v21 = v13;
  fiCopy = fi;
  v15 = delegateCopy;
  v16 = v13;
  v17 = queueCopy;
  sub_100005828(internalQueue, v18);
}

- (void)endUsingSocket
{
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000137DC;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);

  [(ACXIDSSocketManager *)self _doneUsingSocket];
}

- (void)resetSocket
{
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000138C8;
  block[3] = &unk_10008CD40;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

- (BOOL)writeBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013A80;
  block[3] = &unk_10008D190;
  block[4] = self;
  block[5] = &v12;
  block[6] = bytes;
  block[7] = length;
  block[8] = error;
  dispatch_sync(internalQueue, block);

  LOBYTE(error) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return error;
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100013C34;
  v10[3] = &unk_10008D1B8;
  v10[4] = self;
  v11 = dataCopy;
  v12 = &v14;
  errorCopy = error;
  v8 = dataCopy;
  dispatch_sync(internalQueue, v10);

  LOBYTE(dataCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return dataCopy;
}

- (BOOL)writeDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100013DE8;
  v10[3] = &unk_10008D1B8;
  v10[4] = self;
  v11 = dictionaryCopy;
  v12 = &v14;
  errorCopy = error;
  v8 = dictionaryCopy;
  dispatch_sync(internalQueue, v10);

  LOBYTE(dictionaryCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return dictionaryCopy;
}

- (void)_waitForSocket
{
  socketInUse = [(ACXIDSSocketManager *)self socketInUse];
  dispatch_semaphore_wait(socketInUse, 0xFFFFFFFFFFFFFFFFLL);

  if (atomic_fetch_add(&self->_socketInUseCount, 1u))
  {
    sub_100059B44();
  }
}

- (void)_doneUsingSocket
{
  if (atomic_fetch_add(&self->_socketInUseCount, 0xFFFFFFFF) != 1)
  {
    sub_100059B70();
  }

  socketInUse = [(ACXIDSSocketManager *)self socketInUse];
  dispatch_semaphore_signal(socketInUse);
}

- (void)_onInternalQueue_armSocketShutdownTimer
{
  [(ACXIDSSocketManager *)self socketTeardownTimer];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_100059B9C();
  }

  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, internalQueue);
  [(ACXIDSSocketManager *)self setSocketTeardownTimer:v4];

  socketTeardownTimer = [(ACXIDSSocketManager *)self socketTeardownTimer];
  v6 = dispatch_time(0, 60000000000);
  dispatch_source_set_timer(socketTeardownTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  socketTeardownTimer2 = [(ACXIDSSocketManager *)self socketTeardownTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014070;
  handler[3] = &unk_10008CD40;
  handler[4] = self;
  dispatch_source_set_event_handler(socketTeardownTimer2, handler);

  socketTeardownTimer3 = [(ACXIDSSocketManager *)self socketTeardownTimer];
  dispatch_resume(socketTeardownTimer3);
}

- (void)_onInternalQueue_disarmSocketShutdownTimer
{
  socketTeardownTimer = [(ACXIDSSocketManager *)self socketTeardownTimer];

  if (socketTeardownTimer)
  {
    socketTeardownTimer2 = [(ACXIDSSocketManager *)self socketTeardownTimer];
    dispatch_source_cancel(socketTeardownTimer2);

    [(ACXIDSSocketManager *)self setSocketTeardownTimer:0];
  }
}

- (void)_readSourceReturnedDictionaryOrData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  if (!dataCopy)
  {
    internalQueue = [(ACXIDSSocketManager *)self internalQueue];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000143EC;
    v16[3] = &unk_10008CC38;
    v16[4] = self;
    v17 = errorCopy;
    dispatch_sync(internalQueue, v16);

    v12 = v17;
    goto LABEL_9;
  }

  delegate = [(ACXIDSSocketManager *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    queue = [(ACXIDSSocketManager *)self queue];

    if (queue)
    {
      queue2 = [(ACXIDSSocketManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000143F8;
      block[3] = &unk_10008CC38;
      block[4] = self;
      v15 = dataCopy;
      dispatch_sync(queue2, block);

      v12 = v15;
LABEL_9:

      goto LABEL_10;
    }
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

LABEL_10:
}

- (void)_onInternalQueue_initiateConnectionWithCompletionBlock:(id)block
{
  blockCopy = block;
  [(ACXIDSSocketManager *)self setInitiateCB:blockCopy];
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];
  [(ACXIDSSocketManager *)self setCurrentConnectionUUID:uUIDString];

  v14[0] = @"type";
  v14[1] = @"UUID";
  v15[0] = &off_100097608;
  currentConnectionUUID = [(ACXIDSSocketManager *)self currentConnectionUUID];
  v15[1] = currentConnectionUUID;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    currentConnectionUUID2 = [(ACXIDSSocketManager *)self currentConnectionUUID];
    MOLogWrite();
  }

  [(ACXIDSSocketManager *)self _onQueue_startSocketSetupTimer];
  service = [(ACXIDSSocketManager *)self service];
  v13 = 0;
  v10 = [(ACXIDSSocketManager *)self _sendMessage:service messageDictionary:v8 withAcknowledgement:1 error:&v13];
  v11 = v13;

  if (v10)
  {
    [(ACXIDSSocketManager *)self setCurrentSetupMessageUUID:v10];
  }

  else
  {
    blockCopy[2](blockCopy, v11);
    [(ACXIDSSocketManager *)self setInitiateCB:0];
  }
}

- (void)_onInternalQueue_resetSocketBecauseOfError:(id)error
{
  errorCopy = error;
  [(ACXIDSSocketManager *)self _onInternalQueue_disarmSocketShutdownTimer];
  socket = [(ACXIDSSocketManager *)self socket];
  [socket invalidate];

  [(ACXIDSSocketManager *)self setSocket:0];
  if (errorCopy)
  {
    delegate = [(ACXIDSSocketManager *)self delegate];
    if (delegate)
    {
      v7 = delegate;
      queue = [(ACXIDSSocketManager *)self queue];

      if (queue)
      {
        queue2 = [(ACXIDSSocketManager *)self queue];
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1000149A4;
        v10[3] = &unk_10008CC38;
        v10[4] = self;
        v11 = errorCopy;
        sub_100005828(queue2, v10);
      }
    }
  }
}

- (void)_onQueue_startSocketSetupTimer
{
  internalQueue = [(ACXIDSSocketManager *)self internalQueue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, internalQueue);
  [(ACXIDSSocketManager *)self setSocketSetupTimer:v4];

  socketSetupTimer = [(ACXIDSSocketManager *)self socketSetupTimer];
  v6 = dispatch_time(0, 130000000000);
  dispatch_source_set_timer(socketSetupTimer, v6, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  socketSetupTimer2 = [(ACXIDSSocketManager *)self socketSetupTimer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100014B20;
  handler[3] = &unk_10008CD40;
  handler[4] = self;
  dispatch_source_set_event_handler(socketSetupTimer2, handler);

  socketSetupTimer3 = [(ACXIDSSocketManager *)self socketSetupTimer];
  dispatch_resume(socketSetupTimer3);
}

- (void)_onQueue_stopSocketSetupTimer
{
  socketSetupTimer = [(ACXIDSSocketManager *)self socketSetupTimer];

  if (socketSetupTimer)
  {
    [(ACXIDSSocketManager *)self setCurrentConnectionUUID:0];
    [(ACXIDSSocketManager *)self setCurrentSetupMessageUUID:0];
    socketSetupTimer2 = [(ACXIDSSocketManager *)self socketSetupTimer];
    dispatch_source_cancel(socketSetupTimer2);

    [(ACXIDSSocketManager *)self setSocketSetupTimer:0];
  }
}

- (void)handleIDSRelayConnection:(id)connection fromID:(id)d UUID:(id)iD context:(id)context
{
  connectionCopy = connection;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  v14 = contextCopy;
  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
  {
    outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
    v23 = iDCopy;
    MOLogWrite();
  }

  v15 = [(ACXIDSSocketManager *)self service:outgoingResponseIdentifier];
  v16 = [v15 deviceForFromID:dCopy];

  if (v16)
  {
    v35[0] = IDSOpenSocketOptionTransportKey;
    v35[1] = IDSOpenSocketOptionPriorityKey;
    v36[0] = &off_100097620;
    v36[1] = &off_100097638;
    v35[2] = IDSOpenSocketOptionStreamNameKey;
    v35[3] = IDSOpenSocketOptionClientTimeoutKey;
    v36[2] = iDCopy;
    v36[3] = &off_100097650;
    v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:4];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_100014F54;
    v33 = sub_100014F64;
    v34 = 0;
    v18 = [IDSDeviceConnection alloc];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100014F6C;
    v24[3] = &unk_10008D208;
    v25 = iDCopy;
    selfCopy = self;
    v28 = &v29;
    v27 = v14;
    internalQueue = [(ACXIDSSocketManager *)self internalQueue];
    v20 = [v18 initSocketWithDevice:v16 options:v17 completionHandler:v24 queue:internalQueue];
    v21 = v30[5];
    v30[5] = v20;

    _Block_object_dispose(&v29, 8);
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

- (void)handleIDSRelayConnectionResponseWithContext:(id)context
{
  contextCopy = context;
  currentConnectionUUID = [(ACXIDSSocketManager *)self currentConnectionUUID];
  [(ACXIDSSocketManager *)self _onQueue_stopSocketSetupTimer];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  service = [(ACXIDSSocketManager *)self service];
  devices = [service devices];

  v8 = [devices countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v33 != v10)
      {
        objc_enumerationMutation(devices);
      }

      v12 = *(*(&v32 + 1) + 8 * v11);
      if ([v12 isActive])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [devices countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v12;

    if (!v14)
    {
      goto LABEL_12;
    }

    v36[0] = IDSOpenSocketOptionTransportKey;
    v36[1] = IDSOpenSocketOptionPriorityKey;
    v37[0] = &off_100097620;
    v37[1] = &off_100097638;
    v36[2] = IDSOpenSocketOptionStreamNameKey;
    v36[3] = IDSOpenSocketOptionClientTimeoutKey;
    v37[2] = currentConnectionUUID;
    v37[3] = &off_100097650;
    v15 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:4];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100014F54;
    v30 = sub_100014F64;
    v31 = 0;
    v16 = [IDSDeviceConnection alloc];
    v23 = currentConnectionUUID;
    v25 = &v26;
    v24 = contextCopy;
    v17 = [(ACXIDSSocketManager *)self internalQueue:_NSConcreteStackBlock];
    v18 = [v16 initSocketWithDevice:v14 options:v15 completionHandler:&v22 queue:v17];
    v19 = v27[5];
    v27[5] = v18;

    _Block_object_dispose(&v26, 8);
  }

  else
  {
LABEL_9:

LABEL_12:
    v14 = sub_1000061DC("[ACXIDSSocketManager handleIDSRelayConnectionResponseWithContext:]", 832, @"ACXErrorDomain", 8, 0, 0, @"Failed to create IDSDeviceConnection because an active device could not be located.", v13, v22);
    initiateCB = [(ACXIDSSocketManager *)self initiateCB];

    if (initiateCB)
    {
      initiateCB2 = [(ACXIDSSocketManager *)self initiateCB];
      (initiateCB2)[2](initiateCB2, v14);

      [(ACXIDSSocketManager *)self setInitiateCB:0];
    }
  }
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  serviceCopy = service;
  dCopy = d;
  contextCopy = context;
  v21 = 0;
  v22 = 0;
  v14 = [NSPropertyListSerialization propertyListWithData:data options:0 format:&v22 error:&v21];
  v15 = v21;
  if (qword_1000A4878 && *(qword_1000A4878 + 44) >= 7)
  {
    v19 = dCopy;
    v20 = v14;
    MOLogWrite();
  }

  v16 = [v14 objectForKey:{@"type", v19, v20}];
  unsignedShortValue = [v16 unsignedShortValue];

  v18 = [v14 objectForKey:@"UUID"];
  if (unsignedShortValue != 2)
  {
    if (unsignedShortValue == 1)
    {
      [(ACXIDSSocketManager *)self handleIDSRelayConnection:serviceCopy fromID:dCopy UUID:v18 context:contextCopy];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    currentSetupMessageUUID = [(ACXIDSSocketManager *)self currentSetupMessageUUID];
    v17 = [identifierCopy isEqualToString:currentSetupMessageUUID];

    if (v17)
    {
      [(ACXIDSSocketManager *)self _onQueue_stopSocketSetupTimer];
      v19 = errorCopy;
      if (!v19)
      {
        v19 = sub_1000061DC("[ACXIDSSocketManager service:account:identifier:didSendWithSuccess:error:]", 929, @"ACXErrorDomain", 1, 0, 0, @"IDS called its didSend callback for failure but with a nil error message", v18, v25);
      }

      v26 = @"IDSMessageID";
      v27 = identifierCopy;
      v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v22 = sub_1000061DC("[ACXIDSSocketManager service:account:identifier:didSendWithSuccess:error:]", 933, @"ACXErrorDomain", 49, v19, v20, @"Socket setup message failed to send with identifier: %@", v21, identifierCopy);

      initiateCB = [(ACXIDSSocketManager *)self initiateCB];

      if (initiateCB)
      {
        initiateCB2 = [(ACXIDSSocketManager *)self initiateCB];
        (initiateCB2)[2](initiateCB2, v22);

        [(ACXIDSSocketManager *)self setInitiateCB:0];
      }
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  currentSetupMessageUUID = [(ACXIDSSocketManager *)self currentSetupMessageUUID];
  v10 = [identifierCopy isEqualToString:currentSetupMessageUUID];

  if (v10)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
    {
      currentConnectionUUID = [(ACXIDSSocketManager *)self currentConnectionUUID];
      v11 = identifierCopy;
      MOLogWrite();
    }

    [(ACXIDSSocketManager *)self handleIDSRelayConnectionResponseWithContext:contextCopy, v11, currentConnectionUUID];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }
}

@end
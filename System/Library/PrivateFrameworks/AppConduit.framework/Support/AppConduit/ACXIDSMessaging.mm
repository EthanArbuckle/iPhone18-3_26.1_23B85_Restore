@interface ACXIDSMessaging
+ (id)messagerWithIDSServiceName:(id)name;
- (ACXIDSMessaging)initWithServiceName:(id)name;
- (ACXIDSMessaging)initWithServiceName:(id)name IDSService:(id)service;
- (ACXIDSMessagingDelegate)delegate;
- (ACXIDSMessagingDeviceManager)deviceManager;
- (void)asyncTransaction:(id)transaction;
- (void)sendMessage:(id)message toDevice:(id)device withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description handleReply:(id)reply;
- (void)sendResponse:(id)response toMessage:(id)message withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)setDeviceManager:(id)manager delegate:(id)delegate;
@end

@implementation ACXIDSMessaging

+ (id)messagerWithIDSServiceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100017290;
  v17 = sub_1000172A0;
  v18 = 0;
  if (qword_1000A47F0 != -1)
  {
    sub_100059C4C();
  }

  v5 = qword_1000A47E0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017324;
  block[3] = &unk_10008D298;
  v10 = nameCopy;
  v11 = &v13;
  selfCopy = self;
  v6 = nameCopy;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (ACXIDSMessaging)initWithServiceName:(id)name
{
  nameCopy = name;
  v5 = [[IDSService alloc] initWithService:nameCopy];
  v6 = [(ACXIDSMessaging *)self initWithServiceName:nameCopy IDSService:v5];

  return v6;
}

- (ACXIDSMessaging)initWithServiceName:(id)name IDSService:(id)service
{
  nameCopy = name;
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = ACXIDSMessaging;
  v8 = [(ACXIDSMessaging *)&v18 init];
  if (!v8)
  {
    goto LABEL_3;
  }

  v9 = objc_opt_new();
  pendingReplies = v8->_pendingReplies;
  v8->_pendingReplies = v9;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.appconduit.IDSMessaging", v11);
  internalQueue = v8->_internalQueue;
  v8->_internalQueue = v12;

  v14 = [nameCopy copy];
  serviceName = v8->_serviceName;
  v8->_serviceName = v14;

  objc_storeStrong(&v8->_service, service);
  if (!v8->_service)
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v16 = 0;
  }

  else
  {
LABEL_3:
    v16 = v8;
  }

  return v16;
}

- (void)setDeviceManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  internalQueue = [(ACXIDSMessaging *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017658;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = managerCopy;
  v13 = delegateCopy;
  v9 = delegateCopy;
  v10 = managerCopy;
  dispatch_sync(internalQueue, block);
}

- (void)asyncTransaction:(id)transaction
{
  transactionCopy = transaction;
  internalQueue = [(ACXIDSMessaging *)self internalQueue];
  sub_100005828(internalQueue, transactionCopy);
}

- (void)sendMessage:(id)message toDevice:(id)device withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description handleReply:(id)reply
{
  messageCopy = message;
  deviceCopy = device;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000179B0;
  v20[3] = &unk_10008D2C0;
  descriptionCopy = description;
  replyCopy = reply;
  timeoutCopy = timeout;
  v21 = deviceCopy;
  selfCopy = self;
  priorityCopy = priority;
  v23 = messageCopy;
  v16 = descriptionCopy;
  v17 = messageCopy;
  v18 = deviceCopy;
  v19 = replyCopy;
  [(ACXIDSMessaging *)self asyncTransaction:v20];
}

- (void)sendResponse:(id)response toMessage:(id)message withPriority:(int64_t)priority timeout:(double)timeout logDescription:(id)description
{
  responseCopy = response;
  messageCopy = message;
  descriptionCopy = description;
  idsContext = [messageCopy idsContext];
  expectsPeerResponse = [idsContext expectsPeerResponse];

  if (expectsPeerResponse)
  {
    internalQueue = [(ACXIDSMessaging *)self internalQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017FD8;
    v20[3] = &unk_10008D2E8;
    v21 = messageCopy;
    v22 = descriptionCopy;
    selfCopy = self;
    timeoutCopy = timeout;
    v24 = responseCopy;
    priorityCopy = priority;
    sub_100005828(internalQueue, v20);
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    serviceName = [(ACXIDSMessaging *)self serviceName];
    message = [messageCopy message];
    MOLogWrite();
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  incomingResponseIdentifier = [contextCopy incomingResponseIdentifier];
  if (incomingResponseIdentifier)
  {
    pendingReplies = [(ACXIDSMessaging *)self pendingReplies];
    delegate = [pendingReplies objectForKeyedSubscript:incomingResponseIdentifier];

    if (delegate)
    {
      serviceName2 = [[ACXIDSMessage alloc] initWithMessage:messageCopy idsContext:contextCopy fromID:dCopy];
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        serviceName = [(ACXIDSMessaging *)self serviceName];
        incomingResponseIdentifier2 = [contextCopy incomingResponseIdentifier];
        [contextCopy outgoingResponseIdentifier];
        v23 = v20 = incomingResponseIdentifier2;
        v19 = serviceName;
        MOLogWrite();
      }

      [delegate runReplyHandlerWithMessage:serviceName2 error:{0, v19, v20, v23}];
      goto LABEL_18;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      serviceName2 = [(ACXIDSMessaging *)self serviceName];
      outgoingResponseIdentifier = [contextCopy outgoingResponseIdentifier];
      MOLogWrite();

LABEL_18:
    }
  }

  else
  {
    delegate = [(ACXIDSMessaging *)self delegate];
    if (delegate)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        serviceName3 = [(ACXIDSMessaging *)self serviceName];
        outgoingResponseIdentifier2 = [contextCopy outgoingResponseIdentifier];
        MOLogWrite();
      }

      serviceName2 = [[ACXIDSMessage alloc] initWithMessage:messageCopy idsContext:contextCopy fromID:dCopy];
      [delegate incomingMessage:serviceName2 fromDevice:dCopy];
      goto LABEL_18;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      serviceName2 = [(ACXIDSMessaging *)self serviceName];
      MOLogWrite();
      goto LABEL_18;
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  if (!success)
  {
    pendingReplies = [(ACXIDSMessaging *)self pendingReplies];
    v12 = [pendingReplies objectForKeyedSubscript:identifierCopy];

    if (v12)
    {
      [v12 runReplyHandlerWithMessage:0 error:errorCopy];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      serviceName = [(ACXIDSMessaging *)self serviceName];
      MOLogWrite();
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  deviceManager = [(ACXIDSMessaging *)self deviceManager];
  v6 = deviceManager;
  if (deviceManager)
  {
    [deviceManager updatedIDSDevices:changedCopy forMessager:self];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    serviceName = [(ACXIDSMessaging *)self serviceName];
    MOLogWrite();
  }
}

- (ACXIDSMessagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ACXIDSMessagingDeviceManager)deviceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceManager);

  return WeakRetained;
}

@end
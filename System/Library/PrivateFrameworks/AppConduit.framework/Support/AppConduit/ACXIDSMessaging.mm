@interface ACXIDSMessaging
+ (id)messagerWithIDSServiceName:(id)a3;
- (ACXIDSMessaging)initWithServiceName:(id)a3;
- (ACXIDSMessaging)initWithServiceName:(id)a3 IDSService:(id)a4;
- (ACXIDSMessagingDelegate)delegate;
- (ACXIDSMessagingDeviceManager)deviceManager;
- (void)asyncTransaction:(id)a3;
- (void)sendMessage:(id)a3 toDevice:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7 handleReply:(id)a8;
- (void)sendResponse:(id)a3 toMessage:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)setDeviceManager:(id)a3 delegate:(id)a4;
@end

@implementation ACXIDSMessaging

+ (id)messagerWithIDSServiceName:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v13;
  v12 = a1;
  v6 = v4;
  dispatch_sync(v5, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (ACXIDSMessaging)initWithServiceName:(id)a3
{
  v4 = a3;
  v5 = [[IDSService alloc] initWithService:v4];
  v6 = [(ACXIDSMessaging *)self initWithServiceName:v4 IDSService:v5];

  return v6;
}

- (ACXIDSMessaging)initWithServiceName:(id)a3 IDSService:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v14 = [v6 copy];
  serviceName = v8->_serviceName;
  v8->_serviceName = v14;

  objc_storeStrong(&v8->_service, a4);
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

- (void)setDeviceManager:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACXIDSMessaging *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017658;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)asyncTransaction:(id)a3
{
  v4 = a3;
  v5 = [(ACXIDSMessaging *)self internalQueue];
  sub_100005828(v5, v4);
}

- (void)sendMessage:(id)a3 toDevice:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7 handleReply:(id)a8
{
  v14 = a3;
  v15 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000179B0;
  v20[3] = &unk_10008D2C0;
  v24 = a7;
  v25 = a8;
  v26 = a6;
  v21 = v15;
  v22 = self;
  v27 = a5;
  v23 = v14;
  v16 = v24;
  v17 = v14;
  v18 = v15;
  v19 = v25;
  [(ACXIDSMessaging *)self asyncTransaction:v20];
}

- (void)sendResponse:(id)a3 toMessage:(id)a4 withPriority:(int64_t)a5 timeout:(double)a6 logDescription:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [v13 idsContext];
  v16 = [v15 expectsPeerResponse];

  if (v16)
  {
    v17 = [(ACXIDSMessaging *)self internalQueue];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017FD8;
    v20[3] = &unk_10008D2E8;
    v21 = v13;
    v22 = v14;
    v23 = self;
    v25 = a6;
    v24 = v12;
    v26 = a5;
    sub_100005828(v17, v20);
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v18 = [(ACXIDSMessaging *)self serviceName];
    v19 = [v13 message];
    MOLogWrite();
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v24 = a5;
  v10 = a6;
  v11 = a7;
  v12 = [v11 incomingResponseIdentifier];
  if (v12)
  {
    v13 = [(ACXIDSMessaging *)self pendingReplies];
    v14 = [v13 objectForKeyedSubscript:v12];

    if (v14)
    {
      v15 = [[ACXIDSMessage alloc] initWithMessage:v24 idsContext:v11 fromID:v10];
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v16 = [(ACXIDSMessaging *)self serviceName];
        v17 = [v11 incomingResponseIdentifier];
        [v11 outgoingResponseIdentifier];
        v23 = v20 = v17;
        v19 = v16;
        MOLogWrite();
      }

      [v14 runReplyHandlerWithMessage:v15 error:{0, v19, v20, v23}];
      goto LABEL_18;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v15 = [(ACXIDSMessaging *)self serviceName];
      v22 = [v11 outgoingResponseIdentifier];
      MOLogWrite();

LABEL_18:
    }
  }

  else
  {
    v14 = [(ACXIDSMessaging *)self delegate];
    if (v14)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 5)
      {
        v18 = [(ACXIDSMessaging *)self serviceName];
        v21 = [v11 outgoingResponseIdentifier];
        MOLogWrite();
      }

      v15 = [[ACXIDSMessage alloc] initWithMessage:v24 idsContext:v11 fromID:v10];
      [v14 incomingMessage:v15 fromDevice:v10];
      goto LABEL_18;
    }

    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v15 = [(ACXIDSMessaging *)self serviceName];
      MOLogWrite();
      goto LABEL_18;
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v14 = a5;
  v10 = a7;
  if (!a6)
  {
    v11 = [(ACXIDSMessaging *)self pendingReplies];
    v12 = [v11 objectForKeyedSubscript:v14];

    if (v12)
    {
      [v12 runReplyHandlerWithMessage:0 error:v10];
    }

    else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      v13 = [(ACXIDSMessaging *)self serviceName];
      MOLogWrite();
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v8 = a4;
  v5 = [(ACXIDSMessaging *)self deviceManager];
  v6 = v5;
  if (v5)
  {
    [v5 updatedIDSDevices:v8 forMessager:self];
  }

  else if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    v7 = [(ACXIDSMessaging *)self serviceName];
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
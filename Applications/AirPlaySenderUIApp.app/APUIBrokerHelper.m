@interface APUIBrokerHelper
+ (id)sharedInstance;
- (APUIBrokerHelper)init;
- (void)_handleAuthenticationResponse:(id)a3 requestUUID:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_handleBrokerResponse:(id)a3;
- (void)_handleGetInfoResponse:(id)a3 requestUUID:(id)a4 error:(id)a5 completion:(id)a6;
- (void)_sendBrokerRequest:(id)a3 params:(id)a4 timeout:(unint64_t)a5 completion:(id)a6;
- (void)getBrokerGroupInfo:(id)a3 completion:(id)a4;
- (void)performBrokerAuthenticationForBrokerGroup:(id)a3 withBrokerAuth:(id)a4 completion:(id)a5;
@end

@implementation APUIBrokerHelper

- (APUIBrokerHelper)init
{
  v10.receiver = self;
  v10.super_class = APUIBrokerHelper;
  v2 = [(APUIBrokerHelper *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("APUIBrokerHelper.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("APUIBrokerHelper.notification", 0);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v5;

    v7 = +[NSMutableDictionary dictionary];
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v7;
  }

  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    sub_10000B8C0();
  }

  return v2;
}

- (void)_handleGetInfoResponse:(id)a3 requestUUID:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    if (v10)
    {
      IsAppleInternalBuild();
    }

    LogPrintF();
  }

  v14 = NSErrorToOSStatus();
  if (v14)
  {
    v16 = v14;
    sub_10000B904();
    v15 = 0;
  }

  else
  {
    v15 = [v10 objectForKeyedSubscript:@"BrokerGroupInfo"];
    if (v15)
    {
      if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
      {
        IsAppleInternalBuild();
        LogPrintF();
      }

      v16 = 0;
    }

    else
    {
      sub_10000B914();
      v16 = -6705;
    }
  }

  if (v13)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002E9C;
    block[3] = &unk_10001C658;
    v20 = v13;
    v21 = v16;
    v19 = v15;
    dispatch_async(notificationQueue, block);
  }
}

- (void)getBrokerGroupInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000301C;
  block[3] = &unk_10001C6A8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_handleAuthenticationResponse:(id)a3 requestUUID:(id)a4 error:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    if (v10)
    {
      IsAppleInternalBuild();
    }

    LogPrintF();
  }

  v14 = NSErrorToOSStatus();
  if (v14)
  {
    v16 = v14;
    sub_10000B928();
    v15 = 0;
    goto LABEL_15;
  }

  if (!v10)
  {
    sub_10000B94C();
    v15 = 0;
LABEL_21:
    v16 = -6705;
    goto LABEL_15;
  }

  v15 = [v10 objectForKeyedSubscript:@"AuthTargetReceiverDeviceID"];
  if (!v15)
  {
    sub_10000B938();
    goto LABEL_21;
  }

  if (dword_100022470 <= 50 && (dword_100022470 != -1 || _LogCategory_Initialize()))
  {
    IsAppleInternalBuild();
    LogPrintF();
  }

  v16 = 0;
LABEL_15:
  if (v13)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100003350;
    block[3] = &unk_10001C658;
    v20 = v13;
    v21 = v16;
    v19 = v15;
    dispatch_async(notificationQueue, block);
  }
}

- (void)performBrokerAuthenticationForBrokerGroup:(id)a3 withBrokerAuth:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000034F0;
  v15[3] = &unk_10001C6D0;
  v16 = v9;
  v17 = v8;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)_sendBrokerRequest:(id)a3 params:(id)a4 timeout:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000036E8;
  block[3] = &unk_10001C720;
  block[4] = self;
  v18 = v11;
  v20 = v12;
  v21 = a5;
  v19 = v10;
  v14 = v12;
  v15 = v10;
  v16 = v11;
  dispatch_async(queue, block);
}

- (void)_handleBrokerResponse:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (!v4)
  {
    sub_10000BB0C();
    v8 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  if (dword_100022470 <= 50)
  {
    if (dword_100022470 != -1 || (v6 = _LogCategory_Initialize(), v5 = v17, v6))
    {
      sub_10000B970();
      v5 = v17;
    }
  }

  v7 = [v5 objectForKeyedSubscript:{@"RequestType", v17}];
  if (!v7)
  {
    sub_10000BA80(self, &v18);
LABEL_20:
    v8 = v18;
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v17 objectForKeyedSubscript:@"RequestUUID"];
  if (!v9)
  {
    sub_10000B9E8(self, v8, &v18);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = [v17 objectForKeyedSubscript:@"Status"];
  v12 = [v11 intValue];

  if (v12)
  {
    sub_10000B9D8();
  }

  v13 = self;
  objc_sync_enter(v13);
  v14 = [(NSMutableDictionary *)v13->_pendingRequests objectForKeyedSubscript:v10];
  if (v14)
  {
    v15 = v14;
    objc_sync_enter(v15);
    [v15 setResponse:v17];
    [v15 setStatus:v12];
    objc_sync_exit(v15);

    objc_sync_exit(v13);
    v16 = [v15 semaphore];
    dispatch_semaphore_signal(v16);
  }

  else
  {
    objc_sync_exit(v13);
  }

LABEL_13:
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003EA0;
  block[3] = &unk_10001C740;
  block[4] = a1;
  if (qword_100022950 != -1)
  {
    dispatch_once(&qword_100022950, block);
  }

  v2 = qword_100022958;

  return v2;
}

@end
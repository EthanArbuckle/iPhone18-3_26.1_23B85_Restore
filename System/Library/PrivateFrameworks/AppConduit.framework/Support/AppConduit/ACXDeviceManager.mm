@interface ACXDeviceManager
+ (id)sharedManager;
- (ACXDeviceManager)init;
- (ACXDeviceManagerDelegate)delegate;
- (NSArray)allDevices;
- (id)currentActivePairedDevice;
- (id)deviceForIDSIdentifier:(id)identifier;
- (id)deviceForNRDevice:(id)device;
- (id)deviceForPairingID:(id)d;
- (void)setLegacyMessagingService:(id)service currentMessagingService:(id)messagingService;
- (void)updatedIDSDevices:(id)devices forMessager:(id)messager;
@end

@implementation ACXDeviceManager

+ (id)sharedManager
{
  if (qword_1000A4830 != -1)
  {
    sub_10005A178();
  }

  v3 = qword_1000A4828;

  return v3;
}

- (ACXDeviceManager)init
{
  v9.receiver = self;
  v9.super_class = ACXDeviceManager;
  v2 = [(ACXDeviceManager *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.appconduitd.ACXDeviceManager.internal", v5);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;
  }

  return v2;
}

- (void)setLegacyMessagingService:(id)service currentMessagingService:(id)messagingService
{
  serviceCopy = service;
  messagingServiceCopy = messagingService;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A9F0;
  block[3] = &unk_10008CA48;
  block[4] = self;
  v12 = serviceCopy;
  v13 = messagingServiceCopy;
  v9 = messagingServiceCopy;
  v10 = serviceCopy;
  dispatch_sync(internalQueue, block);
}

- (id)currentActivePairedDevice
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003AB9C;
  v12 = sub_10003ABAC;
  v13 = 0;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003ABB4;
  v7[3] = &unk_10008C958;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(internalQueue, v7);

  v4 = v9[5];
  if (!v4)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      v4 = 0;
    }

    else
    {
      MOLogWrite();
      v4 = v9[5];
    }
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)deviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10003AB9C;
  v17 = sub_10003ABAC;
  v18 = 0;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AD94;
  block[3] = &unk_10008CA20;
  v12 = &v13;
  block[4] = self;
  v6 = identifierCopy;
  v11 = v6;
  dispatch_sync(internalQueue, block);

  v7 = v14[5];
  if (!v7)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      v7 = 0;
    }

    else
    {
      MOLogWrite();
      v7 = v14[5];
    }
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)deviceForPairingID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10003AB9C;
  v17 = sub_10003ABAC;
  v18 = 0;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003AF90;
  block[3] = &unk_10008CA70;
  block[4] = self;
  v6 = dCopy;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(internalQueue, block);

  v7 = v14[5];
  if (!v7)
  {
    if (qword_1000A4878 && *(qword_1000A4878 + 44) < 3)
    {
      v7 = 0;
    }

    else
    {
      MOLogWrite();
      v7 = v14[5];
    }
  }

  v8 = v7;

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)deviceForNRDevice:(id)device
{
  deviceCopy = device;
  v5 = [deviceCopy valueForProperty:NRDevicePropertyPairingID];
  if (v5)
  {
    v6 = [(ACXDeviceManager *)self deviceForPairingID:v5];
  }

  else
  {
    if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
    {
      MOLogWrite();
    }

    v6 = 0;
  }

  return v6;
}

- (NSArray)allDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003AB9C;
  v11 = sub_10003ABAC;
  v12 = 0;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003B2A0;
  v6[3] = &unk_10008C958;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updatedIDSDevices:(id)devices forMessager:(id)messager
{
  devicesCopy = devices;
  messagerCopy = messager;
  internalQueue = [(ACXDeviceManager *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003B3E0;
  v11[3] = &unk_10008CA48;
  v12 = devicesCopy;
  v13 = messagerCopy;
  selfCopy = self;
  v9 = messagerCopy;
  v10 = devicesCopy;
  sub_100005828(internalQueue, v11);
}

- (ACXDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
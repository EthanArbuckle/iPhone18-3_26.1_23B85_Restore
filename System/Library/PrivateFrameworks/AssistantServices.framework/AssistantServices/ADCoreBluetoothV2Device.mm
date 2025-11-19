@interface ADCoreBluetoothV2Device
- (ADCoreBluetoothV2Device)initWithAddress:(id)a3 cbuuid:(id)a4 dataSource:(id)a5;
- (ADCoreBluetoothV2Device)initWithDeviceUID:(id)a3 dataSource:(id)a4;
- (id)_deviceInfo;
- (id)_inEarDetectionStateFromCBDevice:(id)a3;
- (id)address;
- (id)cbuuid;
- (id)deviceInfo;
- (id)identifier;
- (int64_t)_headphoneListeningModeFromDevice:(id)a3;
- (int64_t)_inEarStatusFromDevicePlacement:(int)a3;
- (void)_enumerateObserversUsingBlock:(id)a3;
- (void)_invalidate;
- (void)_updateDevice:(id)a3;
- (void)_updateDeviceInfo:(id)a3;
- (void)addObserver:(id)a3;
- (void)fetchCBUIIDWithCompletion:(id)a3;
- (void)getConversationAwareness:(id)a3;
- (void)getDeviceInfo:(id)a3;
- (void)getHeadGestures:(id)a3;
- (void)getHeadphoneInEarDetectionState:(id)a3;
- (void)getHeadphoneListeningMode:(id)a3;
- (void)getPersonalVolume:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)setConversationAwareness:(BOOL)a3 completion:(id)a4;
- (void)setHeadGestures:(BOOL)a3 completion:(id)a4;
- (void)setHeadphoneListeningMode:(int64_t)a3 completion:(id)a4;
- (void)setPersonalVolume:(BOOL)a3 completion:(id)a4;
- (void)updateDevice:(id)a3;
@end

@implementation ADCoreBluetoothV2Device

- (id)identifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10024F3B8;
  v10 = sub_10024F3C8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000133E8;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)address
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10024F3B8;
  v10 = sub_10024F3C8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013610;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)cbuuid
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10024F3B8;
  v10 = sub_10024F3C8;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100013714;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_inEarDetectionStateFromCBDevice:(id)a3
{
  v4 = [a3 coreBluetoothDevice];
  v5 = [v4 primaryPlacement];
  v6 = [v4 secondaryPlacement];
  v7 = [v4 primaryBudSide];
  v8 = [(ADCoreBluetoothV2Device *)self _inEarStatusFromDevicePlacement:v5];
  v9 = [(ADCoreBluetoothV2Device *)self _inEarStatusFromDevicePlacement:v6];
  if (v7 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v7 == 2);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024CAFC;
  v13[3] = &unk_100517AA8;
  v14 = v5;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v11 = [[AFBluetoothHeadphoneInEarDetectionState alloc] initWithBuilder:v13];

  return v11;
}

- (int64_t)_headphoneListeningModeFromDevice:(id)a3
{
  v3 = [a3 coreBluetoothDevice];
  v4 = [v3 listeningMode] - 1;
  if (v4 >= 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 2;
  }

  return v5;
}

- (int64_t)_inEarStatusFromDevicePlacement:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return 1;
  }

  else
  {
    return qword_1003F0518[a3 - 1];
  }
}

- (void)_enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  if (observers)
  {
    v6 = [(NSHashTable *)observers setRepresentation];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024CC90;
    v7[3] = &unk_100517A88;
    v8 = v4;
    [v6 enumerateObjectsUsingBlock:v7];
  }
}

- (void)_updateDeviceInfo:(id)a3
{
  v4 = a3;
  deviceInfo = self->_deviceInfo;
  if (deviceInfo != v4 && ([(AFBluetoothDeviceInfo *)deviceInfo isEqual:v4]& 1) == 0)
  {
    v6 = self->_deviceInfo;
    v7 = [(AFBluetoothDeviceInfo *)v4 copy];
    v8 = self->_deviceInfo;
    self->_deviceInfo = v7;

    v9 = self->_deviceInfo;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10024CD9C;
    v12[3] = &unk_100517A38;
    v12[4] = self;
    v13 = v6;
    v14 = v9;
    v10 = v9;
    v11 = v6;
    [(ADCoreBluetoothV2Device *)self _enumerateObserversUsingBlock:v12];
  }
}

- (id)_deviceInfo
{
  deviceInfo = self->_deviceInfo;
  if (!deviceInfo)
  {
    v4 = sub_10024CE5C(self->_device);
    [(ADCoreBluetoothV2Device *)self _updateDeviceInfo:v4];

    deviceInfo = self->_deviceInfo;
  }

  return deviceInfo;
}

- (void)_updateDevice:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D9E0;
  block[3] = &unk_10051E010;
  v6 = v4;
  v29 = v6;
  v30 = self;
  dispatch_async(queue, block);
  v7 = self->_device;
  v8 = v6;
  v9 = sub_10024CE5C(v8);
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = [(ADCoreBluetoothV2Device *)self cbuuid];
    *buf = 136315650;
    v32 = "[ADCoreBluetoothV2Device _updateDevice:]";
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s found device: %@, cbuuid: %@", buf, 0x20u);
  }

  if (v7)
  {
    v13 = [(ADCoreBluetoothV2Device *)self _inEarDetectionStateFromCBDevice:v7];
    v14 = [(ADCoreBluetoothV2Device *)self _inEarDetectionStateFromCBDevice:v8];
    if (v13 != v14 && ([v13 isEqual:v14] & 1) == 0)
    {
      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v32 = "[ADCoreBluetoothV2Device _updateDevice:]";
        v33 = 2112;
        v34 = v13;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s IED state changed from %@ to %@", buf, 0x20u);
      }

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10024DAAC;
      v25[3] = &unk_100517A38;
      v25[4] = self;
      v26 = v13;
      v27 = v14;
      [(ADCoreBluetoothV2Device *)self _enumerateObserversUsingBlock:v25];
    }

    v16 = [(ADCoreBluetoothV2Device *)self _headphoneListeningModeFromDevice:v7];
    v17 = [(ADCoreBluetoothV2Device *)self _headphoneListeningModeFromDevice:v8];
    if (v16 != v17)
    {
      v18 = v17;
      v19 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
      {
        log = v19;
        v22 = AFBluetoothHeadphoneListeningModeGetName();
        v20 = AFBluetoothHeadphoneListeningModeGetName();
        *buf = 136315650;
        v32 = "[ADCoreBluetoothV2Device _updateDevice:]";
        v33 = 2112;
        v34 = v22;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s Listening mode changed from %@ to %@", buf, 0x20u);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10024DB10;
      v24[3] = &unk_100517A60;
      v24[4] = self;
      v24[5] = v16;
      v24[6] = v18;
      [(ADCoreBluetoothV2Device *)self _enumerateObserversUsingBlock:v24, v22];
    }
  }

  [(ADCoreBluetoothV2Device *)self _updateDeviceInfo:v9];
  device = self->_device;
  self->_device = v8;
}

- (void)updateDevice:(id)a3
{
  v4 = a3;
  aadQueue = self->_aadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DC0C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(aadQueue, v7);
}

- (void)getHeadphoneListeningMode:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024DCC0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)getHeadphoneInEarDetectionState:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024DDB0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setHeadGestures:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024DEC0;
  block[3] = &unk_10051D228;
  v12 = a3;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getHeadGestures:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024E368;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setPersonalVolume:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024E630;
  block[3] = &unk_10051D228;
  v12 = a3;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getPersonalVolume:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024E8E0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setConversationAwareness:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024EBF8;
  block[3] = &unk_10051D228;
  v12 = a3;
  block[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getConversationAwareness:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024EEA8;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setHeadphoneListeningMode:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024F1C0;
  block[3] = &unk_10051BFA8;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)fetchCBUIIDWithCompletion:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F35C;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)getDeviceInfo:(id)a3
{
  v4 = a3;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F478;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(group, aadQueue, v8);
}

- (id)deviceInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10024F3B8;
  v10 = sub_10024F3C8;
  v11 = 0;
  aadQueue = self->_aadQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024F5C4;
  v5[3] = &unk_10051D4A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(aadQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aadQueue = self->_aadQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024F6B8;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(aadQueue, v7);
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    aadQueue = self->_aadQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024F848;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = v4;
    dispatch_async(aadQueue, v7);
  }
}

- (void)_invalidate
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10024F938;
  v4[3] = &unk_1005179E8;
  v4[4] = self;
  [(ADCoreBluetoothV2Device *)self _enumerateObserversUsingBlock:v4];
  device = self->_device;
  self->_device = 0;
}

- (void)invalidate
{
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024FA0C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_sync(aadQueue, block);
}

- (ADCoreBluetoothV2Device)initWithDeviceUID:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  v8 = [(ADCoreBluetoothV2Device *)self initWithAddress:0 cbuuid:v7 dataSource:v6];

  return v8;
}

- (ADCoreBluetoothV2Device)initWithAddress:(id)a3 cbuuid:(id)a4 dataSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = ADCoreBluetoothV2Device;
  v11 = [(ADCoreBluetoothV2Device *)&v32 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.assistantd.ADCoreBluetoothV2Device.AAD", v12);

    v14 = *(v11 + 3);
    *(v11 + 3) = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.assistantd.ADCoreBluetoothV2Device", v15);

    v17 = *(v11 + 4);
    *(v11 + 4) = v16;

    v18 = dispatch_group_create();
    v19 = *(v11 + 5);
    *(v11 + 5) = v18;

    v20 = *(v11 + 4);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10024FCC4;
    block[3] = &unk_10051DB68;
    v21 = v11;
    v29 = v21;
    v30 = v8;
    v31 = v9;
    dispatch_async(v20, block);
    objc_storeWeak(v21 + 1, v10);
    dispatch_group_enter(*(v11 + 5));
    objc_initWeak(&location, v21);
    v22 = *(v11 + 3);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10024FD0C;
    v24[3] = &unk_10051C650;
    objc_copyWeak(&v26, &location);
    v25 = v21;
    dispatch_async(v22, v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v11;
}

@end
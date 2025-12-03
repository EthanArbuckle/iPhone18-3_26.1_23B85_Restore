@interface ADCoreBluetoothV2Device
- (ADCoreBluetoothV2Device)initWithAddress:(id)address cbuuid:(id)cbuuid dataSource:(id)source;
- (ADCoreBluetoothV2Device)initWithDeviceUID:(id)d dataSource:(id)source;
- (id)_deviceInfo;
- (id)_inEarDetectionStateFromCBDevice:(id)device;
- (id)address;
- (id)cbuuid;
- (id)deviceInfo;
- (id)identifier;
- (int64_t)_headphoneListeningModeFromDevice:(id)device;
- (int64_t)_inEarStatusFromDevicePlacement:(int)placement;
- (void)_enumerateObserversUsingBlock:(id)block;
- (void)_invalidate;
- (void)_updateDevice:(id)device;
- (void)_updateDeviceInfo:(id)info;
- (void)addObserver:(id)observer;
- (void)fetchCBUIIDWithCompletion:(id)completion;
- (void)getConversationAwareness:(id)awareness;
- (void)getDeviceInfo:(id)info;
- (void)getHeadGestures:(id)gestures;
- (void)getHeadphoneInEarDetectionState:(id)state;
- (void)getHeadphoneListeningMode:(id)mode;
- (void)getPersonalVolume:(id)volume;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion;
- (void)setHeadGestures:(BOOL)gestures completion:(id)completion;
- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion;
- (void)setPersonalVolume:(BOOL)volume completion:(id)completion;
- (void)updateDevice:(id)device;
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

- (id)_inEarDetectionStateFromCBDevice:(id)device
{
  coreBluetoothDevice = [device coreBluetoothDevice];
  primaryPlacement = [coreBluetoothDevice primaryPlacement];
  secondaryPlacement = [coreBluetoothDevice secondaryPlacement];
  primaryBudSide = [coreBluetoothDevice primaryBudSide];
  v8 = [(ADCoreBluetoothV2Device *)self _inEarStatusFromDevicePlacement:primaryPlacement];
  v9 = [(ADCoreBluetoothV2Device *)self _inEarStatusFromDevicePlacement:secondaryPlacement];
  if (primaryBudSide == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (primaryBudSide == 2);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024CAFC;
  v13[3] = &unk_100517AA8;
  v14 = primaryPlacement;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v11 = [[AFBluetoothHeadphoneInEarDetectionState alloc] initWithBuilder:v13];

  return v11;
}

- (int64_t)_headphoneListeningModeFromDevice:(id)device
{
  coreBluetoothDevice = [device coreBluetoothDevice];
  v4 = [coreBluetoothDevice listeningMode] - 1;
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

- (int64_t)_inEarStatusFromDevicePlacement:(int)placement
{
  if ((placement - 1) > 5)
  {
    return 1;
  }

  else
  {
    return qword_1003F0518[placement - 1];
  }
}

- (void)_enumerateObserversUsingBlock:(id)block
{
  blockCopy = block;
  observers = self->_observers;
  if (observers)
  {
    setRepresentation = [(NSHashTable *)observers setRepresentation];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024CC90;
    v7[3] = &unk_100517A88;
    v8 = blockCopy;
    [setRepresentation enumerateObjectsUsingBlock:v7];
  }
}

- (void)_updateDeviceInfo:(id)info
{
  infoCopy = info;
  deviceInfo = self->_deviceInfo;
  if (deviceInfo != infoCopy && ([(AFBluetoothDeviceInfo *)deviceInfo isEqual:infoCopy]& 1) == 0)
  {
    v6 = self->_deviceInfo;
    v7 = [(AFBluetoothDeviceInfo *)infoCopy copy];
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

- (void)_updateDevice:(id)device
{
  deviceCopy = device;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024D9E0;
  block[3] = &unk_10051E010;
  v6 = deviceCopy;
  v29 = v6;
  selfCopy = self;
  dispatch_async(queue, block);
  v7 = self->_device;
  v8 = v6;
  v9 = sub_10024CE5C(v8);
  v10 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    cbuuid = [(ADCoreBluetoothV2Device *)self cbuuid];
    *buf = 136315650;
    v32 = "[ADCoreBluetoothV2Device _updateDevice:]";
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = cbuuid;
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

- (void)updateDevice:(id)device
{
  deviceCopy = device;
  aadQueue = self->_aadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10024DC0C;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(aadQueue, v7);
}

- (void)getHeadphoneListeningMode:(id)mode
{
  modeCopy = mode;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024DCC0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = modeCopy;
  v7 = modeCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)getHeadphoneInEarDetectionState:(id)state
{
  stateCopy = state;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024DDB0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setHeadGestures:(BOOL)gestures completion:(id)completion
{
  completionCopy = completion;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024DEC0;
  block[3] = &unk_10051D228;
  gesturesCopy = gestures;
  block[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getHeadGestures:(id)gestures
{
  gesturesCopy = gestures;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024E368;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = gesturesCopy;
  v7 = gesturesCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setPersonalVolume:(BOOL)volume completion:(id)completion
{
  completionCopy = completion;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024E630;
  block[3] = &unk_10051D228;
  volumeCopy = volume;
  block[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getPersonalVolume:(id)volume
{
  volumeCopy = volume;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024E8E0;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = volumeCopy;
  v7 = volumeCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion
{
  completionCopy = completion;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024EBF8;
  block[3] = &unk_10051D228;
  awarenessCopy = awareness;
  block[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)getConversationAwareness:(id)awareness
{
  awarenessCopy = awareness;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024EEA8;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = awarenessCopy;
  v7 = awarenessCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  group = self->_group;
  aadQueue = self->_aadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10024F1C0;
  block[3] = &unk_10051BFA8;
  v11 = completionCopy;
  modeCopy = mode;
  block[4] = self;
  v9 = completionCopy;
  dispatch_group_notify(group, aadQueue, block);
}

- (void)fetchCBUIIDWithCompletion:(id)completion
{
  completionCopy = completion;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F35C;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_group_notify(group, aadQueue, v8);
}

- (void)getDeviceInfo:(id)info
{
  infoCopy = info;
  group = self->_group;
  aadQueue = self->_aadQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10024F478;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = infoCopy;
  v7 = infoCopy;
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    aadQueue = self->_aadQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024F6B8;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(aadQueue, v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    aadQueue = self->_aadQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10024F848;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
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

- (ADCoreBluetoothV2Device)initWithDeviceUID:(id)d dataSource:(id)source
{
  sourceCopy = source;
  uUIDString = [d UUIDString];
  v8 = [(ADCoreBluetoothV2Device *)self initWithAddress:0 cbuuid:uUIDString dataSource:sourceCopy];

  return v8;
}

- (ADCoreBluetoothV2Device)initWithAddress:(id)address cbuuid:(id)cbuuid dataSource:(id)source
{
  addressCopy = address;
  cbuuidCopy = cbuuid;
  sourceCopy = source;
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
    v30 = addressCopy;
    v31 = cbuuidCopy;
    dispatch_async(v20, block);
    objc_storeWeak(v21 + 1, sourceCopy);
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
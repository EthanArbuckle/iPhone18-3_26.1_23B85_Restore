@interface ADMobileBluetoothDeviceProxy
- (ADMobileBluetoothDeviceProxy)initWithAddress:(id)address dataSource:(id)source queue:(id)queue;
- (ADMobileBluetoothDeviceProxy)initWithDeviceUID:(id)d dataSource:(id)source queue:(id)queue;
- (NSString)description;
- (id)deviceInfo;
- (id)identifier;
- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)block;
- (void)_changeHeadphoneListeningMode:(int64_t)mode completion:(id)completion;
- (void)_enumerateObserversUsingBlock:(id)block;
- (void)_fetchDeviceInfoWithCompletion:(id)completion;
- (void)_fetchHeadphoneInEarDetectionStateWithCompletion:(id)completion;
- (void)_fetchHeadphoneListeningModeWithCompletion:(id)completion;
- (void)_getConversationAwareness:(id)awareness;
- (void)_getDeviceInfo:(id)info;
- (void)_getHeadphoneInEarDetectionState:(id)state;
- (void)_getHeadphoneListeningMode:(id)mode;
- (void)_getPersonalVolume:(id)volume;
- (void)_invalidate;
- (void)_reload:(BOOL)_reload;
- (void)_setConversationAwareness:(BOOL)awareness completion:(id)completion;
- (void)_setHeadphoneListeningMode:(int64_t)mode completion:(id)completion;
- (void)_setPersonalVolume:(BOOL)volume completion:(id)completion;
- (void)_updateDeviceInfo:(id)info;
- (void)_updateHeadphoneInEarDetectionState:(id)state;
- (void)_updateHeadphoneListeningMode:(int64_t)mode;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)getConversationAwareness:(id)awareness;
- (void)getDeviceInfo:(id)info;
- (void)getHeadGestures:(id)gestures;
- (void)getHeadphoneInEarDetectionState:(id)state;
- (void)getHeadphoneListeningMode:(id)mode;
- (void)getPersonalVolume:(id)volume;
- (void)invalidate;
- (void)prewarm;
- (void)reload;
- (void)removeObserver:(id)observer;
- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion;
- (void)setHeadGestures:(BOOL)gestures completion:(id)completion;
- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion;
- (void)setPersonalVolume:(BOOL)volume completion:(id)completion;
- (void)updateDeviceInfo:(id)info;
- (void)updateHeadphoneInEarDetectionState:(id)state;
- (void)updateHeadphoneListeningMode:(int64_t)mode;
@end

@implementation ADMobileBluetoothDeviceProxy

- (void)_enumerateObserversUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      setRepresentation = [(NSHashTable *)observers setRepresentation];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000FA854;
      v7[3] = &unk_100517A88;
      v8 = blockCopy;
      [setRepresentation enumerateObjectsUsingBlock:v7];
    }
  }
}

- (void)_invalidate
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[ADMobileBluetoothDeviceProxy _invalidate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  objc_storeWeak(&self->_dataSource, 0);
  deviceInfo = self->_deviceInfo;
  self->_deviceInfo = 0;

  headphoneInEarDetectionState = self->_headphoneInEarDetectionState;
  self->_headphoneInEarDetectionState = 0;

  self->_headphoneListeningMode = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FA998;
  v7[3] = &unk_1005179E8;
  v7[4] = self;
  [(ADMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v7];
  observers = self->_observers;
  self->_observers = 0;
}

- (void)_accessBTDeviceAndAccessoryManagerUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v18 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v19 = 2112;
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Getting BTDevice and BTAccessoryManager for %@...", buf, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (WeakRetained)
    {
      deviceUID = self->_deviceUID;
      if (deviceUID)
      {
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000FACEC;
        v15[3] = &unk_1005117C8;
        v15[4] = self;
        v16 = blockCopy;
        [WeakRetained getBTDeviceWithDeviceUID:deviceUID completion:v15];
        v8 = v16;
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      address = self->_address;
      if (address)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1000FAE3C;
        v13[3] = &unk_1005117C8;
        v13[4] = self;
        v14 = blockCopy;
        [WeakRetained getBTDeviceWithAddress:address completion:v13];
        v8 = v14;
        goto LABEL_13;
      }

      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v19 = 2112;
        selfCopy4 = self;
        v12 = "%s Device UID and address of %@ are nil.";
LABEL_19:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      }
    }

    else
    {
      v9 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
        v19 = 2112;
        selfCopy4 = self;
        v12 = "%s Data source of %@ is nil.";
        goto LABEL_19;
      }
    }

    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[ADMobileBluetoothDeviceProxy _accessBTDeviceAndAccessoryManagerUsingBlock:]";
      v19 = 2112;
      selfCopy4 = self;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed getting BTDevice and BTAccessoryManager for %@.", buf, 0x16u);
    }

    (*(blockCopy + 2))(blockCopy, 0, 0);
    goto LABEL_14;
  }

LABEL_15:
}

- (void)_changeHeadphoneListeningMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v7 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "[ADMobileBluetoothDeviceProxy _changeHeadphoneListeningMode:completion:]";
    v14 = 2048;
    modeCopy = mode;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s Changing headphone listening mode to %ld for %@", buf, 0x20u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000FB100;
  v9[3] = &unk_100511858;
  v10 = completionCopy;
  modeCopy2 = mode;
  v9[4] = self;
  v8 = completionCopy;
  [(ADMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v9];
}

- (void)_fetchHeadphoneListeningModeWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[ADMobileBluetoothDeviceProxy _fetchHeadphoneListeningModeWithCompletion:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching headphone listening mode for %@...", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB56C;
    v6[3] = &unk_1005117C8;
    v6[4] = self;
    v7 = completionCopy;
    [(ADMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v6];
  }
}

- (void)_fetchHeadphoneInEarDetectionStateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[ADMobileBluetoothDeviceProxy _fetchHeadphoneInEarDetectionStateWithCompletion:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching headphone in-ear detection state for %@...", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FB978;
    v6[3] = &unk_1005117C8;
    v6[4] = self;
    v7 = completionCopy;
    [(ADMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v6];
  }
}

- (void)_fetchDeviceInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[ADMobileBluetoothDeviceProxy _fetchDeviceInfoWithCompletion:]";
      v10 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Fetching device info for %@...", buf, 0x16u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000FBEC4;
    v6[3] = &unk_1005117C8;
    v6[4] = self;
    v7 = completionCopy;
    [(ADMobileBluetoothDeviceProxy *)self _accessBTDeviceAndAccessoryManagerUsingBlock:v6];
  }
}

- (void)_updateHeadphoneListeningMode:(int64_t)mode
{
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[ADMobileBluetoothDeviceProxy _updateHeadphoneListeningMode:]";
    v11 = 2048;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s headphoneListeningMode = %ld", buf, 0x16u);
  }

  headphoneListeningMode = self->_headphoneListeningMode;
  if (headphoneListeningMode != mode)
  {
    self->_headphoneListeningMode = mode;
    v7 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v10 = "[ADMobileBluetoothDeviceProxy _updateHeadphoneListeningMode:]";
      v11 = 2048;
      modeCopy = headphoneListeningMode;
      v13 = 2048;
      modeCopy2 = mode;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s headphoneListeningMode changed from %ld to %ld", buf, 0x20u);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000FCB0C;
    v8[3] = &unk_100517A60;
    v8[4] = self;
    v8[5] = headphoneListeningMode;
    v8[6] = mode;
    [(ADMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v8];
  }
}

- (void)_updateHeadphoneInEarDetectionState:(id)state
{
  stateCopy = state;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADMobileBluetoothDeviceProxy _updateHeadphoneInEarDetectionState:]";
    v19 = 2112;
    v20 = stateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s headphoneInEarDetectionState = %@", buf, 0x16u);
  }

  headphoneInEarDetectionState = self->_headphoneInEarDetectionState;
  if (headphoneInEarDetectionState != stateCopy && ([(AFBluetoothHeadphoneInEarDetectionState *)headphoneInEarDetectionState isEqual:stateCopy]& 1) == 0)
  {
    v7 = self->_headphoneInEarDetectionState;
    v8 = [(AFBluetoothHeadphoneInEarDetectionState *)stateCopy copy];
    v9 = self->_headphoneInEarDetectionState;
    self->_headphoneInEarDetectionState = v8;

    v10 = self->_headphoneInEarDetectionState;
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADMobileBluetoothDeviceProxy _updateHeadphoneInEarDetectionState:]";
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s headphoneInEarDetectionState changed from %@ to %@", buf, 0x20u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FCD6C;
    v14[3] = &unk_100517A38;
    v14[4] = self;
    v15 = v7;
    v16 = v10;
    v12 = v10;
    v13 = v7;
    [(ADMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v14];
  }
}

- (void)_updateDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[ADMobileBluetoothDeviceProxy _updateDeviceInfo:]";
    v19 = 2112;
    v20 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s deviceInfo = %@", buf, 0x16u);
  }

  deviceInfo = self->_deviceInfo;
  if (deviceInfo != infoCopy && ([(AFBluetoothDeviceInfo *)deviceInfo isEqual:infoCopy]& 1) == 0)
  {
    v7 = self->_deviceInfo;
    v8 = [(AFBluetoothDeviceInfo *)infoCopy copy];
    v9 = self->_deviceInfo;
    self->_deviceInfo = v8;

    v10 = self->_deviceInfo;
    v11 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v18 = "[ADMobileBluetoothDeviceProxy _updateDeviceInfo:]";
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s deviceInfo changed from %@ to %@", buf, 0x20u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000FCFCC;
    v14[3] = &unk_100517A38;
    v14[4] = self;
    v15 = v7;
    v16 = v10;
    v12 = v10;
    v13 = v7;
    [(ADMobileBluetoothDeviceProxy *)self _enumerateObserversUsingBlock:v14];
  }
}

- (void)_getPersonalVolume:(id)volume
{
  volumeCopy = volume;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FD0C8;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = volumeCopy;
  v6 = volumeCopy;
  dispatch_async(queue, v7);
}

- (void)_getConversationAwareness:(id)awareness
{
  awarenessCopy = awareness;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FD9C8;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = awarenessCopy;
  v6 = awarenessCopy;
  dispatch_async(queue, v7);
}

- (void)_setPersonalVolume:(BOOL)volume completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE000;
  block[3] = &unk_10051D228;
  volumeCopy = volume;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_setConversationAwareness:(BOOL)awareness completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FE624;
  block[3] = &unk_10051D228;
  awarenessCopy = awareness;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_setHeadphoneListeningMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FEC48;
  block[3] = &unk_10051BFA8;
  v10 = completionCopy;
  modeCopy = mode;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_getHeadphoneListeningMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy;
  if (modeCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FEFA0;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = modeCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_getHeadphoneInEarDetectionState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FF23C;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)_getDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if (self->_deviceInfo)
    {
      infoCopy[2](infoCopy);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000FF4F0;
      v6[3] = &unk_1005116C0;
      v6[4] = self;
      v7 = infoCopy;
      [(ADMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v6];
    }
  }
}

- (void)_reload:(BOOL)_reload
{
  _reloadCopy = _reload;
  if (self->_deviceInfo)
  {
    v5 = !_reload;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v6 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADMobileBluetoothDeviceProxy _reload:]";
      v16 = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Reloading device info for %@...", buf, 0x16u);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000FF804;
    v13[3] = &unk_100511608;
    v13[4] = self;
    [(ADMobileBluetoothDeviceProxy *)self _fetchDeviceInfoWithCompletion:v13];
  }

  if (self->_headphoneInEarDetectionState)
  {
    v7 = !_reloadCopy;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADMobileBluetoothDeviceProxy _reload:]";
      v16 = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s Reloading headphone in-ear detection state for %@...", buf, 0x16u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000FF8E8;
    v12[3] = &unk_100511698;
    v12[4] = self;
    [(ADMobileBluetoothDeviceProxy *)self _fetchHeadphoneInEarDetectionStateWithCompletion:v12];
  }

  if (self->_headphoneListeningMode)
  {
    v9 = !_reloadCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "[ADMobileBluetoothDeviceProxy _reload:]";
      v16 = 2112;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Reloading headphone listening mode for %@...", buf, 0x16u);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FF9CC;
    v11[3] = &unk_10051BF08;
    v11[4] = self;
    [(ADMobileBluetoothDeviceProxy *)self _fetchHeadphoneListeningModeWithCompletion:v11];
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FFB20;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FFBD0;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000FFC84;
    v7[3] = &unk_10051E010;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getHeadGestures:(id)gestures
{
  gesturesCopy = gestures;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FFD84;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = gesturesCopy;
  v6 = gesturesCopy;
  dispatch_async(queue, v7);
}

- (void)getPersonalVolume:(id)volume
{
  volumeCopy = volume;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000FFF60;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = volumeCopy;
  v6 = volumeCopy;
  dispatch_async(queue, v7);
}

- (void)getConversationAwareness:(id)awareness
{
  awarenessCopy = awareness;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100004;
  v7[3] = &unk_10051E038;
  v7[4] = self;
  v8 = awarenessCopy;
  v6 = awarenessCopy;
  dispatch_async(queue, v7);
}

- (void)setHeadGestures:(BOOL)gestures completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001000A8;
  v8[3] = &unk_10051E038;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

- (void)setPersonalVolume:(BOOL)volume completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100294;
  block[3] = &unk_10051D228;
  volumeCopy = volume;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)setConversationAwareness:(BOOL)awareness completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010034C;
  block[3] = &unk_10051D228;
  awarenessCopy = awareness;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)setHeadphoneListeningMode:(int64_t)mode completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100404;
  block[3] = &unk_10051BFA8;
  v10 = completionCopy;
  modeCopy = mode;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)getHeadphoneListeningMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy;
  if (modeCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001004BC;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = modeCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getHeadphoneInEarDetectionState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100100570;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = stateCopy;
    dispatch_async(queue, v7);
  }
}

- (void)getDeviceInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    queue = self->_queue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100100624;
    v7[3] = &unk_10051E038;
    v7[4] = self;
    v8 = infoCopy;
    dispatch_async(queue, v7);
  }
}

- (id)deviceInfo
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100100828;
  v19 = sub_100100838;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100100828;
  v13 = sub_100100838;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100840;
  block[3] = &unk_100512C28;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  v3 = v10[5];
  if (v3 && (v4 = dispatch_time(0, 4000000000), dispatch_semaphore_wait(v3, v4)))
  {
    v5 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[ADMobileBluetoothDeviceProxy deviceInfo]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s Slow path timed out after 4 seconds.", buf, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = v16[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (id)identifier
{
  uUIDString = [(NSUUID *)self->_deviceUID UUIDString];
  address = uUIDString;
  if (!uUIDString)
  {
    address = self->_address;
  }

  v5 = address;

  return address;
}

- (void)prewarm
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100B6C;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)reload
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100100BEC;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateHeadphoneListeningMode:(int64_t)mode
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100100C6C;
  v4[3] = &unk_10051D770;
  v4[4] = self;
  v4[5] = mode;
  dispatch_async(queue, v4);
}

- (void)updateHeadphoneInEarDetectionState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100D10;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

- (void)updateDeviceInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100DB4;
  v7[3] = &unk_10051E010;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

- (ADMobileBluetoothDeviceProxy)initWithDeviceUID:(id)d dataSource:(id)source queue:(id)queue
{
  dCopy = d;
  sourceCopy = source;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = ADMobileBluetoothDeviceProxy;
  v11 = [(ADMobileBluetoothDeviceProxy *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    deviceUID = v11->_deviceUID;
    v11->_deviceUID = v12;

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[ADMobileBluetoothDeviceProxy initWithDeviceUID:dataSource:queue:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v11->_queue, queue);
    queue = v11->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100100F6C;
    block[3] = &unk_10051DFE8;
    v18 = v11;
    dispatch_async(queue, block);
  }

  return v11;
}

- (ADMobileBluetoothDeviceProxy)initWithAddress:(id)address dataSource:(id)source queue:(id)queue
{
  addressCopy = address;
  sourceCopy = source;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = ADMobileBluetoothDeviceProxy;
  v11 = [(ADMobileBluetoothDeviceProxy *)&v19 init];
  if (v11)
  {
    v12 = [addressCopy copy];
    address = v11->_address;
    v11->_address = v12;

    v14 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[ADMobileBluetoothDeviceProxy initWithAddress:dataSource:queue:]";
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    objc_storeWeak(&v11->_dataSource, sourceCopy);
    objc_storeStrong(&v11->_queue, queue);
    queue = v11->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100101318;
    block[3] = &unk_10051DFE8;
    v18 = v11;
    dispatch_async(queue, block);
  }

  return v11;
}

- (void)dealloc
{
  v3 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[ADMobileBluetoothDeviceProxy dealloc]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = ADMobileBluetoothDeviceProxy;
  [(ADMobileBluetoothDeviceProxy *)&v4 dealloc];
}

- (NSString)description
{
  if (self->_deviceUID)
  {
    v3 = [NSString alloc];
    v11.receiver = self;
    v11.super_class = ADMobileBluetoothDeviceProxy;
    v4 = [(ADMobileBluetoothDeviceProxy *)&v11 description];
    v5 = [v3 initWithFormat:@"%@ {deviceUID = %@}", v4, self->_deviceUID];
LABEL_5:
    v7 = v5;

    goto LABEL_6;
  }

  if (self->_address)
  {
    v6 = [NSString alloc];
    v10.receiver = self;
    v10.super_class = ADMobileBluetoothDeviceProxy;
    v4 = [(ADMobileBluetoothDeviceProxy *)&v10 description];
    v5 = [v6 initWithFormat:@"%@ {address = %@}", v4, self->_address];
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = ADMobileBluetoothDeviceProxy;
  v7 = [(ADMobileBluetoothDeviceProxy *)&v9 description];
LABEL_6:

  return v7;
}

@end
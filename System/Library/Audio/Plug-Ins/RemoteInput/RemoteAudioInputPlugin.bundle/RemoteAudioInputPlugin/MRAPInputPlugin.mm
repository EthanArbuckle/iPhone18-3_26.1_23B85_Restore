@interface MRAPInputPlugin
- (AVAudioRemoteInputPluginDelegate)delegate;
- (MRAPInputPlugin)initWithPluginDelegate:(id)delegate;
- (NSArray)devices;
- (id)_inputDeviceWithIdentifier:(unsigned int)identifier;
- (void)_reloadInputDevices;
- (void)dealloc;
- (void)invalidate;
- (void)recordingEndpoint:(id)endpoint inputDeviceConnectedWithID:(unsigned int)d;
- (void)recordingEndpoint:(id)endpoint inputDeviceDisconnectedWithID:(unsigned int)d;
@end

@implementation MRAPInputPlugin

- (MRAPInputPlugin)initWithPluginDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MRAPInputPlugin;
  v5 = [(MRAPInputPlugin *)&v15 init];
  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Plugin loaded", v14, 2u);
    }

    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(Name, v9);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v10;

    v12 = +[MRAPRecordingEndpoint sharedEndpoint];
    [v12 addDelegate:v5];
    [(MRAPInputPlugin *)v5 _reloadInputDevices];
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[MRAPRecordingEndpoint sharedEndpoint];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = MRAPInputPlugin;
  [(MRAPInputPlugin *)&v4 dealloc];
}

- (NSArray)devices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_21F0;
  v10 = sub_2200;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2208;
  v5[3] = &unk_8320;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)invalidate
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Plugin invalidated", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2338;
  block[3] = &unk_82D0;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  v5 = +[MRAPRecordingEndpoint sharedEndpoint];
  [v5 removeDelegate:self];
}

- (void)recordingEndpoint:(id)endpoint inputDeviceConnectedWithID:(unsigned int)d
{
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = d;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Device with ID %u connected", v7, 8u);
  }

  [(MRAPInputPlugin *)self _reloadInputDevices];
}

- (void)recordingEndpoint:(id)endpoint inputDeviceDisconnectedWithID:(unsigned int)d
{
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = d;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Device with ID %u disconnected", v7, 8u);
  }

  [(MRAPInputPlugin *)self _reloadInputDevices];
}

- (void)_reloadInputDevices
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[AudioPlugin] Reloading input devices...", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  MRVirtualVoiceInputGetDevices();
}

- (id)_inputDeviceWithIdentifier:(unsigned int)identifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_21F0;
  v12 = sub_2200;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C54;
  block[3] = &unk_83B8;
  identifierCopy = identifier;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (AVAudioRemoteInputPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
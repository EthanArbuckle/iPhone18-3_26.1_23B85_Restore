@interface BTAudioAVNotificationMonitor
+ (id)sharedInstance;
- (BOOL)isBluetoothRoute;
- (BOOL)isRouteAvailable;
- (BOOL)isVolumeUpdateToAccessoryRequired:(id)a3;
- (BTAudioAVNotificationMonitor)init;
- (id)getPersonalizedVolumeDevice:(id)a3;
- (void)choosePickableRoute;
- (void)dealloc;
- (void)notifyFarFieldBluetoothRouteEnableStatus:(BOOL)a3 btAddress:()basic_string<char;
- (void)nowPlayingAppChanged:(id)a3;
- (void)processManualVolumeUpdates:(BOOL)a3;
- (void)refreshNowPlayingAppBundleID;
- (void)registerNowPlayingListener:(unsigned int)a3;
- (void)registerPersonalizedVolumeListener:(unsigned int)a3 deviceUID:(id)a4;
- (void)registerVolumeChangedListener:(unsigned int)a3;
- (void)unRegisterNowPlayingListener:(unsigned int)a3;
- (void)unRegisterPersonalizedVolumeListener:(unsigned int)a3 deviceUID:(id)a4;
- (void)unregisterRouteChangeListener;
- (void)unregisterVolumeChangedListener:(unsigned int)a3;
- (void)updateVolumeDelta:(float)a3 uid:(__CFString *)a4;
- (void)updateVolumeForCategories:(float)a3 telephoneVolume:(float)a4 voiceCommandVolume:(float)a5 uid:(__CFString *)a6 rampUpDuration:(float)a7 rampDownDuration:(float)a8;
@end

@implementation BTAudioAVNotificationMonitor

+ (id)sharedInstance
{
  if (qword_C2318 != -1)
  {
    sub_794CC();
  }

  return qword_C2310;
}

- (BTAudioAVNotificationMonitor)init
{
  v6.receiver = self;
  v6.super_class = BTAudioAVNotificationMonitor;
  v2 = [(BTAudioAVNotificationMonitor *)&v6 init];
  if (v2)
  {
    v2->_mediaAVNotificationQueue = dispatch_queue_create("com.apple.BTAudioHALPlugin.BTAudioAVNotificationMonitor.MainQueue", 0);
    v2->_manualVolumeUpdatesQueue = dispatch_queue_create("com.apple.BTAudioHALPlugin.BTAudioAVNotificationMonitor.ManaualVolumeUpdatesQueue", 0);
    v2->_systemController = [[MXSystemController alloc] initWithPID:getpid()];
    mediaAVNotificationQueue = v2->_mediaAVNotificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_17644;
    block[3] = &unk_ADD50;
    block[4] = v2;
    dispatch_async(mediaAVNotificationQueue, block);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_systemController)
  {
    CMSessionGetNotificationCenter();
    systemController = self->_systemController;
    FigNotificationCenterRemoveWeakListener();
    if (_os_feature_enabled_impl())
    {
      CMSessionGetNotificationCenter();
      v4 = self->_systemController;
      FigNotificationCenterRemoveWeakListener();
    }

    [(BTAudioAVNotificationMonitor *)self unregisterRouteChangeListener];

    self->_systemController = 0;
  }

  v5 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: dealloc", buf, 2u);
  }

  v6.receiver = self;
  v6.super_class = BTAudioAVNotificationMonitor;
  [(BTAudioAVNotificationMonitor *)&v6 dealloc];
}

- (void)registerVolumeChangedListener:(unsigned int)a3
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17AEC;
  v4[3] = &unk_AE0E0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(mediaAVNotificationQueue, v4);
}

- (void)unregisterVolumeChangedListener:(unsigned int)a3
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_17C60;
  v4[3] = &unk_AE0E0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(mediaAVNotificationQueue, v4);
}

- (void)choosePickableRoute
{
  objc_initWeak(&location, self->_systemController);
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_17DE4;
  block[3] = &unk_AE108;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(mediaAVNotificationQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)registerPersonalizedVolumeListener:(unsigned int)a3 deviceUID:(id)a4
{
  manualVolumeUpdatesQueue = self->_manualVolumeUpdatesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_18080;
  block[3] = &unk_AE130;
  block[4] = a4;
  block[5] = self;
  v6 = a3;
  dispatch_async(manualVolumeUpdatesQueue, block);
}

- (id)getPersonalizedVolumeDevice:(id)a3
{
  if (a3)
  {
    v4 = -[NSMutableDictionary objectForKey:](self->_btAudioDeviceDict, "objectForKey:", [objc_msgSend(a3 componentsSeparatedByString:{@"-", "firstObject"}]);

    return v4;
  }

  else
  {
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_ERROR))
    {
      sub_794E0();
    }

    return 0;
  }
}

- (void)unRegisterPersonalizedVolumeListener:(unsigned int)a3 deviceUID:(id)a4
{
  manualVolumeUpdatesQueue = self->_manualVolumeUpdatesQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_182C0;
  v5[3] = &unk_ADD28;
  v5[4] = a4;
  v5[5] = self;
  dispatch_async(manualVolumeUpdatesQueue, v5);
}

- (BOOL)isBluetoothRoute
{
  if (self->_currentDeviceUID)
  {
    btAudioDeviceDict = self->_btAudioDeviceDict;
    if (btAudioDeviceDict)
    {
      LOBYTE(btAudioDeviceDict) = [(NSMutableDictionary *)btAudioDeviceDict objectForKey:?]!= 0;
    }
  }

  else
  {
    LOBYTE(btAudioDeviceDict) = 0;
  }

  return btAudioDeviceDict;
}

- (void)processManualVolumeUpdates:(BOOL)a3
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_184B8;
  v4[3] = &unk_AE158;
  v4[4] = self;
  v5 = a3;
  dispatch_async(mediaAVNotificationQueue, v4);
}

- (void)registerNowPlayingListener:(unsigned int)a3
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_187B8;
  v4[3] = &unk_AE0E0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(mediaAVNotificationQueue, v4);
}

- (void)updateVolumeDelta:(float)a3 uid:(__CFString *)a4
{
  objc_initWeak(&location, self->_systemController);
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1899C;
  block[3] = &unk_AE1A8;
  objc_copyWeak(v9, &location);
  v10 = a3;
  v9[1] = a4;
  block[4] = self;
  dispatch_async(mediaAVNotificationQueue, block);
  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (void)updateVolumeForCategories:(float)a3 telephoneVolume:(float)a4 voiceCommandVolume:(float)a5 uid:(__CFString *)a6 rampUpDuration:(float)a7 rampDownDuration:(float)a8
{
  objc_initWeak(&location, self->_systemController);
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_18C38;
  v16[3] = &unk_AE1D0;
  objc_copyWeak(v17, &location);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v17[1] = a6;
  dispatch_async(mediaAVNotificationQueue, v16);
  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

- (void)unRegisterNowPlayingListener:(unsigned int)a3
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_18E98;
  v4[3] = &unk_AE0E0;
  v5 = a3;
  v4[4] = self;
  dispatch_async(mediaAVNotificationQueue, v4);
}

- (void)nowPlayingAppChanged:(id)a3
{
  v19 = 0;
  v5 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingBundleID = self->_nowPlayingBundleID;
    *buf = 138412546;
    v22 = nowPlayingBundleID;
    v23 = 2112;
    v24 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: via nowPlayingAppBundleID,  Now Playing App changed  %@ -> %@ ", buf, 0x16u);
  }

  if (a3)
  {
    v19 = a3;
  }

  else
  {
    v7 = [(BTAudioAVNotificationMonitor *)self systemController];
    [(MXSystemController *)v7 copyAttributeForKey:kMXSystemControllerProperty_NowPlayingAppDisplayID withValueOut:&v19];
    v8 = qword_C2308;
    v9 = os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT);
    a3 = v19;
    if (v9)
    {
      *buf = 138412290;
      v22 = v19;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Bundle ID for Now Playing App was NULL. Querying directly. Value received %@", buf, 0xCu);
      a3 = v19;
    }
  }

  [(BTAudioAVNotificationMonitor *)self setNowPlayingBundleID:a3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  deviceList = self->_deviceList;
  v11 = [(NSMutableSet *)deviceList countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(deviceList);
        }

        sub_5076C(qword_D8DF0, [*(*(&v15 + 1) + 8 * v14) unsignedIntValue]);
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)deviceList countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v12);
  }
}

- (void)refreshNowPlayingAppBundleID
{
  v5 = 0;
  v3 = [(BTAudioAVNotificationMonitor *)self systemController];
  [(MXSystemController *)v3 copyAttributeForKey:kMXSystemControllerProperty_NowPlayingAppDisplayID withValueOut:&v5];
  v4 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Refresh Now playing Bundle ID %@", buf, 0xCu);
  }

  if (v5)
  {
    [(BTAudioAVNotificationMonitor *)self nowPlayingAppChanged:?];
  }
}

- (BOOL)isRouteAvailable
{
  v5 = 0;
  v2 = [(BTAudioAVNotificationMonitor *)self systemController];
  [(MXSystemController *)v2 copyAttributeForKey:kMXSystemControllerProperty_ActiveAudioRoute withValueOut:&v5];
  v3 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Refresh Route Info %@", buf, 0xCu);
  }

  return v5 != 0;
}

- (void)unregisterRouteChangeListener
{
  v3 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: Unregister Route listner", v5, 2u);
  }

  CMSessionGetNotificationCenter();
  systemController = self->_systemController;
  FigNotificationCenterRemoveWeakListener();
}

- (BOOL)isVolumeUpdateToAccessoryRequired:(id)a3
{
  v5 = qword_C2308;
  if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableArray *)self->_sequenceArray containsObject:a3];
    v7 = "No";
    if (v6)
    {
      v7 = "Yes";
    }

    v12 = 138412546;
    v13 = a3;
    v14 = 2080;
    v15 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: is sequenceNumber %@ in _sequenceArray %s", &v12, 0x16u);
  }

  v8 = [(NSMutableArray *)self->_sequenceArray containsObject:a3];
  if (v8)
  {
    [(NSMutableArray *)self->_sequenceArray removeObject:a3];
    v9 = qword_C2308;
    if (os_log_type_enabled(qword_C2308, OS_LOG_TYPE_DEFAULT))
    {
      sequenceArray = self->_sequenceArray;
      v12 = 138412290;
      v13 = sequenceArray;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "BTAudioAVNotificationMonitor: sequenceArray contents %@", &v12, 0xCu);
    }
  }

  return v8 ^ 1;
}

- (void)notifyFarFieldBluetoothRouteEnableStatus:(BOOL)a3 btAddress:()basic_string<char
{
  mediaAVNotificationQueue = self->_mediaAVNotificationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_195AC;
  v5[3] = &unk_AE1F0;
  v7 = a3;
  if (*(&a4->var0.var1 + 23) < 0)
  {
    sub_9780(&__p, a4->var0.var1.var0, a4->var0.var1.var1);
  }

  else
  {
    __p = *a4;
  }

  dispatch_async(mediaAVNotificationQueue, v5);
  if (*(&__p.var0.var1 + 23) < 0)
  {
    operator delete(__p.var0.var1.var0);
  }
}

@end
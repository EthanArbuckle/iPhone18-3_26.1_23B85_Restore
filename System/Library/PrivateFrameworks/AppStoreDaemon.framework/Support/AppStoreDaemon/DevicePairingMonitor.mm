@interface DevicePairingMonitor
- (DevicePairingMonitor)init;
- (void)_deviceDidBecomeActiveNotification:(id)a3;
- (void)_deviceDidBecomeInactiveNotification:(id)a3;
- (void)_deviceDidPairNotification:(id)a3;
- (void)_deviceDidUnpairNotification:(id)a3;
- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3;
- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4;
- (void)dealloc;
- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5;
- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4;
@end

@implementation DevicePairingMonitor

- (DevicePairingMonitor)init
{
  v38.receiver = self;
  v38.super_class = DevicePairingMonitor;
  v2 = [(DevicePairingMonitor *)&v38 init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 supportsPairedDevice];

  if (v5)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v6;

    v8 = objc_alloc_init(NSRecursiveLock);
    observersLock = v3->_observersLock;
    v3->_observersLock = v8;

    v10 = [DispatchQueue alloc];
    v17 = sub_1002DC148(&v10->super.isa, @"com.apple.appstored.DevicePairingMonitor.observer", v11, v12, v13, v14, v15, v16, v33);
    observerQueue = v3->_observerQueue;
    v3->_observerQueue = v17;

    v19 = [DispatchQueue alloc];
    v26 = sub_1002DC148(&v19->super.isa, @"com.apple.appstored.DevicePairingMonitor.notification", v20, v21, v22, v23, v24, v25, v34);
    notificationQueue = v3->_notificationQueue;
    v3->_notificationQueue = v26;

    v28 = v3->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003944E0;
    block[3] = &unk_10051AF98;
    v29 = v3;
    v30 = v29;
    v36 = v29;
    if (v28)
    {
      dispatch_async(v28->_queue, block);
      v3 = v36;
    }

    else
    {
      v3 = v29;
    }
  }

  else
  {
    v31 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "(DeviceConnectionMonitor) This device does not support pairing to other devices.", buf, 2u);
    }

    v30 = 0;
  }

  return v30;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
  [v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];
  [v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];
  [v3 removeObserver:self name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v4.receiver = self;
  v4.super_class = DevicePairingMonitor;
  [(DevicePairingMonitor *)&v4 dealloc];
}

- (void)_deviceDidBecomeActiveNotification:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100394C68;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  if (notificationQueue)
  {
    dispatch_async(notificationQueue->_queue, v7);
  }
}

- (void)_deviceDidBecomeInactiveNotification:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100394E00;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  if (notificationQueue)
  {
    dispatch_async(notificationQueue->_queue, v7);
  }
}

- (void)_deviceDidPairNotification:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100394F98;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  if (notificationQueue)
  {
    dispatch_async(notificationQueue->_queue, v7);
  }
}

- (void)_deviceDidUnpairNotification:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100395130;
  v7[3] = &unk_10051B570;
  v8 = v4;
  v9 = self;
  v6 = v4;
  if (notificationQueue)
  {
    dispatch_async(notificationQueue->_queue, v7);
  }
}

- (void)applicationDatabaseResyncedForDeviceWithPairingID:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100395558;
  v5[3] = &unk_100526348;
  v6 = a3;
  v4 = v6;
  sub_100394A68(self, "applicationDatabaseResyncedForDeviceWithPairingID:", v5);
}

- (void)applicationsInstalled:(id)a3 onDeviceWithPairingID:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10039562C;
  v8[3] = &unk_100526320;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  sub_100394A68(self, "applicationsInstalled:onDeviceWithPairingID:", v8);
}

- (void)applicationsUpdated:(id)a3 onDeviceWithPairingID:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10039570C;
  v8[3] = &unk_100526320;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  sub_100394A68(self, "applicationsUpdated:onDeviceWithPairingID:", v8);
}

- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003957D8;
  v9[3] = &unk_100526370;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v8 = v10;
  sub_100394A68(self, "updateInstallProgressForApplication:progress:installPhase:", v9);
}

- (void)updateInstallStateForApplication:(id)a3 installState:(int64_t)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100395898;
  v7[3] = &unk_100526398;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  sub_100394A68(self, "updateInstallStateForApplication:installState:", v7);
}

@end
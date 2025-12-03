@interface ATSACCAPlugin
+ (id)sharedPlugin;
- (ATSACCAPlugin)init;
- (void)addClockWithIdentifier:(unint64_t)identifier;
- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host;
- (void)interruptedConnectionForClockManager:(id)manager;
- (void)removeClockWithIdentifier:(unint64_t)identifier force:(BOOL)force;
- (void)setupIOKitMatching;
@end

@implementation ATSACCAPlugin

+ (id)sharedPlugin
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1134;
  block[3] = &unk_C360;
  block[4] = self;
  if (qword_10FF8 != -1)
  {
    dispatch_once(&qword_10FF8, block);
  }

  v2 = _sharedPlugin;

  return v2;
}

- (ATSACCAPlugin)init
{
  v13.receiver = self;
  v13.super_class = ATSACCAPlugin;
  v2 = [(ATSACCAPlugin *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_interruptionLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    clockDevices = v3->_clockDevices;
    v3->_clockDevices = v4;

    v6 = dispatch_queue_create("com.apple.audio.AppleTimeSyncAudioClock.create", 0);
    clockAdminQueue = v3->_clockAdminQueue;
    v3->_clockAdminQueue = v6;

    v8 = dispatch_queue_create("com.apple.audio.AppleTimeSyncAudioClock.matching", 0);
    callbackQueue = v3->_callbackQueue;
    v3->_callbackQueue = v8;

    v10 = dispatch_queue_create("com.apple.audio.AppleTimeSyncAudioClock.processing", 0);
    processQueue = v3->_processQueue;
    v3->_processQueue = v10;
  }

  return v3;
}

- (void)halInitializeWithPluginHost:(AudioServerPlugInHostInterface *)host
{
  v5.receiver = self;
  v5.super_class = ATSACCAPlugin;
  [(ATSACCAPlugin *)&v5 halInitializeWithPluginHost:host];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_12F0;
  v4[3] = &unk_C388;
  v4[4] = self;
  [TSClockManager notifyWhenClockManagerIsAvailable:v4];
}

- (void)setupIOKitMatching
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ATSAC setupIOKitMatching", buf, 2u);
  }

  os_unfair_lock_lock(&self->_interruptionLock);
  v3 = [[IOKNotificationPort alloc] initOnDispatchQueue:self->_callbackQueue];
  notificationPort = self->_notificationPort;
  self->_notificationPort = v3;

  objc_initWeak(buf, self);
  v5 = [IOKService serviceMatching:@"IOTimeSyncService"];
  v6 = IOKMatchedNotification;
  v7 = self->_notificationPort;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1648;
  v19[3] = &unk_C3D8;
  v19[4] = self;
  objc_copyWeak(&v20, buf);
  v8 = [IOKService addNotificationOfType:v6 forMatching:v5 usingNotificationPort:v7 error:0 withEnumerationBlock:v19];
  arrivalNotification = self->_arrivalNotification;
  self->_arrivalNotification = v8;

  v10 = [IOKService serviceMatching:@"IOTimeSyncService"];
  v11 = self->_notificationPort;
  v12 = IOKTerminatedNotification;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_17C0;
  v17[3] = &unk_C3D8;
  v17[4] = self;
  objc_copyWeak(&v18, buf);
  v13 = [IOKService addNotificationOfType:v12 forMatching:v10 usingNotificationPort:v11 error:0 withEnumerationBlock:v17];
  depatureNotification = self->_depatureNotification;
  self->_depatureNotification = v13;

  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_193C;
  block[3] = &unk_C388;
  block[4] = self;
  dispatch_async(callbackQueue, block);
  os_unfair_lock_unlock(&self->_interruptionLock);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)interruptedConnectionForClockManager:(id)manager
{
  v4 = dispatch_get_global_queue(33, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1A30;
  block[3] = &unk_C388;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)addClockWithIdentifier:(unint64_t)identifier
{
  clockAdminQueue = self->_clockAdminQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1F40;
  v4[3] = &unk_C428;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(clockAdminQueue, v4);
}

- (void)removeClockWithIdentifier:(unint64_t)identifier force:(BOOL)force
{
  clockAdminQueue = self->_clockAdminQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2190;
  block[3] = &unk_C450;
  block[4] = self;
  block[5] = identifier;
  forceCopy = force;
  dispatch_sync(clockAdminQueue, block);
}

@end
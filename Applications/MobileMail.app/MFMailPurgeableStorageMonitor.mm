@interface MFMailPurgeableStorageMonitor
- (MFMailPurgeableStorageMonitor)initWithPurgeableStorage:(id)storage;
- (void)_schedulePushPurgeableSpaceUpdate;
- (void)dealloc;
- (void)pushPurgeableStateUpdate;
@end

@implementation MFMailPurgeableStorageMonitor

- (void)dealloc
{
  xpc_activity_unregister("com.apple.MobileMail.pushPurgeableSpaceUpdate");
  v3.receiver = self;
  v3.super_class = MFMailPurgeableStorageMonitor;
  [(MFMailPurgeableStorageMonitor *)&v3 dealloc];
}

- (MFMailPurgeableStorageMonitor)initWithPurgeableStorage:(id)storage
{
  storageCopy = storage;
  v9.receiver = self;
  v9.super_class = MFMailPurgeableStorageMonitor;
  v6 = [(MFMailPurgeableStorageMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_serviceName = @"com.apple.mobilemail.CacheDelete";
    objc_storeStrong(&v6->_purgeableStorage, storage);
    [(MFMailPurgeableStorageMonitor *)v7 _schedulePushPurgeableSpaceUpdate];
  }

  return v7;
}

- (void)_schedulePushPurgeableSpaceUpdate
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001E5664;
  v3[3] = &unk_100654908;
  v3[4] = self;
  v2 = objc_retainBlock(v3);
  ef_xpc_activity_register();
}

- (void)pushPurgeableStateUpdate
{
  if (![(MFMailPurgeableStorageMonitor *)self serviceName])
  {
    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MFMailPurgeableStorageMonitor.m" lineNumber:80 description:@"Should have a service name"];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v17 = sub_1001E59B8;
  v18 = &unk_10064F8D8;
  selfCopy = self;
  v20 = &v21;
  v4 = v16;
  v5 = mach_absolute_time();
  v17(v4);
  v6 = mach_absolute_time();
  if (qword_1006DD580 != -1)
  {
    sub_10048BB94();
  }

  v8 = dword_1006DD578;
  v7 = *algn_1006DD57C;

  v9 = [NSByteCountFormatter stringFromByteCount:v22[3] countStyle:0];
  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(MFMailPurgeableStorageMonitor *)self serviceName];
    *buf = 138412802;
    v28 = serviceName;
    v29 = 2112;
    v30 = v9;
    v31 = 2048;
    v32 = ((v6 - v5) * v8 / v7) / 1000000000.0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#CacheDelete %@ pushed non-purgeable amount change: %@ – (Duration: %.2fs)", buf, 0x20u);
  }

  v25[0] = @"CACHE_DELETE_ID";
  v26[0] = [(MFMailPurgeableStorageMonitor *)self serviceName];
  v25[1] = @"CACHE_DELETE_VOLUME";
  v12 = +[NSFileManager mf_defaultVolumeMountPoint];
  v26[1] = v12;
  v25[2] = @"CACHE_DELETE_NONPURGEABLE_AMOUNT";
  v13 = [NSNumber numberWithUnsignedLongLong:v22[3]];
  v25[3] = @"CACHE_DELETE_URGENCY";
  v26[2] = v13;
  v26[3] = &off_100674378;
  v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];

  CacheDeleteUpdatePurgeable();
  _Block_object_dispose(&v21, 8);
}

@end
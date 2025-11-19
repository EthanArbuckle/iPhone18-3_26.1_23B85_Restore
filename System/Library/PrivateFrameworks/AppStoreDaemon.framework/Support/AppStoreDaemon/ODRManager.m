@interface ODRManager
+ (void)initialize;
- (ODRManager)init;
- (id)allPurgeablesForVolume:(id)a3 reason:(id)a4 client:(id)a5;
- (int64_t)purgeForVolume:(id)a3 urgency:(int64_t)a4 desiredPurge:(id)a5 client:(id)a6;
- (int64_t)purgeableForVolume:(id)a3 urgency:(int64_t)a4 client:(id)a5;
- (void)cancelPurge;
@end

@implementation ODRManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:&off_100549778];

    v3 = sub_100220330();
  }
}

- (ODRManager)init
{
  v2 = self;
  if (qword_1005AA828)
  {
    v3 = qword_1005AA828;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = ODRManager;
    v4 = [(ODRManager *)&v16 init];
    if (v4)
    {
      v5 = objc_alloc_init(NSRecursiveLock);
      resourcesLock = v4->_resourcesLock;
      v4->_resourcesLock = v5;

      v7 = dispatch_source_create(&_dispatch_source_type_vfs, 0, 0x204uLL, 0);
      lowDisk = v4->_lowDisk;
      v4->_lowDisk = v7;

      v9 = v4->_lowDisk;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100221704;
      handler[3] = &unk_10051AF98;
      handler[4] = v4;
      dispatch_source_set_event_handler(v9, handler);
      v10 = objc_opt_new();
      applicationMapping = v4->_applicationMapping;
      v4->_applicationMapping = v10;

      v12 = objc_opt_new();
      applicationMappingLock = v4->_applicationMappingLock;
      v4->_applicationMappingLock = v12;
    }

    v3 = v4;
    v2 = v3;
  }

  v14 = v3;

  return v14;
}

- (id)allPurgeablesForVolume:(id)a3 reason:(id)a4 client:(id)a5
{
  v5 = sub_1001C13C8();
  sub_1001C14D8(v5);

  v6 = sub_100220330();
  v7 = sub_100221A8C(v6, 1);

  v8 = sub_100220330();
  v9 = sub_100221A8C(v8, 2);

  v10 = sub_100220330();
  v11 = sub_100221A8C(v10, 3);

  v12 = sub_100220330();
  v13 = sub_100221A8C(v12, 4);

  v20[0] = &off_1005472F0;
  v14 = [NSNumber numberWithLongLong:v7];
  v21[0] = v14;
  v20[1] = &off_100547308;
  v15 = [NSNumber numberWithLongLong:v9];
  v21[1] = v15;
  v20[2] = &off_100547320;
  v16 = [NSNumber numberWithLongLong:v11];
  v21[2] = v16;
  v20[3] = &off_100547338;
  v17 = [NSNumber numberWithLongLong:v13];
  v21[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  return v18;
}

- (int64_t)purgeableForVolume:(id)a3 urgency:(int64_t)a4 client:(id)a5
{
  v5 = a4;
  v6 = sub_1001C13C8();
  sub_1001C14D8(v6);

  v7 = sub_100220330();
  v8 = sub_100221A8C(v7, v5);

  return v8;
}

- (int64_t)purgeForVolume:(id)a3 urgency:(int64_t)a4 desiredPurge:(id)a5 client:(id)a6
{
  v6 = a4;
  v7 = a5;
  v8 = sub_1001C13C8();
  sub_1001C14D8(v8);

  v9 = [v7 unsignedLongLongValue];
  v10 = sub_100220330();
  v11 = sub_100221C68(v10, v9, v6);

  return v11;
}

- (void)cancelPurge
{
  v3 = sub_100220330();
  if (v3)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PURGING : Purging cancelled.", buf, 2u);
    }
  }
}

@end
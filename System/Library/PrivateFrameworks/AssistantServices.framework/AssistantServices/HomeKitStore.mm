@interface HomeKitStore
+ (id)sharedInstance;
+ (void)refreshCache;
- (HomeKitStore)init;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation HomeKitStore

- (void)homeManagerDidUpdateHomes:(id)homes
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003F98;
  block[3] = &unk_1000146A8;
  block[4] = self;
  dispatch_async(qword_10001A310, block);
}

- (HomeKitStore)init
{
  v8.receiver = self;
  v8.super_class = HomeKitStore;
  v2 = [(HomeKitStore *)&v8 init];
  if (v2)
  {
    v3 = +[HMMutableHomeManagerConfiguration defaultPrivateConfiguration];
    [v3 setOptions:34397];
    [v3 setCachePolicy:3];
    v4 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v10 = "[HomeKitStore init]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Started initialization of homemanager with configuration %@", buf, 0x16u);
    }

    mach_absolute_time();
    v2->fetchStartTime = AFMachAbsoluteTimeGetMilliseconds();
    v5 = [[HMHomeManager alloc] initWithConfiguration:v3];
    homeManager = v2->homeManager;
    v2->homeManager = v5;

    [(HMHomeManager *)v2->homeManager setDelegate:v2];
  }

  return v2;
}

+ (void)refreshCache
{
  v2 = +[AFPreferences sharedPreferences];
  isSyncDisabledForFullUoDDevices = [v2 isSyncDisabledForFullUoDDevices];

  if (isSyncDisabledForFullUoDDevices)
  {
    v4 = +[HomeKitStore sharedInstance];
  }
}

+ (id)sharedInstance
{
  if (qword_10001A318 != -1)
  {
    dispatch_once(&qword_10001A318, &stru_100014478);
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100004348;
  v10 = sub_100004358;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004360;
  v5[3] = &unk_1000144A0;
  v5[4] = &v6;
  v5[5] = self;
  dispatch_sync(qword_10001A310, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end
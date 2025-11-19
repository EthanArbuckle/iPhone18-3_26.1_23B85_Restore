@interface BuddyAppleIDConfigurationManager
+ (id)sharedManager;
- (BuddyAppleIDConfigurationManager)init;
- (id)URLConfiguration;
- (void)getURLConfigurationWithHandler:(id)a3;
@end

@implementation BuddyAppleIDConfigurationManager

+ (id)sharedManager
{
  v5 = &unk_1003A71A0;
  location = 0;
  objc_storeStrong(&location, &stru_10032D3E0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7198;

  return v2;
}

- (BuddyAppleIDConfigurationManager)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyAppleIDConfigurationManager;
  location = [(BuddyAppleIDConfigurationManager *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = dispatch_queue_create("com.apple.purplebuddy.urlconfigurationqueue", 0);
    v3 = *(location + 2);
    *(location + 2) = v2;

    *(location + 24) = 1;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (void)getURLConfigurationWithHandler:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(21, 0);
  block = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10012CF68;
  v8 = &unk_10032AFD0;
  v9 = v12;
  v10 = location[0];
  dispatch_async(v3, &block);

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)URLConfiguration
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = sub_10012D1FC;
  v16 = sub_10012D240;
  v17[0] = 0;
  urlConfigurationQueue = self->_urlConfigurationQueue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10012D24C;
  v9 = &unk_10032CFC0;
  v10[0] = self;
  v10[1] = &v11;
  dispatch_sync(urlConfigurationQueue, &v5);
  v3 = v12[5];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);

  return v3;
}

@end
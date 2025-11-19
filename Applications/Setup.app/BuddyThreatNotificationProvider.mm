@interface BuddyThreatNotificationProvider
+ (BuddyThreatNotificationProvider)sharedInstance;
- (BOOL)isRequired;
- (BuddyThreatNotificationProvider)init;
- (id)threatNotificationFlowWithCompletion:(id)a3;
- (void)tnuiOnBoardingViewControllerDidComplete:(id)a3;
@end

@implementation BuddyThreatNotificationProvider

+ (BuddyThreatNotificationProvider)sharedInstance
{
  v5 = &unk_1003A7460;
  location = 0;
  objc_storeStrong(&location, &stru_10032F4B0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A7458;

  return v2;
}

- (BuddyThreatNotificationProvider)init
{
  v7 = a2;
  location = 0;
  v6.receiver = self;
  v6.super_class = BuddyThreatNotificationProvider;
  location = [(BuddyThreatNotificationProvider *)&v6 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[NSMapTable weakToStrongObjectsMapTable];
    v3 = *(location + 1);
    *(location + 1) = v2;
  }

  v4 = location;
  objc_storeStrong(&location, 0);
  return v4;
}

- (BOOL)isRequired
{
  v16 = self;
  v15 = a2;
  if (+[NSThread isMainThread])
  {
    v17 = +[TNUIOnBoardingFlow isLDMEnabledOnBoardingViewControllerRequired]& 1;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x20000000;
    v13 = 32;
    v14 = 0;
    v2 = &_dispatch_main_q;
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = sub_100222604;
    v8 = &unk_10032B070;
    v9 = &v10;
    dispatch_sync(v2, &v4);

    v17 = v11[3] & 1;
    _Block_object_dispose(&v10, 8);
  }

  return v17 & 1;
}

- (id)threatNotificationFlowWithCompletion:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = +[TNUIOnBoardingFlow makeLDMEnabledOnBoardingViewController];
  v3 = [(BuddyThreatNotificationProvider *)v9 completionHandlers];
  v4 = objc_retainBlock(location[0]);
  [(NSMapTable *)v3 setObject:v4 forKey:v7];

  [v7 setOnBoardingDelegate:v9];
  v5 = v7;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)tnuiOnBoardingViewControllerDidComplete:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyThreatNotificationProvider *)v7 completionHandlers];
  v5 = [(NSMapTable *)v3 objectForKey:location[0]];

  if (v5)
  {
    v5[2]();
    v4 = [(BuddyThreatNotificationProvider *)v7 completionHandlers];
    [(NSMapTable *)v4 removeObjectForKey:location[0]];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end
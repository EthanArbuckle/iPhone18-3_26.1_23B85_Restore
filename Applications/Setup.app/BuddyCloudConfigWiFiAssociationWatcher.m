@interface BuddyCloudConfigWiFiAssociationWatcher
- (BuddyCloudConfigWiFiAssociationWatcher)init;
- (unint64_t)countOfAssociationAttempts;
- (void)_associationDidFinish:(id)a3;
- (void)_associationDidStart:(id)a3;
- (void)dealloc;
- (void)setCountOfAssociationAttempts:(unint64_t)a3;
- (void)waitForCurrentAssociationToFinishWithCompletionHandler:(id)a3;
@end

@implementation BuddyCloudConfigWiFiAssociationWatcher

- (BuddyCloudConfigWiFiAssociationWatcher)init
{
  v11 = a2;
  location = 0;
  v10.receiver = self;
  v10.super_class = BuddyCloudConfigWiFiAssociationWatcher;
  location = [(BuddyCloudConfigWiFiAssociationWatcher *)&v10 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v2 = +[NSNotificationCenter defaultCenter];
    v3 = location;
    v4 = sub_1001D6CF0();
    [(NSNotificationCenter *)v2 addObserver:v3 selector:"_associationDidStart:" name:v4 object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v6 = location;
    v7 = sub_1001D6DF8();
    [(NSNotificationCenter *)v5 addObserver:v6 selector:"_associationDidFinish:" name:v7 object:0];
  }

  v8 = location;
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)dealloc
{
  v8 = self;
  v7 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = sub_1001D6CF0();
  [(NSNotificationCenter *)v2 removeObserver:v8 name:v3 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = sub_1001D6DF8();
  [(NSNotificationCenter *)v4 removeObserver:v8 name:v5 object:0];

  v6.receiver = v8;
  v6.super_class = BuddyCloudConfigWiFiAssociationWatcher;
  [(BuddyCloudConfigWiFiAssociationWatcher *)&v6 dealloc];
}

- (void)waitForCurrentAssociationToFinishWithCompletionHandler:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  v4 = [(BuddyCloudConfigWiFiAssociationWatcher *)v8 currentAssociationFinishHandlers];
  if (v4)
  {
    v5 = [(BuddyCloudConfigWiFiAssociationWatcher *)v8 currentAssociationFinishHandlers];
    v6 = objc_retainBlock(location[0]);
    [(NSMutableArray *)v5 addObject:v6];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)setCountOfAssociationAttempts:(unint64_t)a3
{
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  self->_countOfAssociationAttempts = a3;
}

- (unint64_t)countOfAssociationAttempts
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  return self->_countOfAssociationAttempts;
}

- (void)_associationDidStart:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D729C;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_associationDidFinish:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D73F4;
  v8 = &unk_10032B0D0;
  v9 = v11;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
@interface BuddyCloudConfigWiFiAssociationWatcher
- (BuddyCloudConfigWiFiAssociationWatcher)init;
- (unint64_t)countOfAssociationAttempts;
- (void)_associationDidFinish:(id)finish;
- (void)_associationDidStart:(id)start;
- (void)dealloc;
- (void)setCountOfAssociationAttempts:(unint64_t)attempts;
- (void)waitForCurrentAssociationToFinishWithCompletionHandler:(id)handler;
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
  selfCopy = self;
  v7 = a2;
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = sub_1001D6CF0();
  [(NSNotificationCenter *)v2 removeObserver:selfCopy name:v3 object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = sub_1001D6DF8();
  [(NSNotificationCenter *)v4 removeObserver:selfCopy name:v5 object:0];

  v6.receiver = selfCopy;
  v6.super_class = BuddyCloudConfigWiFiAssociationWatcher;
  [(BuddyCloudConfigWiFiAssociationWatcher *)&v6 dealloc];
}

- (void)waitForCurrentAssociationToFinishWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  currentAssociationFinishHandlers = [(BuddyCloudConfigWiFiAssociationWatcher *)selfCopy currentAssociationFinishHandlers];
  if (currentAssociationFinishHandlers)
  {
    currentAssociationFinishHandlers2 = [(BuddyCloudConfigWiFiAssociationWatcher *)selfCopy currentAssociationFinishHandlers];
    v6 = objc_retainBlock(location[0]);
    [(NSMutableArray *)currentAssociationFinishHandlers2 addObject:v6];
  }

  else
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)setCountOfAssociationAttempts:(unint64_t)attempts
{
  v3 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v3);

  self->_countOfAssociationAttempts = attempts;
}

- (unint64_t)countOfAssociationAttempts
{
  v2 = &_dispatch_main_q;
  dispatch_assert_queue_V2(v2);

  return self->_countOfAssociationAttempts;
}

- (void)_associationDidStart:(id)start
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, start);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D729C;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_associationDidFinish:(id)finish
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, finish);
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_1001D73F4;
  v8 = &unk_10032B0D0;
  v9 = selfCopy;
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end
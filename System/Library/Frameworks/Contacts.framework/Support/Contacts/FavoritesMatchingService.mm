@interface FavoritesMatchingService
+ (id)sharedInstance;
- (FavoritesMatchingService)init;
- (FavoritesMatchingService)initWithMockFavorites:(id)favorites schedulerProvider:(id)provider;
- (id)favorites;
- (id)interestedNotifications;
- (void)checkFavoritesMatchingVersionChanged;
- (void)coalesceEventWithOptions:(unint64_t)options;
- (void)handleNotificationName:(id)name;
@end

@implementation FavoritesMatchingService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ED5C;
  block[3] = &unk_100045580;
  block[4] = self;
  if (qword_10004E180 != -1)
  {
    dispatch_once(&qword_10004E180, block);
  }

  v2 = qword_10004E188;

  return v2;
}

- (FavoritesMatchingService)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(FavoritesMatchingService *)self initWithMockFavorites:0 schedulerProvider:v3];

  return v4;
}

- (FavoritesMatchingService)initWithMockFavorites:(id)favorites schedulerProvider:(id)provider
{
  favoritesCopy = favorites;
  providerCopy = provider;
  v26.receiver = self;
  v26.super_class = FavoritesMatchingService;
  v9 = [(FavoritesMatchingService *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mockFavorites, favorites);
    v11 = [CNQualityOfServiceSchedulerDecorator alloc];
    v12 = [providerCopy newSerialSchedulerWithName:@"com.apple.contactsd.FavoritesService"];
    v13 = [v11 initWithScheduler:v12 qualityOfService:2];
    workQueue = v10->_workQueue;
    v10->_workQueue = v13;

    objc_initWeak(&location, v10);
    v15 = [CNCoalescingTimer alloc];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_10000EF90;
    v23 = &unk_100045A58;
    objc_copyWeak(&v24, &location);
    v16 = [v15 initWithDelay:0 options:&v20 block:providerCopy schedulerProvider:v10->_workQueue downstreamScheduler:5.0];
    coalescingTimer = v10->_coalescingTimer;
    v10->_coalescingTimer = v16;

    [(FavoritesMatchingService *)v10 checkFavoritesMatchingVersionChanged:v20];
    v18 = v10;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (id)interestedNotifications
{
  if (qword_10004E190 != -1)
  {
    sub_10002CE68();
  }

  v3 = qword_10004E198;

  return v3;
}

- (void)handleNotificationName:(id)name
{
  nameCopy = name;
  v4 = ([nameCopy isEqualToString:@"__ABDataBaseChangedByOtherProcessNotification"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.datamigrator.migrationDidFinish");
  if ([nameCopy isEqualToString:@"com.apple.contacts.clientDidDisplayFavorites"])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    [(FavoritesMatchingService *)self coalesceEventWithOptions:?];
  }
}

- (void)coalesceEventWithOptions:(unint64_t)options
{
  workQueue = [(FavoritesMatchingService *)self workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F254;
  v6[3] = &unk_100045AA0;
  v6[4] = self;
  v6[5] = options;
  [workQueue performBlock:v6];
}

- (id)favorites
{
  v2 = self->_mockFavorites;
  if (!v2)
  {
    v3 = +[CNEnvironment currentEnvironment];
    contactStore = [v3 contactStore];

    v5 = [[CNFavoritesMatchingSyncStore alloc] initWithContactStore:contactStore];
    v2 = [[CNFavorites alloc] initWithContactStore:contactStore favoritesStore:v5];
  }

  return v2;
}

- (void)checkFavoritesMatchingVersionChanged
{
  v6 = +[CNEnvironment currentEnvironment];
  userDefaults = [v6 userDefaults];
  v4 = [userDefaults integerForKey:@"CNFavoritesMatchingVersion"];

  if (v4 <= 0)
  {
    userDefaults2 = [v6 userDefaults];
    [userDefaults2 setInteger:1 forKey:@"CNFavoritesMatchingVersion"];

    [(FavoritesMatchingService *)self coalesceEventWithOptions:1];
  }
}

@end
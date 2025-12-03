@interface AccountEventCoordinator
- (AccountEventCoordinator)init;
- (id)description;
- (void)_handleAppleIDDidChangeNotification:(id)notification;
@end

@implementation AccountEventCoordinator

- (AccountEventCoordinator)init
{
  v14.receiver = self;
  v14.super_class = AccountEventCoordinator;
  v2 = [(AccountEventCoordinator *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_1001E578C(v2);
    v5 = objc_opt_new();
    accountsForWeekCache = v3->_accountsForWeekCache;
    v3->_accountsForWeekCache = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.appstored.AccountEventCoordinator.dispatch", v7);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"_handleAppleIDDidChangeNotification:" name:@"com.apple.appstored.ASDItunesAccountDidChangeNotification" object:0];

    v11 = +[NSDate date];
    [v11 timeIntervalSinceReferenceDate];
    v3->_lastCacheReset = v12;
  }

  return v3;
}

- (void)_handleAppleIDDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E6930;
  block[3] = &unk_10051AF98;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)description
{
  v2 = sub_1001E66CC(self);
  v3 = [v2 componentsJoinedByString:{@", \n"}];
  v4 = [NSString stringWithFormat:@"{ events : [\n %@ \n] }", v3];

  return v4;
}

@end
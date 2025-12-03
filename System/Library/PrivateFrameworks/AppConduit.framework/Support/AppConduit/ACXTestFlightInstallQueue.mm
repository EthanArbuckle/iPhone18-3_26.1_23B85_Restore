@interface ACXTestFlightInstallQueue
+ (id)sharedInstaller;
- (ACXTestFlightInstallQueue)init;
- (void)installWatchApp:(id)app targetDevice:(id)device;
- (void)removePendingInstallForApp:(id)app;
- (void)removePendingInstallForAppWithBundleID:(id)d;
@end

@implementation ACXTestFlightInstallQueue

+ (id)sharedInstaller
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000102FC;
  block[3] = &unk_10008CBE8;
  block[4] = self;
  if (qword_1000A4788 != -1)
  {
    dispatch_once(&qword_1000A4788, block);
  }

  v2 = qword_1000A4780;

  return v2;
}

- (ACXTestFlightInstallQueue)init
{
  v10.receiver = self;
  v10.super_class = ACXTestFlightInstallQueue;
  v2 = [(ACXTestFlightInstallQueue *)&v10 init];
  if (v2)
  {
    v3 = [[ACXTimedIdentifierList alloc] initWithTimeout:30.0];
    list = v2->_list;
    v2->_list = v3;

    list = [(ACXTestFlightInstallQueue *)v2 list];
    [list setTimeoutHandler:&stru_10008CFC8];

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.appconduitd.TestFlightInstallQueue.internal", v6);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v7;
  }

  return v2;
}

- (void)installWatchApp:(id)app targetDevice:(id)device
{
  appCopy = app;
  deviceCopy = device;
  internalQueue = [(ACXTestFlightInstallQueue *)self internalQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000105FC;
  v11[3] = &unk_10008CA48;
  v12 = appCopy;
  v13 = deviceCopy;
  selfCopy = self;
  v9 = deviceCopy;
  v10 = appCopy;
  sub_100005828(internalQueue, v11);
}

- (void)removePendingInstallForApp:(id)app
{
  bundleIdentifier = [app bundleIdentifier];
  [(ACXTestFlightInstallQueue *)self removePendingInstallForAppWithBundleID:bundleIdentifier];
}

- (void)removePendingInstallForAppWithBundleID:(id)d
{
  dCopy = d;
  internalQueue = [(ACXTestFlightInstallQueue *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010A88;
  v7[3] = &unk_10008CC38;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  sub_100005828(internalQueue, v7);
}

@end
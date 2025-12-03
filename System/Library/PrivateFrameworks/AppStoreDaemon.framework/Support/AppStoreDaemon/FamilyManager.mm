@interface FamilyManager
- (FamilyManager)init;
- (void)_handleAccountChangedNotification;
@end

@implementation FamilyManager

- (FamilyManager)init
{
  v15.receiver = self;
  v15.super_class = FamilyManager;
  v2 = [(FamilyManager *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = dispatch_queue_create("com.apple.appstored.FamilyManager.dispatch", &_dispatch_queue_attr_concurrent);
    dispatch = v2->_dispatch;
    v2->_dispatch = v5;

    v7 = dispatch_queue_create("com.apple.appstored.FamilyManager.notifications", &_dispatch_queue_attr_concurrent);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = +[ActiveAccountObserver sharedInstance];
    [v9 addObserver:v2 selector:"_handleAccountChangedNotification" name:@"AccountStorePrimaryAccountDidChange" object:v10];

    v11 = +[ActiveAccountObserver activeAccount];
    ams_DSID = [v11 ams_DSID];
    currentAccountDSID = v2->_currentAccountDSID;
    v2->_currentAccountDSID = ams_DSID;
  }

  return v2;
}

- (void)_handleAccountChangedNotification
{
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100406740;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(notificationQueue, block);
}

@end
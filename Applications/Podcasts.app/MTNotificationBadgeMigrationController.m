@interface MTNotificationBadgeMigrationController
+ (BOOL)hasPerformedLegacyBadgeMigration;
+ (id)sharedInstance;
+ (void)commitHasPerformedLegacyBadgeMigration;
- (id)_initShared;
- (void)dealloc;
- (void)performMigration;
- (void)performMigrationIfNecessary;
- (void)stopObservingApplicationState;
@end

@implementation MTNotificationBadgeMigrationController

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EDB28;
  block[3] = &unk_1004D86F8;
  block[4] = a1;
  if (qword_100583C80 != -1)
  {
    dispatch_once(&qword_100583C80, block);
  }

  v2 = qword_100583C88;

  return v2;
}

- (id)_initShared
{
  v16.receiver = self;
  v16.super_class = MTNotificationBadgeMigrationController;
  v2 = [(MTNotificationBadgeMigrationController *)&v16 init];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = dispatch_queue_create(0, 0);
  queue = v2->_queue;
  v2->_queue = v3;

  objc_initWeak(&location, v2);
  v5 = [objc_opt_class() hasPerformedLegacyBadgeMigration];
  v6 = 2;
  if (!v5)
  {
    v6 = 0;
  }

  v2->_state = v6;
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[NSOperationQueue mainQueue];
  v9 = MTApplicationDidBecomeActiveNotification;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000EDD28;
  v13[3] = &unk_1004D93E8;
  objc_copyWeak(&v14, &location);
  v2->_appActivateObserver = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:v13];

  state = v2->_state;
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  if (state == 2)
  {
    v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = v2;
  }

  return v11;
}

- (void)dealloc
{
  [(MTNotificationBadgeMigrationController *)self stopObservingApplicationState];
  v3.receiver = self;
  v3.super_class = MTNotificationBadgeMigrationController;
  [(MTNotificationBadgeMigrationController *)&v3 dealloc];
}

+ (BOOL)hasPerformedLegacyBadgeMigration
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = [a1 hasPerformedLegacyBadgeMigrationKey];
  v5 = [v3 BOOLForKey:v4];

  return v5;
}

+ (void)commitHasPerformedLegacyBadgeMigration
{
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [a1 hasPerformedLegacyBadgeMigrationKey];
  [v4 setBool:1 forKey:v3];
}

- (void)performMigrationIfNecessary
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EDF68;
  v4[3] = &unk_1004D9068;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  if (*(v6 + 24) == 1)
  {
    [(MTNotificationBadgeMigrationController *)self performMigration];
  }

  _Block_object_dispose(&v5, 8);
}

- (void)performMigration
{
  v3 = +[UNUserNotificationCenter currentNotificationCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EE084;
  v4[3] = &unk_1004DAFB0;
  v4[4] = self;
  [v3 getDeliveredNotificationsWithCompletionHandler:v4];
}

- (void)stopObservingApplicationState
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE2A4;
  block[3] = &unk_1004D8358;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end
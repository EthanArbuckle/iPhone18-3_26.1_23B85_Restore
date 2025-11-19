@interface NCSettingsGatewayController
+ (id)sharedInstance;
- (NCSettingsGatewayController)init;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_createSettingsObserverIfNeeded;
- (void)_invalidateSettingsObserver;
- (void)addObserver:(id)a3;
- (void)observer:(id)a3 updateGlobalSettings:(id)a4;
- (void)observer:(id)a3 updateSectionInfo:(id)a4;
- (void)removeObserver:(id)a3;
@end

@implementation NCSettingsGatewayController

+ (id)sharedInstance
{
  if (qword_5C578 != -1)
  {
    sub_32B8C();
  }

  v3 = qword_5C570;

  return v3;
}

- (NCSettingsGatewayController)init
{
  v13.receiver = self;
  v13.super_class = NCSettingsGatewayController;
  v2 = [(NCSettingsGatewayController *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.notificationssettings.gateway", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[BBSettingsGateway alloc] initWithQueue:v2->_queue];
    gateway = v2->_gateway;
    v2->_gateway = v6;

    v8 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_applicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_applicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];

    [(NCSettingsGatewayController *)v2 _createSettingsObserverIfNeeded];
  }

  return v2;
}

- (void)_createSettingsObserverIfNeeded
{
  if (!self->_settingsObserver)
  {
    v4 = [[BBObserver alloc] initWithQueue:self->_queue];
    settingsObserver = self->_settingsObserver;
    self->_settingsObserver = v4;

    [(BBObserver *)self->_settingsObserver setObserverFeed:512];
    v6 = self->_settingsObserver;

    [(BBObserver *)v6 setDelegate:self];
  }
}

- (void)_invalidateSettingsObserver
{
  [(BBObserver *)self->_settingsObserver invalidate];
  settingsObserver = self->_settingsObserver;
  self->_settingsObserver = 0;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AAB0;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AB54;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_ABF8;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_AC9C;
  v7[3] = &unk_4D0D8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)observer:(id)a3 updateSectionInfo:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_AD58;
  v8[3] = &unk_4D0D8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)observer:(id)a3 updateGlobalSettings:(id)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AF24;
  block[3] = &unk_4D388;
  block[4] = self;
  dispatch_async(queue, block);
}

@end
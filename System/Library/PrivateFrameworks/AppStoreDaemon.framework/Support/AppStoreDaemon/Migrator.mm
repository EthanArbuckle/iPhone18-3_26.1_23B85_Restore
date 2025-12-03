@interface Migrator
- (Migrator)init;
- (void)_handleMonitorStateDidChangeNotification:(id)notification;
- (void)_handleNetworkStateDidChangeNotification:(id)notification;
- (void)dealloc;
@end

@implementation Migrator

- (Migrator)init
{
  v12.receiver = self;
  v12.super_class = Migrator;
  v2 = [(Migrator *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.Migrator", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(MigratorConfigurationStore);
    configurationStore = v2->_configurationStore;
    v2->_configurationStore = v6;

    v8 = v2->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002DE3F4;
    block[3] = &unk_10051AF98;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = sub_100227468();
  [v3 removeObserver:self name:@"NetworkStateDidChangeNotification" object:v4];

  v5.receiver = self;
  v5.super_class = Migrator;
  [(Migrator *)&v5 dealloc];
}

- (void)_handleNetworkStateDidChangeNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002DF20C;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleMonitorStateDidChangeNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002DF4AC;
  block[3] = &unk_10051AF98;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end
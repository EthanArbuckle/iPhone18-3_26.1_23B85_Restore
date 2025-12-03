@interface Daemon
- (Daemon)init;
- (void)_handleMigrationDidFinishNotification:(id)notification;
- (void)dealloc;
@end

@implementation Daemon

- (Daemon)init
{
  v11.receiver = self;
  v11.super_class = Daemon;
  v2 = [(Daemon *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.Daemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSCountedSet);
    transactionCount = v2->_transactionCount;
    v2->_transactionCount = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    transactionStore = v2->_transactionStore;
    v2->_transactionStore = v8;
  }

  return v2;
}

- (void)dealloc
{
  jetsamSource = self->_jetsamSource;
  if (jetsamSource)
  {
    dispatch_source_cancel(jetsamSource);
  }

  v4.receiver = self;
  v4.super_class = Daemon;
  [(Daemon *)&v4 dealloc];
}

- (void)_handleMigrationDidFinishNotification:(id)notification
{
  v3 = byte_1005AAD30;
  objc_opt_self();
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];

  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"osVersionStringKey"];

  v7 = MGCopyAnswer();
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] Fresh install detected upgrading to %@", &v12, 0xCu);
    }

    v10 = +[NSUserDefaults standardUserDefaults];
    [v10 setObject:v7 forKey:@"osVersionStringKey"];
    goto LABEL_11;
  }

  v8 = [v6 isEqualToString:v7];
  v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] OS version has updated from %@ to %@", &v12, 0x16u);
    }

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:v7 forKey:@"osVersionStringKey"];

    v10 = sub_1001C13C8();
    sub_1001C15E8(v10);
LABEL_11:

    goto LABEL_12;
  }

  if (v9)
  {
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[Daemon] OS version %@ is current", &v12, 0xCu);
  }

LABEL_12:
}

@end
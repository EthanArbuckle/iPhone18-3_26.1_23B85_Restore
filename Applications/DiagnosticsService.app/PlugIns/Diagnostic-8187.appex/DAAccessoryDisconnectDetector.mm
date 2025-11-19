@interface DAAccessoryDisconnectDetector
- (DAAccessoryDisconnectDetector)initWithModelNumbers:(id)a3;
- (void)accessoryDidDisconnect:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DAAccessoryDisconnectDetector

- (DAAccessoryDisconnectDetector)initWithModelNumbers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAAccessoryDisconnectDetector;
  v6 = [(DAAccessoryDisconnectDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelNumbers, a3);
  }

  return v7;
}

- (void)start
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DAAccessoryDisconnectDetector *)self modelNumbers];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector started for accessories: %@", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"accessoryDidDisconnect:" name:EAAccessoryDidDisconnectNotification object:0];

  v6 = +[EAAccessoryManager sharedAccessoryManager];
  [v6 registerForLocalNotifications];
}

- (void)accessoryDidDisconnect:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EAAccessoryKey];
  v6 = [v5 modelNumber];

  v7 = [(DAAccessoryDisconnectDetector *)self modelNumbers];
  v8 = [v7 containsObject:v6];

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = v6;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector informed that %@ has disconnected. Matches watchlist: %d", buf, 0x12u);
  }

  if (v8)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v12 = @"accessoryModelNumber";
    v13 = v6;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"AccessoryDisconnectedNotification" object:0 userInfo:v11];
  }
}

- (void)stop
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(DAAccessoryDisconnectDetector *)self modelNumbers];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector stopped for accessories: %@", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EAAccessoryDidDisconnectNotification object:0];

  v6 = +[EAAccessoryManager sharedAccessoryManager];
  [v6 unregisterForLocalNotifications];
}

@end
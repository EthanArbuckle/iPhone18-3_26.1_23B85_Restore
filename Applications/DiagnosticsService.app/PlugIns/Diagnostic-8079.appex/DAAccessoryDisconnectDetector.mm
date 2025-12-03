@interface DAAccessoryDisconnectDetector
- (DAAccessoryDisconnectDetector)initWithModelNumbers:(id)numbers;
- (void)accessoryDidDisconnect:(id)disconnect;
- (void)start;
- (void)stop;
@end

@implementation DAAccessoryDisconnectDetector

- (DAAccessoryDisconnectDetector)initWithModelNumbers:(id)numbers
{
  numbersCopy = numbers;
  v9.receiver = self;
  v9.super_class = DAAccessoryDisconnectDetector;
  v6 = [(DAAccessoryDisconnectDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelNumbers, numbers);
  }

  return v7;
}

- (void)start
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    modelNumbers = [(DAAccessoryDisconnectDetector *)self modelNumbers];
    v7 = 138412290;
    v8 = modelNumbers;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector started for accessories: %@", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"accessoryDidDisconnect:" name:EAAccessoryDidDisconnectNotification object:0];

  v6 = +[EAAccessoryManager sharedAccessoryManager];
  [v6 registerForLocalNotifications];
}

- (void)accessoryDidDisconnect:(id)disconnect
{
  userInfo = [disconnect userInfo];
  v5 = [userInfo objectForKeyedSubscript:EAAccessoryKey];
  modelNumber = [v5 modelNumber];

  modelNumbers = [(DAAccessoryDisconnectDetector *)self modelNumbers];
  v8 = [modelNumbers containsObject:modelNumber];

  v9 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v15 = modelNumber;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector informed that %@ has disconnected. Matches watchlist: %d", buf, 0x12u);
  }

  if (v8)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v12 = @"accessoryModelNumber";
    v13 = modelNumber;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    [v10 postNotificationName:@"AccessoryDisconnectedNotification" object:0 userInfo:v11];
  }
}

- (void)stop
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    modelNumbers = [(DAAccessoryDisconnectDetector *)self modelNumbers];
    v7 = 138412290;
    v8 = modelNumbers;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Accessory disconnect detector stopped for accessories: %@", &v7, 0xCu);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:EAAccessoryDidDisconnectNotification object:0];

  v6 = +[EAAccessoryManager sharedAccessoryManager];
  [v6 unregisterForLocalNotifications];
}

@end
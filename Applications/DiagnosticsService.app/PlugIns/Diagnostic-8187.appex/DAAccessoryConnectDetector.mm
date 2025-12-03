@interface DAAccessoryConnectDetector
- (DAAccessoryConnectDetector)initWithModelNumbers:(id)numbers;
- (void)accessoryDidConnect:(id)connect;
- (void)start;
- (void)stop;
@end

@implementation DAAccessoryConnectDetector

- (DAAccessoryConnectDetector)initWithModelNumbers:(id)numbers
{
  numbersCopy = numbers;
  v9.receiver = self;
  v9.super_class = DAAccessoryConnectDetector;
  v6 = [(DAAccessoryConnectDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelNumbers, numbers);
  }

  return v7;
}

- (void)start
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"accessoryDidConnect:" name:EAAccessoryDidConnectNotification object:0];

  v4 = +[EAAccessoryManager sharedAccessoryManager];
  [v4 registerForLocalNotifications];
}

- (void)accessoryDidConnect:(id)connect
{
  userInfo = [connect userInfo];
  v5 = [userInfo objectForKeyedSubscript:EAAccessoryKey];
  modelNumber = [v5 modelNumber];

  v7 = [NSNumber alloc];
  modelNumbers = [(DAAccessoryConnectDetector *)self modelNumbers];
  v9 = [v7 initWithBool:{objc_msgSend(modelNumbers, "containsObject:", modelNumber)}];

  v10 = +[NSNotificationCenter defaultCenter];
  v12[0] = @"accessoryModelNumber";
  v12[1] = @"accessoryModelNumberInList";
  v13[0] = modelNumber;
  v13[1] = v9;
  v11 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v10 postNotificationName:@"AccessoryConnectedNotification" object:0 userInfo:v11];
}

- (void)stop
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:EAAccessoryDidConnectNotification object:0];

  v4 = +[EAAccessoryManager sharedAccessoryManager];
  [v4 unregisterForLocalNotifications];
}

@end
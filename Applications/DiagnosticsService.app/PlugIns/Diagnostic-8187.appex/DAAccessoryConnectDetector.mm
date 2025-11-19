@interface DAAccessoryConnectDetector
- (DAAccessoryConnectDetector)initWithModelNumbers:(id)a3;
- (void)accessoryDidConnect:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DAAccessoryConnectDetector

- (DAAccessoryConnectDetector)initWithModelNumbers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAAccessoryConnectDetector;
  v6 = [(DAAccessoryConnectDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelNumbers, a3);
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

- (void)accessoryDidConnect:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:EAAccessoryKey];
  v6 = [v5 modelNumber];

  v7 = [NSNumber alloc];
  v8 = [(DAAccessoryConnectDetector *)self modelNumbers];
  v9 = [v7 initWithBool:{objc_msgSend(v8, "containsObject:", v6)}];

  v10 = +[NSNotificationCenter defaultCenter];
  v12[0] = @"accessoryModelNumber";
  v12[1] = @"accessoryModelNumberInList";
  v13[0] = v6;
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
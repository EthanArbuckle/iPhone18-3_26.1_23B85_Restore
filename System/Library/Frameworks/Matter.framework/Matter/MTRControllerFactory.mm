@interface MTRControllerFactory
+ (MTRControllerFactory)sharedInstance;
- (BOOL)isRunning;
- (BOOL)startup:(MTRControllerFactoryParams *)startupParams;
- (MTRDeviceController)startControllerOnExistingFabric:(MTRDeviceControllerStartupParams *)startupParams;
- (MTRDeviceController)startControllerOnNewFabric:(MTRDeviceControllerStartupParams *)startupParams;
- (void)shutdown;
@end

@implementation MTRControllerFactory

- (BOOL)isRunning
{
  v2 = +[MTRDeviceControllerFactory sharedInstance];
  isRunning = [v2 isRunning];

  return isRunning;
}

+ (MTRControllerFactory)sharedInstance
{
  if (qword_27DF77590 != -1)
  {
    sub_23952BD88();
  }

  v3 = qword_27DF77588;

  return v3;
}

- (BOOL)startup:(MTRControllerFactoryParams *)startupParams
{
  v3 = startupParams;
  v4 = +[MTRDeviceControllerFactory sharedInstance];
  v5 = [v4 startControllerFactory:v3 error:0];

  return v5;
}

- (void)shutdown
{
  v2 = +[MTRDeviceControllerFactory sharedInstance];
  [v2 stopControllerFactory];
}

- (MTRDeviceController)startControllerOnExistingFabric:(MTRDeviceControllerStartupParams *)startupParams
{
  v3 = startupParams;
  v4 = +[MTRDeviceControllerFactory sharedInstance];
  v5 = [v4 createControllerOnExistingFabric:v3 error:0];

  return v5;
}

- (MTRDeviceController)startControllerOnNewFabric:(MTRDeviceControllerStartupParams *)startupParams
{
  v3 = startupParams;
  v4 = +[MTRDeviceControllerFactory sharedInstance];
  v5 = [v4 createControllerOnNewFabric:v3 error:0];

  return v5;
}

@end
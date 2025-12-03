@interface MapsAppTestPounceToNav
- (BOOL)runTest;
@end

@implementation MapsAppTestPounceToNav

- (BOOL)runTest
{
  testName = [(MapsAppTest *)self testName];
  NSLog(@"test is %@", testName);

  options = [(MapsAppTest *)self options];
  v5 = [options objectForKeyedSubscript:@"traceName"];

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.Maps"];
  v7 = [v5 stringByAppendingString:@".trace"];
  v8 = [v6 pathForResource:v7 ofType:@"sqlite"];

  testCoordinator = [(MapsAppTest *)self testCoordinator];
  [testCoordinator pptTestStartTracePlaybackFromPath:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CEC4F8;
  v11[3] = &unk_101650D20;
  v11[4] = self;
  [PPTNotificationCenter addOnceObserverForName:VKPounceDidEndNotification object:0 usingBlock:v11];

  return 1;
}

@end
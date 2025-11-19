@interface MapsAppTestPounceToNav
- (BOOL)runTest;
@end

@implementation MapsAppTestPounceToNav

- (BOOL)runTest
{
  v3 = [(MapsAppTest *)self testName];
  NSLog(@"test is %@", v3);

  v4 = [(MapsAppTest *)self options];
  v5 = [v4 objectForKeyedSubscript:@"traceName"];

  v6 = [NSBundle bundleWithIdentifier:@"com.apple.Maps"];
  v7 = [v5 stringByAppendingString:@".trace"];
  v8 = [v6 pathForResource:v7 ofType:@"sqlite"];

  v9 = [(MapsAppTest *)self testCoordinator];
  [v9 pptTestStartTracePlaybackFromPath:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100CEC4F8;
  v11[3] = &unk_101650D20;
  v11[4] = self;
  [PPTNotificationCenter addOnceObserverForName:VKPounceDidEndNotification object:0 usingBlock:v11];

  return 1;
}

@end
@interface MapsAppTestResizeWindow
- (BOOL)runTest;
- (MapsAppTestResizeWindow)initWithApplication:(id)application testName:(id)name options:(id)options;
@end

@implementation MapsAppTestResizeWindow

- (BOOL)runTest
{
  [(MapsAppTest *)self startedTest];
  testCoordinator = [(MapsAppTest *)self testCoordinator];
  mapViewForPPTTest = [testCoordinator mapViewForPPTTest];
  window = [mapViewForPPTTest window];

  v6 = objc_alloc(sub_100E56094());
  testName = [(MapsAppTest *)self testName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100E56174;
  v10[3] = &unk_101661B18;
  v10[4] = self;
  v8 = [v6 initWithTestName:testName window:window completionHandler:v10];

  [v8 setMinimumWindowSize:{300.0, 300.0}];
  [v8 setMaximumWindowSize:{600.0, 600.0}];
  [sub_100E5617C() runTestWithParameters:v8];

  return 1;
}

- (MapsAppTestResizeWindow)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = MapsAppTestResizeWindow;
  v9 = [(MapsAppTest *)&v13 initWithApplication:application testName:name options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKeyedSubscript:@"timeoutInSeconds"];
    v9->_timeoutInSeconds = [v10 integerValue];

    v11 = [optionsCopy objectForKeyedSubscript:@"numberOfResizes"];
    v9->_numberOfResizes = [v11 integerValue];
  }

  return v9;
}

@end
@interface SPUIApplication
- (BOOL)runTest:(id)test options:(id)options;
- (void)startedTest:(id)test;
@end

@implementation SPUIApplication

- (void)startedTest:(id)test
{
  v10.receiver = self;
  v10.super_class = SPUIApplication;
  testCopy = test;
  [(SPUIApplication *)&v10 startedTest:testCopy];
  v5 = [testCopy isEqualToString:{@"launch", v10.receiver, v10.super_class}];

  if (v5)
  {
    _extendLaunchTest = [(SPUIApplication *)self _extendLaunchTest];
    [(SPUIApplication *)self runTest:_extendLaunchTest options:0];

    v7 = +[SPUISearchViewControllerHolder sharedInstance];
    searchViewController = [v7 searchViewController];
    [searchViewController searchViewWillPresentFromSource:1];

    v9 = dispatch_time(0, 50000000);
    dispatch_after(v9, &_dispatch_main_q, &stru_10000C458);
  }
}

- (BOOL)runTest:(id)test options:(id)options
{
  testCopy = test;
  optionsCopy = options;
  v8 = +[SPUISearchViewControllerHolder sharedInstance];
  searchViewController = [v8 searchViewController];
  v10 = [searchViewController runTest:testCopy options:optionsCopy];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUIApplication;
    v11 = [(SPUIApplication *)&v13 runTest:testCopy options:optionsCopy];
  }

  return v11;
}

@end
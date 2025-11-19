@interface SPUIApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (void)startedTest:(id)a3;
@end

@implementation SPUIApplication

- (void)startedTest:(id)a3
{
  v10.receiver = self;
  v10.super_class = SPUIApplication;
  v4 = a3;
  [(SPUIApplication *)&v10 startedTest:v4];
  v5 = [v4 isEqualToString:{@"launch", v10.receiver, v10.super_class}];

  if (v5)
  {
    v6 = [(SPUIApplication *)self _extendLaunchTest];
    [(SPUIApplication *)self runTest:v6 options:0];

    v7 = +[SPUISearchViewControllerHolder sharedInstance];
    v8 = [v7 searchViewController];
    [v8 searchViewWillPresentFromSource:1];

    v9 = dispatch_time(0, 50000000);
    dispatch_after(v9, &_dispatch_main_q, &stru_10000C458);
  }
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SPUISearchViewControllerHolder sharedInstance];
  v9 = [v8 searchViewController];
  v10 = [v9 runTest:v6 options:v7];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SPUIApplication;
    v11 = [(SPUIApplication *)&v13 runTest:v6 options:v7];
  }

  return v11;
}

@end
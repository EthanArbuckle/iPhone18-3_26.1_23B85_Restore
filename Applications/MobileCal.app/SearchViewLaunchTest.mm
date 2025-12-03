@interface SearchViewLaunchTest
- (SearchViewLaunchTest)initWithApplication:(id)application model:(id)model options:(id)options;
- (void)_searchViewDidAppear;
- (void)dealloc;
- (void)runTest;
@end

@implementation SearchViewLaunchTest

- (SearchViewLaunchTest)initWithApplication:(id)application model:(id)model options:(id)options
{
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = SearchViewLaunchTest;
  v9 = [(ApplicationTest *)&v17 initWithApplication:application model:model options:optionsCopy];
  if (v9)
  {
    v10 = [optionsCopy objectForKey:@"iterations"];
    v11 = v10;
    if (v10)
    {
      v9->_iterations = [v10 integerValue];
    }

    else
    {
      v9->_inputInvalid = 1;
    }

    application = [(ApplicationTest *)v9 application];
    rootNavigationController = [application rootNavigationController];

    resetToDayView = [(RootNavigationController *)rootNavigationController resetToDayView];
    rootNavController = v9->_rootNavController;
    v9->_rootNavController = rootNavigationController;
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchViewLaunchTest;
  [(SearchViewLaunchTest *)&v4 dealloc];
}

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  testName = [objc_opt_class() testName];
  if (self->_inputInvalid)
  {
    [application startedTest:testName];
    [application failedTest:testName withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else
  {
    application2 = [(ApplicationTest *)self application];
    rootNavigationController = [application2 rootNavigationController];

    resetToYearView = [rootNavigationController resetToYearView];
    model = [(ApplicationTest *)self model];
    [model setShowDayAsList:0];

    rootNavController = self->_rootNavController;
    model2 = [(ApplicationTest *)self model];
    selectedDate = [model2 selectedDate];
    v12 = [(RootNavigationController *)rootNavController pushCalendarViewControllerWithViewType:3 andDate:selectedDate];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013F7C4;
    v18[3] = &unk_10020EC68;
    v18[4] = self;
    v19 = testName;
    v13 = objc_retainBlock(v18);
    v14 = dispatch_time(0, 3000000000);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013F86C;
    v16[3] = &unk_10020F5D0;
    v16[4] = self;
    v17 = v13;
    v15 = v13;
    dispatch_after(v14, &_dispatch_main_q, v16);
  }
}

- (void)_searchViewDidAppear
{
  application = [(ApplicationTest *)self application];
  testName = [objc_opt_class() testName];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013F9B8;
  v5[3] = &unk_10020EB00;
  v5[4] = self;
  [application finishedTest:testName waitForCommit:1 extraResults:0 withTeardownBlock:v5];
}

@end
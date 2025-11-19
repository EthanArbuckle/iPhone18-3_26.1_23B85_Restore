@interface SearchViewLaunchTest
- (SearchViewLaunchTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5;
- (void)_searchViewDidAppear;
- (void)dealloc;
- (void)runTest;
@end

@implementation SearchViewLaunchTest

- (SearchViewLaunchTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = SearchViewLaunchTest;
  v9 = [(ApplicationTest *)&v17 initWithApplication:a3 model:a4 options:v8];
  if (v9)
  {
    v10 = [v8 objectForKey:@"iterations"];
    v11 = v10;
    if (v10)
    {
      v9->_iterations = [v10 integerValue];
    }

    else
    {
      v9->_inputInvalid = 1;
    }

    v12 = [(ApplicationTest *)v9 application];
    v13 = [v12 rootNavigationController];

    v14 = [(RootNavigationController *)v13 resetToDayView];
    rootNavController = v9->_rootNavController;
    v9->_rootNavController = v13;
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
  v3 = [(ApplicationTest *)self application];
  v4 = [objc_opt_class() testName];
  if (self->_inputInvalid)
  {
    [v3 startedTest:v4];
    [v3 failedTest:v4 withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else
  {
    v5 = [(ApplicationTest *)self application];
    v6 = [v5 rootNavigationController];

    v7 = [v6 resetToYearView];
    v8 = [(ApplicationTest *)self model];
    [v8 setShowDayAsList:0];

    rootNavController = self->_rootNavController;
    v10 = [(ApplicationTest *)self model];
    v11 = [v10 selectedDate];
    v12 = [(RootNavigationController *)rootNavController pushCalendarViewControllerWithViewType:3 andDate:v11];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013F7C4;
    v18[3] = &unk_10020EC68;
    v18[4] = self;
    v19 = v4;
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
  v3 = [(ApplicationTest *)self application];
  v4 = [objc_opt_class() testName];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013F9B8;
  v5[3] = &unk_10020EB00;
  v5[4] = self;
  [v3 finishedTest:v4 waitForCommit:1 extraResults:0 withTeardownBlock:v5];
}

@end
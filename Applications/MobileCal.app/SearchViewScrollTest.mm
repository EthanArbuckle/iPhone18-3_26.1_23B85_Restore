@interface SearchViewScrollTest
- (SearchViewScrollTest)initWithApplication:(id)application model:(id)model options:(id)options;
- (void)_searchViewDidAppear;
- (void)dealloc;
- (void)runTest;
@end

@implementation SearchViewScrollTest

- (SearchViewScrollTest)initWithApplication:(id)application model:(id)model options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = SearchViewScrollTest;
  v10 = [(ApplicationTest *)&v16 initWithApplication:applicationCopy model:model options:optionsCopy];
  if (v10)
  {
    v11 = [TestScroller alloc];
    testName = [objc_opt_class() testName];
    v13 = [(TestScroller *)v11 initWithOptions:optionsCopy testName:testName application:applicationCopy];
    scroller = v10->_scroller;
    v10->_scroller = v13;
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SearchViewScrollTest;
  [(SearchViewScrollTest *)&v4 dealloc];
}

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  testName = [objc_opt_class() testName];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    [application startedTest:testName];
    [application failedTest:testName withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else
  {
    application2 = [(ApplicationTest *)self application];
    rootNavigationController = [application2 rootNavigationController];

    extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
    model = [(ApplicationTest *)self model];
    [model setSelectedDate:extractInitialDateOption];

    resetToYearView = [rootNavigationController resetToYearView];
    model2 = [(ApplicationTest *)self model];
    [model2 setShowDayAsList:1];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006ED18;
    v18[3] = &unk_10020EC68;
    v18[4] = self;
    v11 = rootNavigationController;
    v19 = v11;
    v12 = objc_retainBlock(v18);
    presentedViewController = [v11 presentedViewController];

    if (presentedViewController)
    {
      v14 = dispatch_time(0, 1000000000);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10006EDC4;
      v15[3] = &unk_10020F5D0;
      v16 = v11;
      v17 = v12;
      dispatch_after(v14, &_dispatch_main_q, v15);
    }

    else
    {
      (v12[2])(v12);
    }
  }
}

- (void)_searchViewDidAppear
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"ListViewController_ViewDidAppearNotification" object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EE84;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end
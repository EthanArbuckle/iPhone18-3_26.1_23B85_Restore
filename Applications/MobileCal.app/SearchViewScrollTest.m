@interface SearchViewScrollTest
- (SearchViewScrollTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5;
- (void)_searchViewDidAppear;
- (void)dealloc;
- (void)runTest;
@end

@implementation SearchViewScrollTest

- (SearchViewScrollTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = SearchViewScrollTest;
  v10 = [(ApplicationTest *)&v16 initWithApplication:v8 model:a4 options:v9];
  if (v10)
  {
    v11 = [TestScroller alloc];
    v12 = [objc_opt_class() testName];
    v13 = [(TestScroller *)v11 initWithOptions:v9 testName:v12 application:v8];
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
  v3 = [(ApplicationTest *)self application];
  v4 = [objc_opt_class() testName];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    [v3 startedTest:v4];
    [v3 failedTest:v4 withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else
  {
    v5 = [(ApplicationTest *)self application];
    v6 = [v5 rootNavigationController];

    v7 = [(ApplicationTest *)self extractInitialDateOption];
    v8 = [(ApplicationTest *)self model];
    [v8 setSelectedDate:v7];

    v9 = [v6 resetToYearView];
    v10 = [(ApplicationTest *)self model];
    [v10 setShowDayAsList:1];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10006ED18;
    v18[3] = &unk_10020EC68;
    v18[4] = self;
    v11 = v6;
    v19 = v11;
    v12 = objc_retainBlock(v18);
    v13 = [v11 presentedViewController];

    if (v13)
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
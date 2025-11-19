@interface ListViewScrollTest
- (ListViewScrollTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5;
- (void)_listViewDidAppear;
- (void)dealloc;
- (void)runTest;
@end

@implementation ListViewScrollTest

- (ListViewScrollTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ListViewScrollTest;
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
  v4.super_class = ListViewScrollTest;
  [(ListViewScrollTest *)&v4 dealloc];
}

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [objc_opt_class() testName];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    [v3 startedTest:v4];
    [v3 failedTest:v4 withResults:0];
  }

  else
  {
    v5 = [(ApplicationTest *)self application];
    v6 = [v5 rootNavigationController];

    v7 = [v6 resetToYearView];
    v8 = [(ApplicationTest *)self model];
    [v8 setShowDayAsList:1];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000D8AFC;
    v16[3] = &unk_10020EC68;
    v16[4] = self;
    v9 = v6;
    v17 = v9;
    v10 = objc_retainBlock(v16);
    v11 = [v9 presentedViewController];

    if (v11)
    {
      v12 = dispatch_time(0, 1000000000);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000D8BA8;
      v13[3] = &unk_10020F5D0;
      v14 = v9;
      v15 = v10;
      dispatch_after(v12, &_dispatch_main_q, v13);
    }

    else
    {
      (v10[2])(v10);
    }
  }
}

- (void)_listViewDidAppear
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"ListViewController_ViewDidAppearNotification" object:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D8C68;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end
@interface ScrollViewTest
- (ScrollViewTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5;
- (UIScrollView)scrollView;
- (void)navigateToScrollView;
- (void)runTest;
@end

@implementation ScrollViewTest

- (ScrollViewTest)initWithApplication:(id)a3 model:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ScrollViewTest;
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

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [objc_opt_class() testName];
  v5 = [(ScrollViewTest *)self checkTestPreconditions];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    [v3 startedTest:v4];
    v6 = @"input invalid was marked as true when trying to run test";
    v7 = v3;
    v8 = v4;
  }

  else
  {
    if (!v5)
    {
      [(ScrollViewTest *)self navigateToScrollView];
      v9 = dispatch_time(0, 5000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E63A8;
      block[3] = &unk_10020EB00;
      block[4] = self;
      dispatch_after(v9, &_dispatch_main_q, block);
      goto LABEL_6;
    }

    [v3 startedTest:v4];
    v7 = v3;
    v8 = v4;
    v6 = v5;
  }

  [v7 failedTest:v8 withFailure:v6];
LABEL_6:
}

- (void)navigateToScrollView
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (UIScrollView)scrollView
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end
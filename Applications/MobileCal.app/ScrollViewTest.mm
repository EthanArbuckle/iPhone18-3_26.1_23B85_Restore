@interface ScrollViewTest
- (ScrollViewTest)initWithApplication:(id)application model:(id)model options:(id)options;
- (UIScrollView)scrollView;
- (void)navigateToScrollView;
- (void)runTest;
@end

@implementation ScrollViewTest

- (ScrollViewTest)initWithApplication:(id)application model:(id)model options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = ScrollViewTest;
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

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  testName = [objc_opt_class() testName];
  checkTestPreconditions = [(ScrollViewTest *)self checkTestPreconditions];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    [application startedTest:testName];
    v6 = @"input invalid was marked as true when trying to run test";
    v7 = application;
    v8 = testName;
  }

  else
  {
    if (!checkTestPreconditions)
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

    [application startedTest:testName];
    v7 = application;
    v8 = testName;
    v6 = checkTestPreconditions;
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
@interface InboxNewSectionScrollTest
- (InboxNewSectionScrollTest)initWithApplication:(id)application model:(id)model options:(id)options;
- (void)_inboxDidAppear:(id)appear;
- (void)dealloc;
- (void)runTest;
@end

@implementation InboxNewSectionScrollTest

- (InboxNewSectionScrollTest)initWithApplication:(id)application model:(id)model options:(id)options
{
  applicationCopy = application;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = InboxNewSectionScrollTest;
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
  [v3 removeObserver:self name:@"InboxNewSectionViewController_ViewDidAppearNotification" object:0];

  v4.receiver = self;
  v4.super_class = InboxNewSectionScrollTest;
  [(InboxNewSectionScrollTest *)&v4 dealloc];
}

- (void)runTest
{
  application = [(ApplicationTest *)self application];
  if ([(TestScroller *)self->_scroller inputInvalid])
  {
    testName = [objc_opt_class() testName];
    [application startedTest:testName];
    [application failedTest:testName withFailure:@"input invalid was marked as true when trying to run test"];
  }

  else
  {
    testName = [application rootNavigationController];
    resetToYearView = [testName resetToYearView];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_inboxDidAppear:" name:@"InboxViewController_ViewDidAppearNotification" object:0];

    v6 = [testName showInboxAnimated:1 completion:0];
    inboxViewController = self->_inboxViewController;
    self->_inboxViewController = v6;
  }
}

- (void)_inboxDidAppear:(id)appear
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"InboxViewController_ViewDidAppearNotification" object:0];

  switcherViewController = [(InboxViewController *)self->_inboxViewController switcherViewController];
  showNewSection = [switcherViewController showNewSection];
  testName = [objc_opt_class() testName];
  tableView = [showNewSection tableView];
  if (tableView)
  {
    v9 = dispatch_time(0, 4000000000);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E0560;
    v11[3] = &unk_10020EC68;
    v11[4] = self;
    v12 = tableView;
    dispatch_after(v9, &_dispatch_main_q, v11);
  }

  else
  {
    application = [(ApplicationTest *)self application];
    [application startedTest:testName];
    [application failedTest:testName withFailure:@"Table view doesn't exist"];
  }
}

@end
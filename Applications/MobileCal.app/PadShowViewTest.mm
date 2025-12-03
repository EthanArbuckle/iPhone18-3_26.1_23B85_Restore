@interface PadShowViewTest
- (void)_viewShown:(id)shown;
- (void)runTest;
@end

@implementation PadShowViewTest

- (void)runTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_viewShown:" name:@"MainViewControllerDidAppearNotification" object:0];

  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  extractInitialDateOption = [(ApplicationTest *)self extractInitialDateOption];
  application2 = [(ApplicationTest *)self application];
  rootNavigationController2 = [application2 rootNavigationController];
  resetToYearView = [rootNavigationController2 resetToYearView];

  date = [extractInitialDateOption date];
  [resetToYearView showDate:date animated:0];

  v11 = [rootNavigationController pushCalendarViewControllerWithViewType:-[PadShowViewTest _viewType](self andDate:{"_viewType"), extractInitialDateOption}];
  currentChildViewController = [v11 currentChildViewController];
  [currentChildViewController selectDate:extractInitialDateOption animated:0];

  v13 = dispatch_time(0, 5000000000);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100104E08;
  v17[3] = &unk_10020F290;
  v17[4] = self;
  v18 = application;
  v19 = rootNavigationController;
  v20 = extractInitialDateOption;
  v14 = extractInitialDateOption;
  v15 = rootNavigationController;
  v16 = application;
  dispatch_after(v13, &_dispatch_main_q, v17);
}

- (void)_viewShown:(id)shown
{
  testName = [objc_opt_class() testName];
  application = [(ApplicationTest *)self application];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105120;
  v6[3] = &unk_10020EB00;
  v6[4] = self;
  [application finishedTest:testName extraResults:0 withTeardownBlock:v6];
}

@end
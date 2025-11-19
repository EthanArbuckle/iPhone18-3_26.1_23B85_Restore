@interface PadShowViewTest
- (void)_viewShown:(id)a3;
- (void)runTest;
@end

@implementation PadShowViewTest

- (void)runTest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_viewShown:" name:@"MainViewControllerDidAppearNotification" object:0];

  v4 = [(ApplicationTest *)self application];
  v5 = [v4 rootNavigationController];
  v6 = [(ApplicationTest *)self extractInitialDateOption];
  v7 = [(ApplicationTest *)self application];
  v8 = [v7 rootNavigationController];
  v9 = [v8 resetToYearView];

  v10 = [v6 date];
  [v9 showDate:v10 animated:0];

  v11 = [v5 pushCalendarViewControllerWithViewType:-[PadShowViewTest _viewType](self andDate:{"_viewType"), v6}];
  v12 = [v11 currentChildViewController];
  [v12 selectDate:v6 animated:0];

  v13 = dispatch_time(0, 5000000000);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100104E08;
  v17[3] = &unk_10020F290;
  v17[4] = self;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  v14 = v6;
  v15 = v5;
  v16 = v4;
  dispatch_after(v13, &_dispatch_main_q, v17);
}

- (void)_viewShown:(id)a3
{
  v4 = [objc_opt_class() testName];
  v5 = [(ApplicationTest *)self application];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100105120;
  v6[3] = &unk_10020EB00;
  v6[4] = self;
  [v5 finishedTest:v4 extraResults:0 withTeardownBlock:v6];
}

@end
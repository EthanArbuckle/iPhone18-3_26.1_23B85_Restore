@interface BCActivityViewController
- (BCActivityViewController)initWithRootActivityItems:(id)a3 expandedActivityItems:(id)a4 applicationActivities:(id)a5 sharingStyle:(int64_t)a6 customActivityTypeOrder:(id)a7 customShareActivityTitle:(id)a8 appAnalyticsProvider:(id)a9 tracker:(id)a10;
- (id)_titleForActivity:(id)a3;
- (int64_t)overrideUserInterfaceStyle;
- (void)_performActivity:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation BCActivityViewController

- (BCActivityViewController)initWithRootActivityItems:(id)a3 expandedActivityItems:(id)a4 applicationActivities:(id)a5 sharingStyle:(int64_t)a6 customActivityTypeOrder:(id)a7 customShareActivityTitle:(id)a8 appAnalyticsProvider:(id)a9 tracker:(id)a10
{
  v30 = a3;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v31.receiver = self;
  v31.super_class = BCActivityViewController;
  v21 = [(BCActivityViewController *)&v31 initWithActivityItems:a4 applicationActivities:v16];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_rootActivityItems, a3);
    v23 = [v18 copy];
    customShareActivityTitle = v22->_customShareActivityTitle;
    v22->_customShareActivityTitle = v23;

    objc_storeStrong(&v22->_applicationActivities, a5);
    objc_storeStrong(&v22->_appAnalyticsProvider, a9);
    v25 = [v20 chainWithName:@"ContextualActionSheet"];
    tracker = v22->_tracker;
    v22->_tracker = v25;

    [(BCActivityViewController *)v22 setActivityTypeOrder:v17];
    if (a6 == 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2 * (a6 != 0);
    }

    [(BCActivityViewController *)v22 setSharingStyle:v27, a6, v30];
  }

  return v22;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v17.receiver = self;
  v17.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v17 viewDidAppear:a3];
  v4 = +[NSDate date];
  analyticsAppearDate = self->_analyticsAppearDate;
  self->_analyticsAppearDate = v4;

  if (!self->_tracker)
  {
    v6 = [(BCActivityViewController *)self presentingViewController];
    v7 = [v6 viewIfLoaded];
    v8 = [v7 window];
    v9 = [v8 rootViewController];
    v10 = [v9 bc_deepestVisibleChildViewControllerIncludePresented:1];

    v11 = [v10 ba_effectiveAnalyticsTracker];
    v12 = [v11 chainWithName:@"ContextualActionSheet"];
    tracker = self->_tracker;
    self->_tracker = v12;
  }

  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_D8A1C;
  v14[3] = &unk_2CCD80;
  objc_copyWeak(&v15, &location);
  [(BCActivityViewController *)self setPreCompletionHandler:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v5 viewDidDisappear:a3];
  if (self->_tracker && self->_analyticsAppearDate)
  {
    if (self->_appAnalyticsProvider)
    {
      v4 = +[BAEventReporter sharedReporter];
      [v4 emitShareSheetExposureEventWithTracker:self->_tracker startDate:self->_analyticsAppearDate propertyProvider:self->_appAnalyticsProvider];
    }
  }
}

- (id)_titleForActivity:(id)a3
{
  if ([a3 isEqualToString:UIActivityTypeShare])
  {
    v4 = [(BCActivityViewController *)self customShareActivityTitle];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v6 _performActivity:v4];
  selectedActivity = self->_selectedActivity;
  self->_selectedActivity = v4;
}

- (int64_t)overrideUserInterfaceStyle
{
  v2 = [(BCActivityViewController *)self presentingViewController];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  return v4;
}

@end
@interface BCActivityViewController
- (BCActivityViewController)initWithRootActivityItems:(id)items expandedActivityItems:(id)activityItems applicationActivities:(id)activities sharingStyle:(int64_t)style customActivityTypeOrder:(id)order customShareActivityTitle:(id)title appAnalyticsProvider:(id)provider tracker:(id)self0;
- (id)_titleForActivity:(id)activity;
- (int64_t)overrideUserInterfaceStyle;
- (void)_performActivity:(id)activity;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BCActivityViewController

- (BCActivityViewController)initWithRootActivityItems:(id)items expandedActivityItems:(id)activityItems applicationActivities:(id)activities sharingStyle:(int64_t)style customActivityTypeOrder:(id)order customShareActivityTitle:(id)title appAnalyticsProvider:(id)provider tracker:(id)self0
{
  itemsCopy = items;
  activitiesCopy = activities;
  orderCopy = order;
  titleCopy = title;
  providerCopy = provider;
  trackerCopy = tracker;
  v31.receiver = self;
  v31.super_class = BCActivityViewController;
  v21 = [(BCActivityViewController *)&v31 initWithActivityItems:activityItems applicationActivities:activitiesCopy];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_rootActivityItems, items);
    v23 = [titleCopy copy];
    customShareActivityTitle = v22->_customShareActivityTitle;
    v22->_customShareActivityTitle = v23;

    objc_storeStrong(&v22->_applicationActivities, activities);
    objc_storeStrong(&v22->_appAnalyticsProvider, provider);
    v25 = [trackerCopy chainWithName:@"ContextualActionSheet"];
    tracker = v22->_tracker;
    v22->_tracker = v25;

    [(BCActivityViewController *)v22 setActivityTypeOrder:orderCopy];
    if (style == 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2 * (style != 0);
    }

    [(BCActivityViewController *)v22 setSharingStyle:v27, style, itemsCopy];
  }

  return v22;
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v17 viewDidAppear:appear];
  v4 = +[NSDate date];
  analyticsAppearDate = self->_analyticsAppearDate;
  self->_analyticsAppearDate = v4;

  if (!self->_tracker)
  {
    presentingViewController = [(BCActivityViewController *)self presentingViewController];
    viewIfLoaded = [presentingViewController viewIfLoaded];
    window = [viewIfLoaded window];
    rootViewController = [window rootViewController];
    v10 = [rootViewController bc_deepestVisibleChildViewControllerIncludePresented:1];

    ba_effectiveAnalyticsTracker = [v10 ba_effectiveAnalyticsTracker];
    v12 = [ba_effectiveAnalyticsTracker chainWithName:@"ContextualActionSheet"];
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

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v5 viewDidDisappear:disappear];
  if (self->_tracker && self->_analyticsAppearDate)
  {
    if (self->_appAnalyticsProvider)
    {
      v4 = +[BAEventReporter sharedReporter];
      [v4 emitShareSheetExposureEventWithTracker:self->_tracker startDate:self->_analyticsAppearDate propertyProvider:self->_appAnalyticsProvider];
    }
  }
}

- (id)_titleForActivity:(id)activity
{
  if ([activity isEqualToString:UIActivityTypeShare])
  {
    customShareActivityTitle = [(BCActivityViewController *)self customShareActivityTitle];
  }

  else
  {
    customShareActivityTitle = 0;
  }

  return customShareActivityTitle;
}

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  v6.receiver = self;
  v6.super_class = BCActivityViewController;
  [(BCActivityViewController *)&v6 _performActivity:activityCopy];
  selectedActivity = self->_selectedActivity;
  self->_selectedActivity = activityCopy;
}

- (int64_t)overrideUserInterfaceStyle
{
  presentingViewController = [(BCActivityViewController *)self presentingViewController];
  traitCollection = [presentingViewController traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

@end
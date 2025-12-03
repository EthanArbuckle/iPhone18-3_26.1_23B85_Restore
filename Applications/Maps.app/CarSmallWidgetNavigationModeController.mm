@interface CarSmallWidgetNavigationModeController
- (CGSize)availableSize;
- (CarGuidanceCardViewController)guidanceCard;
- (ChromeViewController)chromeViewController;
- (GuidanceObserver)guidanceObserver;
- (unint64_t)maneuverViewLayoutType;
- (void)_setupGuidanceCard;
- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation;
- (void)setContent:(id)content;
@end

@implementation CarSmallWidgetNavigationModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (unint64_t)maneuverViewLayoutType
{
  [(CarSmallWidgetNavigationModeController *)self availableSize];
  if (v3 > 160.0)
  {
    return 1;
  }

  [(CarSmallWidgetNavigationModeController *)self availableSize];
  return v5 < 100.0;
}

- (CGSize)availableSize
{
  view = [(CarSmallWidgetNavigationModeController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  view2 = [(CarSmallWidgetNavigationModeController *)self view];
  [view2 safeAreaInsets];
  v11 = v5 - (v9 + v10);
  v14 = v7 - (v12 + v13);

  v15 = v11;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  route = [service route];
  self->_hasArrived = [route isLegIndexOfLastLeg:index];
}

- (void)resignTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [MNNavigationService sharedService:controller];
  [v5 unregisterObserver:self];

  guidanceObserver = [(CarSmallWidgetNavigationModeController *)self guidanceObserver];
  guidanceCard = [(CarSmallWidgetNavigationModeController *)self guidanceCard];
  [guidanceObserver removeOutlet:guidanceCard];
}

- (void)becomeTopContextInChromeViewController:(id)controller withAnimation:(id)animation
{
  v5 = [MNNavigationService sharedService:controller];
  [v5 registerObserver:self];

  [(CarSmallWidgetNavigationModeController *)self _setupGuidanceCard];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  p_content = &self->_content;
  content = self->_content;
  if (content != contentCopy)
  {
    if (content)
    {
      view = [(UIViewController *)content view];
      [view removeFromSuperview];
    }

    objc_storeStrong(&self->_content, content);
    if (*p_content)
    {
      view2 = [(UIViewController *)*p_content view];
      [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

      view3 = [(CarSmallWidgetNavigationModeController *)self view];
      view4 = [(UIViewController *)*p_content view];
      [view3 addSubview:view4];

      view5 = [(UIViewController *)*p_content view];
      leadingAnchor = [view5 leadingAnchor];
      view6 = [(CarSmallWidgetNavigationModeController *)self view];
      safeAreaLayoutGuide = [view6 safeAreaLayoutGuide];
      leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
      v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v43[0] = v37;
      view7 = [(UIViewController *)*p_content view];
      trailingAnchor = [view7 trailingAnchor];
      view8 = [(CarSmallWidgetNavigationModeController *)self view];
      safeAreaLayoutGuide2 = [view8 safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
      v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v43[1] = v31;
      view9 = [(UIViewController *)*p_content view];
      topAnchor = [view9 topAnchor];
      view10 = [(CarSmallWidgetNavigationModeController *)self view];
      safeAreaLayoutGuide3 = [view10 safeAreaLayoutGuide];
      topAnchor2 = [safeAreaLayoutGuide3 topAnchor];
      v25 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v43[2] = v25;
      view11 = [(UIViewController *)*p_content view];
      bottomAnchor = [view11 bottomAnchor];
      view12 = [(CarSmallWidgetNavigationModeController *)self view];
      safeAreaLayoutGuide4 = [view12 safeAreaLayoutGuide];
      bottomAnchor2 = [safeAreaLayoutGuide4 bottomAnchor];
      v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v43[3] = v13;
      view13 = [(UIViewController *)*p_content view];
      centerYAnchor = [view13 centerYAnchor];
      view14 = [(CarSmallWidgetNavigationModeController *)self view];
      safeAreaLayoutGuide5 = [view14 safeAreaLayoutGuide];
      centerYAnchor2 = [safeAreaLayoutGuide5 centerYAnchor];
      v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v43[4] = v19;
      v20 = [NSArray arrayWithObjects:v43 count:5];
      [NSLayoutConstraint activateConstraints:v20];
    }
  }
}

- (GuidanceObserver)guidanceObserver
{
  v2 = +[CarDisplayController sharedInstance];
  guidanceObserver = [v2 guidanceObserver];

  return guidanceObserver;
}

- (CarGuidanceCardViewController)guidanceCard
{
  guidanceCard = self->_guidanceCard;
  if (!guidanceCard)
  {
    v4 = [[CarGuidanceCardViewController alloc] initWithDestination:2 presentationType:0 guidanceCardSizeProvider:self interactionDelegate:0];
    v5 = self->_guidanceCard;
    self->_guidanceCard = v4;

    guidanceCard = self->_guidanceCard;
  }

  return guidanceCard;
}

- (void)_setupGuidanceCard
{
  guidanceCard = [(CarSmallWidgetNavigationModeController *)self guidanceCard];
  [(CarSmallWidgetNavigationModeController *)self setContent:guidanceCard];

  guidanceObserver = [(CarSmallWidgetNavigationModeController *)self guidanceObserver];
  guidanceCard2 = [(CarSmallWidgetNavigationModeController *)self guidanceCard];
  [guidanceObserver addOutlet:guidanceCard2];

  guidanceObserver2 = [(CarSmallWidgetNavigationModeController *)self guidanceObserver];
  guidanceCard3 = [(CarSmallWidgetNavigationModeController *)self guidanceCard];
  [guidanceObserver2 repeatAllUpdatesForOutlet:guidanceCard3];
}

@end
@interface RoutePlanningWrapperViewController
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningWrapperViewController)initWithDataCoordination:(id)coordination;
- (void)_setupChildViewControllerIfNeeded:(id)needed;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)updateHeaderTitle;
- (void)viewDidLoad;
@end

@implementation RoutePlanningWrapperViewController

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  v5 = [(ContaineeViewController *)self containeeDelegate:tapped];
  [v5 containeeViewControllerGoToPreviousState:self withSender:self];
}

- (void)_setupChildViewControllerIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(RoutePlanningWrapperViewController *)self isViewLoaded])
  {
    parentViewController = [neededCopy parentViewController];

    if (neededCopy)
    {
      if (parentViewController != self)
      {
        [(RoutePlanningWrapperViewController *)self addChildViewController:neededCopy];
        contentView = [(ContaineeViewController *)self contentView];
        view = [neededCopy view];
        [contentView addSubview:view];

        view2 = [neededCopy view];
        [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

        view3 = [neededCopy view];
        leadingAnchor = [view3 leadingAnchor];
        contentView2 = [(ContaineeViewController *)self contentView];
        leadingAnchor2 = [contentView2 leadingAnchor];
        v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v30[0] = v25;
        view4 = [neededCopy view];
        trailingAnchor = [view4 trailingAnchor];
        contentView3 = [(ContaineeViewController *)self contentView];
        trailingAnchor2 = [contentView3 trailingAnchor];
        v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v30[1] = v20;
        view5 = [neededCopy view];
        topAnchor = [view5 topAnchor];
        contentView4 = [(ContaineeViewController *)self contentView];
        topAnchor2 = [contentView4 topAnchor];
        v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v30[2] = v10;
        view6 = [neededCopy view];
        bottomAnchor = [view6 bottomAnchor];
        contentView5 = [(ContaineeViewController *)self contentView];
        bottomAnchor2 = [contentView5 bottomAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v30[3] = v15;
        v16 = [NSArray arrayWithObjects:v30 count:4];
        [NSLayoutConstraint activateConstraints:v16];

        [neededCopy didMoveToParentViewController:self];
      }
    }
  }
}

- (void)updateHeaderTitle
{
  titleHeaderView = [(RoutePlanningWrapperViewController *)self titleHeaderView];

  if (titleHeaderView)
  {
    wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    navigationItem = [wrappedViewController navigationItem];
    title = [navigationItem title];
    titleHeaderView2 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView2 setTitle:title];
  }
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = RoutePlanningWrapperViewController;
  [(ContaineeViewController *)&v40 viewDidLoad];
  wrappedViewController = [(RoutePlanningWrapperViewController *)self wrappedViewController];

  if (!wrappedViewController)
  {
    v25 = sub_10006D178();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v43 = "[RoutePlanningWrapperViewController viewDidLoad]";
      v44 = 2080;
      v45 = "RoutePlanningWrapperViewController.m";
      v46 = 1024;
      v47 = 46;
      v48 = 2080;
      v49 = "self.wrappedViewController != nil";
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v43 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  if ((_UISolariumEnabled() & 1) != 0 || sub_10000FA08(self) != 5)
  {
    v4 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(RoutePlanningWrapperViewController *)self setTitleHeaderView:v4];

    titleHeaderView = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

    titleHeaderView2 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView2 setDelegate:self];

    titleHeaderView3 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView3 setHairLineAlpha:0.0];

    titleHeaderView4 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView4 setHeaderSize:2];

    wrappedViewController2 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    navigationItem = [wrappedViewController2 navigationItem];
    title = [navigationItem title];
    titleHeaderView5 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [titleHeaderView5 setTitle:title];

    headerView = [(ContaineeViewController *)self headerView];
    titleHeaderView6 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [headerView addSubview:titleHeaderView6];

    titleHeaderView7 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    leadingAnchor = [titleHeaderView7 leadingAnchor];
    headerView2 = [(ContaineeViewController *)self headerView];
    leadingAnchor2 = [headerView2 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v41[0] = v35;
    titleHeaderView8 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    trailingAnchor = [titleHeaderView8 trailingAnchor];
    headerView3 = [(ContaineeViewController *)self headerView];
    trailingAnchor2 = [headerView3 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v41[1] = v30;
    titleHeaderView9 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    topAnchor = [titleHeaderView9 topAnchor];
    headerView4 = [(ContaineeViewController *)self headerView];
    topAnchor2 = [headerView4 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[2] = v17;
    titleHeaderView10 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    bottomAnchor = [titleHeaderView10 bottomAnchor];
    headerView5 = [(ContaineeViewController *)self headerView];
    bottomAnchor2 = [headerView5 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v41[3] = v22;
    v23 = [NSArray arrayWithObjects:v41 count:4];
    [NSLayoutConstraint activateConstraints:v23];
  }

  wrappedViewController3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [(RoutePlanningWrapperViewController *)self _setupChildViewControllerIfNeeded:wrappedViewController3];
}

- (RoutePlanningWrapperViewController)initWithDataCoordination:(id)coordination
{
  coordinationCopy = coordination;
  v10.receiver = self;
  v10.super_class = RoutePlanningWrapperViewController;
  v5 = [(RoutePlanningWrapperViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataCoordinator, coordinationCopy);
    cardPresentationController = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v6 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];
  }

  return v6;
}

@end
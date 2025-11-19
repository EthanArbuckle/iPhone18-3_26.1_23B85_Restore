@interface RoutePlanningWrapperViewController
- (RoutePlanningDataCoordination)dataCoordinator;
- (RoutePlanningWrapperViewController)initWithDataCoordination:(id)a3;
- (void)_setupChildViewControllerIfNeeded:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)updateHeaderTitle;
- (void)viewDidLoad;
@end

@implementation RoutePlanningWrapperViewController

- (RoutePlanningDataCoordination)dataCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_dataCoordinator);

  return WeakRetained;
}

- (void)headerViewTapped:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsExpandLayout];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [(ContaineeViewController *)self containeeDelegate:a3];
  [v5 containeeViewControllerGoToPreviousState:self withSender:self];
}

- (void)_setupChildViewControllerIfNeeded:(id)a3
{
  v4 = a3;
  if ([(RoutePlanningWrapperViewController *)self isViewLoaded])
  {
    v5 = [v4 parentViewController];

    if (v4)
    {
      if (v5 != self)
      {
        [(RoutePlanningWrapperViewController *)self addChildViewController:v4];
        v6 = [(ContaineeViewController *)self contentView];
        v7 = [v4 view];
        [v6 addSubview:v7];

        v8 = [v4 view];
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

        v29 = [v4 view];
        v27 = [v29 leadingAnchor];
        v28 = [(ContaineeViewController *)self contentView];
        v26 = [v28 leadingAnchor];
        v25 = [v27 constraintEqualToAnchor:v26];
        v30[0] = v25;
        v24 = [v4 view];
        v22 = [v24 trailingAnchor];
        v23 = [(ContaineeViewController *)self contentView];
        v21 = [v23 trailingAnchor];
        v20 = [v22 constraintEqualToAnchor:v21];
        v30[1] = v20;
        v19 = [v4 view];
        v17 = [v19 topAnchor];
        v18 = [(ContaineeViewController *)self contentView];
        v9 = [v18 topAnchor];
        v10 = [v17 constraintEqualToAnchor:v9];
        v30[2] = v10;
        v11 = [v4 view];
        v12 = [v11 bottomAnchor];
        v13 = [(ContaineeViewController *)self contentView];
        v14 = [v13 bottomAnchor];
        v15 = [v12 constraintEqualToAnchor:v14];
        v30[3] = v15;
        v16 = [NSArray arrayWithObjects:v30 count:4];
        [NSLayoutConstraint activateConstraints:v16];

        [v4 didMoveToParentViewController:self];
      }
    }
  }
}

- (void)updateHeaderTitle
{
  v3 = [(RoutePlanningWrapperViewController *)self titleHeaderView];

  if (v3)
  {
    v7 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v4 = [v7 navigationItem];
    v5 = [v4 title];
    v6 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v6 setTitle:v5];
  }
}

- (void)viewDidLoad
{
  v40.receiver = self;
  v40.super_class = RoutePlanningWrapperViewController;
  [(ContaineeViewController *)&v40 viewDidLoad];
  v3 = [(RoutePlanningWrapperViewController *)self wrappedViewController];

  if (!v3)
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

    v5 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v6 setDelegate:self];

    v7 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v7 setHairLineAlpha:0.0];

    v8 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v8 setHeaderSize:2];

    v9 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
    v10 = [v9 navigationItem];
    v11 = [v10 title];
    v12 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v12 setTitle:v11];

    v13 = [(ContaineeViewController *)self headerView];
    v14 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    [v13 addSubview:v14];

    v39 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    v37 = [v39 leadingAnchor];
    v38 = [(ContaineeViewController *)self headerView];
    v36 = [v38 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v41[0] = v35;
    v34 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    v32 = [v34 trailingAnchor];
    v33 = [(ContaineeViewController *)self headerView];
    v31 = [v33 trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v41[1] = v30;
    v29 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    v28 = [v29 topAnchor];
    v15 = [(ContaineeViewController *)self headerView];
    v16 = [v15 topAnchor];
    v17 = [v28 constraintEqualToAnchor:v16];
    v41[2] = v17;
    v18 = [(RoutePlanningWrapperViewController *)self titleHeaderView];
    v19 = [v18 bottomAnchor];
    v20 = [(ContaineeViewController *)self headerView];
    v21 = [v20 bottomAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    v41[3] = v22;
    v23 = [NSArray arrayWithObjects:v41 count:4];
    [NSLayoutConstraint activateConstraints:v23];
  }

  v24 = [(RoutePlanningWrapperViewController *)self wrappedViewController];
  [(RoutePlanningWrapperViewController *)self _setupChildViewControllerIfNeeded:v24];
}

- (RoutePlanningWrapperViewController)initWithDataCoordination:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RoutePlanningWrapperViewController;
  v5 = [(RoutePlanningWrapperViewController *)&v10 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataCoordinator, v4);
    v7 = [(ContaineeViewController *)v6 cardPresentationController];
    [v7 setPresentedModally:1];

    v8 = [(ContaineeViewController *)v6 cardPresentationController];
    [v8 setTakesAvailableHeight:1];
  }

  return v6;
}

@end
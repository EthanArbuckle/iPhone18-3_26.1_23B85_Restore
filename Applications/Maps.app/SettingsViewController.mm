@interface SettingsViewController
- (SettingsController)settingsController;
- (id)keyCommands;
- (id)tableViewController;
- (int64_t)_adaptivePresentationStyle;
- (int64_t)preferredStatusBarStyle;
- (void)_clearTableIfNeeded;
- (void)_handleDebugMenuTriggerTap:(id)tap;
- (void)_updateCompactVerticalLayout;
- (void)_updateMargins;
- (void)_updatePreferredContentSize;
- (void)dismissCustomPresentationContainee;
- (void)loadView;
- (void)settingsTableViewControllerDidReloadData:(id)data;
- (void)settingsTableViewControllerDidScroll:(id)scroll;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTheme;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SettingsViewController

- (SettingsController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)_handleDebugMenuTriggerTap:(id)tap
{
  if ([tap state] == 3)
  {
    _maps_mapsSceneDelegate = [(SettingsViewController *)self _maps_mapsSceneDelegate];
    [_maps_mapsSceneDelegate presentMapsDebugControllerIfEnabled];
  }
}

- (void)dismissCustomPresentationContainee
{
  dismissSettingsViewControllerHandler = [(SettingsViewController *)self dismissSettingsViewControllerHandler];

  if (dismissSettingsViewControllerHandler)
  {
    dismissSettingsViewControllerHandler2 = [(SettingsViewController *)self dismissSettingsViewControllerHandler];
    dismissSettingsViewControllerHandler2[2]();
  }

  objc_initWeak(&location, self);
  presentingViewController = [(SettingsViewController *)self presentingViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C302F4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [presentingViewController dismissViewControllerAnimated:1 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)updateTheme
{
  v3.receiver = self;
  v3.super_class = SettingsViewController;
  [(MapsThemeViewController *)&v3 updateTheme];
  [(SettingsViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(CardView *)self->_cardView updateTheme];
  [(MapsThemeView *)self->_headerView updateTheme];
}

- (int64_t)preferredStatusBarStyle
{
  theme = [(SettingsViewController *)self theme];
  statusBarStyle = [theme statusBarStyle];

  return statusBarStyle;
}

- (void)setupConstraints
{
  tableViewController = [(SettingsViewController *)self tableViewController];
  view = [tableViewController view];

  leadingAnchor = [view leadingAnchor];
  view2 = [(SettingsViewController *)self view];
  layoutMarginsGuide = [view2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v33;
  trailingAnchor = [view trailingAnchor];
  view3 = [(SettingsViewController *)self view];
  layoutMarginsGuide2 = [view3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v47[1] = v9;
  v44 = view;
  bottomAnchor = [view bottomAnchor];
  view4 = [(SettingsViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v47[2] = v13;
  v43 = [NSArray arrayWithObjects:v47 count:3];

  if (sub_10000FA08(self) == 5)
  {
    topAnchor = [v44 topAnchor];
    view5 = [(SettingsViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v46 = v17;
    v18 = [NSArray arrayWithObjects:&v46 count:1];
    v19 = v43;
    v20 = [v43 arrayByAddingObjectsFromArray:v18];
  }

  else
  {
    leadingAnchor3 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
    view6 = [(SettingsViewController *)self view];
    layoutMarginsGuide3 = [view6 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v45[0] = v18;
    trailingAnchor3 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
    view7 = [(SettingsViewController *)self view];
    layoutMarginsGuide4 = [view7 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide4 trailingAnchor];
    v29 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v45[1] = v29;
    topAnchor3 = [(ContainerHeaderView *)self->_headerView topAnchor];
    view8 = [(SettingsViewController *)self view];
    topAnchor4 = [view8 topAnchor];
    v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v45[2] = v23;
    topAnchor5 = [v44 topAnchor];
    bottomAnchor3 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
    v26 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v45[3] = v26;
    v27 = [NSArray arrayWithObjects:v45 count:4];
    v20 = [v43 arrayByAddingObjectsFromArray:v27];

    view5 = view6;
    v17 = leadingAnchor4;

    topAnchor2 = layoutMarginsGuide3;
    topAnchor = leadingAnchor3;

    v19 = trailingAnchor3;
  }

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)settingsTableViewControllerDidReloadData:(id)data
{
  tableViewController = [(SettingsViewController *)self tableViewController];
  view = [tableViewController view];
  [view layoutIfNeeded];

  navigationController = [(SettingsViewController *)self navigationController];
  view2 = [navigationController view];
  superview = [view2 superview];
  [superview setNeedsLayout];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C30948;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView animateWithDuration:v9 animations:0.25];
}

- (void)settingsTableViewControllerDidScroll:(id)scroll
{
  userInfo = [scroll userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"contentOffset"];
  [v5 pointValue];
  v7 = v6;

  v8 = 1.0;
  if (v7 <= 1.0)
  {
    v8 = 0.0;
  }

  headerView = self->_headerView;

  [(ContainerHeaderView *)headerView setHairLineAlpha:v8];
}

- (void)_updatePreferredContentSize
{
  [(ContainerHeaderView *)self->_headerView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  tableViewController = [(SettingsViewController *)self tableViewController];
  [tableViewController desiredHeight];
  v7 = v6;

  view = [(SettingsViewController *)self view];
  [view layoutMargins];
  v10 = v9;

  v11 = sub_10000FA08(self);
  v12 = dbl_101212A40[v11 == 5];
  if (v11 == 5)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  v14 = v7 + v4 + v13;

  [(SettingsViewController *)self setPreferredContentSize:v12, v14];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SettingsViewController;
  [(SettingsViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(SettingsViewController *)self _updateMargins];
  [(SettingsViewController *)self _updatePreferredContentSize];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SettingsViewController;
  [(SettingsViewController *)&v3 viewDidLayoutSubviews];
  [(SettingsViewController *)self _updatePreferredContentSize];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SettingsViewController;
  [(SettingsViewController *)&v5 viewDidDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SettingsViewControllerDidDisappearNotification" object:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SettingsViewController;
  [(SettingsViewController *)&v5 viewWillAppear:appear];
  [(SettingsViewController *)self setNeedsStatusBarAppearanceUpdate];
  [(CardView *)self->_cardView setLayoutStyle:1];
  [(SettingsViewController *)self _updateCompactVerticalLayout];
  [(SettingsViewController *)self _updatePreferredContentSize];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SettingsViewControllerWillAppearNotification" object:self];
}

- (void)_clearTableIfNeeded
{
  if (self->_settingsTableViewController)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:NSUserDefaultsDidChangeNotification object:0];

    settingsTableViewController = self->_settingsTableViewController;
    self->_settingsTableViewController = 0;
  }
}

- (void)_updateCompactVerticalLayout
{
  traitCollection = [(SettingsViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom])
  {
  }

  else
  {
    traitCollection2 = [(SettingsViewController *)self traitCollection];
    verticalSizeClass = [traitCollection2 verticalSizeClass];

    if (verticalSizeClass == 1)
    {
      v6 = 1;
      v7 = 1;
      goto LABEL_8;
    }
  }

  traitCollection3 = [(SettingsViewController *)self traitCollection];
  v6 = 0;
  v7 = [traitCollection3 verticalSizeClass] == 1 && -[SettingsViewController _adaptivePresentationStyle](self, "_adaptivePresentationStyle") != 2;
LABEL_8:
  tableViewController = [(SettingsViewController *)self tableViewController];
  [tableViewController setUseCompactVerticalLayout:v7];

  if ((v6 & 1) == 0)
  {
  }
}

- (void)_updateMargins
{
  if (sub_10000FA08(self) == 5)
  {
    view = [(SettingsViewController *)self view];
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v13 = view;
  }

  else
  {
    v7 = 0.0;
    if ([(SettingsViewController *)self _adaptivePresentationStyle]== 2)
    {
      v8 = 4.0;
    }

    else
    {
      v8 = 0.0;
    }

    view2 = [(SettingsViewController *)self view];
    [view2 safeAreaInsets];
    if (v10 <= 20.0)
    {
      view3 = [(SettingsViewController *)self view];
      [view3 safeAreaInsets];
      v7 = 20.0 - v12;
    }

    view = [(SettingsViewController *)self view];
    v13 = view;
    v4 = v8;
    v5 = v7;
    v6 = v8;
  }

  [view setLayoutMargins:{0.0, v4, v5, v6}];
}

- (int64_t)_adaptivePresentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  chrome = [WeakRetained chrome];
  traitCollection = [chrome traitCollection];

  presentationController = [(SettingsViewController *)self presentationController];
  v7 = [presentationController adaptivePresentationStyleForTraitCollection:traitCollection];

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SettingsViewController;
  coordinatorCopy = coordinator;
  [(SettingsViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C31094;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SettingsViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:change];
  [(SettingsViewController *)self _updateMargins];
  [(SettingsViewController *)self _updateCompactVerticalLayout];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = SettingsViewController;
  [(SettingsViewController *)&v24 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(SettingsViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(SettingsViewController *)self view];
  [view2 setPreservesSuperviewLayoutMargins:0];

  view3 = [(SettingsViewController *)self view];
  [view3 setInsetsLayoutMarginsFromSafeArea:0];

  [(SettingsViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  view4 = [(SettingsViewController *)self view];
  [view4 setAccessibilityIdentifier:@"SettingsView"];

  [(SettingsViewController *)self _updateMargins];
  contentView = [(CardView *)self->_cardView contentView];
  if (sub_10000FA08(self) == 5)
  {
    [(SettingsViewController *)self view];
    contentView = v9 = contentView;
  }

  else
  {
    v10 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    headerView = self->_headerView;
    self->_headerView = v10;

    [(ContainerHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ContainerHeaderView *)self->_headerView setAccessibilityIdentifier:@"SettingsHeaderView"];
    [(ContainerHeaderView *)self->_headerView setDelegate:self];
    [(ContainerHeaderView *)self->_headerView setHairLineAlpha:0.0];
    [(ContainerHeaderView *)self->_headerView setShouldCenterButtonVertically:1];
    [(ContainerHeaderView *)self->_headerView setVerticalAlignmentOffset:4.0];
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"MAP_MODE_AND_SETTINGS_TITLE" value:@"localized string not found" table:0];
    [(ContainerHeaderView *)self->_headerView setTitle:v13];

    contentView2 = [(CardView *)self->_cardView contentView];
    [contentView2 addSubview:self->_headerView];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDebugMenuTriggerTap:"];
    [v9 setNumberOfTapsRequired:2];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDebugMenuTriggerTap:"];
    [v15 setNumberOfTapsRequired:1];
    [v9 setNumberOfTouchesRequired:1];
    [v15 setNumberOfTouchesRequired:2];
    [(ContainerHeaderView *)self->_headerView addGestureRecognizer:v9];
    [(ContainerHeaderView *)self->_headerView addGestureRecognizer:v15];
  }

  tableViewController = [(SettingsViewController *)self tableViewController];
  [(SettingsViewController *)self addChildViewController:tableViewController];

  tableViewController2 = [(SettingsViewController *)self tableViewController];
  view5 = [tableViewController2 view];
  [contentView addSubview:view5];

  tableViewController3 = [(SettingsViewController *)self tableViewController];
  [tableViewController3 didMoveToParentViewController:self];

  tableViewController4 = [(SettingsViewController *)self tableViewController];
  view6 = [tableViewController4 view];
  [view6 setFrame:{0.0, 0.0, 422.0, 1000.0}];

  tableViewController5 = [(SettingsViewController *)self tableViewController];
  view7 = [tableViewController5 view];
  [view7 layoutIfNeeded];

  [(SettingsViewController *)self setupConstraints];
  [(SettingsViewController *)self _updateCompactVerticalLayout];
  [(SettingsViewController *)self _updatePreferredContentSize];
}

- (void)loadView
{
  if (sub_10000FA08(self) == 5)
  {
    v6.receiver = self;
    v6.super_class = SettingsViewController;
    [(SettingsViewController *)&v6 loadView];
  }

  else
  {
    v3 = [[CardView alloc] initAllowingBlurred:1];
    cardView = self->_cardView;
    self->_cardView = v3;

    [(CardView *)self->_cardView setHideGrabber:1];
    v5 = self->_cardView;

    [(SettingsViewController *)self setView:v5];
  }
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"headerViewButtonTapped:buttonType:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (id)tableViewController
{
  settingsTableViewController = self->_settingsTableViewController;
  if (!settingsTableViewController)
  {
    v4 = objc_alloc_init(SettingsTableViewController);
    v5 = self->_settingsTableViewController;
    self->_settingsTableViewController = v4;

    settingsController = [(SettingsViewController *)self settingsController];
    [(SettingsTableViewController *)self->_settingsTableViewController setSettingsController:settingsController];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"settingsTableViewControllerDidReloadData:" name:@"SettingsTableViewControllerDidReloadDataNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"settingsTableViewControllerDidScroll:" name:@"SettingsTableViewControllerDidScrollNotification" object:0];

    settingsTableViewController = self->_settingsTableViewController;
  }

  return settingsTableViewController;
}

@end
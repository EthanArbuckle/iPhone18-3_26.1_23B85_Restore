@interface SettingsViewController
- (SettingsController)settingsController;
- (id)keyCommands;
- (id)tableViewController;
- (int64_t)_adaptivePresentationStyle;
- (int64_t)preferredStatusBarStyle;
- (void)_clearTableIfNeeded;
- (void)_handleDebugMenuTriggerTap:(id)a3;
- (void)_updateCompactVerticalLayout;
- (void)_updateMargins;
- (void)_updatePreferredContentSize;
- (void)dismissCustomPresentationContainee;
- (void)loadView;
- (void)settingsTableViewControllerDidReloadData:(id)a3;
- (void)settingsTableViewControllerDidScroll:(id)a3;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTheme;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SettingsViewController

- (SettingsController)settingsController
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);

  return WeakRetained;
}

- (void)_handleDebugMenuTriggerTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(SettingsViewController *)self _maps_mapsSceneDelegate];
    [v4 presentMapsDebugControllerIfEnabled];
  }
}

- (void)dismissCustomPresentationContainee
{
  v3 = [(SettingsViewController *)self dismissSettingsViewControllerHandler];

  if (v3)
  {
    v4 = [(SettingsViewController *)self dismissSettingsViewControllerHandler];
    v4[2]();
  }

  objc_initWeak(&location, self);
  v5 = [(SettingsViewController *)self presentingViewController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100C302F4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [v5 dismissViewControllerAnimated:1 completion:v6];

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
  v2 = [(SettingsViewController *)self theme];
  v3 = [v2 statusBarStyle];

  return v3;
}

- (void)setupConstraints
{
  v3 = [(SettingsViewController *)self tableViewController];
  v4 = [v3 view];

  v39 = [v4 leadingAnchor];
  v41 = [(SettingsViewController *)self view];
  v37 = [v41 layoutMarginsGuide];
  v35 = [v37 leadingAnchor];
  v33 = [v39 constraintEqualToAnchor:v35];
  v47[0] = v33;
  v5 = [v4 trailingAnchor];
  v6 = [(SettingsViewController *)self view];
  v7 = [v6 layoutMarginsGuide];
  v8 = [v7 trailingAnchor];
  v9 = [v5 constraintEqualToAnchor:v8];
  v47[1] = v9;
  v44 = v4;
  v10 = [v4 bottomAnchor];
  v11 = [(SettingsViewController *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v47[2] = v13;
  v43 = [NSArray arrayWithObjects:v47 count:3];

  if (sub_10000FA08(self) == 5)
  {
    v14 = [v44 topAnchor];
    v15 = [(SettingsViewController *)self view];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v46 = v17;
    v18 = [NSArray arrayWithObjects:&v46 count:1];
    v19 = v43;
    v20 = [v43 arrayByAddingObjectsFromArray:v18];
  }

  else
  {
    v38 = [(ContainerHeaderView *)self->_headerView leadingAnchor];
    v32 = [(SettingsViewController *)self view];
    v40 = [v32 layoutMarginsGuide];
    v30 = [v40 leadingAnchor];
    v18 = [v38 constraintEqualToAnchor:v30];
    v45[0] = v18;
    v36 = [(ContainerHeaderView *)self->_headerView trailingAnchor];
    v42 = [(SettingsViewController *)self view];
    v34 = [v42 layoutMarginsGuide];
    v31 = [v34 trailingAnchor];
    v29 = [v36 constraintEqualToAnchor:v31];
    v45[1] = v29;
    v28 = [(ContainerHeaderView *)self->_headerView topAnchor];
    v21 = [(SettingsViewController *)self view];
    v22 = [v21 topAnchor];
    v23 = [v28 constraintEqualToAnchor:v22];
    v45[2] = v23;
    v24 = [v44 topAnchor];
    v25 = [(ContainerHeaderView *)self->_headerView bottomAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v45[3] = v26;
    v27 = [NSArray arrayWithObjects:v45 count:4];
    v20 = [v43 arrayByAddingObjectsFromArray:v27];

    v15 = v32;
    v17 = v30;

    v16 = v40;
    v14 = v38;

    v19 = v36;
  }

  [NSLayoutConstraint activateConstraints:v20];
}

- (void)settingsTableViewControllerDidReloadData:(id)a3
{
  v4 = [(SettingsViewController *)self tableViewController];
  v5 = [v4 view];
  [v5 layoutIfNeeded];

  v6 = [(SettingsViewController *)self navigationController];
  v7 = [v6 view];
  v8 = [v7 superview];
  [v8 setNeedsLayout];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C30948;
  v9[3] = &unk_101661B18;
  v9[4] = self;
  [UIView animateWithDuration:v9 animations:0.25];
}

- (void)settingsTableViewControllerDidScroll:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"contentOffset"];
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
  v5 = [(SettingsViewController *)self tableViewController];
  [v5 desiredHeight];
  v7 = v6;

  v8 = [(SettingsViewController *)self view];
  [v8 layoutMargins];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SettingsViewController;
  [(SettingsViewController *)&v5 viewDidDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"SettingsViewControllerDidDisappearNotification" object:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SettingsViewController;
  [(SettingsViewController *)&v5 viewWillAppear:a3];
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
  v3 = [(SettingsViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom])
  {
  }

  else
  {
    v4 = [(SettingsViewController *)self traitCollection];
    v5 = [v4 verticalSizeClass];

    if (v5 == 1)
    {
      v6 = 1;
      v7 = 1;
      goto LABEL_8;
    }
  }

  v9 = [(SettingsViewController *)self traitCollection];
  v6 = 0;
  v7 = [v9 verticalSizeClass] == 1 && -[SettingsViewController _adaptivePresentationStyle](self, "_adaptivePresentationStyle") != 2;
LABEL_8:
  v8 = [(SettingsViewController *)self tableViewController];
  [v8 setUseCompactVerticalLayout:v7];

  if ((v6 & 1) == 0)
  {
  }
}

- (void)_updateMargins
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = [(SettingsViewController *)self view];
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    v13 = v3;
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

    v9 = [(SettingsViewController *)self view];
    [v9 safeAreaInsets];
    if (v10 <= 20.0)
    {
      v11 = [(SettingsViewController *)self view];
      [v11 safeAreaInsets];
      v7 = 20.0 - v12;
    }

    v3 = [(SettingsViewController *)self view];
    v13 = v3;
    v4 = v8;
    v5 = v7;
    v6 = v8;
  }

  [v3 setLayoutMargins:{0.0, v4, v5, v6}];
}

- (int64_t)_adaptivePresentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsController);
  v4 = [WeakRetained chrome];
  v5 = [v4 traitCollection];

  v6 = [(SettingsViewController *)self presentationController];
  v7 = [v6 adaptivePresentationStyleForTraitCollection:v5];

  return v7;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = SettingsViewController;
  v7 = a4;
  [(SettingsViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100C31094;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = SettingsViewController;
  [(MapsThemeViewController *)&v4 traitCollectionDidChange:a3];
  [(SettingsViewController *)self _updateMargins];
  [(SettingsViewController *)self _updateCompactVerticalLayout];
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = SettingsViewController;
  [(SettingsViewController *)&v24 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(SettingsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(SettingsViewController *)self view];
  [v5 setPreservesSuperviewLayoutMargins:0];

  v6 = [(SettingsViewController *)self view];
  [v6 setInsetsLayoutMarginsFromSafeArea:0];

  [(SettingsViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  v7 = [(SettingsViewController *)self view];
  [v7 setAccessibilityIdentifier:@"SettingsView"];

  [(SettingsViewController *)self _updateMargins];
  v8 = [(CardView *)self->_cardView contentView];
  if (sub_10000FA08(self) == 5)
  {
    [(SettingsViewController *)self view];
    v8 = v9 = v8;
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

    v14 = [(CardView *)self->_cardView contentView];
    [v14 addSubview:self->_headerView];

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDebugMenuTriggerTap:"];
    [v9 setNumberOfTapsRequired:2];
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleDebugMenuTriggerTap:"];
    [v15 setNumberOfTapsRequired:1];
    [v9 setNumberOfTouchesRequired:1];
    [v15 setNumberOfTouchesRequired:2];
    [(ContainerHeaderView *)self->_headerView addGestureRecognizer:v9];
    [(ContainerHeaderView *)self->_headerView addGestureRecognizer:v15];
  }

  v16 = [(SettingsViewController *)self tableViewController];
  [(SettingsViewController *)self addChildViewController:v16];

  v17 = [(SettingsViewController *)self tableViewController];
  v18 = [v17 view];
  [v8 addSubview:v18];

  v19 = [(SettingsViewController *)self tableViewController];
  [v19 didMoveToParentViewController:self];

  v20 = [(SettingsViewController *)self tableViewController];
  v21 = [v20 view];
  [v21 setFrame:{0.0, 0.0, 422.0, 1000.0}];

  v22 = [(SettingsViewController *)self tableViewController];
  v23 = [v22 view];
  [v23 layoutIfNeeded];

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

    v6 = [(SettingsViewController *)self settingsController];
    [(SettingsTableViewController *)self->_settingsTableViewController setSettingsController:v6];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"settingsTableViewControllerDidReloadData:" name:@"SettingsTableViewControllerDidReloadDataNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:self selector:"settingsTableViewControllerDidScroll:" name:@"SettingsTableViewControllerDidScrollNotification" object:0];

    settingsTableViewController = self->_settingsTableViewController;
  }

  return settingsTableViewController;
}

@end
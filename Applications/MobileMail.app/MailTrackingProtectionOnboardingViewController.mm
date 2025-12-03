@interface MailTrackingProtectionOnboardingViewController
- (OBTrayButton)continueButton;
- (OBWelcomeController)welcomeController;
- (UICollectionView)collectionView;
- (id)_configuredCollectionView;
- (void)_appDidBecomeActive:(id)active;
- (void)_configureCell:(id)cell viewModel:(id)model;
- (void)_configureChildViewController:(id)controller;
- (void)_configureOnboardingViewController;
- (void)_updateSelectionForCellAtIndexPath:(id)path isSelected:(BOOL)selected;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation MailTrackingProtectionOnboardingViewController

- (void)viewDidLoad
{
  [(MailTrackingProtectionOnboardingViewController *)self setModalInPresentation:1];
  [(MailTrackingProtectionOnboardingViewController *)self _configureOnboardingViewController];
  v3 = [MailTrackingProtectionOnboardingTableViewCellViewModel alloc];
  v4 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_PROTECT_TITLE");
  v5 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_PROTECT_DETAIL");
  v6 = [UIImage systemImageNamed:MFImageGlyphProtectedEnvelope];
  v7 = [(MailTrackingProtectionOnboardingTableViewCellViewModel *)v3 initWithTitle:v4 detail:v5 image:v6 isSelected:0 preventTracking:1 accessibilityIdentifier:@"MAIL_PRIVACY_PROTECTION_ENABLE"];
  v18[0] = v7;
  v8 = [MailTrackingProtectionOnboardingTableViewCellViewModel alloc];
  v9 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_ALLOW_TRACKING_TITLE");
  v10 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_ALLOW_TRACKING_DETAIL");
  v11 = [UIImage systemImageNamed:MFImageGlyphOpenEnvelope];
  v12 = [(MailTrackingProtectionOnboardingTableViewCellViewModel *)v8 initWithTitle:v9 detail:v10 image:v11 isSelected:0 preventTracking:0 accessibilityIdentifier:@"MAIL_PRIVACY_PROTECTION_DISABLE"];
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [(MailTrackingProtectionOnboardingViewController *)self setViewModels:v13];

  v14 = objc_alloc_init(NSDiffableDataSourceSnapshot);
  [v14 appendSectionsWithIdentifiers:&off_100674F70];
  [v14 appendItemsWithIdentifiers:&off_100674F88 intoSectionWithIdentifier:&off_100674258];
  [v14 appendItemsWithIdentifiers:&off_100674FA0 intoSectionWithIdentifier:&off_100674270];
  dataSource = [(MailTrackingProtectionOnboardingViewController *)self dataSource];
  [dataSource applySnapshot:v14 animatingDifferences:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_appDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

  welcomeController = [(MailTrackingProtectionOnboardingViewController *)self welcomeController];
  [welcomeController setModalPresentationStyle:2];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailTrackingProtectionOnboardingViewController;
  [(MailTrackingProtectionOnboardingViewController *)&v4 dealloc];
}

- (void)_configureOnboardingViewController
{
  v4 = objc_alloc_init(MailTrackingProtectionOnboardingViewControllerValues);
  [(MailTrackingProtectionOnboardingViewController *)self setValues:v4];

  values = [(MailTrackingProtectionOnboardingViewController *)self values];
  icon = [values icon];

  v6 = [OBWelcomeController alloc];
  v7 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_TITLE");
  v8 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_DETAIL");
  v9 = [v6 initWithTitle:v7 detailText:v8 icon:icon contentLayout:2];

  v46 = v9;
  [(MailTrackingProtectionOnboardingViewController *)self setWelcomeController:v9];
  values2 = [(MailTrackingProtectionOnboardingViewController *)self values];
  learnMoreButton = [values2 learnMoreButton];

  v11 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_LEARN_MORE");
  [learnMoreButton setTitle:v11 forState:0];

  headerView = [v9 headerView];
  [headerView addAccessoryButton:learnMoreButton];

  objc_initWeak(&location, self);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10013C384;
  v56[3] = &unk_10064F278;
  objc_copyWeak(&v57, &location);
  v13 = [UIAction actionWithHandler:v56];
  [learnMoreButton addAction:v13 forControlEvents:64];

  v44 = +[OBBoldTrayButton boldButton];
  [v44 setEnabled:0];
  v14 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_CONTINUE");
  [v44 setTitle:v14 forState:0];

  [(MailTrackingProtectionOnboardingViewController *)self setContinueButton:v44];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_10013C590;
  v54[3] = &unk_100651400;
  objc_copyWeak(v55, &location);
  v55[1] = a2;
  v15 = [UIAction actionWithHandler:v54];
  [v44 addAction:v15 forControlEvents:0x2000];

  buttonTray = [v9 buttonTray];
  [buttonTray addButton:v44];

  _configuredCollectionView = [(MailTrackingProtectionOnboardingViewController *)self _configuredCollectionView];
  contentView = [v9 contentView];
  [contentView addSubview:_configuredCollectionView];

  [(MailTrackingProtectionOnboardingViewController *)self setCollectionView:_configuredCollectionView];
  heightAnchor = [_configuredCollectionView heightAnchor];
  v19 = [heightAnchor constraintEqualToConstant:50.0];
  [(MailTrackingProtectionOnboardingViewController *)self setCollectionViewHeightConstraint:v19];

  widthAnchor = [_configuredCollectionView widthAnchor];
  values3 = [(MailTrackingProtectionOnboardingViewController *)self values];
  [values3 widthConstant];
  v22 = [widthAnchor constraintEqualToConstant:?];
  [(MailTrackingProtectionOnboardingViewController *)self setCollectionViewWidthConstraint:v22];

  topAnchor = [_configuredCollectionView topAnchor];
  contentView2 = [v46 contentView];
  topAnchor2 = [contentView2 topAnchor];
  values4 = [(MailTrackingProtectionOnboardingViewController *)self values];
  [values4 topConstant];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];

  [_configuredCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v59[0] = v41;
  bottomAnchor = [_configuredCollectionView bottomAnchor];
  contentView3 = [v46 contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:-50.0 constant:?];
  v59[1] = v27;
  centerXAnchor = [_configuredCollectionView centerXAnchor];
  contentView4 = [v46 contentView];
  centerXAnchor2 = [contentView4 centerXAnchor];
  v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v59[2] = v31;
  collectionViewHeightConstraint = [(MailTrackingProtectionOnboardingViewController *)self collectionViewHeightConstraint];
  v59[3] = collectionViewHeightConstraint;
  collectionViewWidthConstraint = [(MailTrackingProtectionOnboardingViewController *)self collectionViewWidthConstraint];
  v59[4] = collectionViewWidthConstraint;
  v34 = [NSArray arrayWithObjects:v59 count:5];
  [NSLayoutConstraint activateConstraints:v34];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10013C814;
  v51[3] = &unk_10064CB70;
  objc_copyWeak(&v53, &location);
  v35 = _configuredCollectionView;
  v52 = v35;
  v36 = [v35 ef_observeKeyPath:@"contentSize" options:1 autoCancelToken:1 usingBlock:v51];
  [(MailTrackingProtectionOnboardingViewController *)self setContentSizeObserver:v36];

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10013C950;
  v48[3] = &unk_10064CB70;
  objc_copyWeak(&v50, &location);
  v37 = v44;
  v49 = v37;
  v38 = [v37 ef_observeKeyPath:@"bounds" options:1 autoCancelToken:1 usingBlock:v48];
  [(MailTrackingProtectionOnboardingViewController *)self setButtonBoundsObserver:v38];

  [(MailTrackingProtectionOnboardingViewController *)self _configureChildViewController:v46];
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v53);
  objc_destroyWeak(v55);

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);
}

- (void)_configureChildViewController:(id)controller
{
  controllerCopy = controller;
  [(MailTrackingProtectionOnboardingViewController *)self addChildViewController:controllerCopy];
  view = [(MailTrackingProtectionOnboardingViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  [controllerCopy didMoveToParentViewController:self];
  view3 = [controllerCopy view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [controllerCopy view];
  topAnchor = [view4 topAnchor];
  view5 = [(MailTrackingProtectionOnboardingViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:?];
  v29[0] = v22;
  view6 = [controllerCopy view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(MailTrackingProtectionOnboardingViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:?];
  v29[1] = v18;
  view8 = [controllerCopy view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(MailTrackingProtectionOnboardingViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v9;
  view10 = [controllerCopy view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(MailTrackingProtectionOnboardingViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[3] = v14;
  v15 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v15];
}

- (id)_configuredCollectionView
{
  v3 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:&stru_100651440];
  v4 = [[UICollectionView alloc] initWithFrame:v3 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v4 setScrollEnabled:0];
  objc_initWeak(&location, self);
  v5 = objc_opt_class();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10013D224;
  v18[3] = &unk_100651468;
  objc_copyWeak(&v19, &location);
  v6 = [UICollectionViewCellRegistration registrationWithCellClass:v5 configurationHandler:v18];
  v7 = [UICollectionViewDiffableDataSource alloc];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10013D2B8;
  v15 = &unk_100651490;
  v8 = v6;
  v16 = v8;
  selfCopy = self;
  v9 = [v7 initWithCollectionView:v4 cellProvider:&v12];
  [(MailTrackingProtectionOnboardingViewController *)self setDataSource:v9, v12, v13, v14, v15];

  dataSource = [(MailTrackingProtectionOnboardingViewController *)self dataSource];
  [v4 setDataSource:dataSource];

  [v4 setDelegate:self];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_configureCell:(id)cell viewModel:(id)model
{
  cellCopy = cell;
  modelCopy = model;
  if ([modelCopy isSelected])
  {
    +[UIColor tintColor];
  }

  else
  {
    +[UIColor systemGray5Color];
  }
  v8 = ;
  cGColor = [v8 CGColor];
  layer = [cellCopy layer];
  [layer setBorderColor:cGColor];

  isSelected = [modelCopy isSelected];
  layer2 = [cellCopy layer];
  v13 = layer2;
  v14 = 1.0;
  if (isSelected)
  {
    v14 = 2.0;
  }

  [layer2 setBorderWidth:v14];

  v15 = objc_alloc_init(_UICellAccessoryConfigurationMultiselect);
  v41 = v15;
  v16 = [NSArray arrayWithObjects:&v41 count:1];
  [cellCopy setTrailingAccessoryConfigurations:v16];

  values = [(MailTrackingProtectionOnboardingViewController *)self values];
  cellConfiguration = [values cellConfiguration];

  title = [modelCopy title];
  [cellConfiguration setText:title];

  values2 = [(MailTrackingProtectionOnboardingViewController *)self values];
  primaryTextFont = [values2 primaryTextFont];
  textProperties = [cellConfiguration textProperties];
  [textProperties setFont:primaryTextFont];

  detail = [modelCopy detail];
  [cellConfiguration setSecondaryText:detail];

  values3 = [(MailTrackingProtectionOnboardingViewController *)self values];
  secondaryTextPropertiesColor = [values3 secondaryTextPropertiesColor];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryTextPropertiesColor];

  values4 = [(MailTrackingProtectionOnboardingViewController *)self values];
  secondaryTextPropertiesFont = [values4 secondaryTextPropertiesFont];
  secondaryTextProperties2 = [cellConfiguration secondaryTextProperties];
  [secondaryTextProperties2 setFont:secondaryTextPropertiesFont];

  image = [modelCopy image];
  [cellConfiguration setImage:image];

  values5 = [(MailTrackingProtectionOnboardingViewController *)self values];
  imageSymbolConfiguration = [values5 imageSymbolConfiguration];
  imageProperties = [cellConfiguration imageProperties];
  [imageProperties setPreferredSymbolConfiguration:imageSymbolConfiguration];

  [cellConfiguration setImageToTextPadding:28.0];
  [cellConfiguration directionalLayoutMargins];
  [cellConfiguration setDirectionalLayoutMargins:{14.0, 26.0, 14.0}];
  [cellConfiguration setTextToSecondaryTextVerticalPadding:2.0];
  [cellCopy setContentConfiguration:cellConfiguration];
  accessibilityIdentifier = [modelCopy accessibilityIdentifier];
  [cellCopy setAccessibilityIdentifier:accessibilityIdentifier];

  backgroundConfiguration = [cellCopy backgroundConfiguration];
  v36 = [backgroundConfiguration copy];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = +[UIBackgroundConfiguration listGroupedCellConfiguration];
  }

  v39 = v38;

  v40 = +[UIColor systemBackgroundColor];
  [v39 setBackgroundColor:v40];

  [cellCopy setBackgroundConfiguration:v39];
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndexPath = [(MailTrackingProtectionOnboardingViewController *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    selectedIndexPath2 = [(MailTrackingProtectionOnboardingViewController *)self selectedIndexPath];
    [(MailTrackingProtectionOnboardingViewController *)self _updateSelectionForCellAtIndexPath:selectedIndexPath2 isSelected:0];
  }

  [(MailTrackingProtectionOnboardingViewController *)self setSelectedIndexPath:pathCopy];
  [(MailTrackingProtectionOnboardingViewController *)self _updateSelectionForCellAtIndexPath:pathCopy isSelected:1];
  continueButton = [(MailTrackingProtectionOnboardingViewController *)self continueButton];
  [continueButton setEnabled:1];
}

- (void)_updateSelectionForCellAtIndexPath:(id)path isSelected:(BOOL)selected
{
  selectedCopy = selected;
  pathCopy = path;
  v6 = sub_10013C774(self, pathCopy);
  [v6 setSelected:selectedCopy];
  collectionView = [(MailTrackingProtectionOnboardingViewController *)self collectionView];
  v8 = [collectionView cellForItemAtIndexPath:pathCopy];

  [(MailTrackingProtectionOnboardingViewController *)self _configureCell:v8 viewModel:v6];
}

- (void)_appDidBecomeActive:(id)active
{
  v5 = +[NSUserDefaults em_userDefaults];
  shouldPresentRemoteContentOptionsSheet = [v5 shouldPresentRemoteContentOptionsSheet];

  if ((shouldPresentRemoteContentOptionsSheet & 1) == 0)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"MailTrackingProtectionOnboardingViewControllerDidCompleteNotification" object:self];
  }
}

- (OBWelcomeController)welcomeController
{
  WeakRetained = objc_loadWeakRetained(&self->_welcomeController);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (OBTrayButton)continueButton
{
  WeakRetained = objc_loadWeakRetained(&self->_continueButton);

  return WeakRetained;
}

@end
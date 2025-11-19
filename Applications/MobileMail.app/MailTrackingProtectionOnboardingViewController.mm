@interface MailTrackingProtectionOnboardingViewController
- (OBTrayButton)continueButton;
- (OBWelcomeController)welcomeController;
- (UICollectionView)collectionView;
- (id)_configuredCollectionView;
- (void)_appDidBecomeActive:(id)a3;
- (void)_configureCell:(id)a3 viewModel:(id)a4;
- (void)_configureChildViewController:(id)a3;
- (void)_configureOnboardingViewController;
- (void)_updateSelectionForCellAtIndexPath:(id)a3 isSelected:(BOOL)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
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
  v15 = [(MailTrackingProtectionOnboardingViewController *)self dataSource];
  [v15 applySnapshot:v14 animatingDifferences:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_appDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

  v17 = [(MailTrackingProtectionOnboardingViewController *)self welcomeController];
  [v17 setModalPresentationStyle:2];
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

  v5 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v43 = [v5 icon];

  v6 = [OBWelcomeController alloc];
  v7 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_TITLE");
  v8 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_DETAIL");
  v9 = [v6 initWithTitle:v7 detailText:v8 icon:v43 contentLayout:2];

  v46 = v9;
  [(MailTrackingProtectionOnboardingViewController *)self setWelcomeController:v9];
  v10 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v45 = [v10 learnMoreButton];

  v11 = sub_10013B8C4(@"MAIL_TRACKING_PROTECTION_LEARN_MORE");
  [v45 setTitle:v11 forState:0];

  v12 = [v9 headerView];
  [v12 addAccessoryButton:v45];

  objc_initWeak(&location, self);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_10013C384;
  v56[3] = &unk_10064F278;
  objc_copyWeak(&v57, &location);
  v13 = [UIAction actionWithHandler:v56];
  [v45 addAction:v13 forControlEvents:64];

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

  v16 = [v9 buttonTray];
  [v16 addButton:v44];

  v47 = [(MailTrackingProtectionOnboardingViewController *)self _configuredCollectionView];
  v17 = [v9 contentView];
  [v17 addSubview:v47];

  [(MailTrackingProtectionOnboardingViewController *)self setCollectionView:v47];
  v18 = [v47 heightAnchor];
  v19 = [v18 constraintEqualToConstant:50.0];
  [(MailTrackingProtectionOnboardingViewController *)self setCollectionViewHeightConstraint:v19];

  v20 = [v47 widthAnchor];
  v21 = [(MailTrackingProtectionOnboardingViewController *)self values];
  [v21 widthConstant];
  v22 = [v20 constraintEqualToConstant:?];
  [(MailTrackingProtectionOnboardingViewController *)self setCollectionViewWidthConstraint:v22];

  v23 = [v47 topAnchor];
  v24 = [v46 contentView];
  v25 = [v24 topAnchor];
  v26 = [(MailTrackingProtectionOnboardingViewController *)self values];
  [v26 topConstant];
  v41 = [v23 constraintEqualToAnchor:v25 constant:?];

  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59[0] = v41;
  v42 = [v47 bottomAnchor];
  v40 = [v46 contentView];
  v39 = [v40 bottomAnchor];
  v27 = [v42 constraintEqualToAnchor:-50.0 constant:?];
  v59[1] = v27;
  v28 = [v47 centerXAnchor];
  v29 = [v46 contentView];
  v30 = [v29 centerXAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v59[2] = v31;
  v32 = [(MailTrackingProtectionOnboardingViewController *)self collectionViewHeightConstraint];
  v59[3] = v32;
  v33 = [(MailTrackingProtectionOnboardingViewController *)self collectionViewWidthConstraint];
  v59[4] = v33;
  v34 = [NSArray arrayWithObjects:v59 count:5];
  [NSLayoutConstraint activateConstraints:v34];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10013C814;
  v51[3] = &unk_10064CB70;
  objc_copyWeak(&v53, &location);
  v35 = v47;
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

- (void)_configureChildViewController:(id)a3
{
  v4 = a3;
  [(MailTrackingProtectionOnboardingViewController *)self addChildViewController:v4];
  v5 = [(MailTrackingProtectionOnboardingViewController *)self view];
  v6 = [v4 view];
  [v5 addSubview:v6];

  [v4 didMoveToParentViewController:self];
  v7 = [v4 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [v4 view];
  v28 = [v25 topAnchor];
  v24 = [(MailTrackingProtectionOnboardingViewController *)self view];
  v23 = [v24 topAnchor];
  v22 = [v28 constraintEqualToAnchor:?];
  v29[0] = v22;
  v21 = [v4 view];
  v27 = [v21 leadingAnchor];
  v20 = [(MailTrackingProtectionOnboardingViewController *)self view];
  v19 = [v20 leadingAnchor];
  v18 = [v27 constraintEqualToAnchor:?];
  v29[1] = v18;
  v17 = [v4 view];
  v26 = [v17 bottomAnchor];
  v16 = [(MailTrackingProtectionOnboardingViewController *)self view];
  v8 = [v16 bottomAnchor];
  v9 = [v26 constraintEqualToAnchor:v8];
  v29[2] = v9;
  v10 = [v4 view];
  v11 = [v10 trailingAnchor];
  v12 = [(MailTrackingProtectionOnboardingViewController *)self view];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
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
  v17 = self;
  v9 = [v7 initWithCollectionView:v4 cellProvider:&v12];
  [(MailTrackingProtectionOnboardingViewController *)self setDataSource:v9, v12, v13, v14, v15];

  v10 = [(MailTrackingProtectionOnboardingViewController *)self dataSource];
  [v4 setDataSource:v10];

  [v4 setDelegate:self];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v4;
}

- (void)_configureCell:(id)a3 viewModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSelected])
  {
    +[UIColor tintColor];
  }

  else
  {
    +[UIColor systemGray5Color];
  }
  v8 = ;
  v9 = [v8 CGColor];
  v10 = [v6 layer];
  [v10 setBorderColor:v9];

  v11 = [v7 isSelected];
  v12 = [v6 layer];
  v13 = v12;
  v14 = 1.0;
  if (v11)
  {
    v14 = 2.0;
  }

  [v12 setBorderWidth:v14];

  v15 = objc_alloc_init(_UICellAccessoryConfigurationMultiselect);
  v41 = v15;
  v16 = [NSArray arrayWithObjects:&v41 count:1];
  [v6 setTrailingAccessoryConfigurations:v16];

  v17 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v18 = [v17 cellConfiguration];

  v19 = [v7 title];
  [v18 setText:v19];

  v20 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v21 = [v20 primaryTextFont];
  v22 = [v18 textProperties];
  [v22 setFont:v21];

  v23 = [v7 detail];
  [v18 setSecondaryText:v23];

  v24 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v25 = [v24 secondaryTextPropertiesColor];
  v26 = [v18 secondaryTextProperties];
  [v26 setColor:v25];

  v27 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v28 = [v27 secondaryTextPropertiesFont];
  v29 = [v18 secondaryTextProperties];
  [v29 setFont:v28];

  v30 = [v7 image];
  [v18 setImage:v30];

  v31 = [(MailTrackingProtectionOnboardingViewController *)self values];
  v32 = [v31 imageSymbolConfiguration];
  v33 = [v18 imageProperties];
  [v33 setPreferredSymbolConfiguration:v32];

  [v18 setImageToTextPadding:28.0];
  [v18 directionalLayoutMargins];
  [v18 setDirectionalLayoutMargins:{14.0, 26.0, 14.0}];
  [v18 setTextToSecondaryTextVerticalPadding:2.0];
  [v6 setContentConfiguration:v18];
  v34 = [v7 accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:v34];

  v35 = [v6 backgroundConfiguration];
  v36 = [v35 copy];
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

  [v6 setBackgroundConfiguration:v39];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(MailTrackingProtectionOnboardingViewController *)self selectedIndexPath];

  if (v5)
  {
    v6 = [(MailTrackingProtectionOnboardingViewController *)self selectedIndexPath];
    [(MailTrackingProtectionOnboardingViewController *)self _updateSelectionForCellAtIndexPath:v6 isSelected:0];
  }

  [(MailTrackingProtectionOnboardingViewController *)self setSelectedIndexPath:v8];
  [(MailTrackingProtectionOnboardingViewController *)self _updateSelectionForCellAtIndexPath:v8 isSelected:1];
  v7 = [(MailTrackingProtectionOnboardingViewController *)self continueButton];
  [v7 setEnabled:1];
}

- (void)_updateSelectionForCellAtIndexPath:(id)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = sub_10013C774(self, v9);
  [v6 setSelected:v4];
  v7 = [(MailTrackingProtectionOnboardingViewController *)self collectionView];
  v8 = [v7 cellForItemAtIndexPath:v9];

  [(MailTrackingProtectionOnboardingViewController *)self _configureCell:v8 viewModel:v6];
}

- (void)_appDidBecomeActive:(id)a3
{
  v5 = +[NSUserDefaults em_userDefaults];
  v4 = [v5 shouldPresentRemoteContentOptionsSheet];

  if ((v4 & 1) == 0)
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
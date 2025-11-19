@interface RAPHomeViewController
- (RAPHomeViewController)init;
- (id)_createLayout;
- (void)_setupViews;
- (void)_updateChinaDisclaimerView;
- (void)_updateConstraints;
- (void)_updateEmptyStateLayoutIfNeeded;
- (void)_updateReportButtonIfNeeded;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didTapOnMoreButtonForSectionType:(unint64_t)a3 sectionTitle:(id)a4;
- (void)didTapOnPrivacyText;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)loadDataSource;
- (void)tappedMenuForRAPHomeFooterToolBarView:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RAPHomeViewController

- (void)didTapOnMoreButtonForSectionType:(unint64_t)a3 sectionTitle:(id)a4
{
  v6 = a4;
  v8 = [[AllRAPHistoryViewController alloc] initWithReportSection:a3 sectionTitle:v6];

  v7 = [(ControlContaineeViewController *)self delegate];
  [(ControlContaineeViewController *)v8 setDelegate:v7];

  [(RAPHomeViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)didTapOnPrivacyText
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ControlContaineeViewController *)self delegate];
    [v5 viewController:self presentReportDetail:v9 fromEntryPoint:39];

    v6 = v9;
    if ([v6 reportStatus] == 2)
    {
      [GEOAPPortal captureUserAction:358 target:39 value:0];
    }

    else if ([v6 reportStatus] == 1)
    {
      v7 = [v6 reportType];
      if (v7 >= 0x16)
      {
        v8 = [NSString stringWithFormat:@"(unknown: %i)", v7];
      }

      else
      {
        v8 = *(&off_1016583A8 + v7);
      }

      [GEOAPPortal captureUserAction:357 target:39 value:v8];
    }
  }
}

- (void)dataSourceUpdated:(id)a3
{
  if (self->_reportsDataSource == a3)
  {
    [(UICollectionView *)self->_collectionView reloadData];

    [(RAPHomeViewController *)self _updateEmptyStateLayoutIfNeeded];
  }
}

- (void)loadDataSource
{
  v3 = [[RAPHomeDataSource alloc] initWithCollectionView:self->_collectionView updateLocation:0];
  reportsDataSource = self->_reportsDataSource;
  self->_reportsDataSource = v3;

  [self->_reportsDataSource setDelegate:self];
  [(RAPHomeDataSource *)self->_reportsDataSource setSupplementaryElementsDelegate:self];
  [(RAPHomeDataSource *)self->_reportsDataSource setEntryPoint:[(RAPHomeViewController *)self entryPoint]];
  [(UICollectionView *)self->_collectionView setDelegate:self->_reportsDataSource];
  [(UICollectionView *)self->_collectionView setDataSource:self->_reportsDataSource];
  v5 = self->_reportsDataSource;

  [(DataSource *)v5 setActive:1];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  [(ContaineeViewController *)self handleDismissAction:a3, a4];
  v5 = [(RAPHomeDataSource *)self->_reportsDataSource analyticsTarget];

  [GEOAPPortal captureUserAction:10109 target:v5 value:0];
}

- (void)tappedMenuForRAPHomeFooterToolBarView:(id)a3
{
  v3 = [a3 _maps_mapsSceneDelegate];
  v4 = [v3 rapPresenter];
  v5 = [v4 presentOfflineAlertIfNecessaryWithCompletion:0];

  if (v5)
  {
    v6 = sub_100EC2CFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "can't present RAP menu because Maps is offline", v7, 2u);
    }
  }

  [GEOAPPortal captureUserAction:5013 target:39 value:0];
}

- (void)_updateEmptyStateLayoutIfNeeded
{
  v3 = [(RAPHomeDataSource *)self->_reportsDataSource isEmpty];
  emptyStateView = self->_emptyStateView;
  if (v3)
  {
    if (!emptyStateView)
    {
      v5 = [[_TtC4Maps14EmptyStateView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(EmptyStateView *)v5 setAccessibilityIdentifier:@"RAPReportHomeEmptyStateView"];
      [(EmptyStateView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [(ContaineeViewController *)self contentView];
      [v6 addSubview:v5];

      v42 = [(EmptyStateView *)v5 centerYAnchor];
      v41 = [(UICollectionView *)self->_collectionView centerYAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v43[0] = v40;
      v38 = [(EmptyStateView *)v5 leadingAnchor];
      v39 = [(ContaineeViewController *)self contentView];
      v7 = [v39 leadingAnchor];
      v8 = [v38 constraintEqualToAnchor:v7 constant:16.0];
      v43[1] = v8;
      v9 = [(EmptyStateView *)v5 trailingAnchor];
      v10 = [(ContaineeViewController *)self contentView];
      v11 = [v10 trailingAnchor];
      v12 = [v9 constraintEqualToAnchor:v11 constant:-16.0];
      v43[2] = v12;
      v13 = [NSArray arrayWithObjects:v43 count:3];
      [NSLayoutConstraint activateConstraints:v13];

      v14 = self->_emptyStateView;
      self->_emptyStateView = v5;
    }

    v15 = objc_alloc_init(NSTextAttachment);
    v16 = [UIImage systemImageNamed:@"square.and.pencil"];
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v17 pointSize];
    v18 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:1 scale:?];
    v19 = [v16 imageWithConfiguration:v18];
    v20 = [v19 imageWithRenderingMode:2];
    [v15 setImage:v20];

    v21 = [v15 image];
    [v21 size];
    [v15 setBounds:{0.0, -2.0, v22, v23}];

    v24 = [NSAttributedString attributedStringWithAttachment:v15];
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"[Reports] No Reports" value:@"localized string not found" table:0];
    [(EmptyStateView *)self->_emptyStateView setTitle:v26];

    v27 = sub_10000FA08(self);
    v28 = +[NSBundle mainBundle];
    v29 = v28;
    if (v27 == 5)
    {
      v30 = [v28 localizedStringForKey:@"[Reports][Mac] You can report a street issue value:place issue table:{route issue by tapping %@ %@", @"localized string not found", 0}];

      v31 = [[NSAttributedString alloc] initWithString:v30];
      v32 = [NSMutableAttributedString localizedAttributedStringWithFormat:v31, v24];
    }

    else
    {
      v30 = [v28 localizedStringForKey:@"[Reports] You can report a street issue value:place issue table:{route issue by tapping %@ %@", @"localized string not found", 0}];

      v31 = [[NSAttributedString alloc] initWithString:v30];
      v34 = [NSAttributedString alloc];
      v35 = +[NSBundle mainBundle];
      v36 = [v35 localizedStringForKey:@"[Reports] Report a New Issue" value:@"localized string not found" table:0];
      v37 = [v34 initWithString:v36];

      v32 = [NSMutableAttributedString localizedAttributedStringWithFormat:v31, v24, v37];
    }

    [(EmptyStateView *)self->_emptyStateView setAttributedSubtitle:v32];
  }

  else
  {
    [(EmptyStateView *)emptyStateView removeFromSuperview];
    v33 = self->_emptyStateView;
    self->_emptyStateView = 0;
  }
}

- (void)_updateReportButtonIfNeeded
{
  if (!self->_reportButton && sub_10000FA08(self) == 5)
  {
    if ([(RAPHomeViewController *)self _isRAPNewUI])
    {
      v3 = [UIButton _maps_cardButtonMacCustomButtonWithSystemImageNamed:@"square.and.pencil"];
      [(UIButton *)v3 setShowsMenuAsPrimaryAction:1];
      v4 = [(RAPHomeDataSource *)self->_reportsDataSource RAPHomeReportMenu];
      [(UIButton *)v3 setMenu:v4];

      [(UIButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = +[UIColor secondaryLabelColor];
      [(UIButton *)v3 setTintColor:v5];

      [(ContainerHeaderView *)self->_titleHeaderView addSubview:v3];
      v6 = [(UIButton *)v3 trailingAnchor];
      v7 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
      v8 = [v6 constraintEqualToAnchor:v7 constant:-52.0];
      v14[0] = v8;
      v9 = [(UIButton *)v3 topAnchor];
      v10 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
      v11 = [v9 constraintEqualToAnchor:v10 constant:12.0];
      v14[1] = v11;
      v12 = [NSArray arrayWithObjects:v14 count:2];
      [NSLayoutConstraint activateConstraints:v12];

      reportButton = self->_reportButton;
      self->_reportButton = v3;
    }
  }
}

- (id)_createLayout
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100EC3588;
  v4[3] = &unk_101658368;
  v4[4] = self;
  v2 = [[UICollectionViewCompositionalLayout alloc] initWithSectionProvider:v4];

  return v2;
}

- (void)_updateConstraints
{
  [NSLayoutConstraint deactivateConstraints:self->_constraints];
  constraints = self->_constraints;
  self->_constraints = 0;

  v4 = [(ContaineeViewController *)self headerView];
  v5 = [(ContaineeViewController *)self contentView];
  v79 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v76 = [v4 topAnchor];
  v72 = [v79 constraintEqualToAnchor:v76];
  v91[0] = v72;
  v68 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v64 = [v4 leadingAnchor];
  v61 = [v68 constraintEqualToAnchor:v64];
  v91[1] = v61;
  v59 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v57 = [v4 trailingAnchor];
  v55 = [v59 constraintEqualToAnchor:v57];
  v91[2] = v55;
  v53 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v86 = v4;
  v51 = [v4 bottomAnchor];
  v49 = [v53 constraintEqualToAnchor:v51];
  v91[3] = v49;
  v47 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v6 = [v5 leadingAnchor];
  v7 = [v47 constraintEqualToAnchor:v6];
  v91[4] = v7;
  v8 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v9 = [v5 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v91[5] = v10;
  v11 = [(UICollectionView *)self->_collectionView topAnchor];
  v85 = v5;
  v12 = [v5 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v91[6] = v13;
  v14 = [NSArray arrayWithObjects:v91 count:7];
  v15 = self->_constraints;
  self->_constraints = v14;

  if (sub_10000FA08(self) == 5 || ![(RAPHomeViewController *)self _isRAPNewUI])
  {
    chinaDisclaimerView = self->_chinaDisclaimerView;
    if (!chinaDisclaimerView)
    {
      v17 = [(UICollectionView *)self->_collectionView bottomAnchor];
      v18 = v85;
      v19 = [v85 bottomAnchor];
      v27 = [v17 constraintEqualToAnchor:v19 constant:-8.0];
      v87 = v27;
      v26 = [NSArray arrayWithObjects:&v87 count:1];
      goto LABEL_10;
    }

    v66 = [(UserProfileSectionFooterView *)chinaDisclaimerView leadingAnchor];
    v74 = [v85 leadingAnchor];
    v81 = [v66 constraintEqualToAnchor:v74 constant:16.0];
    v88[0] = v81;
    v77 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView trailingAnchor];
    v70 = [v85 trailingAnchor];
    v63 = [v77 constraintEqualToAnchor:v70 constant:-16.0];
    v88[1] = v63;
    v30 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView bottomAnchor];
    v31 = [(RAPHomeViewController *)self view];
    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintEqualToAnchor:v32];
    v88[2] = v33;
    v34 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v35 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:-8.0];
    v88[3] = v36;
    v26 = [NSArray arrayWithObjects:v88 count:4];

    v27 = v81;
    v17 = v66;

    v18 = v85;
    v19 = v74;

    v28 = v70;
  }

  else
  {
    v16 = self->_chinaDisclaimerView;
    if (!v16)
    {
      v17 = [(UICollectionView *)self->_collectionView bottomAnchor];
      v19 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView topAnchor];
      v82 = [v17 constraintEqualToAnchor:v19 constant:-8.0];
      v89[0] = v82;
      v84 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView leadingAnchor];
      v18 = v85;
      v78 = [v85 leadingAnchor];
      v75 = [v84 constraintEqualToAnchor:v78];
      v89[1] = v75;
      v71 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView trailingAnchor];
      v67 = [v85 trailingAnchor];
      v40 = [v71 constraintEqualToAnchor:v67];
      v89[2] = v40;
      v41 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView bottomAnchor];
      v42 = [v85 safeAreaLayoutGuide];
      v43 = [v42 bottomAnchor];
      v44 = [v41 constraintEqualToAnchor:v43];
      v89[3] = v44;
      v45 = [NSArray arrayWithObjects:v89 count:4];

      v26 = v45;
      v27 = v82;

      v37 = v84;
      goto LABEL_8;
    }

    v17 = [(UserProfileSectionFooterView *)v16 leadingAnchor];
    v18 = v85;
    v19 = [v85 leadingAnchor];
    v80 = [v17 constraintEqualToAnchor:v19 constant:16.0];
    v90[0] = v80;
    v77 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView trailingAnchor];
    v73 = [v85 trailingAnchor];
    v69 = [v77 constraintEqualToAnchor:v73 constant:-16.0];
    v90[1] = v69;
    v65 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView bottomAnchor];
    v62 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView topAnchor];
    v60 = [v65 constraintEqualToAnchor:v62];
    v90[2] = v60;
    v83 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v58 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView topAnchor];
    v56 = [v83 constraintEqualToAnchor:v58 constant:-8.0];
    v90[3] = v56;
    v54 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView leadingAnchor];
    v52 = [v85 leadingAnchor];
    v50 = [v54 constraintEqualToAnchor:v52];
    v90[4] = v50;
    v48 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView trailingAnchor];
    v46 = [v85 trailingAnchor];
    v20 = [v48 constraintEqualToAnchor:v46];
    v90[5] = v20;
    v21 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView bottomAnchor];
    v22 = [v85 safeAreaLayoutGuide];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v90[6] = v24;
    v25 = [NSArray arrayWithObjects:v90 count:7];

    v26 = v25;
    v27 = v80;

    v28 = v73;
  }

  v37 = v77;
LABEL_8:

LABEL_10:
  v38 = [(NSArray *)self->_constraints arrayByAddingObjectsFromArray:v26];
  v39 = self->_constraints;
  self->_constraints = v38;

  [NSLayoutConstraint activateConstraints:self->_constraints];
}

- (void)_updateChinaDisclaimerView
{
  v3 = +[UserProfileReportHistoryManager sharedInstance];
  v4 = [v3 isChinaUserOutsideOfChina];

  chinaDisclaimerView = self->_chinaDisclaimerView;
  if (v4)
  {
    if (!chinaDisclaimerView)
    {
      v6 = [UserProfileSectionFooterViewModel alloc];
      v7 = [NSAttributedString alloc];
      v8 = +[NSBundle mainBundle];
      v9 = [v8 localizedStringForKey:@"[Reports - China] You can view the issues you reported in China when you are in China." value:@"localized string not found" table:0];
      v10 = [v7 initWithString:v9];
      v15 = [(UserProfileSectionFooterViewModel *)v6 initWithContentString:v10];

      v11 = objc_alloc_init(UserProfileSectionFooterView);
      v12 = self->_chinaDisclaimerView;
      self->_chinaDisclaimerView = v11;

      [(UserProfileSectionFooterView *)self->_chinaDisclaimerView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UserProfileSectionFooterView *)self->_chinaDisclaimerView configureWithViewModel:v15];
      v13 = [(ContaineeViewController *)self contentView];
      [v13 addSubview:self->_chinaDisclaimerView];

      [(RAPHomeViewController *)self _updateConstraints];
    }
  }

  else if (chinaDisclaimerView)
  {
    [(UserProfileSectionFooterView *)chinaDisclaimerView removeFromSuperview];
    v14 = self->_chinaDisclaimerView;
    self->_chinaDisclaimerView = 0;

    [(RAPHomeViewController *)self _updateConstraints];
  }
}

- (void)_setupViews
{
  v28 = [(ContaineeViewController *)self headerView];
  v3 = [(ContaineeViewController *)self contentView];
  v4 = sub_10000FA08(self);
  v5 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [(ContainerHeaderView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v9;

  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
  if (v4 == 5)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [(ContainerHeaderView *)self->_titleHeaderView setHeaderSize:v11];
  [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
  [v28 addSubview:self->_titleHeaderView];
  v12 = [UICollectionView alloc];
  v13 = [(RAPHomeViewController *)self view];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(RAPHomeViewController *)self _createLayout];
  v23 = [v12 initWithFrame:v22 collectionViewLayout:{v15, v17, v19, v21}];
  collectionView = self->_collectionView;
  self->_collectionView = v23;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"RAPHomeCollectionView"];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v25];

  [(UICollectionView *)self->_collectionView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
  [v3 addSubview:self->_collectionView];
  if (v4 != 5 && [(RAPHomeViewController *)self _isRAPNewUI])
  {
    v26 = [[RAPHomeFooterToolBarView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    footerToolBarView = self->_footerToolBarView;
    self->_footerToolBarView = v26;

    [(RAPHomeFooterToolBarView *)self->_footerToolBarView setDelegate:self];
    [(RAPHomeFooterToolBarView *)self->_footerToolBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:self->_footerToolBarView];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RAPHomeViewController;
  [(ContaineeViewController *)&v3 viewDidLayoutSubviews];
  [(RAPHomeViewController *)self _updateReportButtonIfNeeded];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = RAPHomeViewController;
  [(ContaineeViewController *)&v6 viewWillAppear:a3];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"[Reports] Reports" value:@"localized string not found" table:0];
  [(ContainerHeaderView *)self->_titleHeaderView setTitle:v5];

  [(RAPHomeViewController *)self loadDataSource];
  [(RAPHomeViewController *)self _updateEmptyStateLayoutIfNeeded];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = RAPHomeViewController;
  [(ContaineeViewController *)&v8 viewDidLoad];
  v3 = [(RAPHomeViewController *)self view];
  [v3 setAccessibilityIdentifier:@"RAPHomeView"];

  v4 = [(RAPHomeViewController *)self view];
  v5 = +[UIColor clearColor];
  v6 = [(RAPHomeViewController *)self view];
  [v6 setBackgroundColor:v5];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPHomeViewController *)self _setupViews];
  v7 = [(RAPHomeViewController *)self _createLayout];
  [(RAPHomeViewController *)self _updateConstraints];
  [(RAPHomeViewController *)self _updateChinaDisclaimerView];
}

- (RAPHomeViewController)init
{
  v12.receiver = self;
  v12.super_class = RAPHomeViewController;
  v2 = [(RAPHomeViewController *)&v12 init];
  if (v2)
  {
    v3 = sub_100EC2CFC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}p] Initializing", buf, 0xCu);
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RAPHomeViewController *)v2 setAccessibilityIdentifier:v5];

    v6 = [(ContaineeViewController *)v2 cardPresentationController];
    [v6 setPresentedModally:1];

    v7 = [(ContaineeViewController *)v2 cardPresentationController];
    [v7 setTakesAvailableHeight:1];

    v8 = +[UserProfileReportHistoryManager sharedInstance];
    v9 = [v8 observers];
    [v9 registerObserver:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

@end
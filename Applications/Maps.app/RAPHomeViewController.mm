@interface RAPHomeViewController
- (RAPHomeViewController)init;
- (id)_createLayout;
- (void)_setupViews;
- (void)_updateChinaDisclaimerView;
- (void)_updateConstraints;
- (void)_updateEmptyStateLayoutIfNeeded;
- (void)_updateReportButtonIfNeeded;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)didTapOnMoreButtonForSectionType:(unint64_t)type sectionTitle:(id)title;
- (void)didTapOnPrivacyText;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)loadDataSource;
- (void)tappedMenuForRAPHomeFooterToolBarView:(id)view;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RAPHomeViewController

- (void)didTapOnMoreButtonForSectionType:(unint64_t)type sectionTitle:(id)title
{
  titleCopy = title;
  v8 = [[AllRAPHistoryViewController alloc] initWithReportSection:type sectionTitle:titleCopy];

  delegate = [(ControlContaineeViewController *)self delegate];
  [(ControlContaineeViewController *)v8 setDelegate:delegate];

  [(RAPHomeViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)didTapOnPrivacyText
{
  v3 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.mapsrap"];
  [v3 setPresentingViewController:self];
  [v3 present];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:self presentReportDetail:tappedCopy fromEntryPoint:39];

    v6 = tappedCopy;
    if ([v6 reportStatus] == 2)
    {
      [GEOAPPortal captureUserAction:358 target:39 value:0];
    }

    else if ([v6 reportStatus] == 1)
    {
      reportType = [v6 reportType];
      if (reportType >= 0x16)
      {
        v8 = [NSString stringWithFormat:@"(unknown: %i)", reportType];
      }

      else
      {
        v8 = *(&off_1016583A8 + reportType);
      }

      [GEOAPPortal captureUserAction:357 target:39 value:v8];
    }
  }
}

- (void)dataSourceUpdated:(id)updated
{
  if (self->_reportsDataSource == updated)
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

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  [(ContaineeViewController *)self handleDismissAction:tapped, type];
  analyticsTarget = [(RAPHomeDataSource *)self->_reportsDataSource analyticsTarget];

  [GEOAPPortal captureUserAction:10109 target:analyticsTarget value:0];
}

- (void)tappedMenuForRAPHomeFooterToolBarView:(id)view
{
  _maps_mapsSceneDelegate = [view _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v5 = [rapPresenter presentOfflineAlertIfNecessaryWithCompletion:0];

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
  isEmpty = [(RAPHomeDataSource *)self->_reportsDataSource isEmpty];
  emptyStateView = self->_emptyStateView;
  if (isEmpty)
  {
    if (!emptyStateView)
    {
      v5 = [[_TtC4Maps14EmptyStateView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(EmptyStateView *)v5 setAccessibilityIdentifier:@"RAPReportHomeEmptyStateView"];
      [(EmptyStateView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(ContaineeViewController *)self contentView];
      [contentView addSubview:v5];

      centerYAnchor = [(EmptyStateView *)v5 centerYAnchor];
      centerYAnchor2 = [(UICollectionView *)self->_collectionView centerYAnchor];
      v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v43[0] = v40;
      leadingAnchor = [(EmptyStateView *)v5 leadingAnchor];
      contentView2 = [(ContaineeViewController *)self contentView];
      leadingAnchor2 = [contentView2 leadingAnchor];
      v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v43[1] = v8;
      trailingAnchor = [(EmptyStateView *)v5 trailingAnchor];
      contentView3 = [(ContaineeViewController *)self contentView];
      trailingAnchor2 = [contentView3 trailingAnchor];
      v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
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

    image = [v15 image];
    [image size];
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
      rAPHomeReportMenu = [(RAPHomeDataSource *)self->_reportsDataSource RAPHomeReportMenu];
      [(UIButton *)v3 setMenu:rAPHomeReportMenu];

      [(UIButton *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5 = +[UIColor secondaryLabelColor];
      [(UIButton *)v3 setTintColor:v5];

      [(ContainerHeaderView *)self->_titleHeaderView addSubview:v3];
      trailingAnchor = [(UIButton *)v3 trailingAnchor];
      trailingAnchor2 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
      v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-52.0];
      v14[0] = v8;
      topAnchor = [(UIButton *)v3 topAnchor];
      topAnchor2 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
      v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:12.0];
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

  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  topAnchor2 = [headerView topAnchor];
  v72 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v91[0] = v72;
  leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  leadingAnchor2 = [headerView leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v91[1] = v61;
  trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  trailingAnchor2 = [headerView trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v91[2] = v55;
  bottomAnchor = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v86 = headerView;
  bottomAnchor2 = [headerView bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v91[3] = v49;
  leadingAnchor3 = [(UICollectionView *)self->_collectionView leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v7 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v91[4] = v7;
  trailingAnchor3 = [(UICollectionView *)self->_collectionView trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v91[5] = v10;
  topAnchor3 = [(UICollectionView *)self->_collectionView topAnchor];
  v85 = contentView;
  topAnchor4 = [contentView topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v91[6] = v13;
  v14 = [NSArray arrayWithObjects:v91 count:7];
  v15 = self->_constraints;
  self->_constraints = v14;

  if (sub_10000FA08(self) == 5 || ![(RAPHomeViewController *)self _isRAPNewUI])
  {
    chinaDisclaimerView = self->_chinaDisclaimerView;
    if (!chinaDisclaimerView)
    {
      bottomAnchor3 = [(UICollectionView *)self->_collectionView bottomAnchor];
      v18 = v85;
      bottomAnchor4 = [v85 bottomAnchor];
      v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
      v87 = v27;
      v26 = [NSArray arrayWithObjects:&v87 count:1];
      goto LABEL_10;
    }

    leadingAnchor5 = [(UserProfileSectionFooterView *)chinaDisclaimerView leadingAnchor];
    leadingAnchor6 = [v85 leadingAnchor];
    v81 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    v88[0] = v81;
    trailingAnchor5 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView trailingAnchor];
    trailingAnchor6 = [v85 trailingAnchor];
    v63 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
    v88[1] = v63;
    bottomAnchor5 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView bottomAnchor];
    view = [(RAPHomeViewController *)self view];
    bottomAnchor6 = [view bottomAnchor];
    v33 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v88[2] = v33;
    bottomAnchor7 = [(UICollectionView *)self->_collectionView bottomAnchor];
    topAnchor5 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView topAnchor];
    v36 = [bottomAnchor7 constraintEqualToAnchor:topAnchor5 constant:-8.0];
    v88[3] = v36;
    v26 = [NSArray arrayWithObjects:v88 count:4];

    v27 = v81;
    bottomAnchor3 = leadingAnchor5;

    v18 = v85;
    bottomAnchor4 = leadingAnchor6;

    v28 = trailingAnchor6;
  }

  else
  {
    v16 = self->_chinaDisclaimerView;
    if (!v16)
    {
      bottomAnchor3 = [(UICollectionView *)self->_collectionView bottomAnchor];
      bottomAnchor4 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView topAnchor];
      v82 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
      v89[0] = v82;
      leadingAnchor7 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView leadingAnchor];
      v18 = v85;
      leadingAnchor8 = [v85 leadingAnchor];
      v75 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
      v89[1] = v75;
      trailingAnchor7 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView trailingAnchor];
      trailingAnchor8 = [v85 trailingAnchor];
      v40 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v89[2] = v40;
      bottomAnchor8 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView bottomAnchor];
      safeAreaLayoutGuide = [v85 safeAreaLayoutGuide];
      bottomAnchor9 = [safeAreaLayoutGuide bottomAnchor];
      v44 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
      v89[3] = v44;
      v45 = [NSArray arrayWithObjects:v89 count:4];

      v26 = v45;
      v27 = v82;

      v37 = leadingAnchor7;
      goto LABEL_8;
    }

    bottomAnchor3 = [(UserProfileSectionFooterView *)v16 leadingAnchor];
    v18 = v85;
    bottomAnchor4 = [v85 leadingAnchor];
    v80 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:16.0];
    v90[0] = v80;
    trailingAnchor5 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView trailingAnchor];
    trailingAnchor9 = [v85 trailingAnchor];
    v69 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor9 constant:-16.0];
    v90[1] = v69;
    bottomAnchor10 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView bottomAnchor];
    topAnchor6 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView topAnchor];
    v60 = [bottomAnchor10 constraintEqualToAnchor:topAnchor6];
    v90[2] = v60;
    bottomAnchor11 = [(UICollectionView *)self->_collectionView bottomAnchor];
    topAnchor7 = [(UserProfileSectionFooterView *)self->_chinaDisclaimerView topAnchor];
    v56 = [bottomAnchor11 constraintEqualToAnchor:topAnchor7 constant:-8.0];
    v90[3] = v56;
    leadingAnchor9 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView leadingAnchor];
    leadingAnchor10 = [v85 leadingAnchor];
    v50 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v90[4] = v50;
    trailingAnchor10 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView trailingAnchor];
    trailingAnchor11 = [v85 trailingAnchor];
    v20 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v90[5] = v20;
    bottomAnchor12 = [(RAPHomeFooterToolBarView *)self->_footerToolBarView bottomAnchor];
    safeAreaLayoutGuide2 = [v85 safeAreaLayoutGuide];
    bottomAnchor13 = [safeAreaLayoutGuide2 bottomAnchor];
    v24 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    v90[6] = v24;
    v25 = [NSArray arrayWithObjects:v90 count:7];

    v26 = v25;
    v27 = v80;

    v28 = trailingAnchor9;
  }

  v37 = trailingAnchor5;
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
  isChinaUserOutsideOfChina = [v3 isChinaUserOutsideOfChina];

  chinaDisclaimerView = self->_chinaDisclaimerView;
  if (isChinaUserOutsideOfChina)
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
      contentView = [(ContaineeViewController *)self contentView];
      [contentView addSubview:self->_chinaDisclaimerView];

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
  headerView = [(ContaineeViewController *)self headerView];
  contentView = [(ContaineeViewController *)self contentView];
  v4 = sub_10000FA08(self);
  v5 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ContainerHeaderView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = height;

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
  [headerView addSubview:self->_titleHeaderView];
  v12 = [UICollectionView alloc];
  view = [(RAPHomeViewController *)self view];
  [view bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  _createLayout = [(RAPHomeViewController *)self _createLayout];
  v23 = [v12 initWithFrame:_createLayout collectionViewLayout:{v15, v17, v19, v21}];
  collectionView = self->_collectionView;
  self->_collectionView = v23;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"RAPHomeCollectionView"];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = +[UIColor clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v25];

  [(UICollectionView *)self->_collectionView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
  [contentView addSubview:self->_collectionView];
  if (v4 != 5 && [(RAPHomeViewController *)self _isRAPNewUI])
  {
    height2 = [[RAPHomeFooterToolBarView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    footerToolBarView = self->_footerToolBarView;
    self->_footerToolBarView = height2;

    [(RAPHomeFooterToolBarView *)self->_footerToolBarView setDelegate:self];
    [(RAPHomeFooterToolBarView *)self->_footerToolBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:self->_footerToolBarView];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = RAPHomeViewController;
  [(ContaineeViewController *)&v3 viewDidLayoutSubviews];
  [(RAPHomeViewController *)self _updateReportButtonIfNeeded];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = RAPHomeViewController;
  [(ContaineeViewController *)&v6 viewWillAppear:appear];
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
  view = [(RAPHomeViewController *)self view];
  [view setAccessibilityIdentifier:@"RAPHomeView"];

  view2 = [(RAPHomeViewController *)self view];
  v5 = +[UIColor clearColor];
  view3 = [(RAPHomeViewController *)self view];
  [view3 setBackgroundColor:v5];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPHomeViewController *)self _setupViews];
  _createLayout = [(RAPHomeViewController *)self _createLayout];
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

    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController2 setTakesAvailableHeight:1];

    v8 = +[UserProfileReportHistoryManager sharedInstance];
    observers = [v8 observers];
    [observers registerObserver:v2];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_contentSizeChanged" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

@end
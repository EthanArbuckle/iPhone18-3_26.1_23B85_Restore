@interface HomeViewController
- (BOOL)shouldShowTopHairline;
- (HomeActionDelegate)homeActionDelegate;
- (HomeViewController)initWithDelegate:(id)a3;
- (SuggestionsItemSource)suggestionsItemSource;
- (id)_linkButtonWithTitle:(id)a3;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)_configureForceTouchIfNeeded;
- (void)_openTermsAndConditions:(id)a3;
- (void)_updateFooterAnimated:(BOOL)a3;
- (void)homeSetNeedsUpdate;
- (void)scrollContentToOriginalPosition;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setActive:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HomeViewController

- (void)viewDidLoad
{
  v102.receiver = self;
  v102.super_class = HomeViewController;
  [(HomeViewController *)&v102 viewDidLoad];
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  v4 = [WeakRetained homeActionCoordinator];

  v5 = [(HomeViewController *)self view];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [v5 setAccessibilityIdentifier:v8];

  if (sub_10000FA08(self) == 5)
  {
    v9 = [UICollectionView alloc];
    v10 = [(HomeViewController *)self view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = objc_alloc_init(UICollectionViewFlowLayout);
    v20 = [v9 initWithFrame:v19 collectionViewLayout:{v12, v14, v16, v18}];
    collectionView = self->_collectionView;
    self->_collectionView = v20;

    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView setPreservesSuperviewLayoutMargins:1];
    v22 = +[UIColor clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v22];

    [(UICollectionView *)self->_collectionView setAlwaysBounceVertical:1];
    [(UICollectionView *)self->_collectionView setSelectionFollowsFocus:1];
    [(UICollectionView *)self->_collectionView setAutomaticallyAdjustsScrollIndicatorInsets:0];
    [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"HomeCollectionView"];
    v23 = [(HomeViewController *)self view];
    [v23 addSubview:self->_collectionView];

    v24 = [HomeOutlineRootControllerConfiguration alloc];
    v25 = self->_collectionView;
    v26 = objc_loadWeakRetained(&self->_homeActionDelegate);
    v101 = v4;
    v27 = [(HomeOutlineRootControllerConfiguration *)v24 initWithCollectionView:v25 actionCoordinator:v4 homeActionDelegate:v26 homeUpdateDelegate:self];

    v100 = v27;
    v28 = [[HomeOutlineRootController alloc] initWithConfiguration:v27];
    outlineController = self->_outlineController;
    self->_outlineController = v28;

    v30 = [(HomeOutlineRootController *)self->_outlineController collectionViewLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v30];

    v31 = [(HomeOutlineRootController *)self->_outlineController dataSource];
    [(UICollectionView *)self->_collectionView setDataSource:v31];

    [(UICollectionView *)self->_collectionView setDelegate:self->_outlineController];
    v32 = +[MapsDragAndDropManager sharedManager];
    LODWORD(v25) = [v32 deviceSupportsDragAndDrop];

    if (v25)
    {
      [(UICollectionView *)self->_collectionView setDragDelegate:self->_outlineController];
      [(UICollectionView *)self->_collectionView setDropDelegate:self->_outlineController];
    }

    v33 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    footerView = self->_footerView;
    self->_footerView = v33;

    [(UIView *)self->_footerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_footerView setPreservesSuperviewLayoutMargins:1];
    [(UIView *)self->_footerView setAccessibilityIdentifier:@"HomeFooterView"];
    v35 = [(HomeViewController *)self view];
    [v35 addSubview:self->_footerView];

    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"[Maps Home] Terms & Conditions" value:@"localized string not found" table:0];
    v38 = [(HomeViewController *)self _linkButtonWithTitle:v37];
    termsAndConditionsButton = self->_termsAndConditionsButton;
    self->_termsAndConditionsButton = v38;

    [(MapsRightImageButton *)self->_termsAndConditionsButton addTarget:self action:"_openTermsAndConditions:" forControlEvents:0x2000];
    [(MapsRightImageButton *)self->_termsAndConditionsButton setAccessibilityIdentifier:@"HomeTermsAndConditionsButton"];
    [(UIView *)self->_footerView addSubview:self->_termsAndConditionsButton];
    v84 = [(UICollectionView *)self->_collectionView topAnchor];
    v99 = [(HomeViewController *)self view];
    v98 = [v99 topAnchor];
    v97 = [v84 constraintEqualToAnchor:v98];
    v103[0] = v97;
    v95 = [(UICollectionView *)self->_collectionView leadingAnchor];
    v96 = [(HomeViewController *)self view];
    v94 = [v96 leadingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v103[1] = v93;
    v91 = [(UICollectionView *)self->_collectionView trailingAnchor];
    v92 = [(HomeViewController *)self view];
    v90 = [v92 trailingAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v103[2] = v89;
    v87 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v88 = [(HomeViewController *)self view];
    v86 = [v88 bottomAnchor];
    v85 = [v87 constraintEqualToAnchor:v86];
    v103[3] = v85;
    v82 = [(UIView *)self->_footerView leadingAnchor];
    v83 = [(HomeViewController *)self view];
    v81 = [v83 leadingAnchor];
    v80 = [v82 constraintEqualToAnchor:v81];
    v103[4] = v80;
    v78 = [(UIView *)self->_footerView trailingAnchor];
    v79 = [(HomeViewController *)self view];
    v77 = [v79 trailingAnchor];
    v76 = [v78 constraintEqualToAnchor:v77];
    v103[5] = v76;
    v75 = [(UIView *)self->_footerView bottomAnchor];
    v74 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v103[6] = v73;
    v72 = [(MapsRightImageButton *)self->_termsAndConditionsButton topAnchor];
    v71 = [(UIView *)self->_footerView topAnchor];
    v70 = [v72 constraintEqualToAnchor:v71 constant:0.0];
    v103[7] = v70;
    v68 = [(MapsRightImageButton *)self->_termsAndConditionsButton leadingAnchor];
    v69 = [(UIView *)self->_footerView layoutMarginsGuide];
    v67 = [v69 leadingAnchor];
    v40 = [v68 constraintEqualToAnchor:v67];
    v103[8] = v40;
    v41 = [(MapsRightImageButton *)self->_termsAndConditionsButton trailingAnchor];
    v42 = [(UIView *)self->_footerView layoutMarginsGuide];
    v43 = [v42 trailingAnchor];
    v44 = [v41 constraintLessThanOrEqualToAnchor:v43];
    v103[9] = v44;
    v45 = [(MapsRightImageButton *)self->_termsAndConditionsButton bottomAnchor];
    v46 = [(UIView *)self->_footerView bottomAnchor];
    v47 = [v45 constraintEqualToAnchor:v46 constant:-13.0];
    v103[10] = v47;
    v48 = [NSArray arrayWithObjects:v103 count:11];
    [NSLayoutConstraint activateConstraints:v48];

    v49 = v84;
    v50 = v100;
    v4 = v101;
  }

  else
  {
    [(HomeViewController *)self _mapsui_resetViewLayoutMarginsWithPreservesSuperview:1];
    v51 = [UICollectionView alloc];
    v52 = objc_alloc_init(UICollectionViewFlowLayout);
    v53 = [v51 initWithFrame:v52 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v54 = self->_collectionView;
    self->_collectionView = v53;

    v55 = +[UIColor clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v55];

    v56 = [(UICollectionView *)self->_collectionView layer];
    [v56 setAllowsGroupOpacity:0];

    [(UICollectionView *)self->_collectionView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    v57 = [(HomeViewController *)self view];
    [v57 addSubview:self->_collectionView];

    v50 = [[_TtC4Maps35HomeListRootControllerConfiguration alloc] initWithCollectionView:self->_collectionView];
    v58 = objc_loadWeakRetained(&self->_homeActionDelegate);
    [(HomeListRootControllerConfiguration *)v50 setHomeActionDelegate:v58];

    [(HomeListRootControllerConfiguration *)v50 setHomeUpdateDelegate:self];
    v59 = [[_TtC4Maps22HomeListRootController alloc] initWithConfiguration:v50];
    listController = self->_listController;
    self->_listController = v59;

    v61 = [(HomeListRootController *)self->_listController collectionViewLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:v61];

    v62 = [(HomeListRootController *)self->_listController dataSource];
    [(UICollectionView *)self->_collectionView setDataSource:v62];

    [(UICollectionView *)self->_collectionView setDelegate:self->_listController];
    v63 = +[MapsDragAndDropManager sharedManager];
    LODWORD(v52) = [v63 deviceSupportsDragAndDrop];

    if (v52)
    {
      [(UICollectionView *)self->_collectionView setDragDelegate:self->_listController];
    }

    v64 = [MUEdgeLayout alloc];
    v65 = self->_collectionView;
    v66 = [(HomeViewController *)self view];
    v49 = [v64 initWithItem:v65 container:v66];

    [v49 activate];
  }
}

- (void)homeSetNeedsUpdate
{
  v2 = [(HomeViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)_configureForceTouchIfNeeded
{
  if (sub_10000FA08(self) != 5 && !self->_quickActionMenuPresenter)
  {
    v3 = [[_TtC4Maps32MapsHomeQuickActionMenuPresenter alloc] initWithCollectionView:self->_collectionView];
    quickActionMenuPresenter = self->_quickActionMenuPresenter;
    self->_quickActionMenuPresenter = &v3->super;

    WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
    [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setDelegate:WeakRetained];
  }
}

- (void)scrollContentToOriginalPosition
{
  if (sub_10000FA08(self) == 5)
  {
    collectionView = self->_collectionView;

    [(UICollectionView *)collectionView _maps_scrollContentToOriginalPosition];
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1000681C0;
    v4[3] = &unk_101661B18;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

- (HomeActionDelegate)homeActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);

  return WeakRetained;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  v10 = [WeakRetained homeContaineeViewController];
  [v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:{x, y}];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  v5 = [WeakRetained homeContaineeViewController];
  [v5 scrollViewWillBeginDragging:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  v6 = [WeakRetained homeContaineeViewController];
  [v6 scrollViewDidScroll:v4];

  [(HomeViewController *)self _updateFooterAnimated:0];
}

- (void)_updateFooterAnimated:(BOOL)a3
{
  v3 = a3;
  if (sub_10000FA08(self) != 5)
  {
    return;
  }

  [(HomeViewController *)self _footerHeight];
  v6 = v5;
  [(HomeViewController *)self additionalSafeAreaInsets];
  if (v6 != v7)
  {
    [(HomeViewController *)self setAdditionalSafeAreaInsets:0.0, 0.0, v6, 0.0];
  }

  [(UICollectionView *)self->_collectionView layoutIfNeeded];
  [(UICollectionView *)self->_collectionView contentSize];
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v10 = v8;
    [(UICollectionView *)self->_collectionView adjustedContentInset];
    v12 = v11;
    [(UICollectionView *)self->_collectionView bounds];
    v13 = CGRectGetMaxY(v19) - v10;
    if (v13 <= 0.0)
    {
      [(UICollectionView *)self->_collectionView contentOffset];
      v14 = fmin(fmax(v12 + v15 + v6 - v10, 0.0) / v6, 1.0);
      goto LABEL_9;
    }

    v9 = 1.0;
    if (v13 < v6)
    {
      v14 = fmin(v13 / v6, 1.0);
LABEL_9:
      v9 = fmax(v14, 0.0);
    }
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100F34D0C;
  v18[3] = &unk_101661650;
  v18[4] = self;
  *&v18[5] = v9;
  v16 = objc_retainBlock(v18);
  v17 = v16;
  if (v3)
  {
    [UIView animateWithDuration:v16 animations:0.25];
  }

  else
  {
    (v16[2])(v16);
  }
}

- (void)_openTermsAndConditions:(id)a3
{
  v3 = [(HomeViewController *)self homeActionDelegate];
  [v3 homeDidTapTermsAndConditions];
}

- (id)_linkButtonWithTitle:(id)a3
{
  v3 = a3;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v5 = [MapsRightImageButton buttonWithType:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor secondaryLabelColor];
  [v5 setTintColor:v6];

  v7 = [v5 titleLabel];
  [v7 setFont:v4];

  [v5 setTitle:v3 forState:0];
  v8 = +[UIColor secondaryLabelColor];
  [v5 setTitleColor:v8 forState:0];

  v9 = [UIImage systemImageNamed:@"chevron.forward"];
  [v5 setImage:v9 forState:0];

  v10 = [UIImageSymbolConfiguration configurationWithFont:v4 scale:2];
  [v5 setPreferredSymbolConfiguration:v10 forImageInState:0];

  return v5;
}

- (BOOL)shouldShowTopHairline
{
  if (sub_10000FA08(self) == 5)
  {
    return 0;
  }

  [(UICollectionView *)self->_collectionView contentOffset];
  return v4 > 0.0;
}

- (SuggestionsItemSource)suggestionsItemSource
{
  [(HomeViewController *)self loadViewIfNeeded];
  v3 = sub_10000FA08(self);
  v4 = &OBJC_IVAR___HomeViewController__listController;
  if (v3 == 5)
  {
    v4 = &OBJC_IVAR___HomeViewController__outlineController;
  }

  v5 = [*(&self->super.super.super.isa + *v4) suggestionsItemSource];

  return v5;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    if (sub_10000FA08(self) == 5)
    {
      [(HomeOutlineRootController *)self->_outlineController setActive:v3];
      v5 = [(HomeViewController *)self view];
      [v5 setUserInteractionEnabled:v3];

      if (!v3)
      {
        return;
      }
    }

    else
    {
      [(HomeListRootController *)self->_listController setActive:v3];
      if (!v3)
      {
        return;
      }
    }

    [(HomeViewController *)self _configureForceTouchIfNeeded];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HomeViewController;
  [(HomeViewController *)&v4 viewDidDisappear:a3];
  [(HomeViewController *)self scrollContentToOriginalPosition];
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = self->_listController;
  v8 = [(HomeListRootController *)self->_listController keyCommands];
  if ([v8 containsObject:v6])
  {
    v9 = v7;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HomeViewController;
    v9 = [(HomeViewController *)&v12 targetForAction:a3 withSender:v6];
  }

  v10 = v9;

  return v10;
}

- (id)preferredFocusEnvironments
{
  v2 = [(HomeViewController *)self view];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HomeViewController;
  [(HomeViewController *)&v3 viewDidLayoutSubviews];
  if (sub_10000FA08(self) == 5)
  {
    [(HomeOutlineRootController *)self->_outlineController updateIfNeeded];
    [(HomeViewController *)self _updateFooterAnimated:0];
  }

  else
  {
    [(HomeListRootController *)self->_listController setNeedsUpdate];
  }
}

- (HomeViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HomeViewController;
  v5 = [(HomeViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeActionDelegate, v4);
  }

  return v6;
}

@end
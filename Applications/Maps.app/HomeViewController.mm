@interface HomeViewController
- (BOOL)shouldShowTopHairline;
- (HomeActionDelegate)homeActionDelegate;
- (HomeViewController)initWithDelegate:(id)delegate;
- (SuggestionsItemSource)suggestionsItemSource;
- (id)_linkButtonWithTitle:(id)title;
- (id)preferredFocusEnvironments;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)_configureForceTouchIfNeeded;
- (void)_openTermsAndConditions:(id)conditions;
- (void)_updateFooterAnimated:(BOOL)animated;
- (void)homeSetNeedsUpdate;
- (void)scrollContentToOriginalPosition;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setActive:(BOOL)active;
- (void)viewDidDisappear:(BOOL)disappear;
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
  homeActionCoordinator = [WeakRetained homeActionCoordinator];

  view = [(HomeViewController *)self view];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v7 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [view setAccessibilityIdentifier:v8];

  if (sub_10000FA08(self) == 5)
  {
    v9 = [UICollectionView alloc];
    view2 = [(HomeViewController *)self view];
    [view2 bounds];
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
    view3 = [(HomeViewController *)self view];
    [view3 addSubview:self->_collectionView];

    v24 = [HomeOutlineRootControllerConfiguration alloc];
    v25 = self->_collectionView;
    v26 = objc_loadWeakRetained(&self->_homeActionDelegate);
    v101 = homeActionCoordinator;
    v27 = [(HomeOutlineRootControllerConfiguration *)v24 initWithCollectionView:v25 actionCoordinator:homeActionCoordinator homeActionDelegate:v26 homeUpdateDelegate:self];

    v100 = v27;
    v28 = [[HomeOutlineRootController alloc] initWithConfiguration:v27];
    outlineController = self->_outlineController;
    self->_outlineController = v28;

    collectionViewLayout = [(HomeOutlineRootController *)self->_outlineController collectionViewLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:collectionViewLayout];

    dataSource = [(HomeOutlineRootController *)self->_outlineController dataSource];
    [(UICollectionView *)self->_collectionView setDataSource:dataSource];

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
    view4 = [(HomeViewController *)self view];
    [view4 addSubview:self->_footerView];

    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"[Maps Home] Terms & Conditions" value:@"localized string not found" table:0];
    v38 = [(HomeViewController *)self _linkButtonWithTitle:v37];
    termsAndConditionsButton = self->_termsAndConditionsButton;
    self->_termsAndConditionsButton = v38;

    [(MapsRightImageButton *)self->_termsAndConditionsButton addTarget:self action:"_openTermsAndConditions:" forControlEvents:0x2000];
    [(MapsRightImageButton *)self->_termsAndConditionsButton setAccessibilityIdentifier:@"HomeTermsAndConditionsButton"];
    [(UIView *)self->_footerView addSubview:self->_termsAndConditionsButton];
    topAnchor = [(UICollectionView *)self->_collectionView topAnchor];
    view5 = [(HomeViewController *)self view];
    topAnchor2 = [view5 topAnchor];
    v97 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v103[0] = v97;
    leadingAnchor = [(UICollectionView *)self->_collectionView leadingAnchor];
    view6 = [(HomeViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v103[1] = v93;
    trailingAnchor = [(UICollectionView *)self->_collectionView trailingAnchor];
    view7 = [(HomeViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v89 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v103[2] = v89;
    bottomAnchor = [(UICollectionView *)self->_collectionView bottomAnchor];
    view8 = [(HomeViewController *)self view];
    bottomAnchor2 = [view8 bottomAnchor];
    v85 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v103[3] = v85;
    leadingAnchor3 = [(UIView *)self->_footerView leadingAnchor];
    view9 = [(HomeViewController *)self view];
    leadingAnchor4 = [view9 leadingAnchor];
    v80 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v103[4] = v80;
    trailingAnchor3 = [(UIView *)self->_footerView trailingAnchor];
    view10 = [(HomeViewController *)self view];
    trailingAnchor4 = [view10 trailingAnchor];
    v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v103[5] = v76;
    bottomAnchor3 = [(UIView *)self->_footerView bottomAnchor];
    bottomAnchor4 = [(UICollectionView *)self->_collectionView bottomAnchor];
    v73 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v103[6] = v73;
    topAnchor3 = [(MapsRightImageButton *)self->_termsAndConditionsButton topAnchor];
    topAnchor4 = [(UIView *)self->_footerView topAnchor];
    v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
    v103[7] = v70;
    leadingAnchor5 = [(MapsRightImageButton *)self->_termsAndConditionsButton leadingAnchor];
    layoutMarginsGuide = [(UIView *)self->_footerView layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
    v40 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v103[8] = v40;
    trailingAnchor5 = [(MapsRightImageButton *)self->_termsAndConditionsButton trailingAnchor];
    layoutMarginsGuide2 = [(UIView *)self->_footerView layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide2 trailingAnchor];
    v44 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
    v103[9] = v44;
    bottomAnchor5 = [(MapsRightImageButton *)self->_termsAndConditionsButton bottomAnchor];
    bottomAnchor6 = [(UIView *)self->_footerView bottomAnchor];
    v47 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:-13.0];
    v103[10] = v47;
    v48 = [NSArray arrayWithObjects:v103 count:11];
    [NSLayoutConstraint activateConstraints:v48];

    v49 = topAnchor;
    v50 = v100;
    homeActionCoordinator = v101;
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

    layer = [(UICollectionView *)self->_collectionView layer];
    [layer setAllowsGroupOpacity:0];

    [(UICollectionView *)self->_collectionView _mapsui_resetLayoutMarginsWithPreservesSuperview:1];
    view11 = [(HomeViewController *)self view];
    [view11 addSubview:self->_collectionView];

    v50 = [[_TtC4Maps35HomeListRootControllerConfiguration alloc] initWithCollectionView:self->_collectionView];
    v58 = objc_loadWeakRetained(&self->_homeActionDelegate);
    [(HomeListRootControllerConfiguration *)v50 setHomeActionDelegate:v58];

    [(HomeListRootControllerConfiguration *)v50 setHomeUpdateDelegate:self];
    v59 = [[_TtC4Maps22HomeListRootController alloc] initWithConfiguration:v50];
    listController = self->_listController;
    self->_listController = v59;

    collectionViewLayout2 = [(HomeListRootController *)self->_listController collectionViewLayout];
    [(UICollectionView *)self->_collectionView setCollectionViewLayout:collectionViewLayout2];

    dataSource2 = [(HomeListRootController *)self->_listController dataSource];
    [(UICollectionView *)self->_collectionView setDataSource:dataSource2];

    [(UICollectionView *)self->_collectionView setDelegate:self->_listController];
    v63 = +[MapsDragAndDropManager sharedManager];
    LODWORD(v52) = [v63 deviceSupportsDragAndDrop];

    if (v52)
    {
      [(UICollectionView *)self->_collectionView setDragDelegate:self->_listController];
    }

    v64 = [MUEdgeLayout alloc];
    v65 = self->_collectionView;
    view12 = [(HomeViewController *)self view];
    v49 = [v64 initWithItem:v65 container:view12];

    [v49 activate];
  }
}

- (void)homeSetNeedsUpdate
{
  view = [(HomeViewController *)self view];
  [view setNeedsLayout];
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

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  homeContaineeViewController = [WeakRetained homeContaineeViewController];
  [homeContaineeViewController scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:{x, y}];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  homeContaineeViewController = [WeakRetained homeContaineeViewController];
  [homeContaineeViewController scrollViewWillBeginDragging:draggingCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  WeakRetained = objc_loadWeakRetained(&self->_homeActionDelegate);
  homeContaineeViewController = [WeakRetained homeContaineeViewController];
  [homeContaineeViewController scrollViewDidScroll:scrollCopy];

  [(HomeViewController *)self _updateFooterAnimated:0];
}

- (void)_updateFooterAnimated:(BOOL)animated
{
  animatedCopy = animated;
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
  if (animatedCopy)
  {
    [UIView animateWithDuration:v16 animations:0.25];
  }

  else
  {
    (v16[2])(v16);
  }
}

- (void)_openTermsAndConditions:(id)conditions
{
  homeActionDelegate = [(HomeViewController *)self homeActionDelegate];
  [homeActionDelegate homeDidTapTermsAndConditions];
}

- (id)_linkButtonWithTitle:(id)title
{
  titleCopy = title;
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v5 = [MapsRightImageButton buttonWithType:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = +[UIColor secondaryLabelColor];
  [v5 setTintColor:v6];

  titleLabel = [v5 titleLabel];
  [titleLabel setFont:v4];

  [v5 setTitle:titleCopy forState:0];
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

  suggestionsItemSource = [*(&self->super.super.super.isa + *v4) suggestionsItemSource];

  return suggestionsItemSource;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    if (sub_10000FA08(self) == 5)
    {
      [(HomeOutlineRootController *)self->_outlineController setActive:activeCopy];
      view = [(HomeViewController *)self view];
      [view setUserInteractionEnabled:activeCopy];

      if (!activeCopy)
      {
        return;
      }
    }

    else
    {
      [(HomeListRootController *)self->_listController setActive:activeCopy];
      if (!activeCopy)
      {
        return;
      }
    }

    [(HomeViewController *)self _configureForceTouchIfNeeded];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = HomeViewController;
  [(HomeViewController *)&v4 viewDidDisappear:disappear];
  [(HomeViewController *)self scrollContentToOriginalPosition];
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  v7 = self->_listController;
  keyCommands = [(HomeListRootController *)self->_listController keyCommands];
  if ([keyCommands containsObject:senderCopy])
  {
    v9 = v7;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HomeViewController;
    v9 = [(HomeViewController *)&v12 targetForAction:action withSender:senderCopy];
  }

  v10 = v9;

  return v10;
}

- (id)preferredFocusEnvironments
{
  view = [(HomeViewController *)self view];
  v5 = view;
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

- (HomeViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HomeViewController;
  v5 = [(HomeViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeActionDelegate, delegateCopy);
  }

  return v6;
}

@end
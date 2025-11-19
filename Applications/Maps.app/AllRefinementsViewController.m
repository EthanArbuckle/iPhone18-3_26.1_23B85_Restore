@interface AllRefinementsViewController
- (AllRefinementsViewController)initWithViewModel:(id)a3 selectionSequenceNumber:(id)a4 resultRefinementsAnalyticsDelegate:(id)a5;
- (AllRefinementsViewControllerDelegate)allRefinementsDelegate;
- (BOOL)_checkIfFiltersAreChanged;
- (BOOL)_checkIfFiltersAreSelected;
- (ResultRefinementsAnalytics)analyticsDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (void)_clearCurrentSelection;
- (void)_sendAnalyticsForEvent:(unint64_t)a3;
- (void)addCollectionView;
- (void)addHeaderView;
- (void)didTapOnApply:(id)a3;
- (void)didTapOnCancel:(id)a3;
- (void)didTapOnClear:(id)a3;
- (void)refinementViewModelDidChange;
- (void)updateButtonsForHeader:(id)a3 filtersSelected:(BOOL)a4 filtersChanged:(BOOL)a5;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AllRefinementsViewController

- (ResultRefinementsAnalytics)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (AllRefinementsViewControllerDelegate)allRefinementsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_allRefinementsDelegate);

  return WeakRetained;
}

- (void)refinementViewModelDidChange
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v3 = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
    v4 = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
    v5 = [(AllRefinementsViewController *)self modalHeaderView];
    [(AllRefinementsViewController *)self updateButtonsForHeader:v5 filtersSelected:v3 filtersChanged:v4];
  }
}

- (void)updateButtonsForHeader:(id)a3 filtersSelected:(BOOL)a4 filtersChanged:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x4010000000;
  v23[3] = &unk_1014C0133;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_initWeak(&location, self);
  v10 = [(AllRefinementsViewController *)self collectionView];
  [v10 contentInset];
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10078DC00;
  v19 = &unk_101629010;
  objc_copyWeak(&v21, &location);
  v22 = a4;
  v20 = v23;
  [UIView animateWithDuration:&v16 animations:0.2];
  v15 = [v8 trailingButton];
  [v15 setEnabled:v5];

  objc_destroyWeak(&v21);
  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&location);
}

- (void)_clearCurrentSelection
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v4 = [(AllRefinementsViewController *)self copiedViewModel];
    v3 = [v4 sections];
    [v3 enumerateObjectsUsingBlock:&stru_101628FE8];
  }
}

- (BOOL)_checkIfFiltersAreChanged
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(AllRefinementsViewModel *)self->_viewModel sections];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078DED4;
  v5[3] = &unk_101628FA8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_checkIfFiltersAreSelected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(AllRefinementsViewController *)self viewModel];
  v3 = [v2 sections];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078E070;
  v5[3] = &unk_101628F80;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_sendAnalyticsForEvent:(unint64_t)a3
{
  v5 = [(AllRefinementsViewController *)self viewModel];
  v6 = [v5 sections];
  if ([v6 count] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [(AllRefinementsViewController *)self analyticsDelegate];
  [v8 logRefinementsEvent:a3 fromSource:v7];
}

- (void)didTapOnApply:(id)a3
{
  [(ContaineeViewController *)self handleDismissAction:a3];
  v4 = [(AllRefinementsViewController *)self allRefinementsDelegate];
  v5 = [(AllRefinementsViewController *)self viewModel];
  v6 = [(AllRefinementsViewController *)self dataSource];
  v7 = [v6 selectionSequenceNumber];
  [v4 allRefinementsApplyViewModel:v5 selectionSequenceNumber:v7];

  [(AllRefinementsViewController *)self _sendAnalyticsForEvent:1];
}

- (void)didTapOnCancel:(id)a3
{
  [(ContaineeViewController *)self handleDismissAction:a3];

  [(AllRefinementsViewController *)self _sendAnalyticsForEvent:0];
}

- (void)didTapOnClear:(id)a3
{
  [(AllRefinementsViewController *)self _clearCurrentSelection];
  v4 = [(AllRefinementsViewController *)self copiedViewModel];
  v5 = [v4 copy];
  [(AllRefinementsViewController *)self setViewModel:v5];

  dataSource = self->_dataSource;
  v7 = [(AllRefinementsViewController *)self viewModel];
  [(AllRefinementsDataSource *)dataSource reloadCollectionView:v7];

  v8 = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  v9 = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:v9 filtersSelected:v8 filtersChanged:1];
}

- (void)addCollectionView
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewCompositionalLayout alloc];
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_10078ED04;
  v70[3] = &unk_10165E4F0;
  objc_copyWeak(&v71, &location);
  v4 = [v3 initWithSectionProvider:v70];
  [(AllRefinementsViewController *)self setCollectionViewLayout:v4];

  v5 = [(AllRefinementsViewController *)self collectionViewLayout];
  v6 = objc_opt_class();
  v7 = +[AllRefinementsSectionBackground decorationViewKind];
  [v5 registerClass:v6 forDecorationViewOfKind:v7];

  v8 = [UICollectionView alloc];
  v9 = [(AllRefinementsViewController *)self collectionViewLayout];
  v10 = [v8 initWithFrame:v9 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AllRefinementsViewController *)self setCollectionView:v10];

  v11 = [(AllRefinementsViewController *)self collectionView];
  [v11 setAccessibilityIdentifier:@"AllRefinementsCollectionView"];

  v12 = [(AllRefinementsViewController *)self collectionView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = +[UIColor clearColor];
  v14 = [(AllRefinementsViewController *)self collectionView];
  [v14 setBackgroundColor:v13];

  v15 = [(AllRefinementsViewController *)self collectionView];
  [v15 setAlwaysBounceVertical:1];

  v16 = [(ContaineeViewController *)self contentView];
  v17 = [(AllRefinementsViewController *)self collectionView];
  [v16 addSubview:v17];

  v68 = [(AllRefinementsViewController *)self collectionView];
  v64 = [v68 leadingAnchor];
  v66 = [(ContaineeViewController *)self contentView];
  v62 = [v66 leadingAnchor];
  v61 = [v64 constraintEqualToAnchor:v62];
  v74[0] = v61;
  v60 = [(AllRefinementsViewController *)self collectionView];
  v58 = [v60 trailingAnchor];
  v59 = [(ContaineeViewController *)self contentView];
  v57 = [v59 trailingAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v74[1] = v56;
  v55 = [(AllRefinementsViewController *)self collectionView];
  v54 = [v55 topAnchor];
  v18 = [(ContaineeViewController *)self contentView];
  v19 = [v18 topAnchor];
  v20 = [v54 constraintEqualToAnchor:v19];
  v74[2] = v20;
  v21 = [(AllRefinementsViewController *)self collectionView];
  v22 = [v21 bottomAnchor];
  v23 = [(ContaineeViewController *)self contentView];
  v24 = [v23 bottomAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v74[3] = v25;
  v26 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  v27 = [AllRefinementsDataSource alloc];
  v28 = [(AllRefinementsViewController *)self collectionView];
  v29 = [(AllRefinementsViewController *)self viewModel];
  v30 = [(AllRefinementsViewController *)self selectionSequenceNumber];
  v31 = [(AllRefinementsViewController *)self analyticsDelegate];
  v32 = [(AllRefinementsDataSource *)v27 initWithCollectionView:v28 viewModel:v29 scrollViewDelegate:self selectionSequenceNumber:v30 analyticsDelegate:v31 viewModelDelegate:self];
  dataSource = self->_dataSource;
  self->_dataSource = v32;

  [(AllRefinementsDataSource *)self->_dataSource displayRefinements];
  v69 = +[UIButtonConfiguration _glassButtonConfiguration];
  v34 = +[NSBundle mainBundle];
  v35 = [v34 localizedStringForKey:@"[Refinements] Clear Filters" value:@"localized string not found" table:0];
  [v69 setTitle:v35];

  [v69 setButtonSize:3];
  [v69 setTitleTextAttributesTransformer:&stru_101628F08];
  v36 = [UIButton buttonWithConfiguration:v69 primaryAction:0];
  [(AllRefinementsViewController *)self setClearButton:v36];

  v37 = [(AllRefinementsViewController *)self clearButton];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];

  v38 = [(AllRefinementsViewController *)self clearButton];
  [v38 addTarget:self action:"didTapOnClear:" forControlEvents:64];

  v39 = [(AllRefinementsViewController *)self clearButton];
  [v39 setAlpha:0.0];

  v40 = [(AllRefinementsViewController *)self view];
  v41 = [(AllRefinementsViewController *)self clearButton];
  [v40 addSubview:v41];

  v67 = [(AllRefinementsViewController *)self clearButton];
  v63 = [v67 bottomAnchor];
  v65 = [(AllRefinementsViewController *)self view];
  v42 = [v65 safeAreaLayoutGuide];
  v43 = [v42 bottomAnchor];
  v44 = [v63 constraintEqualToAnchor:v43 constant:-32.0];
  v73[0] = v44;
  v45 = [(AllRefinementsViewController *)self clearButton];
  v46 = [v45 centerXAnchor];
  v47 = [(AllRefinementsViewController *)self view];
  v48 = [v47 centerXAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  v73[1] = v49;
  v50 = [NSArray arrayWithObjects:v73 count:2];
  [NSLayoutConstraint activateConstraints:v50];

  v51 = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  v52 = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
  v53 = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:v53 filtersSelected:v51 filtersChanged:v52];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

- (void)addHeaderView
{
  v3 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v3 setAccessibilityIdentifier:@"AllRefinementsHeader"];
  [(ModalCardHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(AllRefinementsViewController *)self viewModel];
  v5 = [v4 displayName];
  [(ModalCardHeaderView *)v3 setTitle:v5];

  v28 = [MapsThemeButton buttonWithType:1];
  [v28 addTarget:self action:"didTapOnCancel:" forControlEvents:64];
  [(ModalCardHeaderView *)v3 setLeadingButton:v28];
  v27 = [MapsThemeButton buttonWithType:1];
  [v27 addTarget:self action:"didTapOnApply:" forControlEvents:64];
  [(ModalCardHeaderView *)v3 setTrailingButton:v27];
  v6 = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  v7 = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
  v8 = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:v8 filtersSelected:v6 filtersChanged:v7];

  v9 = [(ContaineeViewController *)self headerView];
  [v9 addSubview:v3];

  v25 = [(ModalCardHeaderView *)v3 leadingAnchor];
  v26 = [(ContaineeViewController *)self headerView];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v21 = [(ModalCardHeaderView *)v3 trailingAnchor];
  v22 = [(ContaineeViewController *)self headerView];
  v20 = [v22 trailingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v29[1] = v19;
  v18 = [(ModalCardHeaderView *)v3 topAnchor];
  v10 = [(ContaineeViewController *)self headerView];
  v11 = [v10 topAnchor];
  v12 = [v18 constraintEqualToAnchor:v11];
  v29[2] = v12;
  v13 = [(ModalCardHeaderView *)v3 bottomAnchor];
  v14 = [(ContaineeViewController *)self headerView];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v29[3] = v16;
  v17 = [NSArray arrayWithObjects:v29 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  [(AllRefinementsViewController *)self setModalHeaderView:v3];
}

- (void)viewDidLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = AllRefinementsViewController;
  [(ContaineeViewController *)&v19 viewDidLayoutSubviews];
  v3 = [(AllRefinementsViewController *)self collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;
  [(ContaineeViewController *)self headerHeight];
  v7 = v5 + v6;

  if (v7 > 2.22044605e-16)
  {
    v8 = [(ContaineeViewController *)self cardPresentationController];
    -[AllRefinementsViewController heightForLayout:](self, "heightForLayout:", [v8 containeeLayout]);
    v10 = v9;

    v11 = [(AllRefinementsViewController *)self collectionView];
    [v11 setScrollEnabled:v7 > v10];
  }

  collectionViewWidth = self->_collectionViewWidth;
  v13 = [(AllRefinementsViewController *)self collectionView];
  [v13 frame];
  v15 = v14;

  if (collectionViewWidth != v15)
  {
    v16 = [(AllRefinementsViewController *)self collectionView];
    [v16 frame];
    self->_collectionViewWidth = v17;

    v18 = [(AllRefinementsViewController *)self collectionView];
    [v18 reloadData];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AllRefinementsViewController;
  [(ContaineeViewController *)&v6 viewDidLoad];
  v3 = [(AllRefinementsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"AllRefinementsView"];

  [(AllRefinementsViewController *)self addHeaderView];
  [(AllRefinementsViewController *)self addCollectionView];
  v4 = [(AllRefinementsViewController *)self collectionView];
  [v4 frame];
  self->_collectionViewWidth = v5;
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containerStyle];
  if (v6 > 7 || ((1 << v6) & 0xE3) == 0)
  {

    v22 = [(ContaineeViewController *)self cardPresentationController];
    [v22 availableHeight];
    v24 = v23;

    return v24;
  }

  else
  {

    v8 = [(AllRefinementsViewController *)self viewModel];
    v9 = [v8 viewTakesFullHeight];

    if (v9)
    {
      [(ContaineeViewController *)&v29 heightForLayout:a3, v28.receiver, v28.super_class, self, AllRefinementsViewController];
      return v10 + 32.0;
    }

    v11 = [(AllRefinementsViewController *)self collectionViewLayout];
    [v11 collectionViewContentSize];
    v13 = v12;

    if (v13 <= 2.22044605e-16)
    {
      [(ContaineeViewController *)&v28 heightForLayout:2, self, AllRefinementsViewController, v29.receiver, v29.super_class];
      return v10 + 32.0;
    }

    [(ContaineeViewController *)self headerHeight];
    v15 = v14 + v13;
    v16 = [(ContaineeViewController *)self cardPresentationController];
    [v16 availableHeight];
    if (v15 < v17)
    {
      [(ContaineeViewController *)self headerHeight];
      v20 = v25 + v13;
    }

    else
    {
      v18 = [(ContaineeViewController *)self cardPresentationController];
      [v18 availableHeight];
      v20 = v19;
    }

    sub_100068BB8();
    v27 = v26;
    result = v20 + 32.0;
    if (v27 > v20 + 32.0)
    {

      sub_100068BB8();
    }
  }

  return result;
}

- (AllRefinementsViewController)initWithViewModel:(id)a3 selectionSequenceNumber:(id)a4 resultRefinementsAnalyticsDelegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = AllRefinementsViewController;
  v12 = [(AllRefinementsViewController *)&v22 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, a3);
    v14 = [v9 copy];
    copiedViewModel = v13->_copiedViewModel;
    v13->_copiedViewModel = v14;

    objc_storeStrong(&v13->_selectionSequenceNumber, a4);
    objc_storeWeak(&v13->_analyticsDelegate, v11);
    v16 = [(ContaineeViewController *)v13 cardPresentationController];
    [v16 setPresentedModally:1];

    v17 = [(ContaineeViewController *)v13 cardPresentationController];
    [v17 setAllowsSwipeToDismiss:0];

    v18 = [(ContaineeViewController *)v13 cardPresentationController];
    [v18 setDefaultContaineeLayout:5];

    v19 = [(ContaineeViewController *)v13 cardPresentationController];
    [v19 setTakesAvailableHeight:1];

    v20 = [(ContaineeViewController *)v13 cardPresentationController];
    [v20 setHideGrabber:1];

    [(AllRefinementsViewController *)v13 setAccessibilityIdentifier:@"AllRefinementsView"];
  }

  return v13;
}

@end
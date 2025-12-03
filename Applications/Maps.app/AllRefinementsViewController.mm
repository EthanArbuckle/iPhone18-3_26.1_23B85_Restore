@interface AllRefinementsViewController
- (AllRefinementsViewController)initWithViewModel:(id)model selectionSequenceNumber:(id)number resultRefinementsAnalyticsDelegate:(id)delegate;
- (AllRefinementsViewControllerDelegate)allRefinementsDelegate;
- (BOOL)_checkIfFiltersAreChanged;
- (BOOL)_checkIfFiltersAreSelected;
- (ResultRefinementsAnalytics)analyticsDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (void)_clearCurrentSelection;
- (void)_sendAnalyticsForEvent:(unint64_t)event;
- (void)addCollectionView;
- (void)addHeaderView;
- (void)didTapOnApply:(id)apply;
- (void)didTapOnCancel:(id)cancel;
- (void)didTapOnClear:(id)clear;
- (void)refinementViewModelDidChange;
- (void)updateButtonsForHeader:(id)header filtersSelected:(BOOL)selected filtersChanged:(BOOL)changed;
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
    _checkIfFiltersAreSelected = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
    _checkIfFiltersAreChanged = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
    modalHeaderView = [(AllRefinementsViewController *)self modalHeaderView];
    [(AllRefinementsViewController *)self updateButtonsForHeader:modalHeaderView filtersSelected:_checkIfFiltersAreSelected filtersChanged:_checkIfFiltersAreChanged];
  }
}

- (void)updateButtonsForHeader:(id)header filtersSelected:(BOOL)selected filtersChanged:(BOOL)changed
{
  changedCopy = changed;
  headerCopy = header;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x4010000000;
  v23[3] = &unk_1014C0133;
  v24 = 0u;
  v25 = 0u;
  v9 = objc_initWeak(&location, self);
  collectionView = [(AllRefinementsViewController *)self collectionView];
  [collectionView contentInset];
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v14;

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10078DC00;
  v19 = &unk_101629010;
  objc_copyWeak(&v21, &location);
  selectedCopy = selected;
  v20 = v23;
  [UIView animateWithDuration:&v16 animations:0.2];
  trailingButton = [headerCopy trailingButton];
  [trailingButton setEnabled:changedCopy];

  objc_destroyWeak(&v21);
  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&location);
}

- (void)_clearCurrentSelection
{
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    copiedViewModel = [(AllRefinementsViewController *)self copiedViewModel];
    sections = [copiedViewModel sections];
    [sections enumerateObjectsUsingBlock:&stru_101628FE8];
  }
}

- (BOOL)_checkIfFiltersAreChanged
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sections = [(AllRefinementsViewModel *)self->_viewModel sections];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078DED4;
  v5[3] = &unk_101628FA8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [sections enumerateObjectsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_checkIfFiltersAreSelected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  viewModel = [(AllRefinementsViewController *)self viewModel];
  sections = [viewModel sections];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10078E070;
  v5[3] = &unk_101628F80;
  v5[4] = &v6;
  [sections enumerateObjectsUsingBlock:v5];

  LOBYTE(viewModel) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return viewModel;
}

- (void)_sendAnalyticsForEvent:(unint64_t)event
{
  viewModel = [(AllRefinementsViewController *)self viewModel];
  sections = [viewModel sections];
  if ([sections count] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  analyticsDelegate = [(AllRefinementsViewController *)self analyticsDelegate];
  [analyticsDelegate logRefinementsEvent:event fromSource:v7];
}

- (void)didTapOnApply:(id)apply
{
  [(ContaineeViewController *)self handleDismissAction:apply];
  allRefinementsDelegate = [(AllRefinementsViewController *)self allRefinementsDelegate];
  viewModel = [(AllRefinementsViewController *)self viewModel];
  dataSource = [(AllRefinementsViewController *)self dataSource];
  selectionSequenceNumber = [dataSource selectionSequenceNumber];
  [allRefinementsDelegate allRefinementsApplyViewModel:viewModel selectionSequenceNumber:selectionSequenceNumber];

  [(AllRefinementsViewController *)self _sendAnalyticsForEvent:1];
}

- (void)didTapOnCancel:(id)cancel
{
  [(ContaineeViewController *)self handleDismissAction:cancel];

  [(AllRefinementsViewController *)self _sendAnalyticsForEvent:0];
}

- (void)didTapOnClear:(id)clear
{
  [(AllRefinementsViewController *)self _clearCurrentSelection];
  copiedViewModel = [(AllRefinementsViewController *)self copiedViewModel];
  v5 = [copiedViewModel copy];
  [(AllRefinementsViewController *)self setViewModel:v5];

  dataSource = self->_dataSource;
  viewModel = [(AllRefinementsViewController *)self viewModel];
  [(AllRefinementsDataSource *)dataSource reloadCollectionView:viewModel];

  _checkIfFiltersAreSelected = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  modalHeaderView = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:modalHeaderView filtersSelected:_checkIfFiltersAreSelected filtersChanged:1];
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

  collectionViewLayout = [(AllRefinementsViewController *)self collectionViewLayout];
  v6 = objc_opt_class();
  v7 = +[AllRefinementsSectionBackground decorationViewKind];
  [collectionViewLayout registerClass:v6 forDecorationViewOfKind:v7];

  v8 = [UICollectionView alloc];
  collectionViewLayout2 = [(AllRefinementsViewController *)self collectionViewLayout];
  v10 = [v8 initWithFrame:collectionViewLayout2 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(AllRefinementsViewController *)self setCollectionView:v10];

  collectionView = [(AllRefinementsViewController *)self collectionView];
  [collectionView setAccessibilityIdentifier:@"AllRefinementsCollectionView"];

  collectionView2 = [(AllRefinementsViewController *)self collectionView];
  [collectionView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = +[UIColor clearColor];
  collectionView3 = [(AllRefinementsViewController *)self collectionView];
  [collectionView3 setBackgroundColor:v13];

  collectionView4 = [(AllRefinementsViewController *)self collectionView];
  [collectionView4 setAlwaysBounceVertical:1];

  contentView = [(ContaineeViewController *)self contentView];
  collectionView5 = [(AllRefinementsViewController *)self collectionView];
  [contentView addSubview:collectionView5];

  collectionView6 = [(AllRefinementsViewController *)self collectionView];
  leadingAnchor = [collectionView6 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v74[0] = v61;
  collectionView7 = [(AllRefinementsViewController *)self collectionView];
  trailingAnchor = [collectionView7 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v74[1] = v56;
  collectionView8 = [(AllRefinementsViewController *)self collectionView];
  topAnchor = [collectionView8 topAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v74[2] = v20;
  collectionView9 = [(AllRefinementsViewController *)self collectionView];
  bottomAnchor = [collectionView9 bottomAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v74[3] = v25;
  v26 = [NSArray arrayWithObjects:v74 count:4];
  [NSLayoutConstraint activateConstraints:v26];

  v27 = [AllRefinementsDataSource alloc];
  collectionView10 = [(AllRefinementsViewController *)self collectionView];
  viewModel = [(AllRefinementsViewController *)self viewModel];
  selectionSequenceNumber = [(AllRefinementsViewController *)self selectionSequenceNumber];
  analyticsDelegate = [(AllRefinementsViewController *)self analyticsDelegate];
  v32 = [(AllRefinementsDataSource *)v27 initWithCollectionView:collectionView10 viewModel:viewModel scrollViewDelegate:self selectionSequenceNumber:selectionSequenceNumber analyticsDelegate:analyticsDelegate viewModelDelegate:self];
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

  clearButton = [(AllRefinementsViewController *)self clearButton];
  [clearButton setTranslatesAutoresizingMaskIntoConstraints:0];

  clearButton2 = [(AllRefinementsViewController *)self clearButton];
  [clearButton2 addTarget:self action:"didTapOnClear:" forControlEvents:64];

  clearButton3 = [(AllRefinementsViewController *)self clearButton];
  [clearButton3 setAlpha:0.0];

  view = [(AllRefinementsViewController *)self view];
  clearButton4 = [(AllRefinementsViewController *)self clearButton];
  [view addSubview:clearButton4];

  clearButton5 = [(AllRefinementsViewController *)self clearButton];
  bottomAnchor3 = [clearButton5 bottomAnchor];
  view2 = [(AllRefinementsViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-32.0];
  v73[0] = v44;
  clearButton6 = [(AllRefinementsViewController *)self clearButton];
  centerXAnchor = [clearButton6 centerXAnchor];
  view3 = [(AllRefinementsViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v73[1] = v49;
  v50 = [NSArray arrayWithObjects:v73 count:2];
  [NSLayoutConstraint activateConstraints:v50];

  _checkIfFiltersAreSelected = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  _checkIfFiltersAreChanged = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
  modalHeaderView = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:modalHeaderView filtersSelected:_checkIfFiltersAreSelected filtersChanged:_checkIfFiltersAreChanged];

  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

- (void)addHeaderView
{
  v3 = [[_TtC4Maps19ModalCardHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ModalCardHeaderView *)v3 setAccessibilityIdentifier:@"AllRefinementsHeader"];
  [(ModalCardHeaderView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  viewModel = [(AllRefinementsViewController *)self viewModel];
  displayName = [viewModel displayName];
  [(ModalCardHeaderView *)v3 setTitle:displayName];

  v28 = [MapsThemeButton buttonWithType:1];
  [v28 addTarget:self action:"didTapOnCancel:" forControlEvents:64];
  [(ModalCardHeaderView *)v3 setLeadingButton:v28];
  v27 = [MapsThemeButton buttonWithType:1];
  [v27 addTarget:self action:"didTapOnApply:" forControlEvents:64];
  [(ModalCardHeaderView *)v3 setTrailingButton:v27];
  _checkIfFiltersAreSelected = [(AllRefinementsViewController *)self _checkIfFiltersAreSelected];
  _checkIfFiltersAreChanged = [(AllRefinementsViewController *)self _checkIfFiltersAreChanged];
  modalHeaderView = [(AllRefinementsViewController *)self modalHeaderView];
  [(AllRefinementsViewController *)self updateButtonsForHeader:modalHeaderView filtersSelected:_checkIfFiltersAreSelected filtersChanged:_checkIfFiltersAreChanged];

  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:v3];

  leadingAnchor = [(ModalCardHeaderView *)v3 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  trailingAnchor = [(ModalCardHeaderView *)v3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v19;
  topAnchor = [(ModalCardHeaderView *)v3 topAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView4 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v12;
  bottomAnchor = [(ModalCardHeaderView *)v3 bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView5 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
  collectionViewLayout = [(AllRefinementsViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
  v5 = v4;
  [(ContaineeViewController *)self headerHeight];
  v7 = v5 + v6;

  if (v7 > 2.22044605e-16)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    -[AllRefinementsViewController heightForLayout:](self, "heightForLayout:", [cardPresentationController containeeLayout]);
    v10 = v9;

    collectionView = [(AllRefinementsViewController *)self collectionView];
    [collectionView setScrollEnabled:v7 > v10];
  }

  collectionViewWidth = self->_collectionViewWidth;
  collectionView2 = [(AllRefinementsViewController *)self collectionView];
  [collectionView2 frame];
  v15 = v14;

  if (collectionViewWidth != v15)
  {
    collectionView3 = [(AllRefinementsViewController *)self collectionView];
    [collectionView3 frame];
    self->_collectionViewWidth = v17;

    collectionView4 = [(AllRefinementsViewController *)self collectionView];
    [collectionView4 reloadData];
  }
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AllRefinementsViewController;
  [(ContaineeViewController *)&v6 viewDidLoad];
  view = [(AllRefinementsViewController *)self view];
  [view setAccessibilityIdentifier:@"AllRefinementsView"];

  [(AllRefinementsViewController *)self addHeaderView];
  [(AllRefinementsViewController *)self addCollectionView];
  collectionView = [(AllRefinementsViewController *)self collectionView];
  [collectionView frame];
  self->_collectionViewWidth = v5;
}

- (double)heightForLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  if (containerStyle > 7 || ((1 << containerStyle) & 0xE3) == 0)
  {

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 availableHeight];
    v24 = v23;

    return v24;
  }

  else
  {

    viewModel = [(AllRefinementsViewController *)self viewModel];
    viewTakesFullHeight = [viewModel viewTakesFullHeight];

    if (viewTakesFullHeight)
    {
      [(ContaineeViewController *)&v29 heightForLayout:layout, v28.receiver, v28.super_class, self, AllRefinementsViewController];
      return v10 + 32.0;
    }

    collectionViewLayout = [(AllRefinementsViewController *)self collectionViewLayout];
    [collectionViewLayout collectionViewContentSize];
    v13 = v12;

    if (v13 <= 2.22044605e-16)
    {
      [(ContaineeViewController *)&v28 heightForLayout:2, self, AllRefinementsViewController, v29.receiver, v29.super_class];
      return v10 + 32.0;
    }

    [(ContaineeViewController *)self headerHeight];
    v15 = v14 + v13;
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 availableHeight];
    if (v15 < v17)
    {
      [(ContaineeViewController *)self headerHeight];
      v20 = v25 + v13;
    }

    else
    {
      cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController4 availableHeight];
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

- (AllRefinementsViewController)initWithViewModel:(id)model selectionSequenceNumber:(id)number resultRefinementsAnalyticsDelegate:(id)delegate
{
  modelCopy = model;
  numberCopy = number;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = AllRefinementsViewController;
  v12 = [(AllRefinementsViewController *)&v22 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_viewModel, model);
    v14 = [modelCopy copy];
    copiedViewModel = v13->_copiedViewModel;
    v13->_copiedViewModel = v14;

    objc_storeStrong(&v13->_selectionSequenceNumber, number);
    objc_storeWeak(&v13->_analyticsDelegate, delegateCopy);
    cardPresentationController = [(ContaineeViewController *)v13 cardPresentationController];
    [cardPresentationController setPresentedModally:1];

    cardPresentationController2 = [(ContaineeViewController *)v13 cardPresentationController];
    [cardPresentationController2 setAllowsSwipeToDismiss:0];

    cardPresentationController3 = [(ContaineeViewController *)v13 cardPresentationController];
    [cardPresentationController3 setDefaultContaineeLayout:5];

    cardPresentationController4 = [(ContaineeViewController *)v13 cardPresentationController];
    [cardPresentationController4 setTakesAvailableHeight:1];

    cardPresentationController5 = [(ContaineeViewController *)v13 cardPresentationController];
    [cardPresentationController5 setHideGrabber:1];

    [(AllRefinementsViewController *)v13 setAccessibilityIdentifier:@"AllRefinementsView"];
  }

  return v13;
}

@end
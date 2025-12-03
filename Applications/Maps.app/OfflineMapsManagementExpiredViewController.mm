@interface OfflineMapsManagementExpiredViewController
- (OfflineMapsManagementActionCoordination)delegate;
- (void)_clearSelectedMaps;
- (void)_dismiss;
- (void)_restoreSelectedMaps;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_toggleEditing;
- (void)_toggleSelectAll;
- (void)_updateClearButton;
- (void)_updateRestoreButton;
- (void)_updateSelectAllButton;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)didDismissByGesture;
- (void)didSelectRestoreExpiredSubscriptions:(id)subscriptions completionHandler:(id)handler;
- (void)dismissExpiredViewControllerIfNecessary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation OfflineMapsManagementExpiredViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissExpiredViewControllerIfNecessary
{
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  if (!v4)
  {

    [(OfflineMapsManagementExpiredViewController *)self _dismiss];
  }
}

- (void)didSelectRestoreExpiredSubscriptions:(id)subscriptions completionHandler:(id)handler
{
  handlerCopy = handler;
  subscriptionsCopy = subscriptions;
  delegate = [(OfflineMapsManagementExpiredViewController *)self delegate];
  [delegate restoreExpiredSubscriptions:subscriptionsCopy completionHandler:handlerCopy];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  [(OfflineMapsManagementExpiredViewController *)self _updateSelectAllButton:source];
  [(OfflineMapsManagementExpiredViewController *)self _updateRestoreButton];

  [(OfflineMapsManagementExpiredViewController *)self _updateClearButton];
}

- (void)didDismissByGesture
{
  [(OfflineMapsManagementExpiredViewController *)self _dismiss];
  v3.receiver = self;
  v3.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v3 didDismissByGesture];
}

- (void)_restoreSelectedMaps
{
  offlineMapsDataSource = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource restoreSelectedMaps];

  [GEOAPPortal captureUserAction:388 target:87 value:0];
}

- (void)_clearSelectedMaps
{
  offlineMapsDataSource = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource clearSelectedMaps];

  [GEOAPPortal captureUserAction:389 target:87 value:0];
}

- (void)_updateClearButton
{
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v4 = [indexPathsForSelectedItems count] != 0;
  clearButtonItem = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  [clearButtonItem setEnabled:v4];
}

- (void)_updateRestoreButton
{
  offlineMapsDataSource = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  canRestoreSelectedMaps = [offlineMapsDataSource canRestoreSelectedMaps];
  restoreButtonItem = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  [restoreButtonItem setEnabled:canRestoreSelectedMaps];
}

- (void)_updateSelectAllButton
{
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  collectionView2 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems count];

  if (v7 == v4)
  {
    [(OfflineMapsManagementExpiredViewController *)self deselectAllButtonItem];
  }

  else
  {
    [(OfflineMapsManagementExpiredViewController *)self selectAllButtonItem];
  }
  v10 = ;
  navBar = [(OfflineMapsManagementExpiredViewController *)self navBar];
  topItem = [navBar topItem];
  [topItem setRightBarButtonItem:v10];
}

- (void)_toggleSelectAll
{
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [collectionView numberOfItemsInSection:0];

  collectionView2 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
  v7 = [indexPathsForSelectedItems count];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = [NSIndexPath indexPathForRow:i inSection:0];
      collectionView3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
      v11 = collectionView3;
      if (v7 == v4)
      {
        [collectionView3 deselectItemAtIndexPath:v9 animated:0];
      }

      else
      {
        [collectionView3 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
      }
    }
  }

  [(OfflineMapsManagementExpiredViewController *)self _updateSelectAllButton];
  [(OfflineMapsManagementExpiredViewController *)self _updateRestoreButton];

  [(OfflineMapsManagementExpiredViewController *)self _updateClearButton];
}

- (void)_toggleEditing
{
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  isEditing = [collectionView isEditing];
  collectionView2 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView2 setEditing:isEditing ^ 1];

  collectionView3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  isEditing2 = [collectionView3 isEditing];

  if (isEditing2)
  {
    selectAllButtonItem = [(OfflineMapsManagementExpiredViewController *)self selectAllButtonItem];
    navBar = [(OfflineMapsManagementExpiredViewController *)self navBar];
    topItem = [navBar topItem];
    [topItem setRightBarButtonItem:selectAllButtonItem];

    [(OfflineMapsManagementExpiredViewController *)self cancelButtonItem];
  }

  else
  {
    doneButtonItem = [(OfflineMapsManagementExpiredViewController *)self doneButtonItem];
    navBar2 = [(OfflineMapsManagementExpiredViewController *)self navBar];
    topItem2 = [navBar2 topItem];
    [topItem2 setRightBarButtonItem:doneButtonItem];

    [(OfflineMapsManagementExpiredViewController *)self editButtonItem];
  }
  v14 = ;
  navBar3 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  topItem3 = [navBar3 topItem];
  [topItem3 setLeftBarButtonItem:v14];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100E05498;
  v24[3] = &unk_101661AE0;
  v25 = isEditing2 ^ 1;
  v24[4] = self;
  [UIView animateWithDuration:v24 animations:UINavigationControllerHideShowBarDuration];
  if (isEditing2)
  {
    toolbar = [(OfflineMapsManagementExpiredViewController *)self toolbar];
    [toolbar frame];
    Height = CGRectGetHeight(v26);

    top = 0.0;
    left = 0.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    Height = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  collectionView4 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView4 setContentInset:{top, left, Height, right}];

  collectionView5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView5 setVerticalScrollIndicatorInsets:{top, left, Height, right}];
}

- (void)_dismiss
{
  delegate = [(OfflineMapsManagementExpiredViewController *)self delegate];
  [delegate closeExpiredMapsManagement];
}

- (void)_setupConstraints
{
  toolbar = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  topAnchor = [toolbar topAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  bottomAnchor = [contentView bottomAnchor];
  v7 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  toolbarHiddenConstraint = self->_toolbarHiddenConstraint;
  self->_toolbarHiddenConstraint = v7;

  toolbar2 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  bottomAnchor2 = [toolbar2 bottomAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  safeAreaLayoutGuide = [contentView2 safeAreaLayoutGuide];
  bottomAnchor3 = [safeAreaLayoutGuide bottomAnchor];
  v14 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  toolbarVisibleConstraint = self->_toolbarVisibleConstraint;
  self->_toolbarVisibleConstraint = v14;

  navBar = [(OfflineMapsManagementExpiredViewController *)self navBar];
  topAnchor2 = [navBar topAnchor];
  headerView = [(ContaineeViewController *)self headerView];
  topAnchor3 = [headerView topAnchor];
  v63 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v68[0] = v63;
  navBar2 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  leadingAnchor = [navBar2 leadingAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView2 leadingAnchor];
  v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v68[1] = v58;
  navBar3 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  trailingAnchor = [navBar3 trailingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView3 trailingAnchor];
  v53 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v68[2] = v53;
  navBar4 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  bottomAnchor4 = [navBar4 bottomAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  bottomAnchor5 = [headerView4 bottomAnchor];
  v48 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v68[3] = v48;
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  topAnchor4 = [collectionView topAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  topAnchor5 = [contentView3 topAnchor];
  v43 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v68[4] = v43;
  collectionView2 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  leadingAnchor3 = [collectionView2 leadingAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView4 leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v68[5] = v38;
  collectionView3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  trailingAnchor3 = [collectionView3 trailingAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView5 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v68[6] = v33;
  collectionView4 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  bottomAnchor6 = [collectionView4 bottomAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  bottomAnchor7 = [contentView6 bottomAnchor];
  v28 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
  v68[7] = v28;
  toolbar3 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  leadingAnchor5 = [toolbar3 leadingAnchor];
  contentView7 = [(ContaineeViewController *)self contentView];
  leadingAnchor6 = [contentView7 leadingAnchor];
  v19 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v68[8] = v19;
  toolbar4 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  trailingAnchor5 = [toolbar4 trailingAnchor];
  contentView8 = [(ContaineeViewController *)self contentView];
  trailingAnchor6 = [contentView8 trailingAnchor];
  v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v25 = self->_toolbarHiddenConstraint;
  v68[9] = v24;
  v68[10] = v25;
  v26 = [NSArray arrayWithObjects:v68 count:11];
  [NSLayoutConstraint activateConstraints:v26];
}

- (void)_setupViews
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPresentedModally:1];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 setTakesAvailableHeight:1];

  v5 = +[UIColor clearColor];
  view = [(OfflineMapsManagementExpiredViewController *)self view];
  [view setBackgroundColor:v5];

  v7 = [UIBarButtonItem alloc];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Done [Modal Card Header]" value:@"localized string not found" table:0];

  v10 = [v7 initWithTitle:v9 style:2 target:self action:"_dismiss"];
  [(OfflineMapsManagementExpiredViewController *)self setDoneButtonItem:v10];

  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 target:self action:"_toggleEditing"];
  [(OfflineMapsManagementExpiredViewController *)self setEditButtonItem:v11];

  v12 = [UIBarButtonItem alloc];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"Select All" value:@"localized string not found" table:@"Offline"];
  v15 = [v12 initWithTitle:v14 style:0 target:self action:"_toggleSelectAll"];
  [(OfflineMapsManagementExpiredViewController *)self setSelectAllButtonItem:v15];

  v16 = [UIBarButtonItem alloc];
  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Deselect All" value:@"localized string not found" table:@"Offline"];
  v19 = [v16 initWithTitle:v18 style:0 target:self action:"_toggleSelectAll"];
  [(OfflineMapsManagementExpiredViewController *)self setDeselectAllButtonItem:v19];

  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_toggleEditing"];
  [(OfflineMapsManagementExpiredViewController *)self setCancelButtonItem:v20];

  v21 = [UINavigationItem alloc];
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"EXPIRED_MAPS_TITLE" value:@"localized string not found" table:@"Offline"];
  v24 = [v21 initWithTitle:v23];

  doneButtonItem = [(OfflineMapsManagementExpiredViewController *)self doneButtonItem];
  [v24 setRightBarButtonItem:doneButtonItem];

  editButtonItem = [(OfflineMapsManagementExpiredViewController *)self editButtonItem];
  [v24 setLeftBarButtonItem:editButtonItem];

  v27 = objc_alloc_init(UINavigationBar);
  [(OfflineMapsManagementExpiredViewController *)self setNavBar:v27];

  navBar = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [navBar setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = objc_alloc_init(UINavigationBarAppearance);
  [v29 configureWithTransparentBackground];
  navBar2 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [navBar2 setStandardAppearance:v29];

  navBar3 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [navBar3 pushNavigationItem:v24 animated:0];

  headerView = [(ContaineeViewController *)self headerView];
  navBar4 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [headerView addSubview:navBar4];

  objc_initWeak(&location, self);
  v34 = [UICollectionViewCompositionalLayout alloc];
  v67 = _NSConcreteStackBlock;
  v68 = 3221225472;
  v69 = sub_100E06408;
  v70 = &unk_10165E4F0;
  objc_copyWeak(&v71, &location);
  v35 = [v34 initWithSectionProvider:&v67];
  v36 = [UICollectionView alloc];
  v37 = [v36 initWithFrame:v35 collectionViewLayout:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v67, v68, v69, v70}];
  [(OfflineMapsManagementExpiredViewController *)self setCollectionView:v37];

  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = +[UIColor clearColor];
  collectionView2 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView2 setBackgroundColor:v39];

  collectionView3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView3 setAllowsSelection:1];

  collectionView4 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView4 setAllowsSelectionDuringEditing:1];

  collectionView5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [collectionView5 setAllowsMultipleSelectionDuringEditing:1];

  contentView = [(ContaineeViewController *)self contentView];
  collectionView6 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [contentView addSubview:collectionView6];

  v46 = [UIBarButtonItem alloc];
  v47 = +[NSBundle mainBundle];
  v48 = [v47 localizedStringForKey:@"Clear" value:@"localized string not found" table:@"Offline"];
  v49 = [v46 initWithTitle:v48 style:0 target:self action:"_clearSelectedMaps"];
  [(OfflineMapsManagementExpiredViewController *)self setClearButtonItem:v49];

  clearButtonItem = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  v51 = +[UIColor systemRedColor];
  [clearButtonItem setTintColor:v51];

  clearButtonItem2 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  [clearButtonItem2 setEnabled:0];

  v53 = [UIBarButtonItem alloc];
  v54 = +[NSBundle mainBundle];
  v55 = [v54 localizedStringForKey:@"Restore" value:@"localized string not found" table:@"Offline"];
  v56 = [v53 initWithTitle:v55 style:0 target:self action:"_restoreSelectedMaps"];
  [(OfflineMapsManagementExpiredViewController *)self setRestoreButtonItem:v56];

  restoreButtonItem = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  [restoreButtonItem setEnabled:0];

  v58 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v59 = objc_alloc_init(UIToolbar);
  [(OfflineMapsManagementExpiredViewController *)self setToolbar:v59];

  toolbar = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  [toolbar setTranslatesAutoresizingMaskIntoConstraints:0];

  toolbar2 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  clearButtonItem3 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  v73[0] = clearButtonItem3;
  v73[1] = v58;
  restoreButtonItem2 = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  v73[2] = restoreButtonItem2;
  v64 = [NSArray arrayWithObjects:v73 count:3];
  [toolbar2 setItems:v64];

  contentView2 = [(ContaineeViewController *)self contentView];
  toolbar3 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  [contentView2 addSubview:toolbar3];

  [(OfflineMapsManagementExpiredViewController *)self setAccessibilityIdentifier:@"OfflineMapsExpiredView"];
  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  offlineMapsDataSource = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource setActive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v10 viewWillAppear:appear];
  v4 = [OfflineMapsManagementExpiredDataSource alloc];
  collectionView = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v6 = [(OfflineMapsManagementExpiredDataSource *)v4 initWithCollectionView:collectionView updateLocation:0];
  [(OfflineMapsManagementExpiredViewController *)self setOfflineMapsDataSource:v6];

  offlineMapsDataSource = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource setDelegate:self];

  offlineMapsDataSource2 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource2 setOfflineDelegate:self];

  offlineMapsDataSource3 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [offlineMapsDataSource3 setActive:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v3 viewDidLoad];
  [(OfflineMapsManagementExpiredViewController *)self _setupViews];
  [(OfflineMapsManagementExpiredViewController *)self _setupConstraints];
}

@end
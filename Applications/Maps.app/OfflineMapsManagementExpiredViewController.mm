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
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)didDismissByGesture;
- (void)didSelectRestoreExpiredSubscriptions:(id)a3 completionHandler:(id)a4;
- (void)dismissExpiredViewControllerIfNecessary;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation OfflineMapsManagementExpiredViewController

- (OfflineMapsManagementActionCoordination)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dismissExpiredViewControllerIfNecessary
{
  v3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  if (!v4)
  {

    [(OfflineMapsManagementExpiredViewController *)self _dismiss];
  }
}

- (void)didSelectRestoreExpiredSubscriptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(OfflineMapsManagementExpiredViewController *)self delegate];
  [v8 restoreExpiredSubscriptions:v7 completionHandler:v6];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  [(OfflineMapsManagementExpiredViewController *)self _updateSelectAllButton:a3];
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
  v2 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v2 restoreSelectedMaps];

  [GEOAPPortal captureUserAction:388 target:87 value:0];
}

- (void)_clearSelectedMaps
{
  v2 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v2 clearSelectedMaps];

  [GEOAPPortal captureUserAction:389 target:87 value:0];
}

- (void)_updateClearButton
{
  v6 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v3 = [v6 indexPathsForSelectedItems];
  v4 = [v3 count] != 0;
  v5 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  [v5 setEnabled:v4];
}

- (void)_updateRestoreButton
{
  v5 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  v3 = [v5 canRestoreSelectedMaps];
  v4 = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  [v4 setEnabled:v3];
}

- (void)_updateSelectAllButton
{
  v3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  v5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 count];

  if (v7 == v4)
  {
    [(OfflineMapsManagementExpiredViewController *)self deselectAllButtonItem];
  }

  else
  {
    [(OfflineMapsManagementExpiredViewController *)self selectAllButtonItem];
  }
  v10 = ;
  v8 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v9 = [v8 topItem];
  [v9 setRightBarButtonItem:v10];
}

- (void)_toggleSelectAll
{
  v3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [v3 numberOfItemsInSection:0];

  v5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 count];

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v9 = [NSIndexPath indexPathForRow:i inSection:0];
      v10 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
      v11 = v10;
      if (v7 == v4)
      {
        [v10 deselectItemAtIndexPath:v9 animated:0];
      }

      else
      {
        [v10 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
      }
    }
  }

  [(OfflineMapsManagementExpiredViewController *)self _updateSelectAllButton];
  [(OfflineMapsManagementExpiredViewController *)self _updateRestoreButton];

  [(OfflineMapsManagementExpiredViewController *)self _updateClearButton];
}

- (void)_toggleEditing
{
  v3 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v4 = [v3 isEditing];
  v5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v5 setEditing:v4 ^ 1];

  v6 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v7 = [v6 isEditing];

  if (v7)
  {
    v8 = [(OfflineMapsManagementExpiredViewController *)self selectAllButtonItem];
    v9 = [(OfflineMapsManagementExpiredViewController *)self navBar];
    v10 = [v9 topItem];
    [v10 setRightBarButtonItem:v8];

    [(OfflineMapsManagementExpiredViewController *)self cancelButtonItem];
  }

  else
  {
    v11 = [(OfflineMapsManagementExpiredViewController *)self doneButtonItem];
    v12 = [(OfflineMapsManagementExpiredViewController *)self navBar];
    v13 = [v12 topItem];
    [v13 setRightBarButtonItem:v11];

    [(OfflineMapsManagementExpiredViewController *)self editButtonItem];
  }
  v14 = ;
  v15 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v16 = [v15 topItem];
  [v16 setLeftBarButtonItem:v14];

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100E05498;
  v24[3] = &unk_101661AE0;
  v25 = v7 ^ 1;
  v24[4] = self;
  [UIView animateWithDuration:v24 animations:UINavigationControllerHideShowBarDuration];
  if (v7)
  {
    v17 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
    [v17 frame];
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

  v22 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v22 setContentInset:{top, left, Height, right}];

  v23 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v23 setVerticalScrollIndicatorInsets:{top, left, Height, right}];
}

- (void)_dismiss
{
  v2 = [(OfflineMapsManagementExpiredViewController *)self delegate];
  [v2 closeExpiredMapsManagement];
}

- (void)_setupConstraints
{
  v3 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  v4 = [v3 topAnchor];
  v5 = [(ContaineeViewController *)self contentView];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  toolbarHiddenConstraint = self->_toolbarHiddenConstraint;
  self->_toolbarHiddenConstraint = v7;

  v9 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  v10 = [v9 bottomAnchor];
  v11 = [(ContaineeViewController *)self contentView];
  v12 = [v11 safeAreaLayoutGuide];
  v13 = [v12 bottomAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  toolbarVisibleConstraint = self->_toolbarVisibleConstraint;
  self->_toolbarVisibleConstraint = v14;

  v67 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v65 = [v67 topAnchor];
  v66 = [(ContaineeViewController *)self headerView];
  v64 = [v66 topAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v68[0] = v63;
  v62 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v60 = [v62 leadingAnchor];
  v61 = [(ContaineeViewController *)self headerView];
  v59 = [v61 leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v68[1] = v58;
  v57 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v55 = [v57 trailingAnchor];
  v56 = [(ContaineeViewController *)self headerView];
  v54 = [v56 trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v68[2] = v53;
  v52 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  v50 = [v52 bottomAnchor];
  v51 = [(ContaineeViewController *)self headerView];
  v49 = [v51 bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v68[3] = v48;
  v47 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v45 = [v47 topAnchor];
  v46 = [(ContaineeViewController *)self contentView];
  v44 = [v46 topAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v68[4] = v43;
  v42 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v40 = [v42 leadingAnchor];
  v41 = [(ContaineeViewController *)self contentView];
  v39 = [v41 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v68[5] = v38;
  v37 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v35 = [v37 trailingAnchor];
  v36 = [(ContaineeViewController *)self contentView];
  v34 = [v36 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v68[6] = v33;
  v32 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v30 = [v32 bottomAnchor];
  v31 = [(ContaineeViewController *)self contentView];
  v29 = [v31 bottomAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v68[7] = v28;
  v27 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  v16 = [v27 leadingAnchor];
  v17 = [(ContaineeViewController *)self contentView];
  v18 = [v17 leadingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v68[8] = v19;
  v20 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  v21 = [v20 trailingAnchor];
  v22 = [(ContaineeViewController *)self contentView];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23];
  v25 = self->_toolbarHiddenConstraint;
  v68[9] = v24;
  v68[10] = v25;
  v26 = [NSArray arrayWithObjects:v68 count:11];
  [NSLayoutConstraint activateConstraints:v26];
}

- (void)_setupViews
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 setPresentedModally:1];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setTakesAvailableHeight:1];

  v5 = +[UIColor clearColor];
  v6 = [(OfflineMapsManagementExpiredViewController *)self view];
  [v6 setBackgroundColor:v5];

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

  v25 = [(OfflineMapsManagementExpiredViewController *)self doneButtonItem];
  [v24 setRightBarButtonItem:v25];

  v26 = [(OfflineMapsManagementExpiredViewController *)self editButtonItem];
  [v24 setLeftBarButtonItem:v26];

  v27 = objc_alloc_init(UINavigationBar);
  [(OfflineMapsManagementExpiredViewController *)self setNavBar:v27];

  v28 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = objc_alloc_init(UINavigationBarAppearance);
  [v29 configureWithTransparentBackground];
  v30 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [v30 setStandardAppearance:v29];

  v31 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [v31 pushNavigationItem:v24 animated:0];

  v32 = [(ContaineeViewController *)self headerView];
  v33 = [(OfflineMapsManagementExpiredViewController *)self navBar];
  [v32 addSubview:v33];

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

  v38 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = +[UIColor clearColor];
  v40 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v40 setBackgroundColor:v39];

  v41 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v41 setAllowsSelection:1];

  v42 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v42 setAllowsSelectionDuringEditing:1];

  v43 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v43 setAllowsMultipleSelectionDuringEditing:1];

  v44 = [(ContaineeViewController *)self contentView];
  v45 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  [v44 addSubview:v45];

  v46 = [UIBarButtonItem alloc];
  v47 = +[NSBundle mainBundle];
  v48 = [v47 localizedStringForKey:@"Clear" value:@"localized string not found" table:@"Offline"];
  v49 = [v46 initWithTitle:v48 style:0 target:self action:"_clearSelectedMaps"];
  [(OfflineMapsManagementExpiredViewController *)self setClearButtonItem:v49];

  v50 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  v51 = +[UIColor systemRedColor];
  [v50 setTintColor:v51];

  v52 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  [v52 setEnabled:0];

  v53 = [UIBarButtonItem alloc];
  v54 = +[NSBundle mainBundle];
  v55 = [v54 localizedStringForKey:@"Restore" value:@"localized string not found" table:@"Offline"];
  v56 = [v53 initWithTitle:v55 style:0 target:self action:"_restoreSelectedMaps"];
  [(OfflineMapsManagementExpiredViewController *)self setRestoreButtonItem:v56];

  v57 = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  [v57 setEnabled:0];

  v58 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v59 = objc_alloc_init(UIToolbar);
  [(OfflineMapsManagementExpiredViewController *)self setToolbar:v59];

  v60 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];

  v61 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  v62 = [(OfflineMapsManagementExpiredViewController *)self clearButtonItem];
  v73[0] = v62;
  v73[1] = v58;
  v63 = [(OfflineMapsManagementExpiredViewController *)self restoreButtonItem];
  v73[2] = v63;
  v64 = [NSArray arrayWithObjects:v73 count:3];
  [v61 setItems:v64];

  v65 = [(ContaineeViewController *)self contentView];
  v66 = [(OfflineMapsManagementExpiredViewController *)self toolbar];
  [v65 addSubview:v66];

  [(OfflineMapsManagementExpiredViewController *)self setAccessibilityIdentifier:@"OfflineMapsExpiredView"];
  objc_destroyWeak(&v71);
  objc_destroyWeak(&location);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v4 setActive:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = OfflineMapsManagementExpiredViewController;
  [(ContaineeViewController *)&v10 viewWillAppear:a3];
  v4 = [OfflineMapsManagementExpiredDataSource alloc];
  v5 = [(OfflineMapsManagementExpiredViewController *)self collectionView];
  v6 = [(OfflineMapsManagementExpiredDataSource *)v4 initWithCollectionView:v5 updateLocation:0];
  [(OfflineMapsManagementExpiredViewController *)self setOfflineMapsDataSource:v6];

  v7 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v7 setDelegate:self];

  v8 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v8 setOfflineDelegate:self];

  v9 = [(OfflineMapsManagementExpiredViewController *)self offlineMapsDataSource];
  [v9 setActive:1];
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
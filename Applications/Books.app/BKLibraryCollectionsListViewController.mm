@interface BKLibraryCollectionsListViewController
- (BKLibraryCollectionsListViewController)initWithSelectedBookIDs:(id)a3 knownAssetTypes:(id)a4 knownStoreAssetIDs:(id)a5 containsSeriesContainer:(BOOL)a6;
- (BKLibraryCollectionsListViewDelegate)delegate;
- (BOOL)_indexPathIsNewCollection:(id)a3;
- (BOOL)_indexPathIsUser:(id)a3;
- (BOOL)_isAddCollectionIndexPath:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)bkaxIsButton:(id)a3;
- (BOOL)bkaxIsCustomCollectionCell:(id)a3;
- (BOOL)bkaxIsLastCollection:(id)a3;
- (BOOL)isSelectionEnabledForCollection:(id)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldSpringLoadRowAtIndexPath:(id)a4 withContext:(id)a5;
- (CGRect)keyboardFrame;
- (NSArray)prefixCollections;
- (NSMutableArray)userCollections;
- (UIBarButtonItem)navBarCloseButtonItem;
- (UIBarButtonItem)navBarEditButtonItem;
- (UITableView)tableView;
- (id)_addCollectionIndexPath;
- (id)_collectionForIndexPath:(id)a3;
- (id)_iconColorForIndexPath:(id)a3 metrics:(id)a4;
- (id)_iconForIndexPath:(id)a3 metrics:(id)a4 pointSize:(double)a5;
- (id)_iconNameForCollectionID:(id)a3 metrics:(id)a4;
- (id)_indexPathForCollection:(id)a3;
- (id)_indexPathForCollectionID:(id)a3;
- (id)deleteSwipeAction:(id)a3;
- (id)hideSwipeAction:(id)a3;
- (id)p_currentPopoverPresentationController;
- (id)p_firstVisibleCollection;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_collectionIndexForIndexPath:(id)a3;
- (unint64_t)_numberOfPrefixRows;
- (unint64_t)_numberOfUserRows;
- (unint64_t)p_assetCountForCollection:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSelectedToIndexPath:(id)a3;
- (void)_addStoreItems:(id)a3 toCollection:(id)a4;
- (void)_analyticsSubmitBrowseCollectionScreenViewEventWithTracker:(id)a3;
- (void)_beginEditingUserCollectionAtIndexPath:(id)a3;
- (void)_concludeDeleteAtIndexPath:(id)a3;
- (void)_concludeHide:(BOOL)a3 atIndexPath:(id)a4;
- (void)_configureCell:(id)a3 atIndexPath:(id)a4;
- (void)_setSelectionState:(BOOL)a3 cell:(id)a4 atIndexPath:(id)a5;
- (void)_updateBarButtonsAnimated:(BOOL)a3;
- (void)_updateCloseButtonVisibility;
- (void)_updateInsets;
- (void)_updateMetricsIfNeeded;
- (void)addCollection:(id)a3;
- (void)animateEndTextEditCollections;
- (void)bkaxPerformHide:(id)a3;
- (void)bkaxPerformRename:(id)a3;
- (void)bkaxPerformShow:(id)a3;
- (void)closeButtonPressed:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)endTextEditAnimationComplete;
- (void)endTextEditing;
- (void)invalidatePrefixCollections;
- (void)keyboardDidHide:(id)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4;
- (void)managedObjectContextDidSave:(id)a3;
- (void)p_updateTableViewFromMetrics:(id)a3;
- (void)releaseAllRecomputableMemory;
- (void)releaseViews;
- (void)scrollToIndexPath:(id)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 reuseAddCollectionRow:(BOOL)a5 completion:(id)a6;
- (void)setIncludeHiddenInPrefixCollections:(BOOL)a3;
- (void)setMetrics:(id)a3;
- (void)setWantsAddCollectionRow:(BOOL)a3;
- (void)setWantsAddCollectionRow:(BOOL)a3 indexPath:(id)a4 animated:(BOOL)a5;
- (void)stopEditButtonPressed:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)tableView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidEndEditing:(id)a3;
- (void)toggleEditButtonPressed:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKLibraryCollectionsListViewController

- (BKLibraryCollectionsListViewController)initWithSelectedBookIDs:(id)a3 knownAssetTypes:(id)a4 knownStoreAssetIDs:(id)a5 containsSeriesContainer:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35.receiver = self;
  v35.super_class = BKLibraryCollectionsListViewController;
  v13 = [(BKLibraryCollectionsListViewController *)&v35 init];
  if (v13)
  {
    v14 = [[BKLibraryBookshelfMetrics alloc] initWithObserver:v13];
    bookshelfMetrics = v13->_bookshelfMetrics;
    v13->_bookshelfMetrics = v14;

    v16 = [v10 copy];
    assetIDs = v13->_assetIDs;
    v13->_assetIDs = v16;

    v18 = [v11 copy];
    knownAssetTypes = v13->_knownAssetTypes;
    v13->_knownAssetTypes = v18;

    objc_storeStrong(&v13->_knownStoreAssetIDs, a5);
    v13->_containsSeriesContainer = a6;
    if ([v10 count])
    {
      v13->_isAddingToCollection = 1;
      v20 = @"Add to Collection";
    }

    else if (v13->_isAddingToCollection)
    {
      v20 = @"Add to Collection";
    }

    else
    {
      v20 = @"Collections";
    }

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:v20 value:&stru_100A30A68 table:0];
    [(BKLibraryCollectionsListViewController *)v13 setTitle:v22];

    objc_initWeak(&location, v13);
    v23 = [BUCoalescingCallBlock alloc];
    v29 = _NSConcreteStackBlock;
    v30 = 3221225472;
    v31 = sub_100171BB4;
    v32 = &unk_100A04820;
    objc_copyWeak(&v33, &location);
    v24 = [v23 initWithNotifyBlock:&v29 blockDescription:@"BKLibraryCollectionsListViewController"];
    coalescedTableViewReloadData = v13->_coalescedTableViewReloadData;
    v13->_coalescedTableViewReloadData = v24;

    [(BUCoalescingCallBlock *)v13->_coalescedTableViewReloadData setCoalescingDelay:1.0, v29, v30, v31, v32];
    v26 = +[UITraitCollection bc_allAPITraits];
    v27 = [(BKLibraryCollectionsListViewController *)v13 registerForTraitChanges:v26 withAction:"_traitCollectionDidChange:previousTraitCollection:"];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)releaseViews
{
  [(NSFetchedResultsController *)self->_fetchedResultsController setDelegate:0];
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = 0;

  [(UITableView *)self->_tableView setDelegate:0];
  [(UITableView *)self->_tableView setDataSource:0];
  tableView = self->_tableView;
  self->_tableView = 0;

  navBarEditButtonItem = self->_navBarEditButtonItem;
  self->_navBarEditButtonItem = 0;

  navBarCloseButtonItem = self->_navBarCloseButtonItem;
  self->_navBarCloseButtonItem = 0;

  v7 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
  [v7 removeTextEntryField];

  [(BKLibraryCollectionsListViewController *)self setTextEntryCell:0];
}

- (void)dealloc
{
  [(BKLibraryCollectionsListViewController *)self releaseViews];
  [(BKLibraryCollectionsListViewController *)self releaseAllRecomputableMemory];
  v3.receiver = self;
  v3.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v3 dealloc];
}

- (void)_updateMetricsIfNeeded
{
  v23 = [(BKLibraryCollectionsListViewController *)self viewIfLoaded];
  v3 = [(BKLibraryCollectionsListViewController *)self traitCollection];
  v4 = [v23 window];
  if (v23 && v3 && v4)
  {
    [v23 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v9 = [TUIEnvironment alloc];
    [v23 bounds];
    v11 = v10;
    v13 = v12;
    [v4 bounds];
    v16 = [v9 initWithTraitCollection:v3 viewController:self viewSize:v11 viewSafeAreaInsets:v13 windowSize:{0.0, v6, 0.0, v8, v14, v15}];
    v17 = [(BKLibraryCollectionsListViewController *)self bookshelfMetrics];
    v18 = [v17 updateIfNeededWithEnvironment:v16 bookshelfLayoutMode:0 editMode:0 isPopover:{-[BKLibraryCollectionsListViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

    if (v18)
    {
      [v23 setNeedsLayout];
      v19 = [(BKLibraryCollectionsListViewController *)self bookshelfMetrics];
      v20 = [v19 computedMetrics];
      v21 = +[BKLibraryCollectionsListMetrics sectionName];
      v22 = [v20 objectForKeyedSubscript:v21];
      [(BKLibraryCollectionsListViewController *)self setMetrics:v22];
    }
  }
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v14 viewDidLoad];
  self->_wantsAddCollectionRow = 1;
  v3 = [(BKLibraryCollectionsListViewController *)self view];
  v4 = [(BKLibraryCollectionsListViewController *)self tableView];
  v5 = [(BKLibraryCollectionsListViewController *)self navigationController];
  v6 = [v5 view];
  [v6 setAccessibilityIgnoresInvertColors:1];

  v7 = [(BKLibraryCollectionsListViewController *)self metrics];
  [(BKLibraryCollectionsListViewController *)self p_updateTableViewFromMetrics:v7];

  [v3 addSubview:v4];
  if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection]|| [(BKLibraryCollectionsListViewController *)self suppressLargeTitle])
  {
    v8 = [(BKLibraryCollectionsListViewController *)self navigationItem];
    [v8 setLargeTitleDisplayMode:2];
  }

  if (_UISolariumEnabled())
  {
    v9 = [(BKLibraryCollectionsListViewController *)self navigationItem];
    [v9 setLargeTitleDisplayMode:2];

    if (![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
    {
      v10 = [(BKLibraryCollectionsListViewController *)self navBarCloseButtonItem];
      v15[0] = v10;
      v11 = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
      v15[1] = v11;
      v12 = [NSArray arrayWithObjects:v15 count:2];
      v13 = [(BKLibraryCollectionsListViewController *)self navigationItem];
      [v13 setRightBarButtonItems:v12];
    }
  }

  [(BKLibraryCollectionsListViewController *)self resetNavigationBarButtons];
}

- (void)viewWillAppear:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v21 viewWillAppear:a3];
  v4 = [(BKLibraryCollectionsListViewController *)self ba_analyticsTracker];

  if (!v4)
  {
    if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection])
    {
      v5 = @"AddToCollection";
    }

    else
    {
      v5 = @"CollectionList";
    }

    v6 = [(BKLibraryCollectionsListViewController *)self ba_setupNewAnalyticsTrackerWithName:v5];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v7 = [(BKLibraryCollectionsListViewController *)self navigationController];
    v8 = [v7 navigationBar];
    v9 = [v8 standardAppearance];
    v10 = [v9 copy];

    [v10 configureWithOpaqueBackground];
    v11 = +[UIColor clearColor];
    [v10 setShadowColor:v11];

    v12 = [(BKLibraryCollectionsListViewController *)self navigationController];
    v13 = [v12 navigationBar];
    [v13 setScrollEdgeAppearance:v10];
  }

  v14 = +[NSDate date];
  analyticsAppearDate = self->_analyticsAppearDate;
  self->_analyticsAppearDate = v14;

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  [v16 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
  [v16 addObserver:self selector:"keyboardDidHide:" name:UIKeyboardDidHideNotification object:0];
  [v16 addObserver:self selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];
  v17 = [(BKLibraryCollectionsListViewController *)self tableView];
  [v17 reloadData];

  v18 = [(BKLibraryCollectionsListViewController *)self selectedCollection];

  if (v18)
  {
    v19 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    v20 = [(BKLibraryCollectionsListViewController *)self _indexPathForCollection:v19];

    if (v20)
    {
      [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:v20 animated:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v6 viewDidAppear:a3];
  v4 = [(BKLibraryCollectionsListViewController *)self tableView];
  [v4 flashScrollIndicators];

  v5 = dispatch_time(0, 500000000);
  dispatch_after(v5, &_dispatch_main_q, &stru_100A09358);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v8 viewWillDisappear:a3];
  v4 = [(BKLibraryCollectionsListViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setScrollEdgeAppearance:0];

  v6 = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
  [(BKLibraryCollectionsListViewController *)self _analyticsSubmitBrowseCollectionScreenViewEventWithTracker:v6];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v7 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  [v7 removeObserver:self name:UIKeyboardDidHideNotification object:0];
  [v7 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:0];
  v5.receiver = self;
  v5.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v5 viewDidDisappear:v3];
  [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(BKLibraryCollectionsListViewController *)self _updateMetricsIfNeeded];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(BKLibraryCollectionsListViewController *)self _updateMetricsIfNeeded];
}

- (id)p_firstVisibleCollection
{
  v3 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = [(BKLibraryCollectionsListViewController *)self userCollections];
    if ([v5 count])
    {
      v4 = [v5 objectAtIndexedSubscript:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4 reuseAddCollectionRow:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v10 = a6;
  v61.receiver = self;
  v61.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v61 setEditing:v8 animated:v7];
  v11 = [(BKLibraryCollectionsListViewController *)self tableView];
  [v11 setEditing:v8 animated:v7];
  if (_UISolariumEnabled())
  {
    [(BKLibraryCollectionsListViewController *)self _updateCloseButtonVisibility];
  }

  v12 = !v8 || v6;
  [(BKLibraryCollectionsListViewController *)self _updateBarButtonsAnimated:v7];
  if (v8 || !self->_endEditingMeansTableReload)
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100172E34;
    v56[3] = &unk_100A044C8;
    v58 = v8;
    v36 = v11;
    v57 = v36;
    v20 = objc_retainBlock(v56);
    if (v7)
    {
      [UIView animateWithDuration:v20 animations:0.3];
    }

    else
    {
      [UIView performWithoutAnimation:v20];
    }

    v40 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
    if (v12)
    {
      v21 = 0;
    }

    else
    {
      v21 = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
    }

    [(BKLibraryCollectionsListViewController *)self setIncludeHiddenInPrefixCollections:v8];
    [(BKLibraryCollectionsListViewController *)self prefixCollections];
    v39 = v38 = v20;
    if (v12)
    {
      v22 = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];

      v21 = v22;
    }

    v23 = [[NSSet alloc] initWithArray:v40];
    v24 = [[NSSet alloc] initWithArray:v39];
    v25 = objc_alloc_init(NSMutableArray);
    v26 = objc_alloc_init(NSMutableArray);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100172F60;
    v53[3] = &unk_100A093A8;
    v37 = v24;
    v54 = v37;
    v27 = v25;
    v55 = v27;
    [v40 enumerateObjectsUsingBlock:v53];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100172FEC;
    v50[3] = &unk_100A093A8;
    v28 = v23;
    v51 = v28;
    v29 = v26;
    v52 = v29;
    [v39 enumerateObjectsUsingBlock:v50];
    if (self->_wantsAddCollectionRow != v12)
    {
      if (v12)
      {
        if (([v29 containsObject:v21] & 1) == 0)
        {
          [v29 addObject:v21];
          v33 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v21 row] - 1, objc_msgSend(v21, "section"));
          when = dispatch_time(0, 500000000);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100173078;
          v48[3] = &unk_100A03440;
          v48[4] = self;
          v49 = v33;
          v34 = v33;
          dispatch_after(when, &_dispatch_main_q, v48);
        }
      }

      else if (([v27 containsObject:v21] & 1) == 0)
      {
        [v27 addObject:v21];
      }

      self->_wantsAddCollectionRow = v12;
    }

    v17 = &v57;
    if ([v27 count] || objc_msgSend(v29, "count"))
    {
      if (v7)
      {
        v30 = 0;
      }

      else
      {
        v30 = 5;
      }

      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1001730F0;
      v43[3] = &unk_100A075D8;
      v44 = v27;
      v45 = v36;
      v47 = v30;
      v46 = v29;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100173158;
      v41[3] = &unk_100A03CA0;
      v42 = v10;
      [v45 performBatchUpdates:v43 completion:v41];

      v31 = v44;
    }

    else
    {
      v32 = objc_retainBlock(v10);
      v31 = v32;
      if (v32)
      {
        (*(v32 + 2))(v32);
      }
    }

    v19 = v38;
  }

  else
  {
    self->_endEditingMeansTableReload = 0;
    v13 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    v14 = [v13 deletedFlag];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v16 = [(BKLibraryCollectionsListViewController *)self p_firstVisibleCollection];
      [(BKLibraryCollectionsListViewController *)self setSelectedCollection:v16];
    }

    self->_wantsAddCollectionRow = v12;
    [(BKLibraryCollectionsListViewController *)self setIncludeHiddenInPrefixCollections:0];
    [(BKLibraryCollectionsListViewController *)self setUserCollections:0];
    [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100172E2C;
    block[3] = &unk_100A033C8;
    v17 = &v60;
    v60 = v11;
    dispatch_async(&_dispatch_main_q, block);
    v18 = objc_retainBlock(v10);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }
}

- (void)toggleEditButtonPressed:(id)a3
{
  v7 = a3;
  v4 = [(BKLibraryCollectionsListViewController *)self tableView];
  if ([v4 hasActiveDrag])
  {
  }

  else
  {
    v5 = [(BKLibraryCollectionsListViewController *)self tableView];
    v6 = [v5 hasActiveDrop];

    if ((v6 & 1) == 0)
    {
      if ([(BKLibraryCollectionsListViewController *)self isEditing])
      {
        [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:v7];
      }

      else
      {
        [(BKLibraryCollectionsListViewController *)self startEditButtonPressed:v7];
      }
    }
  }
}

- (void)stopEditButtonPressed:(id)a3
{
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v4 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    v5 = [v4 textEntryField];
    v6 = [v5 isFirstResponder];

    if (v6)
    {
      self->_endTextEditingMeansEndEditMode = 1;

      [(BKLibraryCollectionsListViewController *)self endTextEditing];
    }
  }

  else
  {

    [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:1];
  }
}

- (void)closeButtonPressed:(id)a3
{
  v3 = [(BKLibraryCollectionsListViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)addCollection:(id)a3
{
  [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10017345C;
  v9 = &unk_100A03440;
  v11 = v10 = self;
  v4 = v11;
  v5 = objc_retainBlock(&v6);
  if (([(BKLibraryCollectionsListViewController *)self isEditing:v6]& 1) != 0)
  {
    (v5[2])(v5);
  }

  else
  {
    self->_suppressEditControlsForNewCollection = 1;
    [(BKLibraryCollectionsListViewController *)self setEditing:1 animated:0 reuseAddCollectionRow:1 completion:v5];
  }
}

- (void)endTextEditing
{
  v3 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
  [(BKLibraryCollectionsListViewController *)self setPostKeyboardIndexPath:v3];

  v5 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
  v4 = [v5 textEntryField];
  [v4 resignFirstResponder];
}

- (void)setWantsAddCollectionRow:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
  [(BKLibraryCollectionsListViewController *)self setWantsAddCollectionRow:v3 indexPath:v5 animated:0];
}

- (void)setWantsAddCollectionRow:(BOOL)a3 indexPath:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v8 = a4;
  if (self->_wantsAddCollectionRow != v6)
  {
    self->_wantsAddCollectionRow = v6;
    [(BKLibraryCollectionsListViewController *)self tableView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100173750;
    v10[3] = &unk_100A093D0;
    v11 = v13 = v6;
    v12 = v8;
    v14 = a5;
    v9 = v11;
    [v9 performBatchUpdates:v10 completion:0];
  }
}

- (UIBarButtonItem)navBarEditButtonItem
{
  if (!self->_navBarEditButtonItem)
  {
    if (_UISolariumEnabled())
    {
      v3 = [(BKLibraryCollectionsListViewController *)self editButtonItem];
      navBarEditButtonItem = self->_navBarEditButtonItem;
      self->_navBarEditButtonItem = v3;

      [(UIBarButtonItem *)self->_navBarEditButtonItem setTarget:self];
      [(UIBarButtonItem *)self->_navBarEditButtonItem setAction:"toggleEditButtonPressed:"];
    }

    else
    {
      v5 = [[UIBarButtonItem alloc] initWithTitle:0 style:0 target:self action:"toggleEditButtonPressed:"];
      v6 = self->_navBarEditButtonItem;
      self->_navBarEditButtonItem = v5;
    }
  }

  v7 = self->_navBarEditButtonItem;

  return v7;
}

- (UIBarButtonItem)navBarCloseButtonItem
{
  navBarCloseButtonItem = self->_navBarCloseButtonItem;
  if (!navBarCloseButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"closeButtonPressed:"];
    v5 = self->_navBarCloseButtonItem;
    self->_navBarCloseButtonItem = v4;

    navBarCloseButtonItem = self->_navBarCloseButtonItem;
  }

  return navBarCloseButtonItem;
}

- (void)_updateCloseButtonVisibility
{
  if (([(BKLibraryCollectionsListViewController *)self isEditing]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation];
  }

  v4 = [(BKLibraryCollectionsListViewController *)self navBarCloseButtonItem];
  [v4 setHidden:v3];
}

- (BOOL)isSelectionEnabledForCollection:(id)a3
{
  v4 = a3;
  if (!v4 || ![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    v7 = 1;
    goto LABEL_9;
  }

  v5 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  if (![v5 containsObject:v4])
  {

    goto LABEL_8;
  }

  v6 = [(BKLibraryCollectionsListViewController *)self containsSeriesContainer];

  if ((v6 & 1) == 0)
  {
LABEL_8:
    v7 = [v4 allowsManualAddition];
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (NSArray)prefixCollections
{
  if (!self->_prefixCollectionsMonitor)
  {
    v3 = [BCManagedObjectIDMonitor alloc];
    v4 = +[BKLibraryManager defaultManager];
    v5 = [v4 persistentStoreCoordinator];
    v6 = +[BKCollection predicateForAllDefaultCollections];
    v22 = @"hidden";
    v7 = [NSArray arrayWithObjects:&v22 count:1];
    v8 = [NSSet setWithArray:v7];
    v9 = [v3 initWithContext:0 coordinator:v5 entityName:@"BKCollection" predicate:v6 mapProperty:@"collectionID" propertiesOfInterest:v8 observer:self];
    prefixCollectionsMonitor = self->_prefixCollectionsMonitor;
    self->_prefixCollectionsMonitor = v9;
  }

  prefixCollections = self->_prefixCollections;
  if (!prefixCollections)
  {
    v12 = +[BKLibraryManager defaultManager];
    v13 = [v12 collectionProvider];
    v14 = [v13 selectableDefaultCollections];

    if ([(BKLibraryCollectionsListViewController *)self includeHiddenInPrefixCollections])
    {
      v15 = v14;
      v16 = self->_prefixCollections;
      self->_prefixCollections = v15;
    }

    else
    {
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100173CB8;
      v20[3] = &unk_100A093F8;
      v21 = objc_alloc_init(NSMutableArray);
      v16 = v21;
      [v14 enumerateObjectsUsingBlock:v20];
      v17 = [(NSArray *)v16 copy];
      v18 = self->_prefixCollections;
      self->_prefixCollections = v17;
    }

    prefixCollections = self->_prefixCollections;
  }

  return prefixCollections;
}

- (void)setIncludeHiddenInPrefixCollections:(BOOL)a3
{
  if (self->_includeHiddenInPrefixCollections != a3)
  {
    self->_includeHiddenInPrefixCollections = a3;
    [(BKLibraryCollectionsListViewController *)self invalidatePrefixCollections];
  }
}

- (void)invalidatePrefixCollections
{
  prefixCollections = self->_prefixCollections;
  self->_prefixCollections = 0;
}

- (void)managedObjectBackgroundMonitor:(id)a3 didSaveNotify:(id)a4
{
  v5 = [a4 updatedObjects];
  v6 = [v5 copy];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100173E40;
  block[3] = &unk_100A070B8;
  objc_copyWeak(&v10, &location);
  v9 = v6;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = BUDynamicCast();

  if (v6)
  {
    v7 = [v6 persistentStoreCoordinator];
    v8 = +[BKLibraryManager defaultManager];
    v9 = [v8 persistentStoreCoordinator];
    v10 = [v7 hasStoreInCommonWith:v9];

    if (v10)
    {
      v11 = [v4 userInfo];
      v12 = [v11 objectForKey:NSInsertedObjectsKey];
      v13 = [v11 objectForKey:NSUpdatedObjectsKey];
      v14 = [v11 objectForKey:NSDeletedObjectsKey];
      if ([v12 count] || objc_msgSend(v13, "count") || objc_msgSend(v14, "count"))
      {
        [NSPredicate predicateWithFormat:@"self isKindOfClass: %@", objc_opt_class()];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1001746CC;
        v26 = v25[3] = &unk_100A09448;
        v15 = objc_alloc_init(NSMutableSet);
        v27 = v15;
        v20 = v26;
        v16 = v13;
        v17 = v14;
        v18 = objc_retainBlock(v25);
        (v18[2])(v18, v12);
        (v18[2])(v18, v16);
        (v18[2])(v18, v17);
        objc_initWeak(&location, self);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100174838;
        block[3] = &unk_100A035F8;
        v22 = v15;
        v19 = v15;
        objc_copyWeak(&v23, &location);
        dispatch_async(&_dispatch_main_q, block);
        objc_destroyWeak(&v23);

        objc_destroyWeak(&location);
        v14 = v17;
        v13 = v16;
      }
    }
  }
}

- (NSMutableArray)userCollections
{
  if (!self->_userCollections)
  {
    if (!self->_fetchedResultsController)
    {
      v3 = +[BKLibraryManager defaultManager];
      v4 = [v3 uiChildContext];
      v5 = objc_alloc_init(NSFetchRequest);
      v6 = [NSEntityDescription entityForName:@"BKCollection" inManagedObjectContext:v4];
      [v5 setEntity:v6];

      v7 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
      v20 = v7;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      [v5 setSortDescriptors:v8];

      v9 = +[BKCollection predicateForNonDeletedUserCollections];
      [v5 setPredicate:v9];

      v10 = [[NSFetchedResultsController alloc] initWithFetchRequest:v5 managedObjectContext:v4 sectionNameKeyPath:0 cacheName:0];
      fetchedResultsController = self->_fetchedResultsController;
      self->_fetchedResultsController = v10;

      [(NSFetchedResultsController *)self->_fetchedResultsController setDelegate:self];
    }

    v12 = [(BKLibraryCollectionsListViewController *)self fetchedResultsController];
    v13 = [v12 performFetch:0];

    if (v13)
    {
      v14 = [(BKLibraryCollectionsListViewController *)self fetchedResultsController];
      v15 = [v14 fetchedObjects];
      v16 = [NSMutableArray arrayWithArray:v15];
      userCollections = self->_userCollections;
      self->_userCollections = v16;
    }
  }

  v18 = self->_userCollections;

  return v18;
}

- (void)_updateInsets
{
  v3 = 0.0;
  if (([(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation]& 1) == 0)
  {
    [(BKLibraryCollectionsListViewController *)self keyboardFrame];
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    if (!CGRectIsEmpty(v24))
    {
      v8 = [(BKLibraryCollectionsListViewController *)self view];
      v9 = [v8 safeAreaLayoutGuide];
      [v9 layoutFrame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      r2a = v16;

      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v28.origin.x = v11;
      v28.origin.y = v13;
      v28.size.width = v15;
      v28.size.height = r2a;
      v26 = CGRectIntersection(v25, v28);
      v17 = v26.origin.x;
      v18 = v26.origin.y;
      v19 = v26.size.width;
      v20 = v26.size.height;
      if (!CGRectIsNull(v26))
      {
        v27.origin.x = v17;
        v27.origin.y = v18;
        v27.size.width = v19;
        v27.size.height = v20;
        v3 = CGRectGetHeight(v27);
      }
    }
  }

  r2 = [(BKLibraryCollectionsListViewController *)self tableView];
  [r2 setContentInset:{0.0, 0.0, v3, 0.0}];
  [r2 setScrollIndicatorInsets:{0.0, 0.0, v3, 0.0}];
}

- (void)viewDidLayoutSubviews
{
  v16.receiver = self;
  v16.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v16 viewDidLayoutSubviews];
  v3 = [(BKLibraryCollectionsListViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BKLibraryCollectionsListViewController *)self tableView];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(BKLibraryCollectionsListViewController *)self _updateInsets];
  if (_UISolariumEnabled())
  {
    [(BKLibraryCollectionsListViewController *)self _updateCloseButtonVisibility];
    v13 = [(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = +[UIColor systemGroupedBackgroundColor];
    }

    v15 = [(BKLibraryCollectionsListViewController *)self tableView];
    [v15 setBackgroundColor:v14];

    if ((v13 & 1) == 0)
    {
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = BKLibraryCollectionsListViewController;
  v7 = a4;
  [(BKLibraryCollectionsListViewController *)&v13 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
  v9 = [(BKLibraryCollectionsListViewController *)self _indexPathForCollection:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100174F5C;
  v11[3] = &unk_100A03970;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [v7 animateAlongsideTransition:v11 completion:0];
}

- (void)_updateBarButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v5 = [(BKLibraryCollectionsListViewController *)self isEditing];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5)
    {
      v8 = @"Done";
    }

    else
    {
      v8 = @"Edit";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_100A30A68 table:0];

    if (![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
    {
      v10 = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
      if (v5)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      v12 = [(BKLibraryCollectionsListViewController *)self navigationItem];
      v13 = [v12 rightBarButtonItems];
      v14 = [v13 containsObject:v10];

      if (v14)
      {
        if (v11 != [v10 style] || (objc_msgSend(v10, "title"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v9, "isEqualToString:", v15), v15, (v16 & 1) == 0))
        {
          if (v3)
          {
            v17 = [(BKLibraryCollectionsListViewController *)self navigationController];
            v18 = [v17 navigationBar];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1001751F4;
            v19[3] = &unk_100A04CF0;
            v20 = v10;
            v21 = v9;
            v22 = v11;
            [UIView transitionWithView:v18 duration:5242880 options:v19 animations:0 completion:0.3];
          }

          else
          {
            [v10 setTitle:v9];
            [v10 setStyle:v11];
          }
        }
      }

      else
      {
        [v10 setTitle:v9];
        [v10 setStyle:v11];
        [v12 setRightBarButtonItem:v10 animated:v3];
      }
    }
  }
}

- (UITableView)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tableView;
    self->_tableView = v4;

    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setDropDelegate:self];
    [(UITableView *)self->_tableView setDragDelegate:self];
    [(UITableView *)self->_tableView setEstimatedRowHeight:45.0];
    [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:1];
    [(UITableView *)self->_tableView setDragInteractionEnabled:1];
    [(UITableView *)self->_tableView setSpringLoaded:1];
    tableView = self->_tableView;
  }

  return tableView;
}

- (void)textFieldDidEndEditing:(id)a3
{
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v4 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    v5 = [v4 textEntryField];

    if (![(BKLibraryCollectionsListViewController *)self textFieldShouldEndEditing:v5])
    {
LABEL_13:
      [(BKLibraryCollectionsListViewController *)self animateEndTextEditCollections];
      [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:1];

      return;
    }

    v6 = [v5 text];
    if (![v6 length])
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = +[BKLibraryManager defaultManager];
    v8 = [v7 collectionController];
    v9 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 localizedTitle];
      v12 = [v11 isEqualToString:v6];

      if (v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      v13 = [v10 collectionID];
      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10017562C;
      v27[3] = &unk_100A06628;
      v28 = v8;
      v29 = v13;
      v30 = v6;
      v14 = v13;
      [v7 performBlockInUIContext:v27];
      v15 = [(BKLibraryCollectionsListViewController *)self delegate];
      [v15 collectionListView:self collectionChanged:v10];
    }

    else
    {
      v16 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];

      if (!v16 || ![v6 length])
      {
        goto LABEL_11;
      }

      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_1001756B0;
      v25 = &unk_100A09490;
      v26 = v6;
      v17 = [v8 insertNewCollectionSyncOnMainQueueWithCollectionID:0 newCollectionBlock:&v22];
      v18 = [BAEventReporter sharedReporter:v22];
      v19 = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
      v20 = [v17 collectionID];
      [v18 emitCollectionAddEventWithTracker:v19 collectionID:v20 collectionItemCount:0];

      v21 = [(BKLibraryCollectionsListViewController *)self userCollections];
      [v21 addObject:v17];

      self->_wantsAddCollectionRow = 0;
      v14 = v26;
    }

    goto LABEL_11;
  }
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v12 = a4;
  v9 = [(BKLibraryCollectionsListViewController *)self changeIsUserDriven];
  if (a6 - 5 >= 0xFFFFFFFFFFFFFFFELL && (v9 & 1) == 0)
  {
    objc_opt_class();
    v10 = BUClassAndProtocolCast();
    if (v10)
    {
      v11 = [(BKLibraryCollectionsListViewController *)self delegate];
      [v11 collectionListView:self collectionChanged:v10];
    }
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  if ([(BKLibraryCollectionsListViewController *)self changeIsUserDriven])
  {

    [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:0];
  }

  else if ([(BKLibraryCollectionsListViewController *)self isEditing])
  {
    self->_endEditingMeansTableReload = 1;
  }

  else
  {
    v4 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    v5 = [v4 deletedFlag];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [(BKLibraryCollectionsListViewController *)self p_firstVisibleCollection];
      [(BKLibraryCollectionsListViewController *)self setSelectedCollection:v7];
    }

    [(BKLibraryCollectionsListViewController *)self setUserCollections:0];
    v8 = [(BKLibraryCollectionsListViewController *)self tableView];
    [v8 reloadData];
  }
}

- (unint64_t)p_assetCountForCollection:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionID];
  if (v5)
  {
    v6 = [(BKLibraryCollectionsListViewController *)self collectionAssetCounts];
    if (!v6)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:v6];
    }

    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 unsignedIntegerValue];
LABEL_13:

      goto LABEL_14;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if ([v5 isEqualToString:kBKCollectionDefaultIDFinished])
    {
      v10 = +[BKLibraryManager defaultManager];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100175AEC;
      v19[3] = &unk_100A094B8;
      v19[4] = &v20;
      [v10 performBlockInUIContext:v19];
    }

    else
    {
      v11 = [v4 members];
      v12 = [v11 count];

      if (!v12)
      {
LABEL_12:
        v14 = [NSNumber numberWithUnsignedInteger:v21[3]];
        [v6 setObject:v14 forKeyedSubscript:v5];

        v9 = v21[3];
        _Block_object_dispose(&v20, 8);
        goto LABEL_13;
      }

      v13 = +[BKLibraryManager defaultManager];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100175BB0;
      v16[3] = &unk_100A06650;
      v17 = v5;
      v18 = &v20;
      [v13 performBlockInUIContext:v16];

      v10 = v17;
    }

    goto LABEL_12;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)_concludeDeleteAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v4];
  v6 = [(BKLibraryCollectionsListViewController *)self userCollections];
  v7 = [v6 objectAtIndex:v5];
  v8 = v7;

  if (v7)
  {
    [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
    v9 = [(BKLibraryCollectionsListViewController *)self delegate];
    v10 = [v9 collectionListView:self collectionDeleted:v7];

    if (v10)
    {
      v11 = [(BKLibraryCollectionsListViewController *)self userCollections];
      [v11 removeObjectAtIndex:v5];

      v12 = [(BKLibraryCollectionsListViewController *)self tableView];
      v14 = v4;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [v12 deleteRowsAtIndexPaths:v13 withRowAnimation:0];
    }

    else
    {
      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:0];
      v12 = [(BKLibraryCollectionsListViewController *)self tableView];
      [v12 reloadData];
    }
  }
}

- (void)_concludeHide:(BOOL)a3 atIndexPath:(id)a4
{
  v6 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:a4];
  v7 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  v8 = [v7 objectAtIndex:v6];

  if (v8)
  {
    v9 = +[BKLibraryManager defaultManager];
    [v9 collectionController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100175EEC;
    v12 = v11[3] = &unk_100A094E0;
    v13 = v8;
    v14 = a3;
    v10 = v12;
    [v9 performBlockInUIContext:v11];
  }
}

- (void)tableView:(id)a3 dragSessionWillBegin:(id)a4
{
  v5 = a4;
  v6 = [(BKLibraryCollectionsListViewController *)self tableView];
  [v6 setSpringLoaded:0];

  [(UIBarButtonItem *)self->_navBarEditButtonItem setEnabled:0];
  v7 = [v5 localContext];

  if (v7 != self)
  {

    [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
  }
}

- (void)tableView:(id)a3 dragSessionDidEnd:(id)a4
{
  v5 = [(BKLibraryCollectionsListViewController *)self tableView:a3];
  [v5 setSpringLoaded:1];

  [(UIBarButtonItem *)self->_navBarEditButtonItem setEnabled:1];

  [(BKLibraryCollectionsListViewController *)self resetNavigationBarButtons];
}

- (id)tableView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a5;
  v8 = [a4 localDragSession];
  v9 = [v8 localContext];

  if (v9 == self)
  {
    v11 = [UITableViewDropProposal alloc];
    v12 = 3;
    v13 = 1;
  }

  else
  {
    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v7]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
    {
      v10 = 2;
    }

    else
    {
      v14 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v7];
      if ([v14 allowsManualAddition])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    v11 = [UITableViewDropProposal alloc];
    v12 = v10;
    v13 = 2;
  }

  v15 = [v11 initWithDropOperation:v12 intent:v13];

  return v15;
}

- (void)tableView:(id)a3 dropSessionDidEnter:(id)a4
{
  navBarEditButtonItem = self->_navBarEditButtonItem;
  v6 = a4;
  [(UIBarButtonItem *)navBarEditButtonItem setEnabled:0];
  v7 = [v6 localDragSession];

  v8 = [v7 localContext];

  if (v8 != self)
  {

    [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
  }
}

- (void)_addStoreItems:(id)a3 toCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[BKLibraryManager defaultManager];
  v8 = [v7 collectionController];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) storeID];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100176480;
        v17[3] = &unk_100A034F8;
        v18 = v13;
        v14 = v6;
        v19 = v14;
        v15 = v13;
        [v8 addStoreID:v15 toCollectionID:v14 forceToTop:1 completion:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)tableView:(id)a3 performDropWithCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v71 = +[NSMutableArray array];
  v69 = +[NSMutableArray array];
  v8 = [v7 destinationIndexPath];
  objc_opt_class();
  v65 = self;
  v9 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v8];
  v63 = BUDynamicCast();

  v68 = v6;
  v64 = v8;
  v10 = [v6 cellForRowAtIndexPath:v8];
  v11 = [v10 imageView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v10 imageView];
  v67 = v10;
  [v10 convertRect:v20 fromView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v66 = v7;
  obj = [v7 items];
  v29 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v86;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v86 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v85 + 1) + 8 * i);
        objc_opt_class();
        v34 = [v33 dragItem];
        v35 = [v34 localObject];
        v36 = BUDynamicCast();

        objc_opt_class();
        v37 = [v33 dragItem];
        v38 = [v37 localObject];
        v39 = BUDynamicCast();

        objc_opt_class();
        v40 = [v33 dragItem];
        v41 = [v40 localObject];
        v42 = BUDynamicCast();

        v43 = [v42 assetID];
        v44 = [v43 length];

        if (v44)
        {
          v45 = +[BKLibraryManager defaultManager];
          v46 = [v42 assetID];
          v47 = [v45 libraryAssetOnMainQueueWithAssetID:v46];

          v36 = v47;
        }

        if (v36)
        {
          v48 = v71;
          v49 = v36;
        }

        else
        {
          if (!v39)
          {
            goto LABEL_13;
          }

          v48 = v69;
          v49 = v39;
        }

        [v48 addObject:{v49, v63}];
LABEL_13:
      }

      v30 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
    }

    while (v30);
  }

  v50 = [(BKLibraryCollectionsListViewController *)v65 _isAddCollectionIndexPath:v64];
  v51 = v50;
  if (v50)
  {
    v52 = +[BKLibraryManager defaultManager];
    v53 = [v52 uiChildContext];
    v54 = [BKCollection insertNewCollectionWithCollectionID:0 inManagedObjectContext:v53];

    v55 = +[NSBundle mainBundle];
    v56 = [v55 localizedStringForKey:@"Untitled Collection" value:&stru_100A30A68 table:0];
    [v54 setTitle:v56];

    [v54 addLibraryAssets:v71];
    v57 = [v54 collectionID];
    [(BKLibraryCollectionsListViewController *)v65 _addStoreItems:v69 toCollection:v57];
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100176A70;
  v78[3] = &unk_100A08520;
  v79 = v7;
  v80 = v64;
  v81 = v22;
  v82 = v24;
  v83 = v26;
  v84 = v28;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100176D08;
  v72[3] = &unk_100A09508;
  v77 = v51;
  v73 = v63;
  v74 = v71;
  v75 = v65;
  v76 = v69;
  v58 = v69;
  v59 = v71;
  v60 = v63;
  v61 = v64;
  v62 = v66;
  [v68 performBatchUpdates:v78 completion:v72];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
    v7 = [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows]+ v8;
  }

  else if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(BKLibraryCollectionsListViewController *)self _numberOfPrefixRows];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
  {
    v9 = @"NewCollectionCell";
  }

  else
  {
    v9 = @"Cell";
  }

  v10 = [v6 dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    v10 = [[BKLibraryCollectionsListCell alloc] initWithStyle:0 reuseIdentifier:v9];
  }

  [(BKLibraryCollectionsListViewController *)self _configureCell:v10 atIndexPath:v7];
  objc_autoreleasePoolPop(v8);

  return v10;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v25 = a4;
  v7 = a5;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v7]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v7];
    v9 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v10 = [v9 count];

    if (v10 <= v8)
    {
      if (![(BKLibraryCollectionsListViewController *)self isTextEditing]|| ![(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
      {
        goto LABEL_18;
      }

      v14 = [(BKLibraryCollectionsListViewController *)self defaultCollectionName];
    }

    else
    {
      v11 = [(BKLibraryCollectionsListViewController *)self userCollections];
      v12 = [v11 objectAtIndex:v8];

      v13 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];

      if (v13 != v12)
      {
        v14 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
        if (!v14)
        {

LABEL_19:
          goto LABEL_20;
        }

        v15 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
        v16 = [v15 row];
        v17 = [v7 row];

        if (v16 != v17)
        {
LABEL_18:
          v14 = 0;
          goto LABEL_19;
        }

LABEL_17:
        [(BKLibraryCollectionsListCell *)self->_textEntryCell removeTextEntryField];
        textEntryCell = self->_textEntryCell;
        self->_textEntryCell = 0;

        goto LABEL_18;
      }

      if (![(BKLibraryCollectionsListViewController *)self isTextEditing])
      {

        goto LABEL_17;
      }

      v18 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
      v14 = [v18 localizedTitle];
    }

    [(BKLibraryCollectionsListViewController *)self setTextEntryIndexPath:v7];
    v19 = self->_textEntryCell;
    if (v19 != v25)
    {
      [(BKLibraryCollectionsListCell *)v19 removeTextEntryField];
      objc_opt_class();
      v20 = BUDynamicCast();
      v21 = self->_textEntryCell;
      self->_textEntryCell = v20;

      [(BKLibraryCollectionsListCell *)self->_textEntryCell setupTextEntryField:self];
      v22 = [(BKLibraryCollectionsListCell *)self->_textEntryCell textEntryField];
      [v22 setText:v14];

      v23 = [(BKLibraryCollectionsListCell *)self->_textEntryCell accessibilityTraits];
      [(BKLibraryCollectionsListCell *)self->_textEntryCell setAccessibilityTraits:UIAccessibilityTraitTextEntry | v23];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing]|| self->_endTextEditingMeansEndEditMode || self->_suppressEditControlsForNewCollection)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v5];
  }

  return v6;
}

- (void)tableView:(id)a3 willBeginEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
  [v8 setEnabled:0];

  v10 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v10 chevron];
  [v9 setHidden:1];
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
  [v8 setEnabled:1];

  v10 = [v7 cellForRowAtIndexPath:v6];

  v9 = [v10 chevron];
  [v9 setHidden:0];
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v6 = a5;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v6])
  {
    v7 = 0;
LABEL_8:
    v8 = [NSIndexPath indexPathForRow:v7 inSection:1];

    goto LABEL_9;
  }

  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v6]|| (v8 = v6, [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6]))
  {
    v9 = [v6 row];
    v10 = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
    if (v9 >= v10 - [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows])
    {
      v11 = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
      v7 = (v11 - [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows]);
    }

    else
    {
      v7 = [v6 row];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v15 = a4;
  v7 = a5;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v15]&& [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v7])
  {
    [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
    v8 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v9 = [v8 mutableCopy];

    v10 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v15];
    v11 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v7];
    v12 = [v9 objectAtIndex:v10];
    [v9 removeObjectAtIndex:v10];
    [v9 insertObject:v12 atIndex:v11];
    [(BKLibraryCollectionsListViewController *)self setUserCollections:v9];
    v13 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v14 = +[BKLibraryManager defaultManager];
    [BKUserSortOrderManager saveSortedCollectionsArray:v13 inLibraryManager:v14];
  }
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v5 = [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:a4];
  if (v5)
  {
    if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = ![(BKLibraryCollectionsListViewController *)self isAddingToCollection];
    }
  }

  return v5;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    v6 = 0;
  }

  else if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v5])
  {
    v7 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v5];
    v8 = [v7 hidden];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v5]^ 1;
  }

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 2)
  {
    [(BKLibraryCollectionsListViewController *)self _concludeHide:0 atIndexPath:a5];
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing]|| [(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    goto LABEL_3;
  }

  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v5])
  {
    v6 = [(BKLibraryCollectionsListViewController *)self deleteSwipeAction:v5];
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v5])
    {
LABEL_3:
      v6 = 0;
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v9 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v5];
    v10 = [v9 hidden];
    v11 = [v10 BOOLValue];

    if (v11)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(BKLibraryCollectionsListViewController *)self hideSwipeAction:v5];
    }

    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v13 = v6;
  v12 = [NSArray arrayWithObjects:&v13 count:1];
  v7 = [UISwipeActionsConfiguration configurationWithActions:v12];

  [v7 setPerformsFirstActionWithFullSwipe:0];
LABEL_5:

  return v7;
}

- (id)deleteSwipeAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Delete" value:&stru_100A30A68 table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100178154;
  v12[3] = &unk_100A095B8;
  objc_copyWeak(&v14, &location);
  v7 = v4;
  v13 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:1 title:v6 handler:v12];
  v9 = [(BKLibraryCollectionsListViewController *)self metrics];
  v10 = [v9 deleteActionColor];
  [v8 setBackgroundColor:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (id)hideSwipeAction:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Hide" value:&stru_100A30A68 table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100178378;
  v12[3] = &unk_100A095B8;
  objc_copyWeak(&v14, &location);
  v7 = v4;
  v13 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:0 title:v6 handler:v12];
  v9 = [(BKLibraryCollectionsListViewController *)self metrics];
  v10 = [v9 hideActionColor];
  [v8 setBackgroundColor:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (void)endTextEditAnimationComplete
{
  v3 = [(BKLibraryCollectionsListViewController *)self view];
  [v3 setUserInteractionEnabled:1];

  [(BKLibraryCollectionsListViewController *)self setTextEntryIndexPath:0];
  [(BKLibraryCollectionsListViewController *)self setTextEntryCollection:0];
  if (self->_endTextEditingMeansEndEditMode)
  {
    self->_endTextEditingMeansEndEditMode = 0;

    [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:1];
  }
}

- (void)animateEndTextEditCollections
{
  if ([(BKLibraryCollectionsListViewController *)self isEditing]&& [(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    self->_textEditing = 0;
    v3 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    v4 = [v3 textEntryField];
    v5 = [v4 text];
    v6 = [v5 length];

    v7 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    [v7 removeTextEntryField];

    [(BKLibraryCollectionsListViewController *)self setTextEntryCell:0];
    v8 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];

    if (v8 || v6)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      v9 = [(BKLibraryCollectionsListViewController *)self tableView];
      v10 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
      v12 = v10;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [v9 reloadRowsAtIndexPaths:v11 withRowAnimation:5];

      +[CATransaction commit];
    }

    else
    {
      self->_endEditingMeansTableReload = 1;
    }

    [(BKLibraryCollectionsListViewController *)self endTextEditAnimationComplete];
  }
}

- (BOOL)tableView:(id)a3 shouldSpringLoadRowAtIndexPath:(id)a4 withContext:(id)a5
{
  v6 = a4;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v6])
  {
    v7 = 1;
  }

  else
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v6];
    v7 = [v8 allowsManualAddition];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  if ([v6 section] == 1 || !objc_msgSend(v6, "section"))
  {
    v7 = [(BKLibraryCollectionsListViewController *)self delegate];

    if (v7)
    {
      v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v6];
      if (v8)
      {
        if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection])
        {
          [(BKLibraryCollectionsListViewController *)self _addSelectedToIndexPath:v6];
        }

        else
        {
          v9 = [(BKLibraryCollectionsListViewController *)self delegate];
          [v9 collectionListView:self collectionSelected:v8];

          [v10 deselectRowAtIndexPath:v6 animated:0];
        }
      }
    }
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (([v6 hasActiveDrag] & 1) == 0)
  {
    v8 = v7;
    if (([v6 hasActiveDrop] & 1) == 0)
    {
      if ([(BKLibraryCollectionsListViewController *)self isEditing])
      {
        v9 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
        v10 = [v9 textEntryField];
        v11 = [v10 isFirstResponder];

        if (v11)
        {
          [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
        }

        else if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
        {
          [(BKLibraryCollectionsListViewController *)self endTextEditing];
        }

        else if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v7]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
        {
          [(BKLibraryCollectionsListViewController *)self _beginEditingUserCollectionAtIndexPath:v7];
        }

        goto LABEL_17;
      }

      if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v7])
      {
        [(BKLibraryCollectionsListViewController *)self addCollection:self];
LABEL_17:
        v8 = 0;
        v14 = v7;
LABEL_18:

        goto LABEL_19;
      }

      v8 = v7;
      if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v7])
      {
        v12 = [v7 row];
        v8 = v7;
        if ([(BKLibraryCollectionsListViewController *)self _numberOfPrefixRows]> v12)
        {
          v13 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
          v14 = [v13 objectAtIndex:v12];

          if ([(BKLibraryCollectionsListViewController *)self isSelectionEnabledForCollection:v14])
          {
            v8 = v7;
          }

          else
          {

            v8 = 0;
          }

          goto LABEL_18;
        }
      }
    }
  }

LABEL_19:

  return v8;
}

- (void)releaseAllRecomputableMemory
{
  [(BKLibraryCollectionsListViewController *)self setPrefixCollections:0];
  [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:0];

  [(BKLibraryCollectionsListViewController *)self setIconCache:0];
}

- (void)didReceiveMemoryWarning
{
  [(BKLibraryCollectionsListViewController *)self releaseAllRecomputableMemory];
  v3.receiver = self;
  v3.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v3 didReceiveMemoryWarning];
}

- (void)scrollToIndexPath:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100178AC0;
  v8[3] = &unk_100A07068;
  objc_copyWeak(&v10, &location);
  v9 = v6;
  v11 = a4;
  v7 = v6;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardFrameEndUserInfoKey];
  v6 = v5;
  if (v5)
  {
    [v5 CGRectValue];
    x = v7;
    y = v9;
    width = v11;
    height = v13;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v15 = [(BKLibraryCollectionsListViewController *)self view];
  [v15 convertRect:0 fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [v4 valueForKey:UIKeyboardAnimationCurveUserInfoKey];
  v25 = [v24 integerValue];

  v26 = [v4 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v26 doubleValue];
  v28 = v27;

  [(BKLibraryCollectionsListViewController *)self setKeyboardFrame:v17, v19, v21, v23];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100178D8C;
  v30[3] = &unk_100A033C8;
  v30[4] = self;
  [UIView animateWithDuration:v25 << 16 delay:v30 options:0 animations:v28 completion:0.0];
  v29 = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
  [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:v29];
}

- (void)keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 valueForKey:UIKeyboardAnimationCurveUserInfoKey];
  v6 = [v5 integerValue];

  v7 = [v4 valueForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v7 doubleValue];
  v9 = v8;

  [(BKLibraryCollectionsListViewController *)self setKeyboardFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100178EAC;
  v10[3] = &unk_100A033C8;
  v10[4] = self;
  [UIView animateWithDuration:v6 << 16 delay:v10 options:0 animations:v9 completion:0.0];
}

- (void)keyboardDidHide:(id)a3
{
  v4 = [(BKLibraryCollectionsListViewController *)self postKeyboardIndexPath];

  if (v4)
  {
    v5 = [(BKLibraryCollectionsListViewController *)self postKeyboardIndexPath];
    [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:v5];

    [(BKLibraryCollectionsListViewController *)self setPostKeyboardIndexPath:0];
  }
}

- (id)_iconForIndexPath:(id)a3 metrics:(id)a4 pointSize:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v8]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v12 = [v9 collectionIconName_Add];
  }

  else
  {
    v10 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v8];
    v11 = [v10 collectionID];
    v12 = [(BKLibraryCollectionsListViewController *)self _iconNameForCollectionID:v11 metrics:v9];
  }

  v13 = v12;
  if (v13)
  {
    v14 = [(BKLibraryCollectionsListViewController *)self iconCache];
    v15 = [v14 objectForKey:v13];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v33 = +[BSUITemplate manager];
      v17 = [v33 imageResourceCache];
      v18 = [(BKLibraryCollectionsListViewController *)self view];
      v19 = [v18 _screen];
      [v19 scale];
      LOBYTE(v32) = 1;
      v21 = [v17 symbolImageWithName:v13 compatibleWithFontSize:4 weight:3 scale:0 renderingMode:0 colors:0 style:a5 contentsScale:v20 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v32}];
      v22 = [v21 newImageWithoutContentInsets];

      if (!v22)
      {
        v23 = BSUIBundle();
        v24 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:a5];
        v22 = [UIImage imageNamed:v13 inBundle:v23 withConfiguration:v24];
      }

      [v9 collectionGlyphPointSize];
      [v9 collectionIconSize];
      CGSizeScale();
      v26 = v25;
      v28 = v27;
      v29 = +[UIColor systemBlackColor];
      v30 = [UIImage im_imageWithCenteredIconImage:v22 iconColor:v29 size:v26, v28];

      v16 = [v30 imageWithRenderingMode:2];

      if (v16)
      {
        if (!v14)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          [(BKLibraryCollectionsListViewController *)self setIconCache:v14];
        }

        [v14 setObject:v16 forKey:v13];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_iconColorForIndexPath:(id)a3 metrics:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v11 = [v7 collectionIconColor_Add];
  }

  else
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v6];
    v9 = [v8 collectionID];
    if ([v9 isEqualToString:kBKCollectionDefaultIDBooks])
    {
      v10 = [v7 collectionIconColor_Books];
    }

    else if ([v9 isEqualToString:kBKCollectionDefaultIDAudiobooks])
    {
      v10 = [v7 collectionIconColor_Audiobooks];
    }

    else if ([v9 isEqualToString:kBKCollectionDefaultIDPDFs])
    {
      v10 = [v7 collectionIconColor_PDFs];
    }

    else if ([v9 isEqualToString:kBKCollectionDefaultIDDownloaded])
    {
      v10 = [v7 collectionIconColor_Downloaded];
    }

    else if ([v9 isEqualToString:kBKCollectionDefaultIDWantToRead] || objc_msgSend(v9, "isEqualToString:", kBKCollectionDefaultIDSamples))
    {
      v10 = [v7 collectionIconColor_WantToRead];
    }

    else
    {
      if ([v9 isEqualToString:kBKCollectionDefaultIDFinished])
      {
        [v7 collectionIconColor_Finished];
      }

      else
      {
        [v7 collectionIconColor_User];
      }
      v10 = ;
    }

    v11 = v10;
  }

  return v11;
}

- (id)_iconNameForCollectionID:(id)a3 metrics:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:kBKCollectionDefaultIDBooks])
  {
    v7 = [v6 collectionIconName_Books];
  }

  else if ([v5 isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v7 = [v6 collectionIconName_WantToRead];
  }

  else if ([v5 isEqualToString:kBKCollectionDefaultIDSamples])
  {
    v7 = [v6 collectionIconName_Samples];
  }

  else if ([v5 isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    v7 = [v6 collectionIconName_Audiobooks];
  }

  else if ([v5 isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    v7 = [v6 collectionIconName_PDFs];
  }

  else if ([v5 isEqualToString:kBKCollectionDefaultIDDownloaded])
  {
    v7 = [v6 collectionIconName_Downloaded];
  }

  else
  {
    if ([v5 isEqualToString:kBKCollectionDefaultIDFinished])
    {
      [v6 collectionIconName_Finished];
    }

    else
    {
      [v6 collectionIconName_User];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (unint64_t)_numberOfPrefixRows
{
  v2 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)_numberOfUserRows
{
  v2 = [(BKLibraryCollectionsListViewController *)self userCollections];
  v3 = [v2 count];

  return v3;
}

- (id)_indexPathForCollectionID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100179790;
    v17[3] = &unk_100A095E0;
    v6 = v4;
    v18 = v6;
    v7 = [v5 indexOfObjectPassingTest:v17];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1001797D4;
      v15 = &unk_100A095E0;
      v16 = v6;
      v9 = [v8 indexOfObjectPassingTest:&v12];

      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = [NSIndexPath indexPathForRow:v9 inSection:0, v12, v13, v14, v15];
      }
    }

    else
    {
      v10 = [NSIndexPath indexPathForRow:[(BKLibraryCollectionsListViewController *)self _rowForUserCollectionIndex:v7] inSection:1];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_indexPathForCollection:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self userCollections];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
    v8 = [v7 indexOfObject:v4];

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v9 = [(BKLibraryCollectionsListViewController *)self _rowForUserCollectionIndex:v6];
    v10 = 1;
  }

  v11 = [NSIndexPath indexPathForRow:v9 inSection:v10];

  return v11;
}

- (unint64_t)_collectionIndexForIndexPath:(id)a3
{
  v4 = a3;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v4]|| [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v4])
  {
    v5 = [v4 row];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)_collectionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v4])
    {
      v7 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
      v8 = [v7 count];

      if (v6 < v8)
      {
        v9 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
LABEL_7:
        v10 = v9;
        v11 = [v9 objectAtIndex:v6];

        goto LABEL_9;
      }
    }

    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v4])
    {
      v9 = [(BKLibraryCollectionsListViewController *)self userCollections];
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)_indexPathIsUser:(id)a3
{
  v4 = a3;
  if ([v4 section] == 1)
  {
    v5 = [v4 row];
    v6 = v5 < [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_indexPathIsNewCollection:(id)a3
{
  v4 = a3;
  if ([v4 section] == 1)
  {
    v5 = [v4 row];
    v6 = v5 == [(BKLibraryCollectionsListViewController *)self _numberOfUserRows]+ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setSelectionState:(BOOL)a3 cell:(id)a4 atIndexPath:(id)a5
{
  if (a3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [a4 setAccessoryType:v5];
}

- (void)_configureCell:(id)a3 atIndexPath:(id)a4
{
  v53 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = [(BKLibraryCollectionsListViewController *)self metrics];
  [v7 setMetrics:v8];
  v9 = [v53 textLabel];
  v10 = [v53 detailTextLabel];
  [(BKLibraryCollectionsListViewController *)self _setSelectionState:0 cell:v53 atIndexPath:v6];
  [v53 setSelected:0];
  if ([v6 section] != 1 && objc_msgSend(v6, "section"))
  {
    v11 = 0;
    goto LABEL_32;
  }

  v49 = [(BKLibraryCollectionsListViewController *)self isEditing];
  v12 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v6];
  v51 = v10;
  if (v12)
  {
    v13 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
    v14 = v13;
    if (v13 == v12)
    {
      v16 = [(BKLibraryCollectionsListViewController *)self isTextEditing];

      if (v16)
      {
        v15 = 0;
LABEL_11:
        [v53 setUserInteractionEnabled:{-[BKLibraryCollectionsListViewController isSelectionEnabledForCollection:](self, "isSelectionEnabledForCollection:", v12)}];
        if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:v6])
        {
          v17 = [v12 hidden];
          if ([v17 BOOLValue])
          {
            v18 = 1;
          }

          else
          {
            v18 = [v53 isUserInteractionEnabled] ^ 1;
          }

          v48 = v18;
        }

        else
        {
          v48 = 0;
        }

        v19 = [(BKLibraryCollectionsListViewController *)self p_assetCountForCollection:v12];
        if (v19)
        {
          v20 = v19;
          v21 = +[NSBundle mainBundle];
          [v21 localizedStringForKey:@"%lu" value:&stru_100A30A68 table:0];
          v22 = v8;
          v24 = v23 = v15;

          v50 = [NSString localizedStringWithFormat:v24, v20];

          v15 = v23;
          v8 = v22;
          v10 = v51;
        }

        else
        {
          v50 = 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v15 = [v12 localizedTitle];
    goto LABEL_11;
  }

  v50 = 0;
  v15 = 0;
  v48 = 0;
LABEL_20:
  v52 = v12;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"New Collection…" value:&stru_100A30A68 table:0];

    [v53 setUserInteractionEnabled:v49 ^ 1];
    v48 = [v53 isUserInteractionEnabled] ^ 1;
    v15 = v26;
  }

  v45 = v15;
  [v9 setText:v15];
  v27 = [v53 imageView];
  v46 = v9;
  v28 = [v9 font];
  [v28 pointSize];
  v29 = [(BKLibraryCollectionsListViewController *)self _iconForIndexPath:v6 metrics:v8 pointSize:?];
  [v27 setImage:v29];

  v30 = [(BKLibraryCollectionsListViewController *)self _iconColorForIndexPath:v6 metrics:v8];
  [v27 setTintColor:v30];

  [v10 setText:v50];
  v47 = v7;
  v31 = [v7 chevron];
  v32 = [v8 chevronFontAttributes];
  v33 = [v32 font];
  v34 = 1;
  v35 = [UIImageSymbolConfiguration configurationWithFont:v33 scale:1];

  v36 = [v8 chevronName];
  v37 = [UIImage systemImageNamed:v36];
  v38 = [v37 imageWithConfiguration:v35];

  [v31 setImage:v38];
  v39 = [v8 chevronFontAttributes];
  v40 = [v39 foregroundColor];
  [v31 setTintColor:v40];

  if (![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    v34 = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6];
  }

  [v31 setHidden:v34];
  v41 = 1.0;
  if (v49)
  {
    v41 = 0.0;
  }

  [v51 setAlpha:v41];
  v42 = [(BKLibraryCollectionsListViewController *)self selectedCollection];

  if (v52)
  {
    if (v42)
    {
      v43 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
      v44 = [v43 isEqualToCollection:v52];

      if (v44)
      {
        [(BKLibraryCollectionsListViewController *)self _setSelectionState:1 cell:v53 atIndexPath:v6];
      }
    }
  }

  v9 = v46;
  v7 = v47;
  v10 = v51;
  v11 = v48;
LABEL_32:
  [v7 setDimmed:v11];
  [v7 setAccessibilityDelegate:self];
}

- (id)_addCollectionIndexPath
{
  v2 = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];

  return [NSIndexPath indexPathForRow:v2 inSection:1];
}

- (BOOL)_isAddCollectionIndexPath:(id)a3
{
  v4 = a3;
  if ([(BKLibraryCollectionsListViewController *)self wantsAddCollectionRow])
  {
    v5 = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
    v6 = [v4 isEqual:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addSelectedToIndexPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v58 = v4;
    v5 = [(BKLibraryCollectionsListViewController *)self tableView];
    [v5 rectForRowAtIndexPath:v58];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [(BKLibraryCollectionsListViewController *)self tableView];
    v15 = [(BKLibraryCollectionsListViewController *)self view];
    [v14 convertRect:v15 toView:{v7, v9, v11, v13}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v58];
    v25 = [(BKLibraryCollectionsListViewController *)self assetIDs];
    if ([v25 count])
    {
      v26 = 0;
      v60 = kBKCollectionDefaultIDWantToRead;
      v59 = kBKCollectionDefaultIDFinished;
      v62 = v24;
      v63 = self;
      v61 = v25;
      while (1)
      {
        v27 = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
        v28 = [v25 objectAtIndexedSubscript:v26];
        v29 = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
        v67 = v27;
        if ([v29 count] <= v26)
        {
          v31 = 0;
        }

        else
        {
          v30 = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
          v31 = [v30 objectAtIndexedSubscript:v26];
        }

        v32 = [(BKLibraryCollectionsListViewController *)self knownStoreAssetIDs];
        v33 = [v32 containsObject:v28];

        v34 = 1;
        if (!v33)
        {
          v34 = 2;
        }

        v69 = v34;
        v66 = v31;
        v35 = v31 ? +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v31 integerValue]) : 0;
        v68 = v35;
        v36 = +[BKAppDelegate delegate];
        v37 = [v36 libraryAssetProvider];

        v65 = v37;
        v38 = [v37 libraryAssetOnMainQueueWithAssetID:v28];
        v39 = [v38 supplementalContentAssets];
        v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v39 count]);

        v41 = +[BAEventReporter sharedReporter];
        v42 = [v41 seriesTypeForContentID:v28];

        v64 = v26;
        if ([v38 isAudiobook])
        {
          v43 = [v38 hasRACSupport];
          v44 = [v43 BOOLValue] ? 1 : 2;
        }

        else
        {
          v44 = 0;
        }

        v45 = +[BAEventReporter sharedReporter];
        [v24 collectionID];
        v47 = v46 = v24;
        [v45 emitAddToCollectionEventWithTracker:v67 collectionID:v47 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];

        v48 = [v46 collectionID];
        LODWORD(v47) = [v48 isEqualToString:v60];

        if (v47)
        {
          break;
        }

        v54 = [v46 collectionID];
        v55 = [v54 isEqualToString:v59];

        v25 = v61;
        v53 = v38;
        if (v55)
        {
          v51 = +[BAEventReporter sharedReporter];
          [v51 emitMarkAsFinishedEventWithTracker:v67 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];
          goto LABEL_22;
        }

LABEL_23:

        ++v26;
        v24 = v62;
        self = v63;
        if (v64 + 1 >= [v25 count])
        {
          goto LABEL_24;
        }
      }

      v49 = +[BAEventReporter sharedReporter];
      [v49 emitWantListAddEventWithTracker:v67 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];

      v50 = +[BKAppDelegate delegate];
      v51 = [v50 engagementManager];

      v52 = [v51 sessionDonor];
      [v52 reportAddToWTRButtonUsed];

      v25 = v61;
      v53 = v38;
LABEL_22:

      goto LABEL_23;
    }

LABEL_24:
    v56 = [(BKLibraryCollectionsListViewController *)self delegate];
    v57 = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
    [v56 collectionListView:self addSelectedAssetIDs:v25 toCollection:v24 knownAssetTypes:v57 animationDestination:{v17, v19, v21, v23}];

    v4 = v58;
  }
}

- (void)_beginEditingUserCollectionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:v4];
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v4])
  {
    v6 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v7 = [v6 count];

    if (v7 > v5)
    {
      v8 = [(BKLibraryCollectionsListViewController *)self userCollections];
      v9 = [v8 objectAtIndex:v5];

      [(BKLibraryCollectionsListViewController *)self setTextEntryCollection:v9];
      [(BKLibraryCollectionsListViewController *)self setTextEntryIndexPath:v4];
      self->_textEditing = 1;
      [(BKLibraryCollectionsListViewController *)self tableView];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10017A824;
      v17 = v16 = &unk_100A03440;
      v18 = v4;
      v10 = v17;
      [v10 performBatchUpdates:&v13 completion:0];
      v11 = [(BKLibraryCollectionsListViewController *)self textEntryCell:v13];
      v12 = [v11 textEntryField];
      [v12 becomeFirstResponder];
    }
  }
}

- (id)p_currentPopoverPresentationController
{
  if ([(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation]&& (v3 = self) != 0)
  {
    v4 = v3;
    while (1)
    {
      v5 = [(BKLibraryCollectionsListViewController *)v4 popoverPresentationController];

      if (v5)
      {
        break;
      }

      v6 = [(BKLibraryCollectionsListViewController *)v4 parentViewController];

      v4 = v6;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v6 = [(BKLibraryCollectionsListViewController *)v4 popoverPresentationController];
  }

  else
  {
    v6 = 0;
  }

LABEL_8:

  return v6;
}

- (void)p_updateTableViewFromMetrics:(id)a3
{
  if (a3)
  {
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [a3 collectionIconSize];
    v7 = v6 + 8.0;
    v8 = [(BKLibraryCollectionsListViewController *)self tableView];
    [v8 setSeparatorInset:{UIEdgeInsetsZero.top, v7, bottom, right}];

    v9 = [(BKLibraryCollectionsListViewController *)self tableView];
    [v9 setSeparatorInsetReference:1];
  }
}

- (void)setMetrics:(id)a3
{
  v5 = a3;
  if (self->_metrics != v5)
  {
    objc_storeStrong(&self->_metrics, a3);
    [(BKLibraryCollectionsListViewController *)self setIconCache:0];
    [(BKLibraryCollectionsListViewController *)self p_updateTableViewFromMetrics:v5];
    [(BKLibraryCollectionsListViewController *)self _updateBarButtonsAnimated:0];
    v6 = [(BKLibraryCollectionsListViewController *)self tableView];
    v7 = [v6 indexPathsForVisibleRows];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017AB14;
    v9[3] = &unk_100A09608;
    v10 = v6;
    v11 = self;
    v12 = v5;
    v8 = v6;
    [v7 enumerateObjectsUsingBlock:v9];
  }
}

- (void)_analyticsSubmitBrowseCollectionScreenViewEventWithTracker:(id)a3
{
  v41 = a3;
  v3 = objc_opt_new();
  v42 = +[BKLibraryManager defaultManager];
  v4 = [v42 collectionProvider];
  v5 = [v4 selectableDefaultCollections];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v47 + 1) + 8 * i);
        v12 = [BACollectionIDData alloc];
        v13 = [v11 collectionID];
        v14 = [v11 members];
        v15 = [v12 initWithCollectionID:v13 collectionMemberCount:{objc_msgSend(v14, "count")}];

        [v3 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v8);
  }

  v16 = v42;
  v17 = [v42 uiChildContext];
  v18 = objc_alloc_init(NSFetchRequest);
  v19 = [NSEntityDescription entityForName:@"BKCollection" inManagedObjectContext:v17];
  [v18 setEntity:v19];

  v20 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
  v52 = v20;
  v21 = [NSArray arrayWithObjects:&v52 count:1];
  [v18 setSortDescriptors:v21];

  v22 = +[BKCollection predicateForNonDeletedUserCollections];
  [v18 setPredicate:v22];

  v23 = [[NSFetchedResultsController alloc] initWithFetchRequest:v18 managedObjectContext:v17 sectionNameKeyPath:0 cacheName:0];
  if ([v23 performFetch:0])
  {
    v38 = v18;
    v39 = v17;
    v24 = [v23 fetchedObjects];
    v25 = [NSMutableArray arrayWithArray:v24];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v44;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v44 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v43 + 1) + 8 * j);
          v32 = [BACollectionIDData alloc];
          v33 = [v31 collectionID];
          v34 = [v31 members];
          v35 = [v32 initWithCollectionID:v33 collectionMemberCount:{objc_msgSend(v34, "count")}];

          [v3 addObject:v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v28);
    }

    v16 = v42;
    v18 = v38;
    v17 = v39;
  }

  v36 = [[BACollectionSummaryData alloc] initWithCollectionSummary:v3];
  v37 = +[BAEventReporter sharedReporter];
  [v37 emitBrowseCollectionScreenViewEventWithTracker:v41 startDate:self->_analyticsAppearDate summaryData:v36];
}

- (BOOL)bkaxIsCustomCollectionCell:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  LOBYTE(self) = [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v6];
  return self;
}

- (BOOL)bkaxIsButton:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [v5 indexPathForCell:v4];

  LOBYTE(self) = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6];
  return self;
}

- (BOOL)bkaxIsLastCollection:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [v5 numberOfSections] - 1;

  v7 = [(BKLibraryCollectionsListViewController *)self tableView];
  v8 = [v7 numberOfRowsInSection:v6] - 1;

  v9 = [(BKLibraryCollectionsListViewController *)self tableView];
  v10 = [v9 indexPathForCell:v4];

  v11 = [v10 row] == v8 && objc_msgSend(v10, "section") == v6;
  return v11;
}

- (void)bkaxPerformHide:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v6 = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [v6 indexPathForCell:v4];

  v8 = objc_loadWeakRetained(&location);
  [v8 _concludeHide:1 atIndexPath:v7];

  objc_destroyWeak(&location);
}

- (void)bkaxPerformShow:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v6 = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [v6 indexPathForCell:v4];

  v8 = objc_loadWeakRetained(&location);
  [v8 _concludeHide:0 atIndexPath:v7];

  objc_destroyWeak(&location);
}

- (void)bkaxPerformRename:(id)a3
{
  v4 = a3;
  v5 = objc_initWeak(&location, self);
  v6 = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [v6 indexPathForCell:v4];

  v8 = objc_loadWeakRetained(&location);
  [v8 _beginEditingUserCollectionAtIndexPath:v7];

  objc_destroyWeak(&location);
}

- (BOOL)accessibilityPerformEscape
{
  if ([(BKLibraryCollectionsListViewController *)self isEditing])
  {
    [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:0];
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"Ended editing" value:&stru_100A30A68 table:0];

    UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, v4);
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = BKLibraryCollectionsListViewController;
    return [(BKLibraryCollectionsListViewController *)&v6 accessibilityPerformEscape];
  }
}

- (BKLibraryCollectionsListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface BKLibraryCollectionsListViewController
- (BKLibraryCollectionsListViewController)initWithSelectedBookIDs:(id)ds knownAssetTypes:(id)types knownStoreAssetIDs:(id)iDs containsSeriesContainer:(BOOL)container;
- (BKLibraryCollectionsListViewDelegate)delegate;
- (BOOL)_indexPathIsNewCollection:(id)collection;
- (BOOL)_indexPathIsUser:(id)user;
- (BOOL)_isAddCollectionIndexPath:(id)path;
- (BOOL)accessibilityPerformEscape;
- (BOOL)bkaxIsButton:(id)button;
- (BOOL)bkaxIsCustomCollectionCell:(id)cell;
- (BOOL)bkaxIsLastCollection:(id)collection;
- (BOOL)isSelectionEnabledForCollection:(id)collection;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context;
- (CGRect)keyboardFrame;
- (NSArray)prefixCollections;
- (NSMutableArray)userCollections;
- (UIBarButtonItem)navBarCloseButtonItem;
- (UIBarButtonItem)navBarEditButtonItem;
- (UITableView)tableView;
- (id)_addCollectionIndexPath;
- (id)_collectionForIndexPath:(id)path;
- (id)_iconColorForIndexPath:(id)path metrics:(id)metrics;
- (id)_iconForIndexPath:(id)path metrics:(id)metrics pointSize:(double)size;
- (id)_iconNameForCollectionID:(id)d metrics:(id)metrics;
- (id)_indexPathForCollection:(id)collection;
- (id)_indexPathForCollectionID:(id)d;
- (id)deleteSwipeAction:(id)action;
- (id)hideSwipeAction:(id)action;
- (id)p_currentPopoverPresentationController;
- (id)p_firstVisibleCollection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_collectionIndexForIndexPath:(id)path;
- (unint64_t)_numberOfPrefixRows;
- (unint64_t)_numberOfUserRows;
- (unint64_t)p_assetCountForCollection:(id)collection;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSelectedToIndexPath:(id)path;
- (void)_addStoreItems:(id)items toCollection:(id)collection;
- (void)_analyticsSubmitBrowseCollectionScreenViewEventWithTracker:(id)tracker;
- (void)_beginEditingUserCollectionAtIndexPath:(id)path;
- (void)_concludeDeleteAtIndexPath:(id)path;
- (void)_concludeHide:(BOOL)hide atIndexPath:(id)path;
- (void)_configureCell:(id)cell atIndexPath:(id)path;
- (void)_setSelectionState:(BOOL)state cell:(id)cell atIndexPath:(id)path;
- (void)_updateBarButtonsAnimated:(BOOL)animated;
- (void)_updateCloseButtonVisibility;
- (void)_updateInsets;
- (void)_updateMetricsIfNeeded;
- (void)addCollection:(id)collection;
- (void)animateEndTextEditCollections;
- (void)bkaxPerformHide:(id)hide;
- (void)bkaxPerformRename:(id)rename;
- (void)bkaxPerformShow:(id)show;
- (void)closeButtonPressed:(id)pressed;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)endTextEditAnimationComplete;
- (void)endTextEditing;
- (void)invalidatePrefixCollections;
- (void)keyboardDidHide:(id)hide;
- (void)keyboardWillHide:(id)hide;
- (void)keyboardWillShow:(id)show;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
- (void)managedObjectContextDidSave:(id)save;
- (void)p_updateTableViewFromMetrics:(id)metrics;
- (void)releaseAllRecomputableMemory;
- (void)releaseViews;
- (void)scrollToIndexPath:(id)path animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated reuseAddCollectionRow:(BOOL)row completion:(id)completion;
- (void)setIncludeHiddenInPrefixCollections:(BOOL)collections;
- (void)setMetrics:(id)metrics;
- (void)setWantsAddCollectionRow:(BOOL)row;
- (void)setWantsAddCollectionRow:(BOOL)row indexPath:(id)path animated:(BOOL)animated;
- (void)stopEditButtonPressed:(id)pressed;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view dragSessionDidEnd:(id)end;
- (void)tableView:(id)view dragSessionWillBegin:(id)begin;
- (void)tableView:(id)view dropSessionDidEnter:(id)enter;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)toggleEditButtonPressed:(id)pressed;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKLibraryCollectionsListViewController

- (BKLibraryCollectionsListViewController)initWithSelectedBookIDs:(id)ds knownAssetTypes:(id)types knownStoreAssetIDs:(id)iDs containsSeriesContainer:(BOOL)container
{
  dsCopy = ds;
  typesCopy = types;
  iDsCopy = iDs;
  v35.receiver = self;
  v35.super_class = BKLibraryCollectionsListViewController;
  v13 = [(BKLibraryCollectionsListViewController *)&v35 init];
  if (v13)
  {
    v14 = [[BKLibraryBookshelfMetrics alloc] initWithObserver:v13];
    bookshelfMetrics = v13->_bookshelfMetrics;
    v13->_bookshelfMetrics = v14;

    v16 = [dsCopy copy];
    assetIDs = v13->_assetIDs;
    v13->_assetIDs = v16;

    v18 = [typesCopy copy];
    knownAssetTypes = v13->_knownAssetTypes;
    v13->_knownAssetTypes = v18;

    objc_storeStrong(&v13->_knownStoreAssetIDs, iDs);
    v13->_containsSeriesContainer = container;
    if ([dsCopy count])
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

  textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
  [textEntryCell removeTextEntryField];

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
  viewIfLoaded = [(BKLibraryCollectionsListViewController *)self viewIfLoaded];
  traitCollection = [(BKLibraryCollectionsListViewController *)self traitCollection];
  window = [viewIfLoaded window];
  if (viewIfLoaded && traitCollection && window)
  {
    [viewIfLoaded safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v9 = [TUIEnvironment alloc];
    [viewIfLoaded bounds];
    v11 = v10;
    v13 = v12;
    [window bounds];
    v16 = [v9 initWithTraitCollection:traitCollection viewController:self viewSize:v11 viewSafeAreaInsets:v13 windowSize:{0.0, v6, 0.0, v8, v14, v15}];
    bookshelfMetrics = [(BKLibraryCollectionsListViewController *)self bookshelfMetrics];
    v18 = [bookshelfMetrics updateIfNeededWithEnvironment:v16 bookshelfLayoutMode:0 editMode:0 isPopover:{-[BKLibraryCollectionsListViewController _isInPopoverPresentation](self, "_isInPopoverPresentation")}];

    if (v18)
    {
      [viewIfLoaded setNeedsLayout];
      bookshelfMetrics2 = [(BKLibraryCollectionsListViewController *)self bookshelfMetrics];
      computedMetrics = [bookshelfMetrics2 computedMetrics];
      v21 = +[BKLibraryCollectionsListMetrics sectionName];
      v22 = [computedMetrics objectForKeyedSubscript:v21];
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
  view = [(BKLibraryCollectionsListViewController *)self view];
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  navigationController = [(BKLibraryCollectionsListViewController *)self navigationController];
  view2 = [navigationController view];
  [view2 setAccessibilityIgnoresInvertColors:1];

  metrics = [(BKLibraryCollectionsListViewController *)self metrics];
  [(BKLibraryCollectionsListViewController *)self p_updateTableViewFromMetrics:metrics];

  [view addSubview:tableView];
  if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection]|| [(BKLibraryCollectionsListViewController *)self suppressLargeTitle])
  {
    navigationItem = [(BKLibraryCollectionsListViewController *)self navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  if (_UISolariumEnabled())
  {
    navigationItem2 = [(BKLibraryCollectionsListViewController *)self navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];

    if (![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
    {
      navBarCloseButtonItem = [(BKLibraryCollectionsListViewController *)self navBarCloseButtonItem];
      v15[0] = navBarCloseButtonItem;
      navBarEditButtonItem = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
      v15[1] = navBarEditButtonItem;
      v12 = [NSArray arrayWithObjects:v15 count:2];
      navigationItem3 = [(BKLibraryCollectionsListViewController *)self navigationItem];
      [navigationItem3 setRightBarButtonItems:v12];
    }
  }

  [(BKLibraryCollectionsListViewController *)self resetNavigationBarButtons];
}

- (void)viewWillAppear:(BOOL)appear
{
  v21.receiver = self;
  v21.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v21 viewWillAppear:appear];
  ba_analyticsTracker = [(BKLibraryCollectionsListViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
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
    navigationController = [(BKLibraryCollectionsListViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    standardAppearance = [navigationBar standardAppearance];
    v10 = [standardAppearance copy];

    [v10 configureWithOpaqueBackground];
    v11 = +[UIColor clearColor];
    [v10 setShadowColor:v11];

    navigationController2 = [(BKLibraryCollectionsListViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setScrollEdgeAppearance:v10];
  }

  v14 = +[NSDate date];
  analyticsAppearDate = self->_analyticsAppearDate;
  self->_analyticsAppearDate = v14;

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
  [v16 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];
  [v16 addObserver:self selector:"keyboardDidHide:" name:UIKeyboardDidHideNotification object:0];
  [v16 addObserver:self selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  [tableView reloadData];

  selectedCollection = [(BKLibraryCollectionsListViewController *)self selectedCollection];

  if (selectedCollection)
  {
    selectedCollection2 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    v20 = [(BKLibraryCollectionsListViewController *)self _indexPathForCollection:selectedCollection2];

    if (v20)
    {
      [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:v20 animated:0];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v6 viewDidAppear:appear];
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  [tableView flashScrollIndicators];

  v5 = dispatch_time(0, 500000000);
  dispatch_after(v5, &_dispatch_main_q, &stru_100A09358);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v8 viewWillDisappear:disappear];
  navigationController = [(BKLibraryCollectionsListViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setScrollEdgeAppearance:0];

  ba_effectiveAnalyticsTracker = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
  [(BKLibraryCollectionsListViewController *)self _analyticsSubmitBrowseCollectionScreenViewEventWithTracker:ba_effectiveAnalyticsTracker];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:UIKeyboardWillShowNotification object:0];
  [v7 removeObserver:self name:UIKeyboardWillHideNotification object:0];
  [v7 removeObserver:self name:UIKeyboardDidHideNotification object:0];
  [v7 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:0];
  v5.receiver = self;
  v5.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v5 viewDidDisappear:disappearCopy];
  [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(BKLibraryCollectionsListViewController *)self _updateMetricsIfNeeded];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(BKLibraryCollectionsListViewController *)self _updateMetricsIfNeeded];
}

- (id)p_firstVisibleCollection
{
  prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  if ([prefixCollections count])
  {
    v4 = [prefixCollections objectAtIndexedSubscript:0];
  }

  else
  {
    userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
    if ([userCollections count])
    {
      v4 = [userCollections objectAtIndexedSubscript:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated reuseAddCollectionRow:(BOOL)row completion:(id)completion
{
  rowCopy = row;
  animatedCopy = animated;
  editingCopy = editing;
  completionCopy = completion;
  v61.receiver = self;
  v61.super_class = BKLibraryCollectionsListViewController;
  [(BKLibraryCollectionsListViewController *)&v61 setEditing:editingCopy animated:animatedCopy];
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  [tableView setEditing:editingCopy animated:animatedCopy];
  if (_UISolariumEnabled())
  {
    [(BKLibraryCollectionsListViewController *)self _updateCloseButtonVisibility];
  }

  v12 = !editingCopy || rowCopy;
  [(BKLibraryCollectionsListViewController *)self _updateBarButtonsAnimated:animatedCopy];
  if (editingCopy || !self->_endEditingMeansTableReload)
  {
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_100172E34;
    v56[3] = &unk_100A044C8;
    v58 = editingCopy;
    v36 = tableView;
    v57 = v36;
    v20 = objc_retainBlock(v56);
    if (animatedCopy)
    {
      [UIView animateWithDuration:v20 animations:0.3];
    }

    else
    {
      [UIView performWithoutAnimation:v20];
    }

    prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
    if (v12)
    {
      _addCollectionIndexPath = 0;
    }

    else
    {
      _addCollectionIndexPath = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
    }

    [(BKLibraryCollectionsListViewController *)self setIncludeHiddenInPrefixCollections:editingCopy];
    [(BKLibraryCollectionsListViewController *)self prefixCollections];
    v39 = v38 = v20;
    if (v12)
    {
      _addCollectionIndexPath2 = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];

      _addCollectionIndexPath = _addCollectionIndexPath2;
    }

    v23 = [[NSSet alloc] initWithArray:prefixCollections];
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
    [prefixCollections enumerateObjectsUsingBlock:v53];
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
        if (([v29 containsObject:_addCollectionIndexPath] & 1) == 0)
        {
          [v29 addObject:_addCollectionIndexPath];
          v33 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [_addCollectionIndexPath row] - 1, objc_msgSend(_addCollectionIndexPath, "section"));
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

      else if (([v27 containsObject:_addCollectionIndexPath] & 1) == 0)
      {
        [v27 addObject:_addCollectionIndexPath];
      }

      self->_wantsAddCollectionRow = v12;
    }

    v17 = &v57;
    if ([v27 count] || objc_msgSend(v29, "count"))
    {
      if (animatedCopy)
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
      v42 = completionCopy;
      [v45 performBatchUpdates:v43 completion:v41];

      v31 = v44;
    }

    else
    {
      v32 = objc_retainBlock(completionCopy);
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
    selectedCollection = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    deletedFlag = [selectedCollection deletedFlag];
    bOOLValue = [deletedFlag BOOLValue];

    if (bOOLValue)
    {
      p_firstVisibleCollection = [(BKLibraryCollectionsListViewController *)self p_firstVisibleCollection];
      [(BKLibraryCollectionsListViewController *)self setSelectedCollection:p_firstVisibleCollection];
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
    v60 = tableView;
    dispatch_async(&_dispatch_main_q, block);
    v18 = objc_retainBlock(completionCopy);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 2))(v18);
    }
  }
}

- (void)toggleEditButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  if ([tableView hasActiveDrag])
  {
  }

  else
  {
    tableView2 = [(BKLibraryCollectionsListViewController *)self tableView];
    hasActiveDrop = [tableView2 hasActiveDrop];

    if ((hasActiveDrop & 1) == 0)
    {
      if ([(BKLibraryCollectionsListViewController *)self isEditing])
      {
        [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:pressedCopy];
      }

      else
      {
        [(BKLibraryCollectionsListViewController *)self startEditButtonPressed:pressedCopy];
      }
    }
  }
}

- (void)stopEditButtonPressed:(id)pressed
{
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    textEntryField = [textEntryCell textEntryField];
    isFirstResponder = [textEntryField isFirstResponder];

    if (isFirstResponder)
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

- (void)closeButtonPressed:(id)pressed
{
  presentingViewController = [(BKLibraryCollectionsListViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)addCollection:(id)collection
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
  textEntryIndexPath = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
  [(BKLibraryCollectionsListViewController *)self setPostKeyboardIndexPath:textEntryIndexPath];

  textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
  textEntryField = [textEntryCell textEntryField];
  [textEntryField resignFirstResponder];
}

- (void)setWantsAddCollectionRow:(BOOL)row
{
  rowCopy = row;
  _addCollectionIndexPath = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
  [(BKLibraryCollectionsListViewController *)self setWantsAddCollectionRow:rowCopy indexPath:_addCollectionIndexPath animated:0];
}

- (void)setWantsAddCollectionRow:(BOOL)row indexPath:(id)path animated:(BOOL)animated
{
  rowCopy = row;
  pathCopy = path;
  if (self->_wantsAddCollectionRow != rowCopy)
  {
    self->_wantsAddCollectionRow = rowCopy;
    [(BKLibraryCollectionsListViewController *)self tableView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100173750;
    v10[3] = &unk_100A093D0;
    v11 = v13 = rowCopy;
    v12 = pathCopy;
    animatedCopy = animated;
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
      editButtonItem = [(BKLibraryCollectionsListViewController *)self editButtonItem];
      navBarEditButtonItem = self->_navBarEditButtonItem;
      self->_navBarEditButtonItem = editButtonItem;

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
    _isInPopoverPresentation = 1;
  }

  else
  {
    _isInPopoverPresentation = [(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation];
  }

  navBarCloseButtonItem = [(BKLibraryCollectionsListViewController *)self navBarCloseButtonItem];
  [navBarCloseButtonItem setHidden:_isInPopoverPresentation];
}

- (BOOL)isSelectionEnabledForCollection:(id)collection
{
  collectionCopy = collection;
  if (!collectionCopy || ![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    allowsManualAddition = 1;
    goto LABEL_9;
  }

  prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  if (![prefixCollections containsObject:collectionCopy])
  {

    goto LABEL_8;
  }

  containsSeriesContainer = [(BKLibraryCollectionsListViewController *)self containsSeriesContainer];

  if ((containsSeriesContainer & 1) == 0)
  {
LABEL_8:
    allowsManualAddition = [collectionCopy allowsManualAddition];
    goto LABEL_9;
  }

  allowsManualAddition = 0;
LABEL_9:

  return allowsManualAddition;
}

- (NSArray)prefixCollections
{
  if (!self->_prefixCollectionsMonitor)
  {
    v3 = [BCManagedObjectIDMonitor alloc];
    v4 = +[BKLibraryManager defaultManager];
    persistentStoreCoordinator = [v4 persistentStoreCoordinator];
    v6 = +[BKCollection predicateForAllDefaultCollections];
    v22 = @"hidden";
    v7 = [NSArray arrayWithObjects:&v22 count:1];
    v8 = [NSSet setWithArray:v7];
    v9 = [v3 initWithContext:0 coordinator:persistentStoreCoordinator entityName:@"BKCollection" predicate:v6 mapProperty:@"collectionID" propertiesOfInterest:v8 observer:self];
    prefixCollectionsMonitor = self->_prefixCollectionsMonitor;
    self->_prefixCollectionsMonitor = v9;
  }

  prefixCollections = self->_prefixCollections;
  if (!prefixCollections)
  {
    v12 = +[BKLibraryManager defaultManager];
    collectionProvider = [v12 collectionProvider];
    selectableDefaultCollections = [collectionProvider selectableDefaultCollections];

    if ([(BKLibraryCollectionsListViewController *)self includeHiddenInPrefixCollections])
    {
      v15 = selectableDefaultCollections;
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
      [selectableDefaultCollections enumerateObjectsUsingBlock:v20];
      v17 = [(NSArray *)v16 copy];
      v18 = self->_prefixCollections;
      self->_prefixCollections = v17;
    }

    prefixCollections = self->_prefixCollections;
  }

  return prefixCollections;
}

- (void)setIncludeHiddenInPrefixCollections:(BOOL)collections
{
  if (self->_includeHiddenInPrefixCollections != collections)
  {
    self->_includeHiddenInPrefixCollections = collections;
    [(BKLibraryCollectionsListViewController *)self invalidatePrefixCollections];
  }
}

- (void)invalidatePrefixCollections
{
  prefixCollections = self->_prefixCollections;
  self->_prefixCollections = 0;
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  updatedObjects = [notify updatedObjects];
  v6 = [updatedObjects copy];

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

- (void)managedObjectContextDidSave:(id)save
{
  saveCopy = save;
  objc_opt_class();
  object = [saveCopy object];
  v6 = BUDynamicCast();

  if (v6)
  {
    persistentStoreCoordinator = [v6 persistentStoreCoordinator];
    v8 = +[BKLibraryManager defaultManager];
    persistentStoreCoordinator2 = [v8 persistentStoreCoordinator];
    v10 = [persistentStoreCoordinator hasStoreInCommonWith:persistentStoreCoordinator2];

    if (v10)
    {
      userInfo = [saveCopy userInfo];
      v12 = [userInfo objectForKey:NSInsertedObjectsKey];
      v13 = [userInfo objectForKey:NSUpdatedObjectsKey];
      v14 = [userInfo objectForKey:NSDeletedObjectsKey];
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
      uiChildContext = [v3 uiChildContext];
      v5 = objc_alloc_init(NSFetchRequest);
      v6 = [NSEntityDescription entityForName:@"BKCollection" inManagedObjectContext:uiChildContext];
      [v5 setEntity:v6];

      v7 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
      v20 = v7;
      v8 = [NSArray arrayWithObjects:&v20 count:1];
      [v5 setSortDescriptors:v8];

      v9 = +[BKCollection predicateForNonDeletedUserCollections];
      [v5 setPredicate:v9];

      v10 = [[NSFetchedResultsController alloc] initWithFetchRequest:v5 managedObjectContext:uiChildContext sectionNameKeyPath:0 cacheName:0];
      fetchedResultsController = self->_fetchedResultsController;
      self->_fetchedResultsController = v10;

      [(NSFetchedResultsController *)self->_fetchedResultsController setDelegate:self];
    }

    fetchedResultsController = [(BKLibraryCollectionsListViewController *)self fetchedResultsController];
    v13 = [fetchedResultsController performFetch:0];

    if (v13)
    {
      fetchedResultsController2 = [(BKLibraryCollectionsListViewController *)self fetchedResultsController];
      fetchedObjects = [fetchedResultsController2 fetchedObjects];
      v16 = [NSMutableArray arrayWithArray:fetchedObjects];
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
      view = [(BKLibraryCollectionsListViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      [safeAreaLayoutGuide layoutFrame];
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
  view = [(BKLibraryCollectionsListViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  [tableView setFrame:{v5, v7, v9, v11}];

  [(BKLibraryCollectionsListViewController *)self _updateInsets];
  if (_UISolariumEnabled())
  {
    [(BKLibraryCollectionsListViewController *)self _updateCloseButtonVisibility];
    _isInPopoverPresentation = [(BKLibraryCollectionsListViewController *)self _isInPopoverPresentation];
    if (_isInPopoverPresentation)
    {
      v14 = 0;
    }

    else
    {
      v14 = +[UIColor systemGroupedBackgroundColor];
    }

    tableView2 = [(BKLibraryCollectionsListViewController *)self tableView];
    [tableView2 setBackgroundColor:v14];

    if ((_isInPopoverPresentation & 1) == 0)
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = BKLibraryCollectionsListViewController;
  coordinatorCopy = coordinator;
  [(BKLibraryCollectionsListViewController *)&v13 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  selectedCollection = [(BKLibraryCollectionsListViewController *)self selectedCollection];
  v9 = [(BKLibraryCollectionsListViewController *)self _indexPathForCollection:selectedCollection];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100174F5C;
  v11[3] = &unk_100A03970;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  [coordinatorCopy animateAlongsideTransition:v11 completion:0];
}

- (void)_updateBarButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    isEditing = [(BKLibraryCollectionsListViewController *)self isEditing];
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (isEditing)
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
      navBarEditButtonItem = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
      if (isEditing)
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      navigationItem = [(BKLibraryCollectionsListViewController *)self navigationItem];
      rightBarButtonItems = [navigationItem rightBarButtonItems];
      v14 = [rightBarButtonItems containsObject:navBarEditButtonItem];

      if (v14)
      {
        if (v11 != [navBarEditButtonItem style] || (objc_msgSend(navBarEditButtonItem, "title"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v9, "isEqualToString:", v15), v15, (v16 & 1) == 0))
        {
          if (animatedCopy)
          {
            navigationController = [(BKLibraryCollectionsListViewController *)self navigationController];
            navigationBar = [navigationController navigationBar];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1001751F4;
            v19[3] = &unk_100A04CF0;
            v20 = navBarEditButtonItem;
            v21 = v9;
            v22 = v11;
            [UIView transitionWithView:navigationBar duration:5242880 options:v19 animations:0 completion:0.3];
          }

          else
          {
            [navBarEditButtonItem setTitle:v9];
            [navBarEditButtonItem setStyle:v11];
          }
        }
      }

      else
      {
        [navBarEditButtonItem setTitle:v9];
        [navBarEditButtonItem setStyle:v11];
        [navigationItem setRightBarButtonItem:navBarEditButtonItem animated:animatedCopy];
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

- (void)textFieldDidEndEditing:(id)editing
{
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    textEntryField = [textEntryCell textEntryField];

    if (![(BKLibraryCollectionsListViewController *)self textFieldShouldEndEditing:textEntryField])
    {
LABEL_13:
      [(BKLibraryCollectionsListViewController *)self animateEndTextEditCollections];
      [(BKLibraryCollectionsListViewController *)self setEditing:0 animated:1];

      return;
    }

    text = [textEntryField text];
    if (![text length])
    {
LABEL_12:

      goto LABEL_13;
    }

    v7 = +[BKLibraryManager defaultManager];
    collectionController = [v7 collectionController];
    textEntryCollection = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
    v10 = textEntryCollection;
    if (textEntryCollection)
    {
      localizedTitle = [textEntryCollection localizedTitle];
      v12 = [localizedTitle isEqualToString:text];

      if (v12)
      {
LABEL_11:

        goto LABEL_12;
      }

      collectionID = [v10 collectionID];
      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_10017562C;
      v27[3] = &unk_100A06628;
      v28 = collectionController;
      v29 = collectionID;
      v30 = text;
      v14 = collectionID;
      [v7 performBlockInUIContext:v27];
      delegate = [(BKLibraryCollectionsListViewController *)self delegate];
      [delegate collectionListView:self collectionChanged:v10];
    }

    else
    {
      textEntryIndexPath = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];

      if (!textEntryIndexPath || ![text length])
      {
        goto LABEL_11;
      }

      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_1001756B0;
      v25 = &unk_100A09490;
      v26 = text;
      v17 = [collectionController insertNewCollectionSyncOnMainQueueWithCollectionID:0 newCollectionBlock:&v22];
      v18 = [BAEventReporter sharedReporter:v22];
      ba_effectiveAnalyticsTracker = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
      collectionID2 = [v17 collectionID];
      [v18 emitCollectionAddEventWithTracker:ba_effectiveAnalyticsTracker collectionID:collectionID2 collectionItemCount:0];

      userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
      [userCollections addObject:v17];

      self->_wantsAddCollectionRow = 0;
      v14 = v26;
    }

    goto LABEL_11;
  }
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  objectCopy = object;
  changeIsUserDriven = [(BKLibraryCollectionsListViewController *)self changeIsUserDriven];
  if (type - 5 >= 0xFFFFFFFFFFFFFFFELL && (changeIsUserDriven & 1) == 0)
  {
    objc_opt_class();
    v10 = BUClassAndProtocolCast();
    if (v10)
    {
      delegate = [(BKLibraryCollectionsListViewController *)self delegate];
      [delegate collectionListView:self collectionChanged:v10];
    }
  }
}

- (void)controllerDidChangeContent:(id)content
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
    selectedCollection = [(BKLibraryCollectionsListViewController *)self selectedCollection];
    deletedFlag = [selectedCollection deletedFlag];
    bOOLValue = [deletedFlag BOOLValue];

    if (bOOLValue)
    {
      p_firstVisibleCollection = [(BKLibraryCollectionsListViewController *)self p_firstVisibleCollection];
      [(BKLibraryCollectionsListViewController *)self setSelectedCollection:p_firstVisibleCollection];
    }

    [(BKLibraryCollectionsListViewController *)self setUserCollections:0];
    tableView = [(BKLibraryCollectionsListViewController *)self tableView];
    [tableView reloadData];
  }
}

- (unint64_t)p_assetCountForCollection:(id)collection
{
  collectionCopy = collection;
  collectionID = [collectionCopy collectionID];
  if (collectionID)
  {
    collectionAssetCounts = [(BKLibraryCollectionsListViewController *)self collectionAssetCounts];
    if (!collectionAssetCounts)
    {
      collectionAssetCounts = objc_alloc_init(NSMutableDictionary);
      [(BKLibraryCollectionsListViewController *)self setCollectionAssetCounts:collectionAssetCounts];
    }

    v7 = [collectionAssetCounts objectForKeyedSubscript:collectionID];
    v8 = v7;
    if (v7)
    {
      unsignedIntegerValue = [v7 unsignedIntegerValue];
LABEL_13:

      goto LABEL_14;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    if ([collectionID isEqualToString:kBKCollectionDefaultIDFinished])
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
      members = [collectionCopy members];
      v12 = [members count];

      if (!v12)
      {
LABEL_12:
        v14 = [NSNumber numberWithUnsignedInteger:v21[3]];
        [collectionAssetCounts setObject:v14 forKeyedSubscript:collectionID];

        unsignedIntegerValue = v21[3];
        _Block_object_dispose(&v20, 8);
        goto LABEL_13;
      }

      v13 = +[BKLibraryManager defaultManager];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100175BB0;
      v16[3] = &unk_100A06650;
      v17 = collectionID;
      v18 = &v20;
      [v13 performBlockInUIContext:v16];

      v10 = v17;
    }

    goto LABEL_12;
  }

  unsignedIntegerValue = 0;
LABEL_14:

  return unsignedIntegerValue;
}

- (void)_concludeDeleteAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:pathCopy];
  userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
  v7 = [userCollections objectAtIndex:v5];
  v8 = v7;

  if (v7)
  {
    [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
    delegate = [(BKLibraryCollectionsListViewController *)self delegate];
    v10 = [delegate collectionListView:self collectionDeleted:v7];

    if (v10)
    {
      userCollections2 = [(BKLibraryCollectionsListViewController *)self userCollections];
      [userCollections2 removeObjectAtIndex:v5];

      tableView = [(BKLibraryCollectionsListViewController *)self tableView];
      v14 = pathCopy;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [tableView deleteRowsAtIndexPaths:v13 withRowAnimation:0];
    }

    else
    {
      [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:0];
      tableView = [(BKLibraryCollectionsListViewController *)self tableView];
      [tableView reloadData];
    }
  }
}

- (void)_concludeHide:(BOOL)hide atIndexPath:(id)path
{
  v6 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:path];
  prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  v8 = [prefixCollections objectAtIndex:v6];

  if (v8)
  {
    v9 = +[BKLibraryManager defaultManager];
    [v9 collectionController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100175EEC;
    v12 = v11[3] = &unk_100A094E0;
    v13 = v8;
    hideCopy = hide;
    v10 = v12;
    [v9 performBlockInUIContext:v11];
  }
}

- (void)tableView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  [tableView setSpringLoaded:0];

  [(UIBarButtonItem *)self->_navBarEditButtonItem setEnabled:0];
  localContext = [beginCopy localContext];

  if (localContext != self)
  {

    [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
  }
}

- (void)tableView:(id)view dragSessionDidEnd:(id)end
{
  v5 = [(BKLibraryCollectionsListViewController *)self tableView:view];
  [v5 setSpringLoaded:1];

  [(UIBarButtonItem *)self->_navBarEditButtonItem setEnabled:1];

  [(BKLibraryCollectionsListViewController *)self resetNavigationBarButtons];
}

- (id)tableView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  pathCopy = path;
  localDragSession = [update localDragSession];
  localContext = [localDragSession localContext];

  if (localContext == self)
  {
    v11 = [UITableViewDropProposal alloc];
    v12 = 3;
    v13 = 1;
  }

  else
  {
    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
    {
      v10 = 2;
    }

    else
    {
      v14 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
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

- (void)tableView:(id)view dropSessionDidEnter:(id)enter
{
  navBarEditButtonItem = self->_navBarEditButtonItem;
  enterCopy = enter;
  [(UIBarButtonItem *)navBarEditButtonItem setEnabled:0];
  localDragSession = [enterCopy localDragSession];

  localContext = [localDragSession localContext];

  if (localContext != self)
  {

    [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
  }
}

- (void)_addStoreItems:(id)items toCollection:(id)collection
{
  itemsCopy = items;
  collectionCopy = collection;
  v7 = +[BKLibraryManager defaultManager];
  collectionController = [v7 collectionController];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = itemsCopy;
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

        storeID = [*(*(&v20 + 1) + 8 * v12) storeID];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100176480;
        v17[3] = &unk_100A034F8;
        v18 = storeID;
        v14 = collectionCopy;
        v19 = v14;
        v15 = storeID;
        [collectionController addStoreID:v15 toCollectionID:v14 forceToTop:1 completion:v17];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)tableView:(id)view performDropWithCoordinator:(id)coordinator
{
  viewCopy = view;
  coordinatorCopy = coordinator;
  v71 = +[NSMutableArray array];
  v69 = +[NSMutableArray array];
  destinationIndexPath = [coordinatorCopy destinationIndexPath];
  objc_opt_class();
  selfCopy = self;
  v9 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:destinationIndexPath];
  v63 = BUDynamicCast();

  v68 = viewCopy;
  v64 = destinationIndexPath;
  v10 = [viewCopy cellForRowAtIndexPath:destinationIndexPath];
  imageView = [v10 imageView];
  [imageView bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  imageView2 = [v10 imageView];
  v67 = v10;
  [v10 convertRect:imageView2 fromView:{v13, v15, v17, v19}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v66 = coordinatorCopy;
  obj = [coordinatorCopy items];
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
        dragItem = [v33 dragItem];
        localObject = [dragItem localObject];
        v36 = BUDynamicCast();

        objc_opt_class();
        dragItem2 = [v33 dragItem];
        localObject2 = [dragItem2 localObject];
        v39 = BUDynamicCast();

        objc_opt_class();
        dragItem3 = [v33 dragItem];
        localObject3 = [dragItem3 localObject];
        v42 = BUDynamicCast();

        assetID = [v42 assetID];
        v44 = [assetID length];

        if (v44)
        {
          v45 = +[BKLibraryManager defaultManager];
          assetID2 = [v42 assetID];
          v47 = [v45 libraryAssetOnMainQueueWithAssetID:assetID2];

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

  v50 = [(BKLibraryCollectionsListViewController *)selfCopy _isAddCollectionIndexPath:v64];
  v51 = v50;
  if (v50)
  {
    v52 = +[BKLibraryManager defaultManager];
    uiChildContext = [v52 uiChildContext];
    v54 = [BKCollection insertNewCollectionWithCollectionID:0 inManagedObjectContext:uiChildContext];

    v55 = +[NSBundle mainBundle];
    v56 = [v55 localizedStringForKey:@"Untitled Collection" value:&stru_100A30A68 table:0];
    [v54 setTitle:v56];

    [v54 addLibraryAssets:v71];
    collectionID = [v54 collectionID];
    [(BKLibraryCollectionsListViewController *)selfCopy _addStoreItems:v69 toCollection:collectionID];
  }

  v78[0] = _NSConcreteStackBlock;
  v78[1] = 3221225472;
  v78[2] = sub_100176A70;
  v78[3] = &unk_100A08520;
  v79 = coordinatorCopy;
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
  v75 = selfCopy;
  v76 = v69;
  v58 = v69;
  v59 = v71;
  v60 = v63;
  v61 = v64;
  v62 = v66;
  [v68 performBatchUpdates:v78 completion:v72];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    _numberOfUserRows = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
    _numberOfPrefixRows = [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows]+ _numberOfUserRows;
  }

  else if (section)
  {
    _numberOfPrefixRows = 0;
  }

  else
  {
    _numberOfPrefixRows = [(BKLibraryCollectionsListViewController *)self _numberOfPrefixRows];
  }

  return _numberOfPrefixRows;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = objc_autoreleasePoolPush();
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
  {
    v9 = @"NewCollectionCell";
  }

  else
  {
    v9 = @"Cell";
  }

  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    v10 = [[BKLibraryCollectionsListCell alloc] initWithStyle:0 reuseIdentifier:v9];
  }

  [(BKLibraryCollectionsListViewController *)self _configureCell:v10 atIndexPath:pathCopy];
  objc_autoreleasePoolPop(v8);

  return v10;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:pathCopy];
    userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
    v10 = [userCollections count];

    if (v10 <= v8)
    {
      if (![(BKLibraryCollectionsListViewController *)self isTextEditing]|| ![(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
      {
        goto LABEL_18;
      }

      defaultCollectionName = [(BKLibraryCollectionsListViewController *)self defaultCollectionName];
    }

    else
    {
      userCollections2 = [(BKLibraryCollectionsListViewController *)self userCollections];
      v12 = [userCollections2 objectAtIndex:v8];

      textEntryCollection = [(BKLibraryCollectionsListViewController *)self textEntryCollection];

      if (textEntryCollection != v12)
      {
        defaultCollectionName = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
        if (!defaultCollectionName)
        {

LABEL_19:
          goto LABEL_20;
        }

        textEntryIndexPath = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
        v16 = [textEntryIndexPath row];
        v17 = [pathCopy row];

        if (v16 != v17)
        {
LABEL_18:
          defaultCollectionName = 0;
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

      textEntryCollection2 = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
      defaultCollectionName = [textEntryCollection2 localizedTitle];
    }

    [(BKLibraryCollectionsListViewController *)self setTextEntryIndexPath:pathCopy];
    v19 = self->_textEntryCell;
    if (v19 != cellCopy)
    {
      [(BKLibraryCollectionsListCell *)v19 removeTextEntryField];
      objc_opt_class();
      v20 = BUDynamicCast();
      v21 = self->_textEntryCell;
      self->_textEntryCell = v20;

      [(BKLibraryCollectionsListCell *)self->_textEntryCell setupTextEntryField:self];
      textEntryField = [(BKLibraryCollectionsListCell *)self->_textEntryCell textEntryField];
      [textEntryField setText:defaultCollectionName];

      accessibilityTraits = [(BKLibraryCollectionsListCell *)self->_textEntryCell accessibilityTraits];
      [(BKLibraryCollectionsListCell *)self->_textEntryCell setAccessibilityTraits:UIAccessibilityTraitTextEntry | accessibilityTraits];
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing]|| self->_endTextEditingMeansEndEditMode || self->_suppressEditControlsForNewCollection)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ![(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy];
  }

  return v6;
}

- (void)tableView:(id)view willBeginEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  navBarEditButtonItem = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
  [navBarEditButtonItem setEnabled:0];

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  chevron = [v10 chevron];
  [chevron setHidden:1];
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  navBarEditButtonItem = [(BKLibraryCollectionsListViewController *)self navBarEditButtonItem];
  [navBarEditButtonItem setEnabled:1];

  v10 = [viewCopy cellForRowAtIndexPath:pathCopy];

  chevron = [v10 chevron];
  [chevron setHidden:0];
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:indexPathCopy])
  {
    v7 = 0;
LABEL_8:
    v8 = [NSIndexPath indexPathForRow:v7 inSection:1];

    goto LABEL_9;
  }

  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:indexPathCopy]|| (v8 = indexPathCopy, [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:indexPathCopy]))
  {
    v9 = [indexPathCopy row];
    _numberOfUserRows = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
    if (v9 >= _numberOfUserRows - [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows])
    {
      _numberOfUserRows2 = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
      v7 = (_numberOfUserRows2 - [(BKLibraryCollectionsListViewController *)self _numberOfNewCollectionButtonRows]);
    }

    else
    {
      v7 = [indexPathCopy row];
    }

    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy]&& [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:indexPathCopy])
  {
    [(BKLibraryCollectionsListViewController *)self setChangeIsUserDriven:1];
    userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
    v9 = [userCollections mutableCopy];

    v10 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:pathCopy];
    v11 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:indexPathCopy];
    v12 = [v9 objectAtIndex:v10];
    [v9 removeObjectAtIndex:v10];
    [v9 insertObject:v12 atIndex:v11];
    [(BKLibraryCollectionsListViewController *)self setUserCollections:v9];
    userCollections2 = [(BKLibraryCollectionsListViewController *)self userCollections];
    v14 = +[BKLibraryManager defaultManager];
    [BKUserSortOrderManager saveSortedCollectionsArray:userCollections2 inLibraryManager:v14];
  }
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v5 = [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:path];
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

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    v6 = 0;
  }

  else if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:pathCopy])
  {
    v7 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
    hidden = [v7 hidden];
    bOOLValue = [hidden BOOLValue];

    if (bOOLValue)
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
    v6 = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy]^ 1;
  }

  return v6;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 2)
  {
    [(BKLibraryCollectionsListViewController *)self _concludeHide:0 atIndexPath:path];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self isTextEditing]|| [(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    goto LABEL_3;
  }

  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy])
  {
    v6 = [(BKLibraryCollectionsListViewController *)self deleteSwipeAction:pathCopy];
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
    {
LABEL_3:
      v6 = 0;
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v9 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
    hidden = [v9 hidden];
    bOOLValue = [hidden BOOLValue];

    if (bOOLValue)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(BKLibraryCollectionsListViewController *)self hideSwipeAction:pathCopy];
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

- (id)deleteSwipeAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Delete" value:&stru_100A30A68 table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100178154;
  v12[3] = &unk_100A095B8;
  objc_copyWeak(&v14, &location);
  v7 = actionCopy;
  v13 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:1 title:v6 handler:v12];
  metrics = [(BKLibraryCollectionsListViewController *)self metrics];
  deleteActionColor = [metrics deleteActionColor];
  [v8 setBackgroundColor:deleteActionColor];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (id)hideSwipeAction:(id)action
{
  actionCopy = action;
  objc_initWeak(&location, self);
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Hide" value:&stru_100A30A68 table:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100178378;
  v12[3] = &unk_100A095B8;
  objc_copyWeak(&v14, &location);
  v7 = actionCopy;
  v13 = v7;
  v8 = [UIContextualAction contextualActionWithStyle:0 title:v6 handler:v12];
  metrics = [(BKLibraryCollectionsListViewController *)self metrics];
  hideActionColor = [metrics hideActionColor];
  [v8 setBackgroundColor:hideActionColor];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

- (void)endTextEditAnimationComplete
{
  view = [(BKLibraryCollectionsListViewController *)self view];
  [view setUserInteractionEnabled:1];

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
    textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    textEntryField = [textEntryCell textEntryField];
    text = [textEntryField text];
    v6 = [text length];

    textEntryCell2 = [(BKLibraryCollectionsListViewController *)self textEntryCell];
    [textEntryCell2 removeTextEntryField];

    [(BKLibraryCollectionsListViewController *)self setTextEntryCell:0];
    textEntryCollection = [(BKLibraryCollectionsListViewController *)self textEntryCollection];

    if (textEntryCollection || v6)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      tableView = [(BKLibraryCollectionsListViewController *)self tableView];
      textEntryIndexPath = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
      v12 = textEntryIndexPath;
      v11 = [NSArray arrayWithObjects:&v12 count:1];
      [tableView reloadRowsAtIndexPaths:v11 withRowAnimation:5];

      +[CATransaction commit];
    }

    else
    {
      self->_endEditingMeansTableReload = 1;
    }

    [(BKLibraryCollectionsListViewController *)self endTextEditAnimationComplete];
  }
}

- (BOOL)tableView:(id)view shouldSpringLoadRowAtIndexPath:(id)path withContext:(id)context
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy])
  {
    allowsManualAddition = 1;
  }

  else
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
    allowsManualAddition = [v8 allowsManualAddition];
  }

  return allowsManualAddition;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 1 || !objc_msgSend(pathCopy, "section"))
  {
    delegate = [(BKLibraryCollectionsListViewController *)self delegate];

    if (delegate)
    {
      v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
      if (v8)
      {
        if ([(BKLibraryCollectionsListViewController *)self isAddingToCollection])
        {
          [(BKLibraryCollectionsListViewController *)self _addSelectedToIndexPath:pathCopy];
        }

        else
        {
          delegate2 = [(BKLibraryCollectionsListViewController *)self delegate];
          [delegate2 collectionListView:self collectionSelected:v8];

          [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
        }
      }
    }
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = pathCopy;
  if (([viewCopy hasActiveDrag] & 1) == 0)
  {
    v8 = pathCopy;
    if (([viewCopy hasActiveDrop] & 1) == 0)
    {
      if ([(BKLibraryCollectionsListViewController *)self isEditing])
      {
        textEntryCell = [(BKLibraryCollectionsListViewController *)self textEntryCell];
        textEntryField = [textEntryCell textEntryField];
        isFirstResponder = [textEntryField isFirstResponder];

        if (isFirstResponder)
        {
          [(BKLibraryCollectionsListViewController *)self stopEditButtonPressed:self];
        }

        else if ([(BKLibraryCollectionsListViewController *)self isTextEditing])
        {
          [(BKLibraryCollectionsListViewController *)self endTextEditing];
        }

        else if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy]|| [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
        {
          [(BKLibraryCollectionsListViewController *)self _beginEditingUserCollectionAtIndexPath:pathCopy];
        }

        goto LABEL_17;
      }

      if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy])
      {
        [(BKLibraryCollectionsListViewController *)self addCollection:self];
LABEL_17:
        v8 = 0;
        v14 = pathCopy;
LABEL_18:

        goto LABEL_19;
      }

      v8 = pathCopy;
      if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:pathCopy])
      {
        v12 = [pathCopy row];
        v8 = pathCopy;
        if ([(BKLibraryCollectionsListViewController *)self _numberOfPrefixRows]> v12)
        {
          prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
          v14 = [prefixCollections objectAtIndex:v12];

          if ([(BKLibraryCollectionsListViewController *)self isSelectionEnabledForCollection:v14])
          {
            v8 = pathCopy;
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

- (void)scrollToIndexPath:(id)path animated:(BOOL)animated
{
  pathCopy = path;
  objc_initWeak(&location, self);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100178AC0;
  v8[3] = &unk_100A07068;
  objc_copyWeak(&v10, &location);
  v9 = pathCopy;
  animatedCopy = animated;
  v7 = pathCopy;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
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

  view = [(BKLibraryCollectionsListViewController *)self view];
  [view convertRect:0 fromView:{x, y, width, height}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [userInfo valueForKey:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v24 integerValue];

  v26 = [userInfo valueForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v26 doubleValue];
  v28 = v27;

  [(BKLibraryCollectionsListViewController *)self setKeyboardFrame:v17, v19, v21, v23];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100178D8C;
  v30[3] = &unk_100A033C8;
  v30[4] = self;
  [UIView animateWithDuration:integerValue << 16 delay:v30 options:0 animations:v28 completion:0.0];
  textEntryIndexPath = [(BKLibraryCollectionsListViewController *)self textEntryIndexPath];
  [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:textEntryIndexPath];
}

- (void)keyboardWillHide:(id)hide
{
  userInfo = [hide userInfo];
  v5 = [userInfo valueForKey:UIKeyboardAnimationCurveUserInfoKey];
  integerValue = [v5 integerValue];

  v7 = [userInfo valueForKey:UIKeyboardAnimationDurationUserInfoKey];
  [v7 doubleValue];
  v9 = v8;

  [(BKLibraryCollectionsListViewController *)self setKeyboardFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100178EAC;
  v10[3] = &unk_100A033C8;
  v10[4] = self;
  [UIView animateWithDuration:integerValue << 16 delay:v10 options:0 animations:v9 completion:0.0];
}

- (void)keyboardDidHide:(id)hide
{
  postKeyboardIndexPath = [(BKLibraryCollectionsListViewController *)self postKeyboardIndexPath];

  if (postKeyboardIndexPath)
  {
    postKeyboardIndexPath2 = [(BKLibraryCollectionsListViewController *)self postKeyboardIndexPath];
    [(BKLibraryCollectionsListViewController *)self scrollToIndexPath:postKeyboardIndexPath2];

    [(BKLibraryCollectionsListViewController *)self setPostKeyboardIndexPath:0];
  }
}

- (id)_iconForIndexPath:(id)path metrics:(id)metrics pointSize:(double)size
{
  pathCopy = path;
  metricsCopy = metrics;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    collectionIconName_Add = [metricsCopy collectionIconName_Add];
  }

  else
  {
    v10 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
    collectionID = [v10 collectionID];
    collectionIconName_Add = [(BKLibraryCollectionsListViewController *)self _iconNameForCollectionID:collectionID metrics:metricsCopy];
  }

  v13 = collectionIconName_Add;
  if (v13)
  {
    iconCache = [(BKLibraryCollectionsListViewController *)self iconCache];
    v15 = [iconCache objectForKey:v13];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v33 = +[BSUITemplate manager];
      imageResourceCache = [v33 imageResourceCache];
      view = [(BKLibraryCollectionsListViewController *)self view];
      _screen = [view _screen];
      [_screen scale];
      LOBYTE(v32) = 1;
      v21 = [imageResourceCache symbolImageWithName:v13 compatibleWithFontSize:4 weight:3 scale:0 renderingMode:0 colors:0 style:size contentsScale:v20 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v32}];
      newImageWithoutContentInsets = [v21 newImageWithoutContentInsets];

      if (!newImageWithoutContentInsets)
      {
        v23 = BSUIBundle();
        v24 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:size];
        newImageWithoutContentInsets = [UIImage imageNamed:v13 inBundle:v23 withConfiguration:v24];
      }

      [metricsCopy collectionGlyphPointSize];
      [metricsCopy collectionIconSize];
      CGSizeScale();
      v26 = v25;
      v28 = v27;
      v29 = +[UIColor systemBlackColor];
      v30 = [UIImage im_imageWithCenteredIconImage:newImageWithoutContentInsets iconColor:v29 size:v26, v28];

      v16 = [v30 imageWithRenderingMode:2];

      if (v16)
      {
        if (!iconCache)
        {
          iconCache = objc_alloc_init(NSMutableDictionary);
          [(BKLibraryCollectionsListViewController *)self setIconCache:iconCache];
        }

        [iconCache setObject:v16 forKey:v13];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_iconColorForIndexPath:(id)path metrics:(id)metrics
{
  pathCopy = path;
  metricsCopy = metrics;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    collectionIconColor_Add = [metricsCopy collectionIconColor_Add];
  }

  else
  {
    v8 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
    collectionID = [v8 collectionID];
    if ([collectionID isEqualToString:kBKCollectionDefaultIDBooks])
    {
      collectionIconColor_Books = [metricsCopy collectionIconColor_Books];
    }

    else if ([collectionID isEqualToString:kBKCollectionDefaultIDAudiobooks])
    {
      collectionIconColor_Books = [metricsCopy collectionIconColor_Audiobooks];
    }

    else if ([collectionID isEqualToString:kBKCollectionDefaultIDPDFs])
    {
      collectionIconColor_Books = [metricsCopy collectionIconColor_PDFs];
    }

    else if ([collectionID isEqualToString:kBKCollectionDefaultIDDownloaded])
    {
      collectionIconColor_Books = [metricsCopy collectionIconColor_Downloaded];
    }

    else if ([collectionID isEqualToString:kBKCollectionDefaultIDWantToRead] || objc_msgSend(collectionID, "isEqualToString:", kBKCollectionDefaultIDSamples))
    {
      collectionIconColor_Books = [metricsCopy collectionIconColor_WantToRead];
    }

    else
    {
      if ([collectionID isEqualToString:kBKCollectionDefaultIDFinished])
      {
        [metricsCopy collectionIconColor_Finished];
      }

      else
      {
        [metricsCopy collectionIconColor_User];
      }
      collectionIconColor_Books = ;
    }

    collectionIconColor_Add = collectionIconColor_Books;
  }

  return collectionIconColor_Add;
}

- (id)_iconNameForCollectionID:(id)d metrics:(id)metrics
{
  dCopy = d;
  metricsCopy = metrics;
  if ([dCopy isEqualToString:kBKCollectionDefaultIDBooks])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_Books];
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_WantToRead];
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDSamples])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_Samples];
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDAudiobooks])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_Audiobooks];
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDPDFs])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_PDFs];
  }

  else if ([dCopy isEqualToString:kBKCollectionDefaultIDDownloaded])
  {
    collectionIconName_Books = [metricsCopy collectionIconName_Downloaded];
  }

  else
  {
    if ([dCopy isEqualToString:kBKCollectionDefaultIDFinished])
    {
      [metricsCopy collectionIconName_Finished];
    }

    else
    {
      [metricsCopy collectionIconName_User];
    }
    collectionIconName_Books = ;
  }

  v8 = collectionIconName_Books;

  return v8;
}

- (unint64_t)_numberOfPrefixRows
{
  prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
  v3 = [prefixCollections count];

  return v3;
}

- (unint64_t)_numberOfUserRows
{
  userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
  v3 = [userCollections count];

  return v3;
}

- (id)_indexPathForCollectionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100179790;
    v17[3] = &unk_100A095E0;
    v6 = dCopy;
    v18 = v6;
    v7 = [userCollections indexOfObjectPassingTest:v17];

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1001797D4;
      v15 = &unk_100A095E0;
      v16 = v6;
      v9 = [prefixCollections indexOfObjectPassingTest:&v12];

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

- (id)_indexPathForCollection:(id)collection
{
  collectionCopy = collection;
  userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
  v6 = [userCollections indexOfObject:collectionCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
    v8 = [prefixCollections indexOfObject:collectionCopy];

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

- (unint64_t)_collectionIndexForIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:pathCopy]|| [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy])
  {
    v5 = [pathCopy row];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (id)_collectionForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:pathCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:pathCopy])
    {
      prefixCollections = [(BKLibraryCollectionsListViewController *)self prefixCollections];
      v8 = [prefixCollections count];

      if (v6 < v8)
      {
        prefixCollections2 = [(BKLibraryCollectionsListViewController *)self prefixCollections];
LABEL_7:
        v10 = prefixCollections2;
        v11 = [prefixCollections2 objectAtIndex:v6];

        goto LABEL_9;
      }
    }

    if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy])
    {
      prefixCollections2 = [(BKLibraryCollectionsListViewController *)self userCollections];
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)_indexPathIsUser:(id)user
{
  userCopy = user;
  if ([userCopy section] == 1)
  {
    v5 = [userCopy row];
    v6 = v5 < [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_indexPathIsNewCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy section] == 1)
  {
    v5 = [collectionCopy row];
    v6 = v5 == [(BKLibraryCollectionsListViewController *)self _numberOfUserRows]+ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setSelectionState:(BOOL)state cell:(id)cell atIndexPath:(id)path
{
  if (state)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [cell setAccessoryType:v5];
}

- (void)_configureCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  v7 = BUDynamicCast();
  metrics = [(BKLibraryCollectionsListViewController *)self metrics];
  [v7 setMetrics:metrics];
  textLabel = [cellCopy textLabel];
  detailTextLabel = [cellCopy detailTextLabel];
  [(BKLibraryCollectionsListViewController *)self _setSelectionState:0 cell:cellCopy atIndexPath:pathCopy];
  [cellCopy setSelected:0];
  if ([pathCopy section] != 1 && objc_msgSend(pathCopy, "section"))
  {
    v11 = 0;
    goto LABEL_32;
  }

  isEditing = [(BKLibraryCollectionsListViewController *)self isEditing];
  v12 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:pathCopy];
  v51 = detailTextLabel;
  if (v12)
  {
    textEntryCollection = [(BKLibraryCollectionsListViewController *)self textEntryCollection];
    v14 = textEntryCollection;
    if (textEntryCollection == v12)
    {
      isTextEditing = [(BKLibraryCollectionsListViewController *)self isTextEditing];

      if (isTextEditing)
      {
        localizedTitle = 0;
LABEL_11:
        [cellCopy setUserInteractionEnabled:{-[BKLibraryCollectionsListViewController isSelectionEnabledForCollection:](self, "isSelectionEnabledForCollection:", v12)}];
        if ([(BKLibraryCollectionsListViewController *)self _indexPathIsPrefix:pathCopy])
        {
          hidden = [v12 hidden];
          if ([hidden BOOLValue])
          {
            v18 = 1;
          }

          else
          {
            v18 = [cellCopy isUserInteractionEnabled] ^ 1;
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
          v22 = metrics;
          v24 = v23 = localizedTitle;

          v50 = [NSString localizedStringWithFormat:v24, v20];

          localizedTitle = v23;
          metrics = v22;
          detailTextLabel = v51;
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

    localizedTitle = [v12 localizedTitle];
    goto LABEL_11;
  }

  v50 = 0;
  localizedTitle = 0;
  v48 = 0;
LABEL_20:
  v52 = v12;
  if ([(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy]&& ![(BKLibraryCollectionsListViewController *)self isTextEditing])
  {
    v25 = +[NSBundle mainBundle];
    v26 = [v25 localizedStringForKey:@"New Collection…" value:&stru_100A30A68 table:0];

    [cellCopy setUserInteractionEnabled:isEditing ^ 1];
    v48 = [cellCopy isUserInteractionEnabled] ^ 1;
    localizedTitle = v26;
  }

  v45 = localizedTitle;
  [textLabel setText:localizedTitle];
  imageView = [cellCopy imageView];
  v46 = textLabel;
  font = [textLabel font];
  [font pointSize];
  v29 = [(BKLibraryCollectionsListViewController *)self _iconForIndexPath:pathCopy metrics:metrics pointSize:?];
  [imageView setImage:v29];

  v30 = [(BKLibraryCollectionsListViewController *)self _iconColorForIndexPath:pathCopy metrics:metrics];
  [imageView setTintColor:v30];

  [detailTextLabel setText:v50];
  v47 = v7;
  chevron = [v7 chevron];
  chevronFontAttributes = [metrics chevronFontAttributes];
  font2 = [chevronFontAttributes font];
  v34 = 1;
  v35 = [UIImageSymbolConfiguration configurationWithFont:font2 scale:1];

  chevronName = [metrics chevronName];
  v37 = [UIImage systemImageNamed:chevronName];
  v38 = [v37 imageWithConfiguration:v35];

  [chevron setImage:v38];
  chevronFontAttributes2 = [metrics chevronFontAttributes];
  foregroundColor = [chevronFontAttributes2 foregroundColor];
  [chevron setTintColor:foregroundColor];

  if (![(BKLibraryCollectionsListViewController *)self isAddingToCollection])
  {
    v34 = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:pathCopy];
  }

  [chevron setHidden:v34];
  v41 = 1.0;
  if (isEditing)
  {
    v41 = 0.0;
  }

  [v51 setAlpha:v41];
  selectedCollection = [(BKLibraryCollectionsListViewController *)self selectedCollection];

  if (v52)
  {
    if (selectedCollection)
    {
      selectedCollection2 = [(BKLibraryCollectionsListViewController *)self selectedCollection];
      v44 = [selectedCollection2 isEqualToCollection:v52];

      if (v44)
      {
        [(BKLibraryCollectionsListViewController *)self _setSelectionState:1 cell:cellCopy atIndexPath:pathCopy];
      }
    }
  }

  textLabel = v46;
  v7 = v47;
  detailTextLabel = v51;
  v11 = v48;
LABEL_32:
  [v7 setDimmed:v11];
  [v7 setAccessibilityDelegate:self];
}

- (id)_addCollectionIndexPath
{
  _numberOfUserRows = [(BKLibraryCollectionsListViewController *)self _numberOfUserRows];

  return [NSIndexPath indexPathForRow:_numberOfUserRows inSection:1];
}

- (BOOL)_isAddCollectionIndexPath:(id)path
{
  pathCopy = path;
  if ([(BKLibraryCollectionsListViewController *)self wantsAddCollectionRow])
  {
    _addCollectionIndexPath = [(BKLibraryCollectionsListViewController *)self _addCollectionIndexPath];
    v6 = [pathCopy isEqual:_addCollectionIndexPath];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addSelectedToIndexPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v58 = pathCopy;
    tableView = [(BKLibraryCollectionsListViewController *)self tableView];
    [tableView rectForRowAtIndexPath:v58];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    tableView2 = [(BKLibraryCollectionsListViewController *)self tableView];
    view = [(BKLibraryCollectionsListViewController *)self view];
    [tableView2 convertRect:view toView:{v7, v9, v11, v13}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v24 = [(BKLibraryCollectionsListViewController *)self _collectionForIndexPath:v58];
    assetIDs = [(BKLibraryCollectionsListViewController *)self assetIDs];
    if ([assetIDs count])
    {
      v26 = 0;
      v60 = kBKCollectionDefaultIDWantToRead;
      v59 = kBKCollectionDefaultIDFinished;
      v62 = v24;
      selfCopy = self;
      v61 = assetIDs;
      while (1)
      {
        ba_effectiveAnalyticsTracker = [(BKLibraryCollectionsListViewController *)self ba_effectiveAnalyticsTracker];
        v28 = [assetIDs objectAtIndexedSubscript:v26];
        knownAssetTypes = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
        v67 = ba_effectiveAnalyticsTracker;
        if ([knownAssetTypes count] <= v26)
        {
          v31 = 0;
        }

        else
        {
          knownAssetTypes2 = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
          v31 = [knownAssetTypes2 objectAtIndexedSubscript:v26];
        }

        knownStoreAssetIDs = [(BKLibraryCollectionsListViewController *)self knownStoreAssetIDs];
        v33 = [knownStoreAssetIDs containsObject:v28];

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
        libraryAssetProvider = [v36 libraryAssetProvider];

        v65 = libraryAssetProvider;
        v38 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:v28];
        supplementalContentAssets = [v38 supplementalContentAssets];
        v40 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supplementalContentAssets count]);

        v41 = +[BAEventReporter sharedReporter];
        v42 = [v41 seriesTypeForContentID:v28];

        v64 = v26;
        if ([v38 isAudiobook])
        {
          hasRACSupport = [v38 hasRACSupport];
          v44 = [hasRACSupport BOOLValue] ? 1 : 2;
        }

        else
        {
          v44 = 0;
        }

        v45 = +[BAEventReporter sharedReporter];
        [v24 collectionID];
        v47 = v46 = v24;
        [v45 emitAddToCollectionEventWithTracker:v67 collectionID:v47 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];

        collectionID = [v46 collectionID];
        LODWORD(v47) = [collectionID isEqualToString:v60];

        if (v47)
        {
          break;
        }

        collectionID2 = [v46 collectionID];
        v55 = [collectionID2 isEqualToString:v59];

        assetIDs = v61;
        v53 = v38;
        if (v55)
        {
          engagementManager = +[BAEventReporter sharedReporter];
          [engagementManager emitMarkAsFinishedEventWithTracker:v67 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];
          goto LABEL_22;
        }

LABEL_23:

        ++v26;
        v24 = v62;
        self = selfCopy;
        if (v64 + 1 >= [assetIDs count])
        {
          goto LABEL_24;
        }
      }

      v49 = +[BAEventReporter sharedReporter];
      [v49 emitWantListAddEventWithTracker:v67 contentID:v28 contentAcquisitionType:v69 contentType:v68 supplementalContentCount:v40 seriesType:v42 productionType:v44];

      v50 = +[BKAppDelegate delegate];
      engagementManager = [v50 engagementManager];

      sessionDonor = [engagementManager sessionDonor];
      [sessionDonor reportAddToWTRButtonUsed];

      assetIDs = v61;
      v53 = v38;
LABEL_22:

      goto LABEL_23;
    }

LABEL_24:
    delegate = [(BKLibraryCollectionsListViewController *)self delegate];
    knownAssetTypes3 = [(BKLibraryCollectionsListViewController *)self knownAssetTypes];
    [delegate collectionListView:self addSelectedAssetIDs:assetIDs toCollection:v24 knownAssetTypes:knownAssetTypes3 animationDestination:{v17, v19, v21, v23}];

    pathCopy = v58;
  }
}

- (void)_beginEditingUserCollectionAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(BKLibraryCollectionsListViewController *)self _collectionIndexForIndexPath:pathCopy];
  if ([(BKLibraryCollectionsListViewController *)self _indexPathIsUser:pathCopy])
  {
    userCollections = [(BKLibraryCollectionsListViewController *)self userCollections];
    v7 = [userCollections count];

    if (v7 > v5)
    {
      userCollections2 = [(BKLibraryCollectionsListViewController *)self userCollections];
      v9 = [userCollections2 objectAtIndex:v5];

      [(BKLibraryCollectionsListViewController *)self setTextEntryCollection:v9];
      [(BKLibraryCollectionsListViewController *)self setTextEntryIndexPath:pathCopy];
      self->_textEditing = 1;
      [(BKLibraryCollectionsListViewController *)self tableView];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_10017A824;
      v17 = v16 = &unk_100A03440;
      v18 = pathCopy;
      v10 = v17;
      [v10 performBatchUpdates:&v13 completion:0];
      v11 = [(BKLibraryCollectionsListViewController *)self textEntryCell:v13];
      textEntryField = [v11 textEntryField];
      [textEntryField becomeFirstResponder];
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
      popoverPresentationController = [(BKLibraryCollectionsListViewController *)v4 popoverPresentationController];

      if (popoverPresentationController)
      {
        break;
      }

      parentViewController = [(BKLibraryCollectionsListViewController *)v4 parentViewController];

      v4 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_8;
      }
    }

    parentViewController = [(BKLibraryCollectionsListViewController *)v4 popoverPresentationController];
  }

  else
  {
    parentViewController = 0;
  }

LABEL_8:

  return parentViewController;
}

- (void)p_updateTableViewFromMetrics:(id)metrics
{
  if (metrics)
  {
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [metrics collectionIconSize];
    v7 = v6 + 8.0;
    tableView = [(BKLibraryCollectionsListViewController *)self tableView];
    [tableView setSeparatorInset:{UIEdgeInsetsZero.top, v7, bottom, right}];

    tableView2 = [(BKLibraryCollectionsListViewController *)self tableView];
    [tableView2 setSeparatorInsetReference:1];
  }
}

- (void)setMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_metrics != metricsCopy)
  {
    objc_storeStrong(&self->_metrics, metrics);
    [(BKLibraryCollectionsListViewController *)self setIconCache:0];
    [(BKLibraryCollectionsListViewController *)self p_updateTableViewFromMetrics:metricsCopy];
    [(BKLibraryCollectionsListViewController *)self _updateBarButtonsAnimated:0];
    tableView = [(BKLibraryCollectionsListViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10017AB14;
    v9[3] = &unk_100A09608;
    v10 = tableView;
    selfCopy = self;
    v12 = metricsCopy;
    v8 = tableView;
    [indexPathsForVisibleRows enumerateObjectsUsingBlock:v9];
  }
}

- (void)_analyticsSubmitBrowseCollectionScreenViewEventWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v3 = objc_opt_new();
  v42 = +[BKLibraryManager defaultManager];
  collectionProvider = [v42 collectionProvider];
  selectableDefaultCollections = [collectionProvider selectableDefaultCollections];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = selectableDefaultCollections;
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
        collectionID = [v11 collectionID];
        members = [v11 members];
        v15 = [v12 initWithCollectionID:collectionID collectionMemberCount:{objc_msgSend(members, "count")}];

        [v3 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v8);
  }

  v16 = v42;
  uiChildContext = [v42 uiChildContext];
  v18 = objc_alloc_init(NSFetchRequest);
  v19 = [NSEntityDescription entityForName:@"BKCollection" inManagedObjectContext:uiChildContext];
  [v18 setEntity:v19];

  v20 = [[NSSortDescriptor alloc] initWithKey:@"sortKey" ascending:1];
  v52 = v20;
  v21 = [NSArray arrayWithObjects:&v52 count:1];
  [v18 setSortDescriptors:v21];

  v22 = +[BKCollection predicateForNonDeletedUserCollections];
  [v18 setPredicate:v22];

  v23 = [[NSFetchedResultsController alloc] initWithFetchRequest:v18 managedObjectContext:uiChildContext sectionNameKeyPath:0 cacheName:0];
  if ([v23 performFetch:0])
  {
    v38 = v18;
    v39 = uiChildContext;
    fetchedObjects = [v23 fetchedObjects];
    v25 = [NSMutableArray arrayWithArray:fetchedObjects];

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
          collectionID2 = [v31 collectionID];
          members2 = [v31 members];
          v35 = [v32 initWithCollectionID:collectionID2 collectionMemberCount:{objc_msgSend(members2, "count")}];

          [v3 addObject:v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v28);
    }

    v16 = v42;
    v18 = v38;
    uiChildContext = v39;
  }

  v36 = [[BACollectionSummaryData alloc] initWithCollectionSummary:v3];
  v37 = +[BAEventReporter sharedReporter];
  [v37 emitBrowseCollectionScreenViewEventWithTracker:trackerCopy startDate:self->_analyticsAppearDate summaryData:v36];
}

- (BOOL)bkaxIsCustomCollectionCell:(id)cell
{
  cellCopy = cell;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [tableView indexPathForCell:cellCopy];

  LOBYTE(self) = [(BKLibraryCollectionsListViewController *)self _indexPathIsUser:v6];
  return self;
}

- (BOOL)bkaxIsButton:(id)button
{
  buttonCopy = button;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [tableView indexPathForCell:buttonCopy];

  LOBYTE(self) = [(BKLibraryCollectionsListViewController *)self _isAddCollectionIndexPath:v6];
  return self;
}

- (BOOL)bkaxIsLastCollection:(id)collection
{
  collectionCopy = collection;
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v6 = [tableView numberOfSections] - 1;

  tableView2 = [(BKLibraryCollectionsListViewController *)self tableView];
  v8 = [tableView2 numberOfRowsInSection:v6] - 1;

  tableView3 = [(BKLibraryCollectionsListViewController *)self tableView];
  v10 = [tableView3 indexPathForCell:collectionCopy];

  v11 = [v10 row] == v8 && objc_msgSend(v10, "section") == v6;
  return v11;
}

- (void)bkaxPerformHide:(id)hide
{
  hideCopy = hide;
  v5 = objc_initWeak(&location, self);
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [tableView indexPathForCell:hideCopy];

  v8 = objc_loadWeakRetained(&location);
  [v8 _concludeHide:1 atIndexPath:v7];

  objc_destroyWeak(&location);
}

- (void)bkaxPerformShow:(id)show
{
  showCopy = show;
  v5 = objc_initWeak(&location, self);
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [tableView indexPathForCell:showCopy];

  v8 = objc_loadWeakRetained(&location);
  [v8 _concludeHide:0 atIndexPath:v7];

  objc_destroyWeak(&location);
}

- (void)bkaxPerformRename:(id)rename
{
  renameCopy = rename;
  v5 = objc_initWeak(&location, self);
  tableView = [(BKLibraryCollectionsListViewController *)self tableView];
  v7 = [tableView indexPathForCell:renameCopy];

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
@interface BKLibraryBookshelfCollectionViewController
- (BKLibraryBookshelfCollectionViewController)init;
- (BOOL)_isErrorFromUserCanceled:(id)canceled;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canSelectItemAtIndexPath:(id)path;
- (BOOL)coverAnimationHostIsFullyVisible:(id)visible;
- (BOOL)coverEffectsNightMode;
- (BOOL)editableCollection;
- (BOOL)hasAnyDeletableBookSelected;
- (BOOL)hasAnySeriesContainerInLibraryAssets:(id)assets;
- (BOOL)hasAnySeriesContainerSelected;
- (BOOL)hasSelectedItems;
- (BOOL)isAudiobookAtIndexpath:(id)indexpath;
- (BOOL)isSeriesCollection;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)reorderableCollection;
- (BOOL)shouldAllowCellSelection;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGPoint)previousContentOffset;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (NSArray)selectedBooks;
- (UIViewController)presentedReadingListPopover;
- (id)_contentDataForContentID:(id)d tracker:(id)tracker;
- (id)_dci_collectionView:(id)view contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)_libraryAssetWithContentID:(id)d;
- (id)_supplementalContentCount;
- (id)_transactionForStorePresentingAction;
- (id)bkaxLabel;
- (id)booksAtIndexPaths:(id)paths;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)coverAnimationHostSourceForItem:(id)item;
- (id)indexPathForCell:(id)cell;
- (id)navigationItem;
- (int64_t)_contentTypeForContentID:(id)d withLibraryAsset:(id)asset;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSelectedBooksToReadingList:(id)list completion:(id)completion;
- (void)_addToCollectionAttemptForItemsAtIndexPaths:(id)paths;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_bkAccessibilityFocusCollectionView;
- (void)_configureSupplementalContentPDFPicker;
- (void)_didChangePreferredContentSize:(id)size;
- (void)_dismissIfSupplementContentPDFPicker;
- (void)_dismissOverlayViewController:(id)controller;
- (void)_downloadBook:(id)book;
- (void)_downloadSample:(id)sample completion:(id)completion;
- (void)_emitAllInSeriesViewEventIfNeeded;
- (void)_openBook:(id)book completion:(id)completion;
- (void)_openStoreSample:(id)sample;
- (void)_playPreview:(id)preview completion:(id)completion;
- (void)_presentUsingBlock:(id)block;
- (void)_refreshSeriesContainer:(id)container;
- (void)_removalAttemptForItemsAtIndexPaths:(id)paths sourceBarButtonItem:(id)item;
- (void)_setCollectionViewSelectionFollowsFocus;
- (void)_showBooksInSectionAtIndexPath:(id)path;
- (void)_showInternetReachabilityErrorAlert:(id)alert;
- (void)_showOverlayViewController:(id)controller;
- (void)_showPopoverViewController:(id)controller fromItem:(id)item completion:(id)completion;
- (void)addDoneButton:(BOOL)button forPresentationController:(id)controller;
- (void)addForSelectedItems:(id)items;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bc_environmentDidChangeFont;
- (void)bc_tabBarControllerWillSelectViewController:(id)controller;
- (void)bookTapped:(id)tapped completion:(id)completion;
- (void)books_addSelectionToCollection:(id)collection;
- (void)books_createCollection:(id)collection;
- (void)books_createCollectionFromSelection:(id)selection;
- (void)cancelButtonPressed:(id)pressed;
- (void)cancelDownloadBook:(id)book;
- (void)changeSortModeTo:(unint64_t)to;
- (void)changeViewModeTo:(unint64_t)to;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path;
- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator;
- (void)configureForDragAndDropSession;
- (void)coverAnimationHostScrollToMakeVisible:(id)visible;
- (void)createSeriesViewControllerFromSeriesContainer:(BKLibraryAsset *)container withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker completion:(id)completion;
- (void)dealloc;
- (void)deleteBooks:(id)books sourceBarButtonItem:(id)item completion:(id)completion;
- (void)deselectAll;
- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated;
- (void)didBecomeVisibleContentScrollView;
- (void)didUpdateLibraryBookshelfLayout:(id)layout;
- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters completion:(id)completion;
- (void)dismissPDFPicker;
- (void)dismissReadingListPopover;
- (void)dragAndDropSessionDidEnd;
- (void)dragAndDropSessionDidStart;
- (void)editButtonPressed:(id)pressed;
- (void)explicitContentRestrictedChanged;
- (void)largeTitleVisibilityDidChangeWithIsVisible:(BOOL)visible;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openItemAtIndexPath:(id)path completion:(id)completion;
- (void)openSelectedBooks;
- (void)openSeriesContainer:(id)container;
- (void)preferredContentSizeChanged:(id)changed;
- (void)presentReadingListsPopoverFromItem:(id)item completion:(id)completion;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)reloadData;
- (void)removeForSelectedItems;
- (void)removeForSelectedItems:(id)items;
- (void)resumeDownloadBook:(id)book;
- (void)scrollToMakeLibraryAssetIDVisible:(id)visible;
- (void)selectAll;
- (void)selectAllButtonPressed:(id)pressed;
- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)setCollection:(id)collection;
- (void)setDataSourceAdaptor:(id)adaptor;
- (void)setDragDelegate:(id)delegate;
- (void)setDropDelegate:(id)delegate;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)shareSelectedItemFromBarButtonItem:(id)item;
- (void)showReadingListsForActionHandler:(id)handler;
- (void)sortModeChanged;
- (void)toggleAccessibilityIfNeeded;
- (void)updateActionBarForSelection;
- (void)updateActionBarFromMetrics;
- (void)updateBarButtonsAnimated:(BOOL)animated;
- (void)updateTabBarControllerForEditing:(BOOL)editing;
- (void)updateTitleFromMetrics;
- (void)updateViewModeIfNeeded;
- (void)validateCommand:(id)command;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewModeChanged;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation BKLibraryBookshelfCollectionViewController

- (BKLibraryBookshelfCollectionViewController)init
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfCollectionViewController;
  v2 = [(BKLibraryBookshelfCollectionViewController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_isFirstLayout = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"_didChangePreferredContentSize:" name:UIContentSizeCategoryDidChangeNotification object:0];

    v5 = objc_opt_self();
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [(BKLibraryBookshelfCollectionViewController *)v3 registerForTraitChanges:v6 withAction:"horizontalSizeClassDidChange"];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKCollection *)self->_collection removeObserver:self forKeyPath:@"sortMode" context:off_100ACD3B8];
  [(BKCollection *)self->_collection removeObserver:self forKeyPath:@"localizedTitle" context:off_100ACD3C0];
  [(BKLibraryDataSourceAdaptor *)self->_dataSourceAdaptor removeObserver:self forKeyPath:@"currentStoreAccountID" context:off_100ACD3C8];
  [(BKCollection *)self->_allBooksCollection removeObserver:self forKeyPath:@"viewMode" context:off_100ACD3D0];
  collection = self->_collection;
  self->_collection = 0;

  dataSourceAdaptor = self->_dataSourceAdaptor;
  self->_dataSourceAdaptor = 0;

  allBooksCollection = self->_allBooksCollection;
  self->_allBooksCollection = 0;

  v7 = +[BURestrictionsProvider sharedInstance];
  [v7 removeObserver:self];

  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v8 dealloc];
}

- (id)navigationItem
{
  bsuiNavigationItem = self->_bsuiNavigationItem;
  if (!bsuiNavigationItem)
  {
    v4 = [BSUINavigationItem alloc];
    title = [(BKLibraryBookshelfCollectionViewController *)self title];
    v6 = [v4 initWithTitle:title];
    v7 = self->_bsuiNavigationItem;
    self->_bsuiNavigationItem = v6;

    bsuiNavigationItem = self->_bsuiNavigationItem;
  }

  return bsuiNavigationItem;
}

- (void)setCollection:(id)collection
{
  collectionCopy = collection;
  collection = self->_collection;
  if (collection != collectionCopy)
  {
    v7 = collectionCopy;
    [(BKCollection *)collection removeObserver:self forKeyPath:@"sortMode" context:off_100ACD3B8];
    [(BKCollection *)self->_collection removeObserver:self forKeyPath:@"localizedTitle" context:off_100ACD3C0];
    objc_storeStrong(&self->_collection, collection);
    [(BKCollection *)self->_collection addObserver:self forKeyPath:@"sortMode" options:0 context:off_100ACD3B8];
    [(BKCollection *)self->_collection addObserver:self forKeyPath:@"localizedTitle" options:0 context:off_100ACD3C0];
    collectionCopy = v7;
  }
}

- (void)setDataSourceAdaptor:(id)adaptor
{
  adaptorCopy = adaptor;
  dataSourceAdaptor = self->_dataSourceAdaptor;
  if (dataSourceAdaptor != adaptorCopy)
  {
    v16 = adaptorCopy;
    [(BKLibraryDataSourceAdaptor *)dataSourceAdaptor removeObserver:self forKeyPath:@"currentStoreAccountID" context:off_100ACD3C8];
    [(BKCollection *)self->_allBooksCollection removeObserver:self forKeyPath:@"viewMode" context:off_100ACD3D0];
    objc_storeStrong(&self->_dataSourceAdaptor, adaptor);
    supplementaryDataSource = [(BKLibraryDataSourceAdaptor *)v16 supplementaryDataSource];
    canChangeViewMode = [supplementaryDataSource canChangeViewMode];

    allBooksCollection = self->_allBooksCollection;
    if (canChangeViewMode)
    {
      if (allBooksCollection)
      {
LABEL_7:
        [(BKLibraryDataSourceAdaptor *)self->_dataSourceAdaptor addObserver:self forKeyPath:@"currentStoreAccountID" options:0 context:off_100ACD3C8];
        [(BKCollection *)self->_allBooksCollection addObserver:self forKeyPath:@"viewMode" options:0 context:off_100ACD3D0];
        adaptorCopy = v16;
        goto LABEL_8;
      }

      allBooksCollection = +[BKLibraryManager defaultManager];
      collectionController = [allBooksCollection collectionController];
      v11 = kBKCollectionDefaultAll;
      v12 = +[BKLibraryManager defaultManager];
      uiChildContext = [v12 uiChildContext];
      v14 = [collectionController mutableCollectionWithCollectionID:v11 inManagedObjectContext:uiChildContext error:0];
      v15 = self->_allBooksCollection;
      self->_allBooksCollection = v14;
    }

    else
    {
      self->_allBooksCollection = 0;
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_100ACD3C8 == context)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000B22C8;
    v24[3] = &unk_100A033C8;
    v24[4] = self;
    v13 = v24;
LABEL_9:
    dispatch_async(&_dispatch_main_q, v13);
    goto LABEL_10;
  }

  if (off_100ACD3D0 == context)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B22D0;
    v23[3] = &unk_100A033C8;
    v23[4] = self;
    v13 = v23;
    goto LABEL_9;
  }

  if (off_100ACD3B8 == context)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B234C;
    block[3] = &unk_100A033C8;
    block[4] = self;
    v13 = block;
    goto LABEL_9;
  }

  if (off_100ACD3C0 == context)
  {
    collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
    isDefaultCollection = [collection isDefaultCollection];

    if ((isDefaultCollection & 1) == 0)
    {
      collection2 = [(BKLibraryBookshelfCollectionViewController *)self collection];
      localizedTitle = [collection2 localizedTitle];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B2420;
      v20[3] = &unk_100A03440;
      v20[4] = self;
      v21 = localizedTitle;
      v18 = localizedTitle;
      dispatch_async(&_dispatch_main_q, v20);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BKLibraryBookshelfCollectionViewController;
    [(BKLibraryBookshelfCollectionViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_10:
}

- (void)_didChangePreferredContentSize:(id)size
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (void)changeViewModeTo:(unint64_t)to
{
  allBooksCollection = [(BKLibraryBookshelfCollectionViewController *)self allBooksCollection];
  if (allBooksCollection)
  {
    v5 = [NSNumber numberWithUnsignedInteger:to];
    v6 = [allBooksCollection setDifferentNumber:v5 forKey:@"viewMode"];

    if (v6)
    {
      v7 = +[BKLibraryManager defaultManager];
      managedObjectContext = [allBooksCollection managedObjectContext];
      [v7 saveManagedObjectContext:managedObjectContext];
    }
  }

  else
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    [supplementaryDataSource setViewMode:to];

    [(BKLibraryBookshelfCollectionViewController *)self viewModeChanged];
  }
}

- (void)updateViewModeIfNeeded
{
  if (self->_needsUpdateViewMode)
  {
    self->_needsUpdateViewMode = 0;
    allBooksCollection = [(BKLibraryBookshelfCollectionViewController *)self allBooksCollection];
    resolvedViewMode = [allBooksCollection resolvedViewMode];

    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    viewMode = [supplementaryDataSource viewMode];

    if (viewMode != resolvedViewMode)
    {
      dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      supplementaryDataSource2 = [dataSourceAdaptor2 supplementaryDataSource];
      [supplementaryDataSource2 setViewMode:resolvedViewMode];

      [(BKLibraryBookshelfCollectionViewController *)self viewModeChanged];
    }
  }
}

- (void)changeSortModeTo:(unint64_t)to
{
  if (to - 11 < 0xFFFFFFFFFFFFFFF6)
  {
    toCopy = 1;
  }

  else
  {
    toCopy = to;
  }

  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  if (collection)
  {
    v5 = [NSNumber numberWithUnsignedInteger:toCopy];
    v6 = [collection setDifferentNumber:v5 forKey:@"sortMode"];

    if (v6)
    {
      v7 = +[BKLibraryManager defaultManager];
      managedObjectContext = [collection managedObjectContext];
      [v7 saveManagedObjectContext:managedObjectContext];
    }
  }

  else
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    [supplementaryDataSource setSortMode:toCopy];

    if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
    {
      [BKCollection setSortModeForSeriesCollections:toCopy];
      [(BKLibraryBookshelfCollectionViewController *)self _emitAllInSeriesViewEventIfNeeded];
    }

    [(BKLibraryBookshelfCollectionViewController *)self sortModeChanged];
  }
}

- (void)bc_environmentDidChangeFont
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (BOOL)isSeriesCollection
{
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  collectionIsSeries = [supplementaryDataSource collectionIsSeries];

  return collectionIsSeries;
}

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resume removing from My Samples as app is now background", v7, 2u);
  }

  v5 = +[BSUIStoreServices sharedInstance];
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  [v5 resumeRemovingFromMySamplesWithTracker:ba_effectiveAnalyticsTracker];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  v3 = BKLibraryLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pause removing from My Samples as app is now foreground", v5, 2u);
  }

  v4 = +[BSUIStoreServices sharedInstance];
  [v4 pauseRemovingFromMySamples];
}

- (id)_supplementalContentCount
{
  v3 = +[BKLibraryManager defaultManager];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentStorePlaylistID = [supplementaryDataSource supplementalContentStorePlaylistID];
  uiChildContext = [v3 uiChildContext];
  v8 = [v3 libraryMutableAssetWithAssetID:supplementalContentStorePlaylistID inManagedObjectContext:uiChildContext];

  supplementalContentAssets = [v8 supplementalContentAssets];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supplementalContentAssets count]);

  return v10;
}

- (void)setDragDelegate:(id)delegate
{
  objc_storeStrong(&self->_dragDelegate, delegate);
  delegateCopy = delegate;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView setDragDelegate:delegateCopy];
}

- (void)setDropDelegate:(id)delegate
{
  objc_storeStrong(&self->_dropDelegate, delegate);
  delegateCopy = delegate;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView setDropDelegate:delegateCopy];
}

- (void)loadView
{
  v3 = +[BURestrictionsProvider sharedInstance];
  [v3 addObserver:self];

  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, 500.0, 500.0}];
  [(BKLibraryBookshelfCollectionViewController *)self setWrapperView:v4];

  wrapperView = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [wrapperView setAutoresizingMask:18];

  wrapperView2 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [wrapperView2 setAutoresizesSubviews:1];

  wrapperView3 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [(BKLibraryBookshelfCollectionViewController *)self setView:wrapperView3];

  v8 = [BKLibraryBookshelfCollectionView alloc];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v54 = [(BKLibraryBookshelfCollectionView *)v8 initWithFrame:layout collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(BKLibraryBookshelfCollectionView *)v54 setBkaxLabelProvider:self];
  [(BKLibraryBookshelfCollectionViewController *)self setCollectionView:v54];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView setDataSource:dataSourceAdaptor];

  collectionView2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  dragDelegate = [(BKLibraryBookshelfCollectionViewController *)self dragDelegate];
  collectionView3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView3 setDragDelegate:dragDelegate];

  dropDelegate = [(BKLibraryBookshelfCollectionViewController *)self dropDelegate];
  collectionView4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView4 setDropDelegate:dropDelegate];

  collectionView5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView5 setAllowsSelection:1];

  collectionView6 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView6 setAllowsMultipleSelection:1];

  collectionView7 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView7 setAllowsMultipleSelectionDuringEditing:1];

  collectionView8 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView8 setAutoresizingMask:18];

  collectionView9 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView9 setReorderingCadence:1];

  LODWORD(collectionView9) = [(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker];
  collectionView10 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView10 setDragInteractionEnabled:collectionView9 ^ 1];

  collectionView11 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView11 setAlwaysBounceVertical:1];

  [(BKLibraryBookshelfCollectionViewController *)self _setCollectionViewSelectionFollowsFocus];
  collectionView12 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor2 setCollectionView:collectionView12];

  dataSourceAdaptor3 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  dataSourceAdaptor4 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor4 booksDataSource];
  [booksDataSource setDelegate:dataSourceAdaptor3];

  dataSourceAdaptor5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor5 reloadData];

  wrapperView4 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  collectionView13 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [wrapperView4 addSubview:collectionView13];

  wrapperView5 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [wrapperView5 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  collectionView14 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView14 setFrame:{v34, v36, v38, v40}];

  v42 = objc_alloc_init(BKLibraryBookshelfSelectedActionBarViewController);
  [(BKLibraryBookshelfCollectionViewController *)self setActionBarViewController:v42];

  actionBarViewController = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [actionBarViewController setDelegate:self];

  actionBarViewController2 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [(BKLibraryBookshelfCollectionViewController *)self addChildViewController:actionBarViewController2];

  actionBarViewController3 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [actionBarViewController3 loadViewIfNeeded];

  wrapperView6 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  actionBarViewController4 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  view = [actionBarViewController4 view];
  [wrapperView6 addSubview:view];

  actionBarViewController5 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  view2 = [actionBarViewController5 view];
  [view2 setHidden:1];

  actionBarViewController6 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  view3 = [actionBarViewController6 view];
  [view3 setAlpha:0.0];

  actionBarViewController7 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [actionBarViewController7 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v6 viewDidLoad];
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:0];
  navigationItem = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
  [navigationItem _setSupportsTwoLineLargeTitles:1];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = objc_alloc_init(BKLibraryCollectionTitleView);
    [(BKLibraryCollectionTitleView *)v4 setDelegate:self];
    navigationItem2 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [navigationItem2 setTitleView:v4];
  }

  [(BKLibraryBookshelfCollectionViewController *)self _configureSupplementalContentPDFPicker];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v21.receiver = self;
  v21.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v21 viewIsAppearing:appearing];
  if (self->_appearingForFirstTime)
  {
    self->_appearingForFirstTime = 0;
    navigationController = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    _restingHeights = [navigationBar _restingHeights];

    view = [(BKLibraryBookshelfCollectionViewController *)self view];
    [view safeAreaInsets];
    v9 = v8;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = _restingHeights;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * i) doubleValue];
          v9 = v9 + v15;
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:1];
    [collectionView setContentOffset:{0.0, -(v9 + 1.0)}];
    [collectionView _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v22 viewWillAppear:appear];
  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  collectionID = [collection collectionID];
  v6 = [collectionID isEqualToString:kBKCollectionDefaultIDFinished];

  if (v6)
  {
    v7 = +[BKLibraryManager defaultManager];
    [v7 cleanupDateFinished];
  }

  ba_analyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v9 = [(BKLibraryBookshelfCollectionViewController *)self ba_setupNewAnalyticsTrackerWithName:@"Collection"];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKLibraryBookshelfCollectionViewController *)self setHasInitializedCollectionBackgroundColor:0];
  [(BKLibraryBookshelfCollectionViewController *)self updateViewModeIfNeeded];
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:0];
  [(BKLibraryBookshelfCollectionViewController *)self configureForDragAndDropSession];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  [supplementaryDataSource updateSettingsForMajorVisibilityChange];

  v13 = +[BKLibraryManager defaultManager];
  priceManager = [v13 priceManager];
  [priceManager invalidate:0];

  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  panGestureRecognizer = [collectionView panGestureRecognizer];
  navigationController = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  [panGestureRecognizer requireGestureRecognizerToFail:interactivePopGestureRecognizer];

  navigationController2 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  v21 = +[UIColor bc_booksKeyColor];
  [navigationBar setTintColor:v21];

  [(BKLibraryBookshelfCollectionViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [layout updateMetricsWithViewController:self];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v4 viewSafeAreaInsetsDidChange];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [layout updateMetricsWithViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v8 viewWillLayoutSubviews];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [layout updateMetricsWithViewController:self];

  [(BKLibraryBookshelfCollectionViewController *)self updateTitleFromMetrics];
  bsui_hasLargeTitle = [(BKLibraryBookshelfCollectionViewController *)self bsui_hasLargeTitle];
  [(BKLibraryBookshelfCollectionViewController *)self bsui_configureHideSmallTitleOnScroll:bsui_hasLargeTitle];
  if (self->_isFirstLayout)
  {
    self->_isFirstLayout = 0;
    if ((+[BSUIDefaults disableTabBarL2LargeTitleScrollOffsetWorkaround]& 1) == 0 && ((bsui_hasLargeTitle ^ 1) & 1) == 0)
    {
      traitCollection = [(BKLibraryBookshelfCollectionViewController *)self traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];

      if (horizontalSizeClass != 1)
      {
        collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
        [collectionView _scrollToTopIfPossible:0];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v11 viewDidAppear:appear];
  [(BKLibraryBookshelfCollectionViewController *)self bc_analyticsVisibilityUpdateSubtree];
  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  collectionID = [collection collectionID];
  v6 = [collectionID isEqualToString:kBKCollectionDefaultIDSamples];

  if (v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Pause removing from My Samples", v10, 2u);
    }

    v8 = +[BSUIStoreServices sharedInstance];
    [v8 pauseRemovingFromMySamples];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:self selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
    [v9 addObserver:self selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  }

  if ([(BKLibraryBookshelfCollectionViewController *)self shouldAccessibilityFocusCollectionViewUponAppearing])
  {
    [(BKLibraryBookshelfCollectionViewController *)self _bkAccessibilityFocusCollectionView];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v4 viewWillDisappear:disappear];
  [(BKLibraryBookshelfCollectionViewController *)self dismissReadingListPopover];
  [(BKLibraryBookshelfCollectionViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v13 viewDidDisappear:disappear];
  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  collectionID = [collection collectionID];
  v6 = [collectionID isEqualToString:kBKCollectionDefaultIDSamples];

  if (v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resume removing from My Samples", v12, 2u);
    }

    v8 = +[BSUIStoreServices sharedInstance];
    ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    [v8 resumeRemovingFromMySamplesWithTracker:ba_effectiveAnalyticsTracker];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
    [v10 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];
  }

  [(BKLibraryBookshelfCollectionViewController *)self bc_analyticsVisibilitySubtreeDidDisappear];
  v11 = +[NSNotificationCenter defaultCenter];
  [v11 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_emitAllInSeriesViewEventIfNeeded
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    sortMode = [supplementaryDataSource sortMode];

    if (sortMode == 10)
    {
      ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
      dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      supplementaryDataSource2 = [dataSourceAdaptor2 supplementaryDataSource];
      seriesID = [supplementaryDataSource2 seriesID];

      dataSourceAdaptor3 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      booksDataSource = [dataSourceAdaptor3 booksDataSource];
      totalNumberOfItems = [booksDataSource totalNumberOfItems];

      v12 = +[BAEventReporter sharedReporter];
      [v12 emitAllInSeriesViewEventWithTracker:ba_effectiveAnalyticsTracker collectionID:seriesID collectionItemCount:totalNumberOfItems];
    }
  }
}

- (void)bc_analyticsVisibilityDidAppear
{
  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v14 bc_analyticsVisibilityDidAppear];
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  if (supplementalContentPDFPicker)
  {
    v7 = +[BAEventReporter sharedReporter];
    dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource2 = [dataSourceAdaptor2 supplementaryDataSource];
    supplementalContentStorePlaylistID = [supplementaryDataSource2 supplementalContentStorePlaylistID];
    _supplementalContentCount = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
    [v7 emitPageViewEventForSupplementalContentPDFWithTracker:ba_effectiveAnalyticsTracker contentID:supplementalContentStorePlaylistID supplementalContentCount:_supplementalContentCount];
  }

  else
  {
    v12 = +[NSDate date];
    analyticsStartDate = self->_analyticsStartDate;
    self->_analyticsStartDate = v12;

    [(BKLibraryBookshelfCollectionViewController *)self _emitAllInSeriesViewEventIfNeeded];
  }
}

- (void)bc_analyticsVisibilityWillDisappear
{
  v57.receiver = self;
  v57.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v57 bc_analyticsVisibilityWillDisappear];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  if ((supplementalContentPDFPicker & 1) == 0)
  {
    ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
    collectionID = [collection collectionID];
    v9 = [collectionID isEqualToString:kBKCollectionDefaultAll];

    if (v9)
    {
      v50 = ba_effectiveAnalyticsTracker;
      v10 = objc_opt_new();
      selfCopy = self;
      dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      booksDataSource = [dataSourceAdaptor2 booksDataSource];

      v48 = booksDataSource;
      if ([booksDataSource numberOfSections])
      {
        v13 = 0;
        do
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v49 = v13;
          obj = [booksDataSource representedObjectsInSection:v13];
          v14 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v54;
            do
            {
              v17 = 0;
              v51 = v15;
              do
              {
                if (*v54 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v53 + 1) + 8 * v17);
                if ([v18 isLocal])
                {
                  assetID = [v18 assetID];
                  v20 = [v50 contentPrivateIDForContentID:assetID];
                  v21 = [v50 contentUserIDForContentID:assetID];
                  v22 = v10;
                  v23 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v18 contentType]);
                  v24 = [BALibraryItemTypeData alloc];
                  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isSample]);
                  v26 = v23;
                  v10 = v22;
                  v27 = [v24 initWithContentPrivateID:v20 contentUserID:v21 contentType:v26 contentID:assetID isSample:v25];

                  [v22 addObject:v27];
                  v15 = v51;
                }

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v15 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
            }

            while (v15);
          }

          booksDataSource = v48;
          v13 = v49 + 1;
        }

        while (v49 + 1 < [v48 numberOfSections]);
      }

      v28 = +[BAEventReporter sharedReporter];
      analyticsStartDate = selfCopy->_analyticsStartDate;
      dataSourceAdaptor3 = [(BKLibraryBookshelfCollectionViewController *)selfCopy dataSourceAdaptor];
      supplementaryDataSource2 = [dataSourceAdaptor3 supplementaryDataSource];
      viewMode = [supplementaryDataSource2 viewMode];
      if (viewMode == 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2 * (viewMode == 2);
      }

      dataSourceAdaptor4 = [(BKLibraryBookshelfCollectionViewController *)selfCopy dataSourceAdaptor];
      supplementaryDataSource3 = [dataSourceAdaptor4 supplementaryDataSource];
      v36 = [supplementaryDataSource3 sortMode] - 1;
      if (v36 > 5)
      {
        v37 = 0;
      }

      else
      {
        v37 = qword_10080B2D0[v36];
      }

      ba_effectiveAnalyticsTracker = v50;
      [v28 emitLibraryViewEventWithTracker:v50 startDate:analyticsStartDate librarySummary:v10 displayType:v33 sortType:v37];

      v44 = v48;
    }

    else
    {
      if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
      {
        dataSourceAdaptor5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        supplementaryDataSource4 = [dataSourceAdaptor5 supplementaryDataSource];
        seriesID = [supplementaryDataSource4 seriesID];

        dataSourceAdaptor6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        booksDataSource2 = [dataSourceAdaptor6 booksDataSource];
        totalNumberOfItems = [booksDataSource2 totalNumberOfItems];
      }

      else
      {
        collection2 = [(BKLibraryBookshelfCollectionViewController *)self collection];
        seriesID = [collection2 collectionID];

        dataSourceAdaptor6 = [(BKLibraryBookshelfCollectionViewController *)self collection];
        booksDataSource2 = [dataSourceAdaptor6 members];
        totalNumberOfItems = [booksDataSource2 count];
      }

      v46 = totalNumberOfItems;

      v44 = +[BAEventReporter sharedReporter];
      [v44 emitCollectionScreenViewEventWithTracker:ba_effectiveAnalyticsTracker startDate:self->_analyticsStartDate collectionID:seriesID collectionItemCount:v46];
      v10 = seriesID;
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

- (void)bc_tabBarControllerWillSelectViewController:(id)controller
{
  controllerCopy = controller;
  tabBarController = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];

  v6 = selectedViewController;
  if (selectedViewController != controllerCopy)
  {
    v7 = [selectedViewController im_isAncestorOfChildViewController:self];
    v6 = selectedViewController;
    if (v7)
    {
      bc_descendentPresentedViewController = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
      [bc_descendentPresentedViewController dismissViewControllerAnimated:0 completion:0];

      actionBarViewController = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      view = [actionBarViewController view];
      isHidden = [view isHidden];

      v6 = selectedViewController;
      if ((isHidden & 1) == 0)
      {
        [(BKLibraryBookshelfCollectionViewController *)self setEditing:0 animated:0];
        v6 = selectedViewController;
      }
    }
  }
}

- (BOOL)editableCollection
{
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  editableCollection = [layout editableCollection];

  return editableCollection;
}

- (BOOL)reorderableCollection
{
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  reorderableCollection = [layout reorderableCollection];

  return reorderableCollection;
}

- (void)preferredContentSizeChanged:(id)changed
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (BOOL)isSupplementalContentPDFPicker
{
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentPDFPicker = [supplementaryDataSource supplementalContentPDFPicker];

  return supplementalContentPDFPicker;
}

- (void)reloadData
{
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor reloadData];

  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)explicitContentRestrictedChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B4494;
  block[3] = &unk_100A033C8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)scrollToMakeLibraryAssetIDVisible:(id)visible
{
  visibleCopy = visible;
  v11 = +[BKLibraryManager defaultManager];
  uiChildContext = [v11 uiChildContext];
  v6 = [v11 libraryMutableAssetWithAssetID:visibleCopy inManagedObjectContext:uiChildContext];

  if (v6)
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    booksDataSource = [dataSourceAdaptor booksDataSource];
    v9 = [booksDataSource indexPathForRepresentedObject:v6];

    if (v9)
    {
      collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView scrollToItemAtIndexPath:v9 atScrollPosition:2 animated:0];
    }
  }
}

- (void)openSeriesContainer:(id)container
{
  containerCopy = container;
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4658;
  v7[3] = &unk_100A06260;
  v7[4] = self;
  v8 = containerCopy;
  v6 = containerCopy;
  [(BKLibraryBookshelfCollectionViewController *)self createSeriesViewControllerFromSeriesContainer:v6 withParentTracker:ba_effectiveAnalyticsTracker completion:v7];
}

- (void)_refreshSeriesContainer:(id)container
{
  containerCopy = container;
  v4 = +[BUBag defaultBag];
  seriesInfoLiveFetchesEnabled = [v4 seriesInfoLiveFetchesEnabled];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4A9C;
  v7[3] = &unk_100A06288;
  v8 = containerCopy;
  v6 = containerCopy;
  [seriesInfoLiveFetchesEnabled valueWithCompletion:v7];
}

- (void)_configureSupplementalContentPDFPicker
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker])
  {
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [(BKLibraryBookshelfCollectionViewController *)self setContentScrollView:collectionView forEdge:1];

    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    supplementalContentPDFPickerTitle = [supplementaryDataSource supplementalContentPDFPickerTitle];
    navigationItem = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [navigationItem setTitle:supplementalContentPDFPickerTitle];

    navigationItem2 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [navigationItem2 setLargeTitleDisplayMode:2];

    navigationItem3 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:0];

    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"cancelButtonPressed:"];
    navigationItem4 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [navigationItem4 setRightBarButtonItem:v11 animated:0];
  }
}

- (void)cancelButtonPressed:(id)pressed
{
  v4 = +[BAEventReporter sharedReporter];
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
  supplementalContentStorePlaylistID = [supplementaryDataSource supplementalContentStorePlaylistID];
  _supplementalContentCount = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
  [v4 emitCloseSupplementalContentPDFPickerWithTracker:ba_effectiveAnalyticsTracker contentID:supplementalContentStorePlaylistID supplementalContentCount:_supplementalContentCount];

  [(BKLibraryBookshelfCollectionViewController *)self _dismissIfSupplementContentPDFPicker];
}

- (void)selectAllButtonPressed:(id)pressed
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v6 = [indexPathsForSelectedItems count];

  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  totalNumberOfItems = [booksDataSource totalNumberOfItems];

  if (v6 == totalNumberOfItems)
  {

    [(BKLibraryBookshelfCollectionViewController *)self deselectAll];
  }

  else
  {

    [(BKLibraryBookshelfCollectionViewController *)self selectAll];
  }
}

- (void)addDoneButton:(BOOL)button forPresentationController:(id)controller
{
  buttonCopy = button;
  controllerCopy = controller;
  objc_opt_class();
  presentedViewController = [controllerCopy presentedViewController];

  v13 = BUDynamicCast();

  v8 = v13;
  if (v13)
  {
    topViewController = [v13 topViewController];
    navigationItem = [topViewController navigationItem];
    v11 = navigationItem;
    if (buttonCopy)
    {
      v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
      [v11 setRightBarButtonItem:v12 animated:0];
    }

    else
    {
      [navigationItem setRightBarButtonItem:0 animated:0];
    }

    v8 = v13;
  }
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  addSelectedBooksCompletion = [(BKLibraryBookshelfCollectionViewController *)self addSelectedBooksCompletion];
  if (addSelectedBooksCompletion)
  {
    addSelectedBooksCompletion[2](addSelectedBooksCompletion, 0);
  }

  [(BKLibraryBookshelfCollectionViewController *)self setAddSelectedBooksCompletion:0];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  if (!collection)
  {
    return 0;
  }

  collectionCopy = collection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  verticalSizeClass = [collectionCopy verticalSizeClass];

  if (verticalSizeClass == 1 || horizontalSizeClass == 1)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

- (void)_setCollectionViewSelectionFollowsFocus
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView setSelectionFollowsFocus:1];
}

- (id)coverAnimationHostSourceForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [BKLibraryBookOpenAnimatingSourceProxy alloc];
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v8 = [(BKLibraryBookOpenAnimatingSourceProxy *)v6 initWithLibraryAsset:v5 coverHost:dataSourceAdaptor];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)coverAnimationHostScrollToMakeVisible:(id)visible
{
  visibleCopy = visible;
  objc_opt_class();
  v12 = BUDynamicCast();

  libraryAsset = [v12 libraryAsset];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v8 = [booksDataSource indexPathForRepresentedObject:libraryAsset];

  if (v8)
  {
    layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
    [layout setCoverAnimationRunningHack:1];

    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:0];

    collectionView2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView2 layoutIfNeeded];
  }
}

- (BOOL)coverAnimationHostIsFullyVisible:(id)visible
{
  visibleCopy = visible;
  objc_opt_class();
  v5 = BUDynamicCast();

  libraryAsset = [v5 libraryAsset];
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v9 = [booksDataSource indexPathForRepresentedObject:libraryAsset];

  if (v9 && (-[BKLibraryBookshelfCollectionViewController collectionView](self, "collectionView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 indexPathsForVisibleItems], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v9), v11, v10, v12))
  {
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v14 = [collectionView cellForItemAtIndexPath:v9];

    if (v14)
    {
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      collectionView2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView2 contentOffset];
      v25 = v24;
      collectionView3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView3 bounds];
      v28 = v27;
      collectionView4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView4 verticalScrollIndicatorInsets];
      v31 = v30;

      v37.origin.x = v16;
      v37.origin.y = v18;
      v37.size.width = v20;
      v37.size.height = v22;
      MinY = CGRectGetMinY(v37);
      collectionView5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView5 contentOffset];
      if (MinY >= v34)
      {
        v38.origin.x = v16;
        v38.origin.y = v18;
        v38.size.width = v20;
        v38.size.height = v22;
        v35 = CGRectGetMaxY(v38) <= v25 + v28 - v31;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (void)_openBook:(id)book completion:(id)completion
{
  bookCopy = book;
  completionCopy = completion;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  permanentOrTemporaryAssetID = [bookCopy permanentOrTemporaryAssetID];
  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D708();
  }

  v11 = objc_opt_new();
  v12 = [BKAppDelegate sceneControllerForViewController:self];
  newShowAssetTransaction = [v12 newShowAssetTransaction];

  if (newShowAssetTransaction)
  {
    [v11 setObject:newShowAssetTransaction forKeyedSubscript:BCTransactionOptionsTransactionKey];
  }

  assetLogID = [bookCopy assetLogID];
  [v11 setObject:assetLogID forKeyedSubscript:AEAssetLogID];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B5870;
  v17[3] = &unk_100A062B0;
  selfCopy = self;
  v20 = completionCopy;
  v18 = bookCopy;
  v15 = bookCopy;
  v16 = completionCopy;
  [v8 showAssetWithTransaction:newShowAssetTransaction assetID:permanentOrTemporaryAssetID location:0 options:v11 completion:v17];
}

- (void)_playPreview:(id)preview completion:(id)completion
{
  previewCopy = preview;
  completionCopy = completion;
  objc_initWeak(&location, self);
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  storeID = [previewCopy storeID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B5A58;
  v12[3] = &unk_100A062D8;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [booksDataSource resourceForAssetID:storeID type:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_downloadSample:(id)sample completion:(id)completion
{
  completionCopy = completion;
  sampleCopy = sample;
  assetID = [sampleCopy assetID];
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v10 = [(BKLibraryBookshelfCollectionViewController *)self _contentDataForContentID:assetID tracker:ba_effectiveAnalyticsTracker];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B5D0C;
  v19[3] = &unk_100A06328;
  v20 = v10;
  selfCopy = self;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = v10;
  v13 = objc_retainBlock(v19);
  v14 = +[BSUIItemDescriptionCache sharedInstance];
  storeID = [sampleCopy storeID];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B5EB4;
  v17[3] = &unk_100A06350;
  v18 = v13;
  v16 = v13;
  [v14 sampleDownloadURLForAssetID:storeID completion:v17];
}

- (int64_t)_contentTypeForContentID:(id)d withLibraryAsset:(id)asset
{
  if (!asset)
  {
    return 0;
  }

  contentType = [asset contentType];

  return [BAUtilities contentTypeFromAssetType:contentType];
}

- (id)_contentDataForContentID:(id)d tracker:(id)tracker
{
  dCopy = d;
  trackerCopy = tracker;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self _libraryAssetWithContentID:dCopy];
  v9 = [trackerCopy contentPrivateIDForContentID:dCopy];
  v10 = [trackerCopy contentUserIDForContentID:dCopy];

  v26 = [(BKLibraryBookshelfCollectionViewController *)self _contentTypeForContentID:dCopy withLibraryAsset:v8];
  v27 = v10;
  if ([v8 isOwned])
  {
    storeID = [v8 storeID];
    v12 = [storeID length];
    v13 = 1;
    if (!v12)
    {
      v13 = 2;
    }

    v25 = v13;
  }

  else
  {
    v25 = 0;
  }

  v28 = v9;
  v14 = +[BAEventReporter sharedReporter];
  v15 = [v14 seriesTypeForContentID:dCopy];

  if ([v8 isAudiobook])
  {
    hasRACSupport = [v8 hasRACSupport];
    if ([hasRACSupport BOOLValue])
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [BAContentData alloc];
  contentType = [v8 contentType];
  if (contentType == 3)
  {
    v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 pageCount]);
  }

  else
  {
    v20 = 0;
  }

  supplementalContentAssets = [v8 supplementalContentAssets];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [supplementalContentAssets count]);
  v23 = [v18 initWithContentID:dCopy contentType:v26 contentPrivateID:v28 contentUserID:v27 contentAcquisitionType:v25 contentSubType:0 contentLength:v20 supplementalContentCount:v22 seriesType:v15 productionType:v17 isUnified:0 contentKind:0];

  if (contentType == 3)
  {
  }

  return v23;
}

- (id)_libraryAssetWithContentID:(id)d
{
  dCopy = d;
  v4 = +[BKAppDelegate delegate];
  libraryAssetProvider = [v4 libraryAssetProvider];

  v6 = [libraryAssetProvider libraryAssetOnMainQueueWithAssetID:dCopy];

  return v6;
}

- (void)_openStoreSample:(id)sample
{
  sampleCopy = sample;
  storeID = [sampleCopy storeID];
  v6 = BKLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D864();
  }

  if ([storeID length])
  {
    [(BKLibraryBookshelfCollectionViewController *)self _downloadSample:sampleCopy completion:0];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
    if (([sampleCopy isAudiobook] & 1) != 0 || !+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled"))
    {
      v10 = [BKAppDelegate sceneControllerForViewController:self];
      newShowAssetTransaction = [v10 newShowAssetTransaction];
    }

    else
    {
      v8 = +[BKAppDelegate sceneManager];
      assetID = [sampleCopy assetID];
      v10 = [v8 newBookSceneControllerProviderWithRequestAssetID:assetID];

      v11 = +[BKAppDelegate currentSceneController];
      newShowAssetTransaction = [v11 newShowAssetTransactionWithTargetSceneDescriptor:v10];
    }

    if (newShowAssetTransaction)
    {
      v20 = BCTransactionOptionsTransactionKey;
      v21 = newShowAssetTransaction;
      v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    else
    {
      v13 = 0;
    }

    if (+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled") && ([sampleCopy isAudiobook] & 1) == 0)
    {
      [v7 showAssetWithTransaction:newShowAssetTransaction storeID:storeID options:v13];
    }

    else
    {
      v14 = +[BKAppDelegate sceneManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000B6478;
      v15[3] = &unk_100A03C78;
      v16 = v7;
      v17 = newShowAssetTransaction;
      v18 = storeID;
      v19 = v13;
      [v14 forceTransaction:v17 ontoPrimarySceneWithContinuation:v15];
    }
  }
}

- (id)_transactionForStorePresentingAction
{
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 sceneControllerForViewController:self];

  newShowURLTransaction = [v4 newShowURLTransaction];

  return newShowURLTransaction;
}

- (void)_showBooksInSectionAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D8CC();
  }

  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v8 = [booksDataSource representedObjectsInSection:{objc_msgSend(pathCopy, "section")}];

  v33 = pathCopy;
  v34 = [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
  storeID = [v34 storeID];

  if (!storeID)
  {
    v13 = 0;
    v31 = &__NSArray0__struct;
    v32 = &__NSArray0__struct;
    goto LABEL_24;
  }

  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  if (![v8 count])
  {
    v13 = -1;
    if ([v10 count] > 0x64)
    {
      goto LABEL_20;
    }

LABEL_22:
    v32 = v10;
    v31 = v11;
    goto LABEL_23;
  }

  v12 = 0;
  v13 = -1;
  do
  {
    v14 = [v8 objectAtIndexedSubscript:v12];
    storeID2 = [v14 storeID];
    if ([v14 isAudiobook])
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    if (storeID2)
    {
      if (v14 == v34)
      {
        v13 = [v10 count];
      }

      [v10 addObject:storeID2];
      v17 = [NSNumber numberWithInteger:v16];
      [v11 addObject:v17];
    }

    ++v12;
  }

  while (v12 < [v8 count]);
  if ([v10 count] <= 0x64)
  {
    goto LABEL_22;
  }

  v18 = v13 - 49;
  if (v13 >= 49)
  {
    if (v13 + 51 > [v10 count])
    {
      v18 = [v10 count] - 100;
    }

    goto LABEL_21;
  }

LABEL_20:
  v18 = 0;
LABEL_21:
  v32 = [v10 subarrayWithRange:{v18, 100}];
  v31 = [v11 subarrayWithRange:{v18, 100}];
  v13 -= v18;
LABEL_23:

LABEL_24:
  ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
  {
    dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor2 supplementaryDataSource];
    seriesID = [supplementaryDataSource seriesID];
  }

  else
  {
    dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self collection];
    seriesID = [dataSourceAdaptor2 collectionID];
  }

  v23 = [BALinkData alloc];
  navigationItem = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
  title = [navigationItem title];
  [v34 storeID];
  v27 = v26 = self;
  v28 = [v23 initWithPreviousSectionID:seriesID previousSectionName:title previousContentID:v27 linkActionType:2 previousSeriesID:0 previousGenreID:0 previousCollectionID:0 previousAuthorID:0 previousFlowcaseID:0 previousBrickID:0];

  [ba_effectiveAnalyticsTracker pushLinkData:v28 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/AppSource/Classes/BKLibraryBookshelfCollectionViewController.m" line:1295];
  v29 = [(BKLibraryBookshelfCollectionViewController *)v26 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  _transactionForStorePresentingAction = [(BKLibraryBookshelfCollectionViewController *)v26 _transactionForStorePresentingAction];
  [v29 storeShowBooksWithStoreIDs:v32 resourceTypes:v31 focusedIndex:v13 transaction:_transactionForStorePresentingAction needsAnalyticsLinkData:0];
}

- (BOOL)_isErrorFromUserCanceled:(id)canceled
{
  canceledCopy = canceled;
  v4 = canceledCopy;
  if (canceledCopy)
  {
    v5 = AKAppleIDAuthenticationErrorDomain;
    v6 = AMSErrorDomain;
    v7 = AMSErrorUserInfoKeyStatusCode;
    v8 = canceledCopy;
    while (1)
    {
      domain = [v8 domain];
      if ([domain isEqualToString:v5])
      {
        code = [v8 code];

        if (code == -7003)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      domain2 = [v8 domain];
      v12 = [domain2 isEqualToString:v6];

      userInfo = [v8 userInfo];
      v14 = [userInfo objectForKeyedSubscript:v7];

      userInfo2 = [v8 userInfo];
      v16 = userInfo2;
      if (v12)
      {
        if (v14)
        {
          break;
        }
      }

      v17 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v8 = v17;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    v18 = [userInfo2 objectForKeyedSubscript:v7];
    intValue = [v18 intValue];

    v20 = BKLibraryLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10078D934(intValue, intValue < 500, v20);
    }

    if (intValue < 500)
    {
LABEL_15:
      v21 = BKLibraryLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        domain3 = [v4 domain];
        v25 = 138543874;
        v26 = domain3;
        v27 = 2048;
        code2 = [v4 code];
        v29 = 2112;
        v30 = v4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Treating error as being caused by user cancel: Error Domain=%{public}@ Code=%ld (%@)", &v25, 0x20u);
      }

      v23 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  v21 = BKLibraryLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "NOT treating error as being caused by user cancel: %@", &v25, 0xCu);
  }

  v23 = 0;
LABEL_21:

  return v23;
}

- (void)openItemAtIndexPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v8 = +[AETestDriver shared];
  [v8 postEvent:kBETestDriverOpenAnimationStart sender:self];

  v9 = +[AETestDriver shared];
  [v9 postEvent:kBETestDriverOpenAnimationSetupStart sender:self];

  kdebug_trace();
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v12 = [booksDataSource representedObjectForIndexPath:pathCopy];

  dataSourceAdaptor2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  LODWORD(v44) = [dataSourceAdaptor2 isItemPlayingAtIndexPath:pathCopy];

  v14 = +[BURestrictionsProvider sharedInstance];
  isBookStoreAllowed = [v14 isBookStoreAllowed];

  v47 = +[BKReachability isOffline];
  collectionID = [(BKLibraryBookshelfCollectionViewController *)self collectionID];
  v17 = [collectionID isEqualToString:kBKCollectionDefaultIDWantToRead];

  HIDWORD(v44) = [v12 isInSamples];
  isContainer = [v12 isContainer];
  isEditing = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  v20 = BKLibraryLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v12 assetID];
    v22 = v21 = pathCopy;
    *buf = 138414082;
    v50 = v22;
    v51 = 1024;
    v52 = v44;
    v53 = 1024;
    v54 = isBookStoreAllowed;
    v55 = 1024;
    v56 = v47;
    v57 = 1024;
    v58 = v17;
    v59 = 1024;
    v60 = HIDWORD(v44);
    v61 = 1024;
    v62 = isContainer;
    v63 = 1024;
    v64 = isEditing;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Open] Attempting to open book %@: bookIsPlaying: %{BOOL}d, isStoreAllowed: %{BOOL}d, isOffline: %{BOOL}d, inWantToReadCollection: %{BOOL}d, isInSamples: %{BOOL}d, isContainer: %{BOOL}d, isEditing: %{BOOL}d", buf, 0x36u);

    pathCopy = v21;
  }

  if (!isContainer)
  {
    if ((isBookStoreAllowed & 1) == 0 && [v12 isStoreOrSeriesItem])
    {
      v23 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
      _transactionForStorePresentingAction = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
      v26 = BKLibraryLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10078D9C4();
      }

      [v23 displayBookUnavailableInStorefrontErrorWithTransaction:_transactionForStorePresentingAction];
      goto LABEL_46;
    }

    if ((([v12 isSeriesItem] & 1) != 0 || (objc_msgSend(v12, "isPreorderBook") & 1) != 0 || objc_msgSend(v12, "isStoreItem")) && (objc_msgSend(v12, "isSample") & 1) == 0 && (objc_msgSend(v12, "isAudiobookPreview") & 1) == 0)
    {
      v36 = BKLibraryLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_10078D9F8();
      }

      if (isEditing)
      {
        v23 = BKLibraryLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10078DABC();
        }

        goto LABEL_46;
      }

      if (!(v47 & 1 | ((v46 & 1) == 0) | v17 & 1))
      {
        [(BKLibraryBookshelfCollectionViewController *)self _openStoreSample:v12];
        goto LABEL_47;
      }

      if ((([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection]| v17) & 1) == 0)
      {
        v39 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
        _transactionForStorePresentingAction2 = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
        if ([v12 isAudiobook])
        {
          v41 = 0;
        }

        else
        {
          v41 = 3;
        }

        v42 = BKLibraryLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          sub_10078DA2C(v12);
        }

        storeID = [v12 storeID];
        [v39 storeShowBookWithStoreID:storeID resourceType:v41 transaction:_transactionForStorePresentingAction2];

        goto LABEL_47;
      }
    }

    else
    {
      if ([v12 isDownloading] && (objc_msgSend(v12, "streamable") & 1) == 0)
      {
        v37 = BKLibraryLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_10078DAF0();
        }

        v23 = +[BKLibraryManager defaultManager];
        [v23 toggleDownloadPausedForAsset:v12];
        goto LABEL_46;
      }

      if (isEditing)
      {
        v23 = BKLibraryLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_10078DB24();
        }

        goto LABEL_46;
      }

      if (v47 & 1 | ((v46 & 1) == 0) || ((v17 ^ 1) & 1) != 0 || ([v12 isStoreOrSeriesItem] & 1) == 0 && !objc_msgSend(v12, "isSample"))
      {
        if ([v12 isLocal] & 1) != 0 || !(v47 & 1 | ((objc_msgSend(v12, "isSupplementalContent") & 1) == 0)) || (objc_msgSend(v12, "isSample") & 1) != 0 || (objc_msgSend(v12, "isAudiobookPreview") & 1) != 0 || ((objc_msgSend(v12, "streamable") & ~v47 | v45))
        {
          if ([v12 isSupplementalContent])
          {
            supplementalContentParent = [v12 supplementalContentParent];
            storeID2 = [supplementalContentParent storeID];

            v29 = +[BAEventReporter sharedReporter];
            [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
            v30 = v48 = completionCopy;
            [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
            v32 = v31 = pathCopy;
            supplementaryDataSource = [v32 supplementaryDataSource];
            fromActionMenu = [supplementaryDataSource fromActionMenu];
            _supplementalContentCount = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
            [v29 emitViewSupplementalContentWithTracker:v30 contentID:storeID2 sourceIsAction:fromActionMenu supplementalContentCount:_supplementalContentCount];

            pathCopy = v31;
            completionCopy = v48;
          }

          if ([v12 isAudiobookPreview])
          {
            [(BKLibraryBookshelfCollectionViewController *)self _playPreview:v12 completion:0];
          }

          else
          {
            [(BKLibraryBookshelfCollectionViewController *)self _openBook:v12 completion:0];
          }
        }

        else if (v47)
        {
          [(BKLibraryBookshelfCollectionViewController *)self _showInternetReachabilityErrorAlert:v12];
        }

        else
        {
          [(BKLibraryBookshelfCollectionViewController *)self _downloadBook:v12];
        }

        goto LABEL_47;
      }
    }

    [(BKLibraryBookshelfCollectionViewController *)self _showBooksInSectionAtIndexPath:pathCopy];
    goto LABEL_47;
  }

  v23 = BKLibraryLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (isEditing)
  {
    if (v24)
    {
      sub_10078DB8C();
    }

LABEL_46:

    goto LABEL_47;
  }

  if (v24)
  {
    sub_10078DB58();
  }

  [(BKLibraryBookshelfCollectionViewController *)self openSeriesContainer:v12];
LABEL_47:
  v38 = objc_retainBlock(completionCopy);

  if (v38)
  {
    v38[2](v38);
  }
}

- (void)_downloadBook:(id)book
{
  bookCopy = book;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10078DBC0(bookCopy);
  }

  if ([bookCopy isCloud])
  {
    objc_opt_class();
    v6 = +[UIApplication sharedApplication];
    delegate = [v6 delegate];
    v8 = BUDynamicCast();

    if ([v8 isConnectedToInternet])
    {
      v9 = +[BKLibraryManager defaultManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000B742C;
      v10[3] = &unk_100A06378;
      v10[4] = self;
      v11 = bookCopy;
      [v9 resolveLibraryAsset:v11 completion:v10];
    }

    else
    {
      [(BKLibraryBookshelfCollectionViewController *)self _showInternetReachabilityErrorAlert:bookCopy];
    }
  }
}

- (void)_showInternetReachabilityErrorAlert:(id)alert
{
  alertCopy = alert;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  _transactionForStorePresentingAction = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10078DC74(alertCopy);
  }

  [v5 displayOffineCannotDownloadErrorForContentType:objc_msgSend(alertCopy transaction:{"contentType"), _transactionForStorePresentingAction}];
}

- (void)cancelDownloadBook:(id)book
{
  bookCopy = book;
  v3 = +[BKLibraryAssetStatusController sharedController];
  if ([bookCopy isValid] && objc_msgSend(bookCopy, "state") == 2)
  {
    assetID = [bookCopy assetID];
    v5 = [v3 statusForAssetID:assetID];

    if ([v5 canPause])
    {
      assetID2 = [bookCopy assetID];
      [v3 cancelDownloadOfAsset:assetID2];
    }
  }
}

- (void)resumeDownloadBook:(id)book
{
  bookCopy = book;
  v3 = +[BKLibraryAssetStatusController sharedController];
  if ([bookCopy isValid] && objc_msgSend(bookCopy, "state") == 2)
  {
    assetID = [bookCopy assetID];
    v5 = [v3 statusForAssetID:assetID];

    if ([v5 canResume])
    {
      assetID2 = [bookCopy assetID];
      [v3 resumeDownloadOfAsset:assetID2];
    }
  }
}

- (NSArray)selectedBooks
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v5 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:indexPathsForSelectedItems];

  return v5;
}

- (id)booksAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = pathsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        booksDataSource = [dataSourceAdaptor booksDataSource];
        v14 = [booksDataSource representedObjectForIndexPath:v11];

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_addSelectedBooksToReadingList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  v8 = listCopy;
  if ([v8 count])
  {
    [(BKLibraryBookshelfCollectionViewController *)self setAddSelectedBooksCompletion:completionCopy];
    [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000B7D4C;
    v30[3] = &unk_100A033C8;
    v25 = v30[4] = self;
    [v25 setSuccessfulAddFinishedBlock:v30];
    v9 = objc_opt_new();
    v10 = [NSHashTable hashTableWithOptions:512];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      selfCopy = self;
      v23 = v8;
      v24 = completionCopy;
      v13 = *v27;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [v15 contentType]);
          [v9 addObject:v16];

          storeID = [v15 storeID];
          v18 = [storeID length];

          if (v18)
          {
            assetID = [v15 assetID];
            [v10 addObject:assetID];
          }

          if ([v15 isContainer])
          {
            v12 = 1;
            goto LABEL_14;
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_14:
      v8 = v23;
      completionCopy = v24;
      self = selfCopy;
    }

    v20 = [v11 valueForKey:@"assetID"];
    v21 = [v25 libraryCollectionListViewControllerWithAssetIDs:v20 knownAssetTypes:v9 knownStoreAssetIDs:v10 containsSeriesContainer:v12];

    [(BKLibraryBookshelfCollectionViewController *)self _showOverlayViewController:v21];
  }
}

- (void)_showOverlayViewController:(id)controller
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000B7EA8;
  v11 = &unk_100A03440;
  controllerCopy = controller;
  selfCopy = self;
  v4 = controllerCopy;
  v5 = objc_retainBlock(&v8);
  v6 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController:v8];

  if (v6)
  {
    bc_descendentPresentedViewController = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
    [bc_descendentPresentedViewController dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)_dismissOverlayViewController:(id)controller
{
  presentedViewController = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)updateActionBarForSelection
{
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:1];
  actionBarViewController = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  selectedBooks = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  hasAnyDeletableBookSelected = [(BKLibraryBookshelfCollectionViewController *)self hasAnyDeletableBookSelected];
  hasAnySeriesContainerSelected = [(BKLibraryBookshelfCollectionViewController *)self hasAnySeriesContainerSelected];
  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  [actionBarViewController updateForSelectedItems:selectedBooks deletableItems:hasAnyDeletableBookSelected seriesItems:hasAnySeriesContainerSelected editable:{objc_msgSend(collection, "isDefaultCollection") ^ 1}];
}

- (void)updateActionBarFromMetrics
{
  actionBarViewController = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  actionBarMetrics = [layout actionBarMetrics];
  [actionBarViewController updateActionBarFromMetrics:actionBarMetrics];
}

- (void)updateTitleFromMetrics
{
  navigationController = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    navigationController2 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];

    layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
    columnMetrics = [layout columnMetrics];

    [columnMetrics margins];
    v9 = v8;
    [columnMetrics margins];
    [navigationBar setDirectionalLayoutMargins:{0.0, v9, 0.0, v10}];
  }
}

- (void)updateTabBarControllerForEditing:(BOOL)editing
{
  editingCopy = editing;
  tabBarController = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  v6 = tabBarController;
  if (editingCopy)
  {
    [tabBarController hideBarWithTransition:6];
  }

  else
  {
    [tabBarController showBarWithTransition:6];
  }

  _collectionBackingButton = [(BKLibraryBookshelfCollectionViewController *)self _collectionBackingButton];
  [_collectionBackingButton setEnabled:!editingCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing]!= editing)
  {
    v35.receiver = self;
    v35.super_class = BKLibraryBookshelfCollectionViewController;
    [(BKLibraryBookshelfCollectionViewController *)&v35 setEditing:editingCopy animated:animatedCopy];
    bk_rootBarCoordinator = [(BKLibraryBookshelfCollectionViewController *)self bk_rootBarCoordinator];
    [bk_rootBarCoordinator setIsMiniPlayerHidden:editingCopy];

    if (editingCopy)
    {
      sub_10078DD6C(self, animatedCopy);
    }

    else
    {
      sub_10078DCFC(self, animatedCopy);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B8704;
    v33[3] = &unk_100A044C8;
    v33[4] = self;
    v34 = editingCopy;
    v8 = objc_retainBlock(v33);
    v9 = v8;
    if (animatedCopy)
    {
      actionBarViewController = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      view = [actionBarViewController view];
      [view setHidden:0];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000B8784;
      v31[3] = &unk_100A03920;
      v32 = v9;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000B8794;
      v29[3] = &unk_100A05D78;
      v29[4] = self;
      v30 = editingCopy;
      [UIView animateWithDuration:v31 animations:v29 completion:0.3];
      actionBarViewController2 = v32;
    }

    else
    {
      (v8[2])(v8);
      actionBarViewController2 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      view2 = [actionBarViewController2 view];
      [view2 setHidden:editingCopy ^ 1];
    }

    [(BKLibraryBookshelfCollectionViewController *)self setTransitioningToNewLayout:1];
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView contentOffset];
    [(BKLibraryBookshelfCollectionViewController *)self setPreviousContentOffset:?];

    layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
    cellMetrics = [layout cellMetrics];
    if ([cellMetrics cellType] == 3)
    {
      [(BKLibraryBookshelfCollectionViewController *)self setPreserveContentOffsetInNewLayout:0];
    }

    else
    {
      layout2 = [(BKLibraryBookshelfCollectionViewController *)self layout];
      cellMetrics2 = [layout2 cellMetrics];
      if ([cellMetrics2 cellType] == 4)
      {
        [(BKLibraryBookshelfCollectionViewController *)self setPreserveContentOffsetInNewLayout:0];
      }

      else
      {
        layout3 = [(BKLibraryBookshelfCollectionViewController *)self layout];
        cellMetrics3 = [layout3 cellMetrics];
        -[BKLibraryBookshelfCollectionViewController setPreserveContentOffsetInNewLayout:](self, "setPreserveContentOffsetInNewLayout:", [cellMetrics3 cellType] != 0);
      }
    }

    layout4 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    v22 = [layout4 copy];

    [v22 setEditMode:editingCopy];
    [(BKLibraryBookshelfCollectionViewController *)self setLayout:v22];
    layout5 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    [layout5 updateMetricsWithViewController:self];

    objc_initWeak(&location, self);
    collectionView2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B87FC;
    v25[3] = &unk_100A063A0;
    objc_copyWeak(&v26, &location);
    v27 = editingCopy;
    [collectionView2 setCollectionViewLayout:v22 animated:animatedCopy completion:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  if ([(BKLibraryBookshelfCollectionViewController *)self transitioningToNewLayout])
  {
    if ([(BKLibraryBookshelfCollectionViewController *)self preserveContentOffsetInNewLayout]|| ([(BKLibraryBookshelfCollectionViewController *)self previousContentOffset], v7 < 0.0))
    {
      [(BKLibraryBookshelfCollectionViewController *)self previousContentOffset];
      x = v8;
      y = v9;
    }
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)selectAll
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  if ([collectionView numberOfSections] >= 1)
  {
    v3 = 0;
    do
    {
      if ([collectionView numberOfItemsInSection:v3] >= 1)
      {
        v4 = 0;
        do
        {
          v5 = [NSIndexPath indexPathForItem:v4 inSection:v3];
          [collectionView selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

          ++v4;
        }

        while (v4 < [collectionView numberOfItemsInSection:v3]);
      }

      ++v3;
    }

    while (v3 < [collectionView numberOfSections]);
  }

  [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
}

- (void)deselectAll
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [collectionView selectItemAtIndexPath:0 animated:1 scrollPosition:0];

  [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
}

- (void)dismissPDFPicker
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker])
  {

    [(BKLibraryBookshelfCollectionViewController *)self cancelButtonPressed:0];
  }
}

- (void)openSelectedBooks
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  if (indexPathsForSelectedItems)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B8BE8;
    v5[3] = &unk_100A063C8;
    v5[4] = self;
    [indexPathsForSelectedItems enumerateObjectsUsingBlock:v5];
  }
}

- (void)toggleAccessibilityIfNeeded
{
  if (UIAccessibilityIsVoiceOverRunning() && [(BKLibraryBookshelfCollectionViewController *)self isEditing])
  {
    v3 = objc_opt_new();
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v6 = [indexPathsForSelectedItems count];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"%lu selected books" value:&stru_100A30A68 table:0];

    v9 = [NSString localizedStringWithFormat:v8, v6];
    [v3 addObject:v9];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B8DD0;
    block[3] = &unk_100A033C8;
    v14 = v3;
    v10 = qword_100AF7528;
    v11 = v3;
    if (v10 != -1)
    {
      dispatch_once(&qword_100AF7528, block);
    }

    v12 = [v11 componentsJoinedByString:{@", "}];
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)bookTapped:(id)tapped completion:(id)completion
{
  tappedCopy = tapped;
  completionCopy = completion;
  isEditing = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = tappedCopy;
    v12 = 1024;
    v13 = isEditing;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Open] Processing book tapped at index: %@,  isEditing: %{BOOL}d", &v10, 0x12u);
  }

  if ((isEditing & 1) == 0)
  {
    [(BKLibraryBookshelfCollectionViewController *)self _dismissIfSupplementContentPDFPicker];
    [(BKLibraryBookshelfCollectionViewController *)self openItemAtIndexPath:tappedCopy completion:completionCopy];
  }
}

- (void)_dismissIfSupplementContentPDFPicker
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker])
  {

    [(BKLibraryBookshelfCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)directBuyTapped:(id)tapped buyParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  tappedCopy = tapped;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v13 = [booksDataSource representedObjectForIndexPath:tappedCopy];

  isAudiobook = [v13 isAudiobook];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B90D0;
  v16[3] = &unk_100A063F0;
  v17 = completionCopy;
  v15 = completionCopy;
  [BKBookPurchaseAction tryToPurchaseBook:v13 libraryAssetProvider:0 buyParameters:parametersCopy allowPurchaseFromNonSampleBuyButton:1 suppressNetworkEvaluatorDialogs:isAudiobook analyticsInfo:0 completion:v16];
}

- (void)showReadingListsForActionHandler:(id)handler
{
  v7 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];
  objc_opt_class();
  v4 = [v7 libraryCollectionListViewControllerWithAssetIDs:0 knownAssetTypes:0 knownStoreAssetIDs:0 containsSeriesContainer:0];
  v5 = BUDynamicCast();

  [v5 bsui_setPrefersExtraCompactNavBarMargin:1];
  navigationController = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)presentReadingListsPopoverFromItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];
  objc_opt_class();
  v9 = [v8 libraryCollectionListViewControllerWithAssetIDs:0 knownAssetTypes:0 knownStoreAssetIDs:0 containsSeriesContainer:0];
  v10 = BUDynamicCast();

  [v10 setSuppressLargeTitle:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B9344;
  v13[3] = &unk_100A03A58;
  v14 = v10;
  v15 = completionCopy;
  v11 = v10;
  v12 = completionCopy;
  [(BKLibraryBookshelfCollectionViewController *)self _showPopoverViewController:v11 fromItem:itemCopy completion:v13];
}

- (void)dismissReadingListPopover
{
  presentedReadingListPopover = [(BKLibraryBookshelfCollectionViewController *)self presentedReadingListPopover];
  [presentedReadingListPopover im_dismissAnimated:0];
}

- (void)_showPopoverViewController:(id)controller fromItem:(id)item completion:(id)completion
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000B951C;
  v17 = &unk_100A04FE8;
  controllerCopy = controller;
  selfCopy = self;
  itemCopy = item;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = itemCopy;
  v10 = controllerCopy;
  v11 = objc_retainBlock(&v14);
  v12 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController:v14];

  if (v12)
  {
    bc_descendentPresentedViewController = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
    [bc_descendentPresentedViewController dismissViewControllerAnimated:1 completion:v11];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (BOOL)canSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v7 = [booksDataSource representedObjectForIndexPath:pathCopy];

  objc_opt_class();
  v8 = BUDynamicCast();
  state = [v8 state];
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing])
  {
    isEditing = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
    if (state == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = isEditing;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldAllowCellSelection
{
  v2 = _AXSFullKeyboardAccessEnabled();
  if (v2)
  {
    LOBYTE(v2) = GSEventIsHardwareKeyboardAttached() != 0;
  }

  return v2;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing:view])
  {
    [(BKLibraryBookshelfCollectionViewController *)self toggleAccessibilityIfNeeded];

    [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
  }
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  objc_opt_class();
  v7 = [viewCopy cellForItemAtIndexPath:pathCopy];
  v8 = BUDynamicCast();

  [v8 handleTapIfPossible];
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing:view])
  {
    [(BKLibraryBookshelfCollectionViewController *)self toggleAccessibilityIfNeeded];

    [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor collectionView:viewCopy willDisplayCell:cellCopy forItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view willDisplaySupplementaryView:(id)supplementaryView forElementKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  supplementaryViewCopy = supplementaryView;
  viewCopy = view;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor collectionView:viewCopy willDisplaySupplementaryView:supplementaryViewCopy forElementKind:kindCopy atIndexPath:pathCopy];
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  viewCopy = view;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor collectionView:viewCopy didEndDisplayingCell:cellCopy forItemAtIndexPath:pathCopy];
}

- (void)collectionView:(id)view didEndDisplayingSupplementaryView:(id)supplementaryView forElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  supplementaryViewCopy = supplementaryView;
  viewCopy = view;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [dataSourceAdaptor collectionView:viewCopy didEndDisplayingSupplementaryView:supplementaryViewCopy forElementOfKind:kindCopy atIndexPath:pathCopy];
}

- (void)collectionView:(id)view willDisplayContextMenuWithConfiguration:(id)configuration animator:(id)animator
{
  v6 = [NSDate date:view];
  contextMenuAppearDate = self->_contextMenuAppearDate;
  self->_contextMenuAppearDate = v6;
}

- (void)collectionView:(id)view willEndContextMenuInteractionWithConfiguration:(id)configuration animator:(id)animator
{
  identifier = [configuration identifier];
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v21 = v7;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    v11 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:v10];
    collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v14 = [collectionView cellForItemAtIndexPath:v8];
    v15 = sub_10078D1C8(self, v11, collection, v14, 0, 0);

    v16 = +[BAEventReporter sharedReporter];
    ba_effectiveAnalyticsTracker = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    contextMenuAppearDate = self->_contextMenuAppearDate;
    v19 = +[BKContextMenuProvider sharedProvider];
    v20 = [v19 analyticsAssetPropertyProviderForDataModel:v15];
    [v16 emitContextualActionSheetExposureEventWithTracker:ba_effectiveAnalyticsTracker startDate:contextMenuAppearDate propertyProvider:v20];
  }

  v9 = self->_contextMenuAppearDate;
  self->_contextMenuAppearDate = 0;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  pathCopy = path;
  contextMenuInteraction = [viewCopy contextMenuInteraction];
  menuAppearance = [contextMenuInteraction menuAppearance];

  if (menuAppearance == 2)
  {
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000B9E6C;
    v18 = &unk_100A06418;
    objc_copyWeak(v21, &location);
    v19 = viewCopy;
    v20 = pathCopy;
    v21[1] = *&x;
    v21[2] = *&y;
    v13 = [UIContextMenuConfiguration configurationWithIdentifier:v20 previewProvider:0 actionProvider:&v15];
    [v13 setPreferredMenuElementOrder:{2, v15, v16, v17, v18}];

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_dci_collectionView:(id)view contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  viewCopy = view;
  pathsCopy = paths;
  contextMenuInteraction = [viewCopy contextMenuInteraction];
  menuAppearance = [contextMenuInteraction menuAppearance];

  if (menuAppearance == 2)
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BA348;
    v13[3] = &unk_100A06440;
    objc_copyWeak(&v15, &location);
    v14 = pathsCopy;
    v11 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];
    [v11 setPreferredMenuElementOrder:2];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)coverEffectsNightMode
{
  objc_opt_class();
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v4 = BUDynamicCast();

  LOBYTE(collectionView) = [v4 currentUserInterfaceStyle] == 2;
  return collectionView;
}

- (BOOL)hasAnySeriesContainerSelected
{
  selfCopy = self;
  selectedBooks = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  LOBYTE(selfCopy) = [(BKLibraryBookshelfCollectionViewController *)selfCopy hasAnySeriesContainerInLibraryAssets:selectedBooks];

  return selfCopy;
}

- (BOOL)hasAnySeriesContainerInLibraryAssets:(id)assets
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetsCopy = assets;
  v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isValid] && (objc_msgSend(v7, "isContainer") & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [assetsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (BOOL)hasAnyDeletableBookSelected
{
  selectedBooks = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  if (selectedBooks)
  {
    v4 = [NSSet setWithArray:selectedBooks];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    supplementaryDataSource = [dataSourceAdaptor supplementaryDataSource];
    collection = [supplementaryDataSource collection];

    v8 = [BKDeleteActionItemsProvider alloc];
    collectionID = [collection collectionID];
    v10 = [v8 initWithBooks:v4 currentCollectionId:collectionID];

    actionItems = [v10 actionItems];
  }

  else
  {
    actionItems = 0;
  }

  v12 = [actionItems count] != 0;

  return v12;
}

- (void)removeForSelectedItems:(id)items
{
  itemsCopy = items;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  trashButton = [itemsCopy trashButton];

  [(BKLibraryBookshelfCollectionViewController *)self _removalAttemptForItemsAtIndexPaths:indexPathsForSelectedItems sourceBarButtonItem:trashButton];
}

- (void)removeForSelectedItems
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  [(BKLibraryBookshelfCollectionViewController *)self _removalAttemptForItemsAtIndexPaths:indexPathsForSelectedItems sourceBarButtonItem:0];
}

- (void)_removalAttemptForItemsAtIndexPaths:(id)paths sourceBarButtonItem:(id)item
{
  pathsCopy = paths;
  itemCopy = item;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:pathsCopy];
  v9 = objc_opt_new();
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      assetID = [v11 assetID];

      if (assetID)
      {
        [v9 addObject:assetID];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  if ([v8 count])
  {
    dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    booksDataSource = [dataSourceAdaptor booksDataSource];
    totalNumberOfItems = [booksDataSource totalNumberOfItems];
    LOBYTE(totalNumberOfItems) = totalNumberOfItems == [v8 count];

    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BAA8C;
    v16[3] = &unk_100A06490;
    v16[4] = self;
    v17 = v9;
    objc_copyWeak(&v18, &location);
    v19 = totalNumberOfItems;
    [(BKLibraryBookshelfCollectionViewController *)self deleteBooks:v8 sourceBarButtonItem:itemCopy completion:v16];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }
}

- (void)shareSelectedItemFromBarButtonItem:(id)item
{
  itemCopy = item;
  selectedBooks = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  if ([selectedBooks count] == 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10078D534;
    v6[3] = &unk_100A03A30;
    v6[4] = self;
    v7 = selectedBooks;
    v8 = itemCopy;
    [(BKLibraryBookshelfCollectionViewController *)self _presentUsingBlock:v6];
  }
}

- (void)addForSelectedItems:(id)items
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  [(BKLibraryBookshelfCollectionViewController *)self _addToCollectionAttemptForItemsAtIndexPaths:indexPathsForSelectedItems];
}

- (void)_addToCollectionAttemptForItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:pathsCopy];
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BAE0C;
  v7[3] = &unk_100A05A00;
  objc_copyWeak(&v9, &location);
  v6 = v5;
  v8 = v6;
  [(BKLibraryBookshelfCollectionViewController *)self _addSelectedBooksToReadingList:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_presentUsingBlock:(id)block
{
  blockCopy = block;
  presentedViewController = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
  presentingViewController = [presentedViewController presentingViewController];

  if (presentingViewController)
  {
    presentedViewController2 = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
    presentingViewController2 = [presentedViewController2 presentingViewController];
    [presentingViewController2 dismissViewControllerAnimated:1 completion:blockCopy];
  }

  else
  {
    blockCopy[2]();
  }
}

- (void)deleteBooks:(id)books sourceBarButtonItem:(id)item completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10078D5C8;
  v10[3] = &unk_100A04FE8;
  selfCopy = self;
  booksCopy = books;
  itemCopy = item;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = itemCopy;
  v9 = booksCopy;
  [(BKLibraryBookshelfCollectionViewController *)selfCopy _presentUsingBlock:v10];
}

- (void)didUpdateLibraryBookshelfLayout:(id)layout
{
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  if ([collectionView isDragging])
  {
  }

  else
  {
    collectionView2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    isDecelerating = [collectionView2 isDecelerating];

    if ((isDecelerating & 1) == 0)
    {
      [(BKLibraryBookshelfCollectionViewController *)self updateActionBarFromMetrics];
      [(BKLibraryBookshelfCollectionViewController *)self updateTitleFromMetrics];
    }
  }

  collectionView3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  backgroundColor = [collectionView3 backgroundColor];
  layout = [(BKLibraryBookshelfCollectionViewController *)self layout];
  mainHeaderMetrics = [layout mainHeaderMetrics];
  headerBackgroundColor = [mainHeaderMetrics headerBackgroundColor];
  v12 = [backgroundColor isEqual:headerBackgroundColor];

  if ((v12 & 1) == 0)
  {
    if ([(BKLibraryBookshelfCollectionViewController *)self hasInitializedCollectionBackgroundColor])
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000BB2F8;
      v17[3] = &unk_100A033C8;
      v17[4] = self;
      [UIView animateWithDuration:v17 animations:0.3];
    }

    else
    {
      [(BKLibraryBookshelfCollectionViewController *)self setHasInitializedCollectionBackgroundColor:1];
      layout2 = [(BKLibraryBookshelfCollectionViewController *)self layout];
      mainHeaderMetrics2 = [layout2 mainHeaderMetrics];
      headerBackgroundColor2 = [mainHeaderMetrics2 headerBackgroundColor];
      collectionView4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [collectionView4 setBackgroundColor:headerBackgroundColor2];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];

  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BB484;
  v10[3] = &unk_100A04410;
  v10[4] = self;
  [coordinatorCopy animateAlongsideTransition:v10 completion:&stru_100A064D0];
}

- (void)selectItemAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  if ([(BKLibraryBookshelfCollectionViewController *)self shouldAllowCellSelection])
  {
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
  }
}

- (void)deselectItemAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  if ([(BKLibraryBookshelfCollectionViewController *)self shouldAllowCellSelection])
  {
    collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [collectionView deselectItemAtIndexPath:pathCopy animated:animatedCopy];
  }
}

- (id)indexPathForCell:(id)cell
{
  cellCopy = cell;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v6 = [collectionView indexPathForCell:cellCopy];

  return v6;
}

- (BOOL)isAudiobookAtIndexpath:(id)indexpath
{
  indexpathCopy = indexpath;
  dataSourceAdaptor = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  booksDataSource = [dataSourceAdaptor booksDataSource];
  v7 = [booksDataSource representedObjectForIndexPath:indexpathCopy];

  LOBYTE(dataSourceAdaptor) = [v7 isAudiobook];
  return dataSourceAdaptor;
}

- (id)bkaxLabel
{
  collection = [(BKLibraryBookshelfCollectionViewController *)self collection];
  localizedTitle = [collection localizedTitle];

  return localizedTitle;
}

- (void)didBecomeVisibleContentScrollView
{
  tabBarController = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  [tabBarController bc_setPreferredTabBarScrollEdgeAppearance:0];

  tabBarController2 = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  selectedViewController = [tabBarController2 selectedViewController];
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [selectedViewController setContentScrollView:collectionView forEdge:4];
}

- (void)_bkAccessibilityFocusCollectionView
{
  v2 = UIAccessibilityLayoutChangedNotification;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  UIAccessibilityPostNotification(v2, collectionView);
}

- (BOOL)accessibilityPerformEscape
{
  isEditing = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  if (isEditing)
  {
    [(BKLibraryBookshelfCollectionViewController *)self doneForSelectedItems:0];
  }

  return isEditing;
}

- (CGPoint)previousContentOffset
{
  x = self->_previousContentOffset.x;
  y = self->_previousContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIViewController)presentedReadingListPopover
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedReadingListPopover);

  return WeakRetained;
}

- (BOOL)hasSelectedItems
{
  selfCopy = self;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    indexPathsForSelectedItems = [(UICollectionView *)collectionView indexPathsForSelectedItems];

    if (indexPathsForSelectedItems)
    {
      sub_100796E74();
      sub_1007A25E4();

      sub_1001F1160(&qword_100ADA958);
      sub_1002CD1B4(&unk_100ADA960, &qword_100ADA958);
      LOBYTE(indexPathsForSelectedItems) = sub_1007A28A4();
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(indexPathsForSelectedItems) = 0;
  }

  return indexPathsForSelectedItems & 1;
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  collectionView = [(BKLibraryBookshelfCollectionViewController *)selfCopy collectionView];
  if (collectionView)
  {
    v4 = collectionView;
    sub_1001F1160(&unk_100AD8160);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100811390;
    *(v5 + 32) = v4;
  }

  sub_1001F1160(&qword_100ADAA18);
  v6.super.isa = sub_1007A25D4().super.isa;

  return v6.super.isa;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = BKLibraryBookshelfCollectionViewController.keyCommands.getter();

  if (v3)
  {
    sub_10000A7C4(0, &qword_100ADA970);
    v4.super.isa = sub_1007A25D4().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = BKLibraryBookshelfCollectionViewController.canPerformAction(_:withSender:)(action, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  BKLibraryBookshelfCollectionViewController.validate(_:)(commandCopy);
}

- (void)updateBarButtonsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  if ([(BKLibraryBookshelfCollectionViewController *)selfCopy isEditing])
  {
    sub_1002DCF38(animatedCopy);
  }

  else
  {
    sub_1002DD76C(animatedCopy);
  }

  sub_1002DE4E8();
}

- (void)viewModeChanged
{
  selfCopy = self;
  BKLibraryBookshelfCollectionViewController.viewModeChanged()();
}

- (void)sortModeChanged
{
  selfCopy = self;
  BKLibraryBookshelfCollectionViewController.sortModeChanged()();
}

- (void)editButtonPressed:(id)pressed
{
  if (pressed)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    selfCopy2 = self;
  }

  v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor:v8];
  actionHandler = [(BKLibraryDataSourceAdaptor *)v6 actionHandler];

  [(BKLibraryActionHandler *)actionHandler toggleEditMode];
  sub_100007840(&v8, &unk_100AD5B40);
}

- (void)largeTitleVisibilityDidChangeWithIsVisible:(BOOL)visible
{
  visibleCopy = visible;
  selfCopy = self;
  v4 = _UISolariumEnabled();
  v5 = selfCopy;
  if ((v4 & 1) == 0)
  {
    v6 = sub_1002E1288();
    v5 = selfCopy;
    if (v6)
    {
      v7 = v6;
      if ([v6 isHidden] != visibleCopy)
      {
        [v7 setHidden:visibleCopy];
      }

      v5 = selfCopy;
    }
  }
}

- (void)dragAndDropSessionDidStart
{
  selfCopy = self;
  dragAndDropSessionsActive = [(BKLibraryBookshelfCollectionViewController *)selfCopy dragAndDropSessionsActive];
  if (__OFADD__(dragAndDropSessionsActive, 1))
  {
    __break(1u);
  }

  else
  {
    [(BKLibraryBookshelfCollectionViewController *)selfCopy setDragAndDropSessionsActive:dragAndDropSessionsActive + 1];
    [(BKLibraryBookshelfCollectionViewController *)selfCopy configureForDragAndDropSession];
  }
}

- (void)dragAndDropSessionDidEnd
{
  selfCopy = self;
  dragAndDropSessionsActive = [(BKLibraryBookshelfCollectionViewController *)selfCopy dragAndDropSessionsActive];
  if (__OFSUB__(dragAndDropSessionsActive, 1))
  {
    __break(1u);
  }

  else
  {
    [(BKLibraryBookshelfCollectionViewController *)selfCopy setDragAndDropSessionsActive:dragAndDropSessionsActive - 1];
    [(BKLibraryBookshelfCollectionViewController *)selfCopy configureForDragAndDropSession];
  }
}

- (void)configureForDragAndDropSession
{
  sub_10000A7C4(0, &qword_100AD1E10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;

  sub_1007A2CD4();
}

- (void)books_createCollection:(id)collection
{
  if (!collection)
  {
    memset(v6, 0, sizeof(v6));
    selfCopy = self;
    if (_UISolariumEnabled())
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1002E1070(sub_1002E4B60, 0);
    goto LABEL_6;
  }

  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_1007A3504();
  swift_unknownObjectRelease();
  if (!_UISolariumEnabled())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1002E0E40(sub_1002E4B60, 0);
LABEL_6:

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_createCollectionFromSelection:(id)selection
{
  if (selection)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1002E20DC();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_addSelectionToCollection:(id)collection
{
  if (collection)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1002E2760(v6);

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)createSeriesViewControllerFromSeriesContainer:(BKLibraryAsset *)container withParentTracker:(_TtC13BookAnalytics9BATracker *)tracker completion:(id)completion
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = container;
  v13[3] = tracker;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1007A2744();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100818A48;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10081C0F0;
  v16[5] = v15;
  containerCopy = container;
  trackerCopy = tracker;
  selfCopy = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end
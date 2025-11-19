@interface BKLibraryBookshelfCollectionViewController
- (BKLibraryBookshelfCollectionViewController)init;
- (BOOL)_isErrorFromUserCanceled:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canSelectItemAtIndexPath:(id)a3;
- (BOOL)coverAnimationHostIsFullyVisible:(id)a3;
- (BOOL)coverEffectsNightMode;
- (BOOL)editableCollection;
- (BOOL)hasAnyDeletableBookSelected;
- (BOOL)hasAnySeriesContainerInLibraryAssets:(id)a3;
- (BOOL)hasAnySeriesContainerSelected;
- (BOOL)hasSelectedItems;
- (BOOL)isAudiobookAtIndexpath:(id)a3;
- (BOOL)isSeriesCollection;
- (BOOL)isSupplementalContentPDFPicker;
- (BOOL)reorderableCollection;
- (BOOL)shouldAllowCellSelection;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGPoint)previousContentOffset;
- (NSArray)keyCommands;
- (NSArray)preferredFocusEnvironments;
- (NSArray)selectedBooks;
- (UIViewController)presentedReadingListPopover;
- (id)_contentDataForContentID:(id)a3 tracker:(id)a4;
- (id)_dci_collectionView:(id)a3 contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)_libraryAssetWithContentID:(id)a3;
- (id)_supplementalContentCount;
- (id)_transactionForStorePresentingAction;
- (id)bkaxLabel;
- (id)booksAtIndexPaths:(id)a3;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)coverAnimationHostSourceForItem:(id)a3;
- (id)indexPathForCell:(id)a3;
- (id)navigationItem;
- (int64_t)_contentTypeForContentID:(id)a3 withLibraryAsset:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_addSelectedBooksToReadingList:(id)a3 completion:(id)a4;
- (void)_addToCollectionAttemptForItemsAtIndexPaths:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_bkAccessibilityFocusCollectionView;
- (void)_configureSupplementalContentPDFPicker;
- (void)_didChangePreferredContentSize:(id)a3;
- (void)_dismissIfSupplementContentPDFPicker;
- (void)_dismissOverlayViewController:(id)a3;
- (void)_downloadBook:(id)a3;
- (void)_downloadSample:(id)a3 completion:(id)a4;
- (void)_emitAllInSeriesViewEventIfNeeded;
- (void)_openBook:(id)a3 completion:(id)a4;
- (void)_openStoreSample:(id)a3;
- (void)_playPreview:(id)a3 completion:(id)a4;
- (void)_presentUsingBlock:(id)a3;
- (void)_refreshSeriesContainer:(id)a3;
- (void)_removalAttemptForItemsAtIndexPaths:(id)a3 sourceBarButtonItem:(id)a4;
- (void)_setCollectionViewSelectionFollowsFocus;
- (void)_showBooksInSectionAtIndexPath:(id)a3;
- (void)_showInternetReachabilityErrorAlert:(id)a3;
- (void)_showOverlayViewController:(id)a3;
- (void)_showPopoverViewController:(id)a3 fromItem:(id)a4 completion:(id)a5;
- (void)addDoneButton:(BOOL)a3 forPresentationController:(id)a4;
- (void)addForSelectedItems:(id)a3;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)bc_environmentDidChangeFont;
- (void)bc_tabBarControllerWillSelectViewController:(id)a3;
- (void)bookTapped:(id)a3 completion:(id)a4;
- (void)books_addSelectionToCollection:(id)a3;
- (void)books_createCollection:(id)a3;
- (void)books_createCollectionFromSelection:(id)a3;
- (void)cancelButtonPressed:(id)a3;
- (void)cancelDownloadBook:(id)a3;
- (void)changeSortModeTo:(unint64_t)a3;
- (void)changeViewModeTo:(unint64_t)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6;
- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5;
- (void)configureForDragAndDropSession;
- (void)coverAnimationHostScrollToMakeVisible:(id)a3;
- (void)createSeriesViewControllerFromSeriesContainer:(BKLibraryAsset *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 completion:(id)a5;
- (void)dealloc;
- (void)deleteBooks:(id)a3 sourceBarButtonItem:(id)a4 completion:(id)a5;
- (void)deselectAll;
- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)didBecomeVisibleContentScrollView;
- (void)didUpdateLibraryBookshelfLayout:(id)a3;
- (void)directBuyTapped:(id)a3 buyParameters:(id)a4 completion:(id)a5;
- (void)dismissPDFPicker;
- (void)dismissReadingListPopover;
- (void)dragAndDropSessionDidEnd;
- (void)dragAndDropSessionDidStart;
- (void)editButtonPressed:(id)a3;
- (void)explicitContentRestrictedChanged;
- (void)largeTitleVisibilityDidChangeWithIsVisible:(BOOL)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openItemAtIndexPath:(id)a3 completion:(id)a4;
- (void)openSelectedBooks;
- (void)openSeriesContainer:(id)a3;
- (void)preferredContentSizeChanged:(id)a3;
- (void)presentReadingListsPopoverFromItem:(id)a3 completion:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)reloadData;
- (void)removeForSelectedItems;
- (void)removeForSelectedItems:(id)a3;
- (void)resumeDownloadBook:(id)a3;
- (void)scrollToMakeLibraryAssetIDVisible:(id)a3;
- (void)selectAll;
- (void)selectAllButtonPressed:(id)a3;
- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setCollection:(id)a3;
- (void)setDataSourceAdaptor:(id)a3;
- (void)setDragDelegate:(id)a3;
- (void)setDropDelegate:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)shareSelectedItemFromBarButtonItem:(id)a3;
- (void)showReadingListsForActionHandler:(id)a3;
- (void)sortModeChanged;
- (void)toggleAccessibilityIfNeeded;
- (void)updateActionBarForSelection;
- (void)updateActionBarFromMetrics;
- (void)updateBarButtonsAnimated:(BOOL)a3;
- (void)updateTabBarControllerForEditing:(BOOL)a3;
- (void)updateTitleFromMetrics;
- (void)updateViewModeIfNeeded;
- (void)validateCommand:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewModeChanged;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
    v5 = [(BKLibraryBookshelfCollectionViewController *)self title];
    v6 = [v4 initWithTitle:v5];
    v7 = self->_bsuiNavigationItem;
    self->_bsuiNavigationItem = v6;

    bsuiNavigationItem = self->_bsuiNavigationItem;
  }

  return bsuiNavigationItem;
}

- (void)setCollection:(id)a3
{
  v5 = a3;
  collection = self->_collection;
  if (collection != v5)
  {
    v7 = v5;
    [(BKCollection *)collection removeObserver:self forKeyPath:@"sortMode" context:off_100ACD3B8];
    [(BKCollection *)self->_collection removeObserver:self forKeyPath:@"localizedTitle" context:off_100ACD3C0];
    objc_storeStrong(&self->_collection, a3);
    [(BKCollection *)self->_collection addObserver:self forKeyPath:@"sortMode" options:0 context:off_100ACD3B8];
    [(BKCollection *)self->_collection addObserver:self forKeyPath:@"localizedTitle" options:0 context:off_100ACD3C0];
    v5 = v7;
  }
}

- (void)setDataSourceAdaptor:(id)a3
{
  v5 = a3;
  dataSourceAdaptor = self->_dataSourceAdaptor;
  if (dataSourceAdaptor != v5)
  {
    v16 = v5;
    [(BKLibraryDataSourceAdaptor *)dataSourceAdaptor removeObserver:self forKeyPath:@"currentStoreAccountID" context:off_100ACD3C8];
    [(BKCollection *)self->_allBooksCollection removeObserver:self forKeyPath:@"viewMode" context:off_100ACD3D0];
    objc_storeStrong(&self->_dataSourceAdaptor, a3);
    v7 = [(BKLibraryDataSourceAdaptor *)v16 supplementaryDataSource];
    v8 = [v7 canChangeViewMode];

    allBooksCollection = self->_allBooksCollection;
    if (v8)
    {
      if (allBooksCollection)
      {
LABEL_7:
        [(BKLibraryDataSourceAdaptor *)self->_dataSourceAdaptor addObserver:self forKeyPath:@"currentStoreAccountID" options:0 context:off_100ACD3C8];
        [(BKCollection *)self->_allBooksCollection addObserver:self forKeyPath:@"viewMode" options:0 context:off_100ACD3D0];
        v5 = v16;
        goto LABEL_8;
      }

      allBooksCollection = +[BKLibraryManager defaultManager];
      v10 = [allBooksCollection collectionController];
      v11 = kBKCollectionDefaultAll;
      v12 = +[BKLibraryManager defaultManager];
      v13 = [v12 uiChildContext];
      v14 = [v10 mutableCollectionWithCollectionID:v11 inManagedObjectContext:v13 error:0];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_100ACD3C8 == a6)
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

  if (off_100ACD3D0 == a6)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B22D0;
    v23[3] = &unk_100A033C8;
    v23[4] = self;
    v13 = v23;
    goto LABEL_9;
  }

  if (off_100ACD3B8 == a6)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B234C;
    block[3] = &unk_100A033C8;
    block[4] = self;
    v13 = block;
    goto LABEL_9;
  }

  if (off_100ACD3C0 == a6)
  {
    v14 = [(BKLibraryBookshelfCollectionViewController *)self collection];
    v15 = [v14 isDefaultCollection];

    if ((v15 & 1) == 0)
    {
      v16 = [(BKLibraryBookshelfCollectionViewController *)self collection];
      v17 = [v16 localizedTitle];

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000B2420;
      v20[3] = &unk_100A03440;
      v20[4] = self;
      v21 = v17;
      v18 = v17;
      dispatch_async(&_dispatch_main_q, v20);
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = BKLibraryBookshelfCollectionViewController;
    [(BKLibraryBookshelfCollectionViewController *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_10:
}

- (void)_didChangePreferredContentSize:(id)a3
{
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v3 = [v4 collectionViewLayout];
  [v3 invalidateLayout];
}

- (void)changeViewModeTo:(unint64_t)a3
{
  v11 = [(BKLibraryBookshelfCollectionViewController *)self allBooksCollection];
  if (v11)
  {
    v5 = [NSNumber numberWithUnsignedInteger:a3];
    v6 = [v11 setDifferentNumber:v5 forKey:@"viewMode"];

    if (v6)
    {
      v7 = +[BKLibraryManager defaultManager];
      v8 = [v11 managedObjectContext];
      [v7 saveManagedObjectContext:v8];
    }
  }

  else
  {
    v9 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v10 = [v9 supplementaryDataSource];
    [v10 setViewMode:a3];

    [(BKLibraryBookshelfCollectionViewController *)self viewModeChanged];
  }
}

- (void)updateViewModeIfNeeded
{
  if (self->_needsUpdateViewMode)
  {
    self->_needsUpdateViewMode = 0;
    v3 = [(BKLibraryBookshelfCollectionViewController *)self allBooksCollection];
    v4 = [v3 resolvedViewMode];

    v5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v6 = [v5 supplementaryDataSource];
    v7 = [v6 viewMode];

    if (v7 != v4)
    {
      v8 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      v9 = [v8 supplementaryDataSource];
      [v9 setViewMode:v4];

      [(BKLibraryBookshelfCollectionViewController *)self viewModeChanged];
    }
  }
}

- (void)changeSortModeTo:(unint64_t)a3
{
  if (a3 - 11 < 0xFFFFFFFFFFFFFFF6)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3;
  }

  v11 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  if (v11)
  {
    v5 = [NSNumber numberWithUnsignedInteger:v4];
    v6 = [v11 setDifferentNumber:v5 forKey:@"sortMode"];

    if (v6)
    {
      v7 = +[BKLibraryManager defaultManager];
      v8 = [v11 managedObjectContext];
      [v7 saveManagedObjectContext:v8];
    }
  }

  else
  {
    v9 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v10 = [v9 supplementaryDataSource];
    [v10 setSortMode:v4];

    if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
    {
      [BKCollection setSortModeForSeriesCollections:v4];
      [(BKLibraryBookshelfCollectionViewController *)self _emitAllInSeriesViewEventIfNeeded];
    }

    [(BKLibraryBookshelfCollectionViewController *)self sortModeChanged];
  }
}

- (void)bc_environmentDidChangeFont
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v2 = [v3 collectionViewLayout];
  [v2 invalidateLayout];
}

- (BOOL)isSeriesCollection
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v3 = [v2 supplementaryDataSource];
  v4 = [v3 collectionIsSeries];

  return v4;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v4 = BKLibraryLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Resume removing from My Samples as app is now background", v7, 2u);
  }

  v5 = +[BSUIStoreServices sharedInstance];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  [v5 resumeRemovingFromMySamplesWithTracker:v6];
}

- (void)_applicationWillEnterForeground:(id)a3
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
  v4 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v5 = [v4 supplementaryDataSource];
  v6 = [v5 supplementalContentStorePlaylistID];
  v7 = [v3 uiChildContext];
  v8 = [v3 libraryMutableAssetWithAssetID:v6 inManagedObjectContext:v7];

  v9 = [v8 supplementalContentAssets];
  v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);

  return v10;
}

- (void)setDragDelegate:(id)a3
{
  objc_storeStrong(&self->_dragDelegate, a3);
  v5 = a3;
  v6 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v6 setDragDelegate:v5];
}

- (void)setDropDelegate:(id)a3
{
  objc_storeStrong(&self->_dropDelegate, a3);
  v5 = a3;
  v6 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v6 setDropDelegate:v5];
}

- (void)loadView
{
  v3 = +[BURestrictionsProvider sharedInstance];
  [v3 addObserver:self];

  v4 = [[UIView alloc] initWithFrame:{0.0, 0.0, 500.0, 500.0}];
  [(BKLibraryBookshelfCollectionViewController *)self setWrapperView:v4];

  v5 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [v5 setAutoresizingMask:18];

  v6 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [v6 setAutoresizesSubviews:1];

  v7 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [(BKLibraryBookshelfCollectionViewController *)self setView:v7];

  v8 = [BKLibraryBookshelfCollectionView alloc];
  v9 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v54 = [(BKLibraryBookshelfCollectionView *)v8 initWithFrame:v9 collectionViewLayout:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];

  [(BKLibraryBookshelfCollectionView *)v54 setBkaxLabelProvider:self];
  [(BKLibraryBookshelfCollectionViewController *)self setCollectionView:v54];
  v10 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v11 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v11 setDataSource:v10];

  v12 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v12 setDelegate:self];

  v13 = [(BKLibraryBookshelfCollectionViewController *)self dragDelegate];
  v14 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v14 setDragDelegate:v13];

  v15 = [(BKLibraryBookshelfCollectionViewController *)self dropDelegate];
  v16 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v16 setDropDelegate:v15];

  v17 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v17 setAllowsSelection:1];

  v18 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v18 setAllowsMultipleSelection:1];

  v19 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v19 setAllowsMultipleSelectionDuringEditing:1];

  v20 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v20 setAutoresizingMask:18];

  v21 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v21 setReorderingCadence:1];

  LODWORD(v21) = [(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker];
  v22 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v22 setDragInteractionEnabled:v21 ^ 1];

  v23 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v23 setAlwaysBounceVertical:1];

  [(BKLibraryBookshelfCollectionViewController *)self _setCollectionViewSelectionFollowsFocus];
  v24 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v25 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v25 setCollectionView:v24];

  v26 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v27 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v28 = [v27 booksDataSource];
  [v28 setDelegate:v26];

  v29 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v29 reloadData];

  v30 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  v31 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v30 addSubview:v31];

  v32 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v41 setFrame:{v34, v36, v38, v40}];

  v42 = objc_alloc_init(BKLibraryBookshelfSelectedActionBarViewController);
  [(BKLibraryBookshelfCollectionViewController *)self setActionBarViewController:v42];

  v43 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [v43 setDelegate:self];

  v44 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [(BKLibraryBookshelfCollectionViewController *)self addChildViewController:v44];

  v45 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [v45 loadViewIfNeeded];

  v46 = [(BKLibraryBookshelfCollectionViewController *)self wrapperView];
  v47 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  v48 = [v47 view];
  [v46 addSubview:v48];

  v49 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  v50 = [v49 view];
  [v50 setHidden:1];

  v51 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  v52 = [v51 view];
  [v52 setAlpha:0.0];

  v53 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  [v53 didMoveToParentViewController:self];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v6 viewDidLoad];
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:0];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
  [v3 _setSupportsTwoLineLargeTitles:1];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = objc_alloc_init(BKLibraryCollectionTitleView);
    [(BKLibraryCollectionTitleView *)v4 setDelegate:self];
    v5 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [v5 setTitleView:v4];
  }

  [(BKLibraryBookshelfCollectionViewController *)self _configureSupplementalContentPDFPicker];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v21.receiver = self;
  v21.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v21 viewIsAppearing:a3];
  if (self->_appearingForFirstTime)
  {
    self->_appearingForFirstTime = 0;
    v4 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
    v5 = [v4 navigationBar];
    v6 = [v5 _restingHeights];

    v7 = [(BKLibraryBookshelfCollectionViewController *)self view];
    [v7 safeAreaInsets];
    v9 = v8;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v6;
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

    v16 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v16 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:1];
    [v16 setContentOffset:{0.0, -(v9 + 1.0)}];
    [v16 _setShouldContentOffsetAlwaysIgnoreSafeAreaInsetsChange:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v22.receiver = self;
  v22.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v22 viewWillAppear:a3];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  v5 = [v4 collectionID];
  v6 = [v5 isEqualToString:kBKCollectionDefaultIDFinished];

  if (v6)
  {
    v7 = +[BKLibraryManager defaultManager];
    [v7 cleanupDateFinished];
  }

  v8 = [(BKLibraryBookshelfCollectionViewController *)self ba_analyticsTracker];

  if (!v8)
  {
    v9 = [(BKLibraryBookshelfCollectionViewController *)self ba_setupNewAnalyticsTrackerWithName:@"Collection"];
  }

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"preferredContentSizeChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKLibraryBookshelfCollectionViewController *)self setHasInitializedCollectionBackgroundColor:0];
  [(BKLibraryBookshelfCollectionViewController *)self updateViewModeIfNeeded];
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:0];
  [(BKLibraryBookshelfCollectionViewController *)self configureForDragAndDropSession];
  v11 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v12 = [v11 supplementaryDataSource];
  [v12 updateSettingsForMajorVisibilityChange];

  v13 = +[BKLibraryManager defaultManager];
  v14 = [v13 priceManager];
  [v14 invalidate:0];

  v15 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v16 = [v15 panGestureRecognizer];
  v17 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  v18 = [v17 interactivePopGestureRecognizer];
  [v16 requireGestureRecognizerToFail:v18];

  v19 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  v20 = [v19 navigationBar];
  v21 = +[UIColor bc_booksKeyColor];
  [v20 setTintColor:v21];

  [(BKLibraryBookshelfCollectionViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  v5 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [v5 updateMetricsWithViewController:self];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [v3 updateMetricsWithViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  [v3 updateMetricsWithViewController:self];

  [(BKLibraryBookshelfCollectionViewController *)self updateTitleFromMetrics];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self bsui_hasLargeTitle];
  [(BKLibraryBookshelfCollectionViewController *)self bsui_configureHideSmallTitleOnScroll:v4];
  if (self->_isFirstLayout)
  {
    self->_isFirstLayout = 0;
    if ((+[BSUIDefaults disableTabBarL2LargeTitleScrollOffsetWorkaround]& 1) == 0 && ((v4 ^ 1) & 1) == 0)
    {
      v5 = [(BKLibraryBookshelfCollectionViewController *)self traitCollection];
      v6 = [v5 horizontalSizeClass];

      if (v6 != 1)
      {
        v7 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
        [v7 _scrollToTopIfPossible:0];
      }
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v11 viewDidAppear:a3];
  [(BKLibraryBookshelfCollectionViewController *)self bc_analyticsVisibilityUpdateSubtree];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  v5 = [v4 collectionID];
  v6 = [v5 isEqualToString:kBKCollectionDefaultIDSamples];

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

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v4 viewWillDisappear:a3];
  [(BKLibraryBookshelfCollectionViewController *)self dismissReadingListPopover];
  [(BKLibraryBookshelfCollectionViewController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v13 viewDidDisappear:a3];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  v5 = [v4 collectionID];
  v6 = [v5 isEqualToString:kBKCollectionDefaultIDSamples];

  if (v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Resume removing from My Samples", v12, 2u);
    }

    v8 = +[BSUIStoreServices sharedInstance];
    v9 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    [v8 resumeRemovingFromMySamplesWithTracker:v9];

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
    v3 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v4 = [v3 supplementaryDataSource];
    v5 = [v4 sortMode];

    if (v5 == 10)
    {
      v13 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
      v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      v7 = [v6 supplementaryDataSource];
      v8 = [v7 seriesID];

      v9 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      v10 = [v9 booksDataSource];
      v11 = [v10 totalNumberOfItems];

      v12 = +[BAEventReporter sharedReporter];
      [v12 emitAllInSeriesViewEventWithTracker:v13 collectionID:v8 collectionItemCount:v11];
    }
  }
}

- (void)bc_analyticsVisibilityDidAppear
{
  v14.receiver = self;
  v14.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v14 bc_analyticsVisibilityDidAppear];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v5 = [v4 supplementaryDataSource];
  v6 = [v5 supplementalContentPDFPicker];

  if (v6)
  {
    v7 = +[BAEventReporter sharedReporter];
    v8 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v9 = [v8 supplementaryDataSource];
    v10 = [v9 supplementalContentStorePlaylistID];
    v11 = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
    [v7 emitPageViewEventForSupplementalContentPDFWithTracker:v3 contentID:v10 supplementalContentCount:v11];
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
  v3 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v4 = [v3 supplementaryDataSource];
  v5 = [v4 supplementalContentPDFPicker];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self collection];
    v8 = [v7 collectionID];
    v9 = [v8 isEqualToString:kBKCollectionDefaultAll];

    if (v9)
    {
      v50 = v6;
      v10 = objc_opt_new();
      v47 = self;
      v11 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
      v12 = [v11 booksDataSource];

      v48 = v12;
      if ([v12 numberOfSections])
      {
        v13 = 0;
        do
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v49 = v13;
          obj = [v12 representedObjectsInSection:v13];
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
                  v19 = [v18 assetID];
                  v20 = [v50 contentPrivateIDForContentID:v19];
                  v21 = [v50 contentUserIDForContentID:v19];
                  v22 = v10;
                  v23 = +[BAUtilities contentTypeFromAssetType:](BAUtilities, "contentTypeFromAssetType:", [v18 contentType]);
                  v24 = [BALibraryItemTypeData alloc];
                  v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 isSample]);
                  v26 = v23;
                  v10 = v22;
                  v27 = [v24 initWithContentPrivateID:v20 contentUserID:v21 contentType:v26 contentID:v19 isSample:v25];

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

          v12 = v48;
          v13 = v49 + 1;
        }

        while (v49 + 1 < [v48 numberOfSections]);
      }

      v28 = +[BAEventReporter sharedReporter];
      analyticsStartDate = v47->_analyticsStartDate;
      v30 = [(BKLibraryBookshelfCollectionViewController *)v47 dataSourceAdaptor];
      v31 = [v30 supplementaryDataSource];
      v32 = [v31 viewMode];
      if (v32 == 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2 * (v32 == 2);
      }

      v34 = [(BKLibraryBookshelfCollectionViewController *)v47 dataSourceAdaptor];
      v35 = [v34 supplementaryDataSource];
      v36 = [v35 sortMode] - 1;
      if (v36 > 5)
      {
        v37 = 0;
      }

      else
      {
        v37 = qword_10080B2D0[v36];
      }

      v6 = v50;
      [v28 emitLibraryViewEventWithTracker:v50 startDate:analyticsStartDate librarySummary:v10 displayType:v33 sortType:v37];

      v44 = v48;
    }

    else
    {
      if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
      {
        v38 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        v39 = [v38 supplementaryDataSource];
        v40 = [v39 seriesID];

        v41 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        v42 = [v41 booksDataSource];
        v43 = [v42 totalNumberOfItems];
      }

      else
      {
        v45 = [(BKLibraryBookshelfCollectionViewController *)self collection];
        v40 = [v45 collectionID];

        v41 = [(BKLibraryBookshelfCollectionViewController *)self collection];
        v42 = [v41 members];
        v43 = [v42 count];
      }

      v46 = v43;

      v44 = +[BAEventReporter sharedReporter];
      [v44 emitCollectionScreenViewEventWithTracker:v6 startDate:self->_analyticsStartDate collectionID:v40 collectionItemCount:v46];
      v10 = v40;
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

- (void)bc_tabBarControllerWillSelectViewController:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  v12 = [v5 selectedViewController];

  v6 = v12;
  if (v12 != v4)
  {
    v7 = [v12 im_isAncestorOfChildViewController:self];
    v6 = v12;
    if (v7)
    {
      v8 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
      [v8 dismissViewControllerAnimated:0 completion:0];

      v9 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      v10 = [v9 view];
      v11 = [v10 isHidden];

      v6 = v12;
      if ((v11 & 1) == 0)
      {
        [(BKLibraryBookshelfCollectionViewController *)self setEditing:0 animated:0];
        v6 = v12;
      }
    }
  }
}

- (BOOL)editableCollection
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v3 = [v2 editableCollection];

  return v3;
}

- (BOOL)reorderableCollection
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v3 = [v2 reorderableCollection];

  return v3;
}

- (void)preferredContentSizeChanged:(id)a3
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v3 reloadData];
}

- (BOOL)isSupplementalContentPDFPicker
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v3 = [v2 supplementaryDataSource];
  v4 = [v3 supplementalContentPDFPicker];

  return v4;
}

- (void)reloadData
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v3 reloadData];

  v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v4 reloadData];
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

- (void)scrollToMakeLibraryAssetIDVisible:(id)a3
{
  v4 = a3;
  v11 = +[BKLibraryManager defaultManager];
  v5 = [v11 uiChildContext];
  v6 = [v11 libraryMutableAssetWithAssetID:v4 inManagedObjectContext:v5];

  if (v6)
  {
    v7 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v8 = [v7 booksDataSource];
    v9 = [v8 indexPathForRepresentedObject:v6];

    if (v9)
    {
      v10 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v10 scrollToItemAtIndexPath:v9 atScrollPosition:2 animated:0];
    }
  }
}

- (void)openSeriesContainer:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4658;
  v7[3] = &unk_100A06260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(BKLibraryBookshelfCollectionViewController *)self createSeriesViewControllerFromSeriesContainer:v6 withParentTracker:v5 completion:v7];
}

- (void)_refreshSeriesContainer:(id)a3
{
  v3 = a3;
  v4 = +[BUBag defaultBag];
  v5 = [v4 seriesInfoLiveFetchesEnabled];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4A9C;
  v7[3] = &unk_100A06288;
  v8 = v3;
  v6 = v3;
  [v5 valueWithCompletion:v7];
}

- (void)_configureSupplementalContentPDFPicker
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker])
  {
    v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [(BKLibraryBookshelfCollectionViewController *)self setContentScrollView:v3 forEdge:1];

    v4 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v5 = [v4 supplementaryDataSource];
    v6 = [v5 supplementalContentPDFPickerTitle];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [v7 setTitle:v6];

    v8 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [v8 setLargeTitleDisplayMode:2];

    v9 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [v9 setRightBarButtonItem:0];

    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"cancelButtonPressed:"];
    v10 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v11 animated:0];
  }
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = +[BAEventReporter sharedReporter];
  v5 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v7 = [v6 supplementaryDataSource];
  v8 = [v7 supplementalContentStorePlaylistID];
  v9 = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
  [v4 emitCloseSupplementalContentPDFPickerWithTracker:v5 contentID:v8 supplementalContentCount:v9];

  [(BKLibraryBookshelfCollectionViewController *)self _dismissIfSupplementContentPDFPicker];
}

- (void)selectAllButtonPressed:(id)a3
{
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];
  v6 = [v5 count];

  v7 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v8 = [v7 booksDataSource];
  v9 = [v8 totalNumberOfItems];

  if (v6 == v9)
  {

    [(BKLibraryBookshelfCollectionViewController *)self deselectAll];
  }

  else
  {

    [(BKLibraryBookshelfCollectionViewController *)self selectAll];
  }
}

- (void)addDoneButton:(BOOL)a3 forPresentationController:(id)a4
{
  v4 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v6 presentedViewController];

  v13 = BUDynamicCast();

  v8 = v13;
  if (v13)
  {
    v9 = [v13 topViewController];
    v10 = [v9 navigationItem];
    v11 = v10;
    if (v4)
    {
      v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
      [v11 setRightBarButtonItem:v12 animated:0];
    }

    else
    {
      [v10 setRightBarButtonItem:0 animated:0];
    }

    v8 = v13;
  }
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(BKLibraryBookshelfCollectionViewController *)self addSelectedBooksCompletion];
  if (v4)
  {
    v4[2](v4, 0);
  }

  [(BKLibraryBookshelfCollectionViewController *)self setAddSelectedBooksCompletion:0];
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v5 = [v4 horizontalSizeClass];
  v6 = [v4 verticalSizeClass];

  if (v6 == 1 || v5 == 1)
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
  v2 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v2 setSelectionFollowsFocus:1];
}

- (id)coverAnimationHostSourceForItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [BKLibraryBookOpenAnimatingSourceProxy alloc];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v8 = [(BKLibraryBookOpenAnimatingSourceProxy *)v6 initWithLibraryAsset:v5 coverHost:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)coverAnimationHostScrollToMakeVisible:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v12 = BUDynamicCast();

  v5 = [v12 libraryAsset];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v7 = [v6 booksDataSource];
  v8 = [v7 indexPathForRepresentedObject:v5];

  if (v8)
  {
    v9 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    [v9 setCoverAnimationRunningHack:1];

    v10 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v10 scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:0];

    v11 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v11 layoutIfNeeded];
  }
}

- (BOOL)coverAnimationHostIsFullyVisible:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [v5 libraryAsset];
  v7 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v8 = [v7 booksDataSource];
  v9 = [v8 indexPathForRepresentedObject:v6];

  if (v9 && (-[BKLibraryBookshelfCollectionViewController collectionView](self, "collectionView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 indexPathsForVisibleItems], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v9), v11, v10, v12))
  {
    v13 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v14 = [v13 cellForItemAtIndexPath:v9];

    if (v14)
    {
      [v14 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v23 contentOffset];
      v25 = v24;
      v26 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v26 bounds];
      v28 = v27;
      v29 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v29 verticalScrollIndicatorInsets];
      v31 = v30;

      v37.origin.x = v16;
      v37.origin.y = v18;
      v37.size.width = v20;
      v37.size.height = v22;
      MinY = CGRectGetMinY(v37);
      v33 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v33 contentOffset];
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

- (void)_openBook:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
  v9 = [v6 permanentOrTemporaryAssetID];
  v10 = BKLibraryLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D708();
  }

  v11 = objc_opt_new();
  v12 = [BKAppDelegate sceneControllerForViewController:self];
  v13 = [v12 newShowAssetTransaction];

  if (v13)
  {
    [v11 setObject:v13 forKeyedSubscript:BCTransactionOptionsTransactionKey];
  }

  v14 = [v6 assetLogID];
  [v11 setObject:v14 forKeyedSubscript:AEAssetLogID];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B5870;
  v17[3] = &unk_100A062B0;
  v19 = self;
  v20 = v7;
  v18 = v6;
  v15 = v6;
  v16 = v7;
  [v8 showAssetWithTransaction:v13 assetID:v9 location:0 options:v11 completion:v17];
}

- (void)_playPreview:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v9 = [v8 booksDataSource];
  v10 = [v6 storeID];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000B5A58;
  v12[3] = &unk_100A062D8;
  objc_copyWeak(&v14, &location);
  v11 = v7;
  v13 = v11;
  [v9 resourceForAssetID:v10 type:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_downloadSample:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 assetID];
  v9 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  v10 = [(BKLibraryBookshelfCollectionViewController *)self _contentDataForContentID:v8 tracker:v9];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000B5D0C;
  v19[3] = &unk_100A06328;
  v20 = v10;
  v21 = self;
  v22 = v6;
  v11 = v6;
  v12 = v10;
  v13 = objc_retainBlock(v19);
  v14 = +[BSUIItemDescriptionCache sharedInstance];
  v15 = [v7 storeID];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000B5EB4;
  v17[3] = &unk_100A06350;
  v18 = v13;
  v16 = v13;
  [v14 sampleDownloadURLForAssetID:v15 completion:v17];
}

- (int64_t)_contentTypeForContentID:(id)a3 withLibraryAsset:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v4 = [a4 contentType];

  return [BAUtilities contentTypeFromAssetType:v4];
}

- (id)_contentDataForContentID:(id)a3 tracker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self _libraryAssetWithContentID:v6];
  v9 = [v7 contentPrivateIDForContentID:v6];
  v10 = [v7 contentUserIDForContentID:v6];

  v26 = [(BKLibraryBookshelfCollectionViewController *)self _contentTypeForContentID:v6 withLibraryAsset:v8];
  v27 = v10;
  if ([v8 isOwned])
  {
    v11 = [v8 storeID];
    v12 = [v11 length];
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
  v15 = [v14 seriesTypeForContentID:v6];

  if ([v8 isAudiobook])
  {
    v16 = [v8 hasRACSupport];
    if ([v16 BOOLValue])
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
  v19 = [v8 contentType];
  if (v19 == 3)
  {
    v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 pageCount]);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v8 supplementalContentAssets];
  v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 count]);
  v23 = [v18 initWithContentID:v6 contentType:v26 contentPrivateID:v28 contentUserID:v27 contentAcquisitionType:v25 contentSubType:0 contentLength:v20 supplementalContentCount:v22 seriesType:v15 productionType:v17 isUnified:0 contentKind:0];

  if (v19 == 3)
  {
  }

  return v23;
}

- (id)_libraryAssetWithContentID:(id)a3
{
  v3 = a3;
  v4 = +[BKAppDelegate delegate];
  v5 = [v4 libraryAssetProvider];

  v6 = [v5 libraryAssetOnMainQueueWithAssetID:v3];

  return v6;
}

- (void)_openStoreSample:(id)a3
{
  v4 = a3;
  v5 = [v4 storeID];
  v6 = BKLibraryLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D864();
  }

  if ([v5 length])
  {
    [(BKLibraryBookshelfCollectionViewController *)self _downloadSample:v4 completion:0];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKBookPresenting];
    if (([v4 isAudiobook] & 1) != 0 || !+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled"))
    {
      v10 = [BKAppDelegate sceneControllerForViewController:self];
      v12 = [v10 newShowAssetTransaction];
    }

    else
    {
      v8 = +[BKAppDelegate sceneManager];
      v9 = [v4 assetID];
      v10 = [v8 newBookSceneControllerProviderWithRequestAssetID:v9];

      v11 = +[BKAppDelegate currentSceneController];
      v12 = [v11 newShowAssetTransactionWithTargetSceneDescriptor:v10];
    }

    if (v12)
    {
      v20 = BCTransactionOptionsTransactionKey;
      v21 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    else
    {
      v13 = 0;
    }

    if (+[BKSceneUtilities hasMultiWindowEnabled](BKSceneUtilities, "hasMultiWindowEnabled") && ([v4 isAudiobook] & 1) == 0)
    {
      [v7 showAssetWithTransaction:v12 storeID:v5 options:v13];
    }

    else
    {
      v14 = +[BKAppDelegate sceneManager];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000B6478;
      v15[3] = &unk_100A03C78;
      v16 = v7;
      v17 = v12;
      v18 = v5;
      v19 = v13;
      [v14 forceTransaction:v17 ontoPrimarySceneWithContinuation:v15];
    }
  }
}

- (id)_transactionForStorePresentingAction
{
  v3 = +[BKAppDelegate sceneManager];
  v4 = [v3 sceneControllerForViewController:self];

  v5 = [v4 newShowURLTransaction];

  return v5;
}

- (void)_showBooksInSectionAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10078D8CC();
  }

  v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v7 = [v6 booksDataSource];
  v8 = [v7 representedObjectsInSection:{objc_msgSend(v4, "section")}];

  v33 = v4;
  v34 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "item")}];
  v9 = [v34 storeID];

  if (!v9)
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
    v15 = [v14 storeID];
    if ([v14 isAudiobook])
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    if (v15)
    {
      if (v14 == v34)
      {
        v13 = [v10 count];
      }

      [v10 addObject:v15];
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
  v19 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
  if ([(BKLibraryBookshelfCollectionViewController *)self isSeriesCollection])
  {
    v20 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v21 = [v20 supplementaryDataSource];
    v22 = [v21 seriesID];
  }

  else
  {
    v20 = [(BKLibraryBookshelfCollectionViewController *)self collection];
    v22 = [v20 collectionID];
  }

  v23 = [BALinkData alloc];
  v24 = [(BKLibraryBookshelfCollectionViewController *)self navigationItem];
  v25 = [v24 title];
  [v34 storeID];
  v27 = v26 = self;
  v28 = [v23 initWithPreviousSectionID:v22 previousSectionName:v25 previousContentID:v27 linkActionType:2 previousSeriesID:0 previousGenreID:0 previousCollectionID:0 previousAuthorID:0 previousFlowcaseID:0 previousBrickID:0];

  [v19 pushLinkData:v28 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/AppSource/Classes/BKLibraryBookshelfCollectionViewController.m" line:1295];
  v29 = [(BKLibraryBookshelfCollectionViewController *)v26 im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  v30 = [(BKLibraryBookshelfCollectionViewController *)v26 _transactionForStorePresentingAction];
  [v29 storeShowBooksWithStoreIDs:v32 resourceTypes:v31 focusedIndex:v13 transaction:v30 needsAnalyticsLinkData:0];
}

- (BOOL)_isErrorFromUserCanceled:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = AKAppleIDAuthenticationErrorDomain;
    v6 = AMSErrorDomain;
    v7 = AMSErrorUserInfoKeyStatusCode;
    v8 = v3;
    while (1)
    {
      v9 = [v8 domain];
      if ([v9 isEqualToString:v5])
      {
        v10 = [v8 code];

        if (v10 == -7003)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v11 = [v8 domain];
      v12 = [v11 isEqualToString:v6];

      v13 = [v8 userInfo];
      v14 = [v13 objectForKeyedSubscript:v7];

      v15 = [v8 userInfo];
      v16 = v15;
      if (v12)
      {
        if (v14)
        {
          break;
        }
      }

      v17 = [v15 objectForKeyedSubscript:NSUnderlyingErrorKey];

      v8 = v17;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    v18 = [v15 objectForKeyedSubscript:v7];
    v19 = [v18 intValue];

    v20 = BKLibraryLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10078D934(v19, v19 < 500, v20);
    }

    if (v19 < 500)
    {
LABEL_15:
      v21 = BKLibraryLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v4 domain];
        v25 = 138543874;
        v26 = v22;
        v27 = 2048;
        v28 = [v4 code];
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

- (void)openItemAtIndexPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AETestDriver shared];
  [v8 postEvent:kBETestDriverOpenAnimationStart sender:self];

  v9 = +[AETestDriver shared];
  [v9 postEvent:kBETestDriverOpenAnimationSetupStart sender:self];

  kdebug_trace();
  v10 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v11 = [v10 booksDataSource];
  v12 = [v11 representedObjectForIndexPath:v6];

  v13 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  LODWORD(v44) = [v13 isItemPlayingAtIndexPath:v6];

  v14 = +[BURestrictionsProvider sharedInstance];
  v15 = [v14 isBookStoreAllowed];

  v47 = +[BKReachability isOffline];
  v16 = [(BKLibraryBookshelfCollectionViewController *)self collectionID];
  v17 = [v16 isEqualToString:kBKCollectionDefaultIDWantToRead];

  HIDWORD(v44) = [v12 isInSamples];
  v18 = [v12 isContainer];
  v19 = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  v20 = BKLibraryLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    [v12 assetID];
    v22 = v21 = v6;
    *buf = 138414082;
    v50 = v22;
    v51 = 1024;
    v52 = v44;
    v53 = 1024;
    v54 = v15;
    v55 = 1024;
    v56 = v47;
    v57 = 1024;
    v58 = v17;
    v59 = 1024;
    v60 = HIDWORD(v44);
    v61 = 1024;
    v62 = v18;
    v63 = 1024;
    v64 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Open] Attempting to open book %@: bookIsPlaying: %{BOOL}d, isStoreAllowed: %{BOOL}d, isOffline: %{BOOL}d, inWantToReadCollection: %{BOOL}d, isInSamples: %{BOOL}d, isContainer: %{BOOL}d, isEditing: %{BOOL}d", buf, 0x36u);

    v6 = v21;
  }

  if (!v18)
  {
    if ((v15 & 1) == 0 && [v12 isStoreOrSeriesItem])
    {
      v23 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
      v25 = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
      v26 = BKLibraryLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        sub_10078D9C4();
      }

      [v23 displayBookUnavailableInStorefrontErrorWithTransaction:v25];
      goto LABEL_46;
    }

    if ((([v12 isSeriesItem] & 1) != 0 || (objc_msgSend(v12, "isPreorderBook") & 1) != 0 || objc_msgSend(v12, "isStoreItem")) && (objc_msgSend(v12, "isSample") & 1) == 0 && (objc_msgSend(v12, "isAudiobookPreview") & 1) == 0)
    {
      v36 = BKLibraryLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_10078D9F8();
      }

      if (v19)
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
        v40 = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
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

        v43 = [v12 storeID];
        [v39 storeShowBookWithStoreID:v43 resourceType:v41 transaction:v40];

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

      if (v19)
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
            v27 = [v12 supplementalContentParent];
            v28 = [v27 storeID];

            v29 = +[BAEventReporter sharedReporter];
            [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
            v30 = v48 = v7;
            [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
            v32 = v31 = v6;
            v33 = [v32 supplementaryDataSource];
            v34 = [v33 fromActionMenu];
            v35 = [(BKLibraryBookshelfCollectionViewController *)self _supplementalContentCount];
            [v29 emitViewSupplementalContentWithTracker:v30 contentID:v28 sourceIsAction:v34 supplementalContentCount:v35];

            v6 = v31;
            v7 = v48;
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

    [(BKLibraryBookshelfCollectionViewController *)self _showBooksInSectionAtIndexPath:v6];
    goto LABEL_47;
  }

  v23 = BKLibraryLog();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (v19)
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
  v38 = objc_retainBlock(v7);

  if (v38)
  {
    v38[2](v38);
  }
}

- (void)_downloadBook:(id)a3
{
  v4 = a3;
  v5 = BKLibraryLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10078DBC0(v4);
  }

  if ([v4 isCloud])
  {
    objc_opt_class();
    v6 = +[UIApplication sharedApplication];
    v7 = [v6 delegate];
    v8 = BUDynamicCast();

    if ([v8 isConnectedToInternet])
    {
      v9 = +[BKLibraryManager defaultManager];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000B742C;
      v10[3] = &unk_100A06378;
      v10[4] = self;
      v11 = v4;
      [v9 resolveLibraryAsset:v11 completion:v10];
    }

    else
    {
      [(BKLibraryBookshelfCollectionViewController *)self _showInternetReachabilityErrorAlert:v4];
    }
  }
}

- (void)_showInternetReachabilityErrorAlert:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKStorePresenting];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self _transactionForStorePresentingAction];
  v7 = BKLibraryLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10078DC74(v4);
  }

  [v5 displayOffineCannotDownloadErrorForContentType:objc_msgSend(v4 transaction:{"contentType"), v6}];
}

- (void)cancelDownloadBook:(id)a3
{
  v7 = a3;
  v3 = +[BKLibraryAssetStatusController sharedController];
  if ([v7 isValid] && objc_msgSend(v7, "state") == 2)
  {
    v4 = [v7 assetID];
    v5 = [v3 statusForAssetID:v4];

    if ([v5 canPause])
    {
      v6 = [v7 assetID];
      [v3 cancelDownloadOfAsset:v6];
    }
  }
}

- (void)resumeDownloadBook:(id)a3
{
  v7 = a3;
  v3 = +[BKLibraryAssetStatusController sharedController];
  if ([v7 isValid] && objc_msgSend(v7, "state") == 2)
  {
    v4 = [v7 assetID];
    v5 = [v3 statusForAssetID:v4];

    if ([v5 canResume])
    {
      v6 = [v7 assetID];
      [v3 resumeDownloadOfAsset:v6];
    }
  }
}

- (NSArray)selectedBooks
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  v5 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:v4];

  return v5;
}

- (id)booksAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
        v13 = [v12 booksDataSource];
        v14 = [v13 representedObjectForIndexPath:v11];

        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_addSelectedBooksToReadingList:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v8 count])
  {
    [(BKLibraryBookshelfCollectionViewController *)self setAddSelectedBooksCompletion:v7];
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
      v22 = self;
      v23 = v8;
      v24 = v7;
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

          v17 = [v15 storeID];
          v18 = [v17 length];

          if (v18)
          {
            v19 = [v15 assetID];
            [v10 addObject:v19];
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
      v7 = v24;
      self = v22;
    }

    v20 = [v11 valueForKey:@"assetID"];
    v21 = [v25 libraryCollectionListViewControllerWithAssetIDs:v20 knownAssetTypes:v9 knownStoreAssetIDs:v10 containsSeriesContainer:v12];

    [(BKLibraryBookshelfCollectionViewController *)self _showOverlayViewController:v21];
  }
}

- (void)_showOverlayViewController:(id)a3
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000B7EA8;
  v11 = &unk_100A03440;
  v12 = a3;
  v13 = self;
  v4 = v12;
  v5 = objc_retainBlock(&v8);
  v6 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController:v8];

  if (v6)
  {
    v7 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
    [v7 dismissViewControllerAnimated:1 completion:v5];
  }

  else
  {
    (v5[2])(v5);
  }
}

- (void)_dismissOverlayViewController:(id)a3
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)updateActionBarForSelection
{
  [(BKLibraryBookshelfCollectionViewController *)self updateBarButtonsAnimated:1];
  v7 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  v4 = [(BKLibraryBookshelfCollectionViewController *)self hasAnyDeletableBookSelected];
  v5 = [(BKLibraryBookshelfCollectionViewController *)self hasAnySeriesContainerSelected];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  [v7 updateForSelectedItems:v3 deletableItems:v4 seriesItems:v5 editable:{objc_msgSend(v6, "isDefaultCollection") ^ 1}];
}

- (void)updateActionBarFromMetrics
{
  v5 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
  v3 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v4 = [v3 actionBarMetrics];
  [v5 updateActionBarFromMetrics:v4];
}

- (void)updateTitleFromMetrics
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  v4 = [v3 topViewController];

  if (v4 == self)
  {
    v5 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
    v11 = [v5 navigationBar];

    v6 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    v7 = [v6 columnMetrics];

    [v7 margins];
    v9 = v8;
    [v7 margins];
    [v11 setDirectionalLayoutMargins:{0.0, v9, 0.0, v10}];
  }
}

- (void)updateTabBarControllerForEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  v6 = v5;
  if (v3)
  {
    [v5 hideBarWithTransition:6];
  }

  else
  {
    [v5 showBarWithTransition:6];
  }

  v7 = [(BKLibraryBookshelfCollectionViewController *)self _collectionBackingButton];
  [v7 setEnabled:!v3];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing]!= a3)
  {
    v35.receiver = self;
    v35.super_class = BKLibraryBookshelfCollectionViewController;
    [(BKLibraryBookshelfCollectionViewController *)&v35 setEditing:v5 animated:v4];
    v7 = [(BKLibraryBookshelfCollectionViewController *)self bk_rootBarCoordinator];
    [v7 setIsMiniPlayerHidden:v5];

    if (v5)
    {
      sub_10078DD6C(self, v4);
    }

    else
    {
      sub_10078DCFC(self, v4);
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B8704;
    v33[3] = &unk_100A044C8;
    v33[4] = self;
    v34 = v5;
    v8 = objc_retainBlock(v33);
    v9 = v8;
    if (v4)
    {
      v10 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      v11 = [v10 view];
      [v11 setHidden:0];

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
      v30 = v5;
      [UIView animateWithDuration:v31 animations:v29 completion:0.3];
      v12 = v32;
    }

    else
    {
      (v8[2])(v8);
      v12 = [(BKLibraryBookshelfCollectionViewController *)self actionBarViewController];
      v13 = [v12 view];
      [v13 setHidden:v5 ^ 1];
    }

    [(BKLibraryBookshelfCollectionViewController *)self setTransitioningToNewLayout:1];
    v14 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v14 contentOffset];
    [(BKLibraryBookshelfCollectionViewController *)self setPreviousContentOffset:?];

    v15 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    v16 = [v15 cellMetrics];
    if ([v16 cellType] == 3)
    {
      [(BKLibraryBookshelfCollectionViewController *)self setPreserveContentOffsetInNewLayout:0];
    }

    else
    {
      v17 = [(BKLibraryBookshelfCollectionViewController *)self layout];
      v18 = [v17 cellMetrics];
      if ([v18 cellType] == 4)
      {
        [(BKLibraryBookshelfCollectionViewController *)self setPreserveContentOffsetInNewLayout:0];
      }

      else
      {
        v19 = [(BKLibraryBookshelfCollectionViewController *)self layout];
        v20 = [v19 cellMetrics];
        -[BKLibraryBookshelfCollectionViewController setPreserveContentOffsetInNewLayout:](self, "setPreserveContentOffsetInNewLayout:", [v20 cellType] != 0);
      }
    }

    v21 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    v22 = [v21 copy];

    [v22 setEditMode:v5];
    [(BKLibraryBookshelfCollectionViewController *)self setLayout:v22];
    v23 = [(BKLibraryBookshelfCollectionViewController *)self layout];
    [v23 updateMetricsWithViewController:self];

    objc_initWeak(&location, self);
    v24 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000B87FC;
    v25[3] = &unk_100A063A0;
    objc_copyWeak(&v26, &location);
    v27 = v5;
    [v24 setCollectionViewLayout:v22 animated:v4 completion:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
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
  v6 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  if ([v6 numberOfSections] >= 1)
  {
    v3 = 0;
    do
    {
      if ([v6 numberOfItemsInSection:v3] >= 1)
      {
        v4 = 0;
        do
        {
          v5 = [NSIndexPath indexPathForItem:v4 inSection:v3];
          [v6 selectItemAtIndexPath:v5 animated:0 scrollPosition:0];

          ++v4;
        }

        while (v4 < [v6 numberOfItemsInSection:v3]);
      }

      ++v3;
    }

    while (v3 < [v6 numberOfSections]);
  }

  [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
}

- (void)deselectAll
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v3 selectItemAtIndexPath:0 animated:1 scrollPosition:0];

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
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B8BE8;
    v5[3] = &unk_100A063C8;
    v5[4] = self;
    [v4 enumerateObjectsUsingBlock:v5];
  }
}

- (void)toggleAccessibilityIfNeeded
{
  if (UIAccessibilityIsVoiceOverRunning() && [(BKLibraryBookshelfCollectionViewController *)self isEditing])
  {
    v3 = objc_opt_new();
    v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v5 = [v4 indexPathsForSelectedItems];
    v6 = [v5 count];

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

- (void)bookTapped:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  v9 = BKLibraryLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Open] Processing book tapped at index: %@,  isEditing: %{BOOL}d", &v10, 0x12u);
  }

  if ((v8 & 1) == 0)
  {
    [(BKLibraryBookshelfCollectionViewController *)self _dismissIfSupplementContentPDFPicker];
    [(BKLibraryBookshelfCollectionViewController *)self openItemAtIndexPath:v6 completion:v7];
  }
}

- (void)_dismissIfSupplementContentPDFPicker
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isSupplementalContentPDFPicker])
  {

    [(BKLibraryBookshelfCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)directBuyTapped:(id)a3 buyParameters:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v12 = [v11 booksDataSource];
  v13 = [v12 representedObjectForIndexPath:v10];

  v14 = [v13 isAudiobook];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B90D0;
  v16[3] = &unk_100A063F0;
  v17 = v8;
  v15 = v8;
  [BKBookPurchaseAction tryToPurchaseBook:v13 libraryAssetProvider:0 buyParameters:v9 allowPurchaseFromNonSampleBuyButton:1 suppressNetworkEvaluatorDialogs:v14 analyticsInfo:0 completion:v16];
}

- (void)showReadingListsForActionHandler:(id)a3
{
  v7 = [(BKLibraryBookshelfCollectionViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BSUILibraryCollectionUIProvider];
  objc_opt_class();
  v4 = [v7 libraryCollectionListViewControllerWithAssetIDs:0 knownAssetTypes:0 knownStoreAssetIDs:0 containsSeriesContainer:0];
  v5 = BUDynamicCast();

  [v5 bsui_setPrefersExtraCompactNavBarMargin:1];
  v6 = [(BKLibraryBookshelfCollectionViewController *)self navigationController];
  [v6 pushViewController:v5 animated:1];
}

- (void)presentReadingListsPopoverFromItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
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
  v15 = v6;
  v11 = v10;
  v12 = v6;
  [(BKLibraryBookshelfCollectionViewController *)self _showPopoverViewController:v11 fromItem:v7 completion:v13];
}

- (void)dismissReadingListPopover
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self presentedReadingListPopover];
  [v2 im_dismissAnimated:0];
}

- (void)_showPopoverViewController:(id)a3 fromItem:(id)a4 completion:(id)a5
{
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000B951C;
  v17 = &unk_100A04FE8;
  v18 = a3;
  v19 = self;
  v20 = a4;
  v21 = a5;
  v8 = v21;
  v9 = v20;
  v10 = v18;
  v11 = objc_retainBlock(&v14);
  v12 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController:v14];

  if (v12)
  {
    v13 = [(BKLibraryBookshelfCollectionViewController *)self bc_descendentPresentedViewController];
    [v13 dismissViewControllerAnimated:1 completion:v11];
  }

  else
  {
    (v11[2])(v11);
  }
}

- (BOOL)canSelectItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v6 = [v5 booksDataSource];
  v7 = [v6 representedObjectForIndexPath:v4];

  objc_opt_class();
  v8 = BUDynamicCast();
  v9 = [v8 state];
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing])
  {
    v10 = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
    if (v9 == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing:a3])
  {
    [(BKLibraryBookshelfCollectionViewController *)self toggleAccessibilityIfNeeded];

    [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
  }
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 cellForItemAtIndexPath:v5];
  v8 = BUDynamicCast();

  [v8 handleTapIfPossible];
  [v6 deselectItemAtIndexPath:v5 animated:1];
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  if ([(BKLibraryBookshelfCollectionViewController *)self isEditing:a3])
  {
    [(BKLibraryBookshelfCollectionViewController *)self toggleAccessibilityIfNeeded];

    [(BKLibraryBookshelfCollectionViewController *)self updateActionBarForSelection];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v11 collectionView:v10 willDisplayCell:v9 forItemAtIndexPath:v8];
}

- (void)collectionView:(id)a3 willDisplaySupplementaryView:(id)a4 forElementKind:(id)a5 atIndexPath:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v14 collectionView:v13 willDisplaySupplementaryView:v12 forElementKind:v11 atIndexPath:v10];
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v11 collectionView:v10 didEndDisplayingCell:v9 forItemAtIndexPath:v8];
}

- (void)collectionView:(id)a3 didEndDisplayingSupplementaryView:(id)a4 forElementOfKind:(id)a5 atIndexPath:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  [v14 collectionView:v13 didEndDisplayingSupplementaryView:v12 forElementOfKind:v11 atIndexPath:v10];
}

- (void)collectionView:(id)a3 willDisplayContextMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [NSDate date:a3];
  contextMenuAppearDate = self->_contextMenuAppearDate;
  self->_contextMenuAppearDate = v6;
}

- (void)collectionView:(id)a3 willEndContextMenuInteractionWithConfiguration:(id)a4 animator:(id)a5
{
  v6 = [a4 identifier];
  objc_opt_class();
  v7 = BUDynamicCast();
  v8 = v7;
  if (v7)
  {
    v21 = v7;
    v10 = [NSArray arrayWithObjects:&v21 count:1];
    v11 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:v10];
    v12 = [(BKLibraryBookshelfCollectionViewController *)self collection];
    v13 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v14 = [v13 cellForItemAtIndexPath:v8];
    v15 = sub_10078D1C8(self, v11, v12, v14, 0, 0);

    v16 = +[BAEventReporter sharedReporter];
    v17 = [(BKLibraryBookshelfCollectionViewController *)self ba_effectiveAnalyticsTracker];
    contextMenuAppearDate = self->_contextMenuAppearDate;
    v19 = +[BKContextMenuProvider sharedProvider];
    v20 = [v19 analyticsAssetPropertyProviderForDataModel:v15];
    [v16 emitContextualActionSheetExposureEventWithTracker:v17 startDate:contextMenuAppearDate propertyProvider:v20];
  }

  v9 = self->_contextMenuAppearDate;
  self->_contextMenuAppearDate = 0;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemAtIndexPath:(id)a4 point:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [v9 contextMenuInteraction];
  v12 = [v11 menuAppearance];

  if (v12 == 2)
  {
    objc_initWeak(&location, self);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000B9E6C;
    v18 = &unk_100A06418;
    objc_copyWeak(v21, &location);
    v19 = v9;
    v20 = v10;
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

- (id)_dci_collectionView:(id)a3 contextMenuConfigurationForSelectedItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 contextMenuInteraction];
  v10 = [v9 menuAppearance];

  if (v10 == 2)
  {
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BA348;
    v13[3] = &unk_100A06440;
    objc_copyWeak(&v15, &location);
    v14 = v8;
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
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v4 = BUDynamicCast();

  LOBYTE(v3) = [v4 currentUserInterfaceStyle] == 2;
  return v3;
}

- (BOOL)hasAnySeriesContainerSelected
{
  v2 = self;
  v3 = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  LOBYTE(v2) = [(BKLibraryBookshelfCollectionViewController *)v2 hasAnySeriesContainerInLibraryAssets:v3];

  return v2;
}

- (BOOL)hasAnySeriesContainerInLibraryAssets:(id)a3
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isValid] && (objc_msgSend(v7, "isContainer") & 1) != 0)
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  if (v3)
  {
    v4 = [NSSet setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 count])
  {
    v5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v6 = [v5 supplementaryDataSource];
    v7 = [v6 collection];

    v8 = [BKDeleteActionItemsProvider alloc];
    v9 = [v7 collectionID];
    v10 = [v8 initWithBooks:v4 currentCollectionId:v9];

    v11 = [v10 actionItems];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 count] != 0;

  return v12;
}

- (void)removeForSelectedItems:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v7 = [v5 indexPathsForSelectedItems];

  v6 = [v4 trashButton];

  [(BKLibraryBookshelfCollectionViewController *)self _removalAttemptForItemsAtIndexPaths:v7 sourceBarButtonItem:v6];
}

- (void)removeForSelectedItems
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];

  [(BKLibraryBookshelfCollectionViewController *)self _removalAttemptForItemsAtIndexPaths:v4 sourceBarButtonItem:0];
}

- (void)_removalAttemptForItemsAtIndexPaths:(id)a3 sourceBarButtonItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:v6];
  v9 = objc_opt_new();
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v12 = [v11 assetID];

      if (v12)
      {
        [v9 addObject:v12];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  if ([v8 count])
  {
    v13 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
    v14 = [v13 booksDataSource];
    v15 = [v14 totalNumberOfItems];
    LOBYTE(v15) = v15 == [v8 count];

    objc_initWeak(&location, self);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000BAA8C;
    v16[3] = &unk_100A06490;
    v16[4] = self;
    v17 = v9;
    objc_copyWeak(&v18, &location);
    v19 = v15;
    [(BKLibraryBookshelfCollectionViewController *)self deleteBooks:v8 sourceBarButtonItem:v7 completion:v16];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }
}

- (void)shareSelectedItemFromBarButtonItem:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self selectedBooks];
  if ([v5 count] == 1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10078D534;
    v6[3] = &unk_100A03A30;
    v6[4] = self;
    v7 = v5;
    v8 = v4;
    [(BKLibraryBookshelfCollectionViewController *)self _presentUsingBlock:v6];
  }
}

- (void)addForSelectedItems:(id)a3
{
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v5 = [v4 indexPathsForSelectedItems];

  [(BKLibraryBookshelfCollectionViewController *)self _addToCollectionAttemptForItemsAtIndexPaths:v5];
}

- (void)_addToCollectionAttemptForItemsAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self booksAtIndexPaths:v4];
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

- (void)_presentUsingBlock:(id)a3
{
  v8 = a3;
  v4 = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
  v5 = [v4 presentingViewController];

  if (v5)
  {
    v6 = [(BKLibraryBookshelfCollectionViewController *)self presentedViewController];
    v7 = [v6 presentingViewController];
    [v7 dismissViewControllerAnimated:1 completion:v8];
  }

  else
  {
    v8[2]();
  }
}

- (void)deleteBooks:(id)a3 sourceBarButtonItem:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10078D5C8;
  v10[3] = &unk_100A04FE8;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(BKLibraryBookshelfCollectionViewController *)v11 _presentUsingBlock:v10];
}

- (void)didUpdateLibraryBookshelfLayout:(id)a3
{
  v4 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  if ([v4 isDragging])
  {
  }

  else
  {
    v5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    v6 = [v5 isDecelerating];

    if ((v6 & 1) == 0)
    {
      [(BKLibraryBookshelfCollectionViewController *)self updateActionBarFromMetrics];
      [(BKLibraryBookshelfCollectionViewController *)self updateTitleFromMetrics];
    }
  }

  v7 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v8 = [v7 backgroundColor];
  v9 = [(BKLibraryBookshelfCollectionViewController *)self layout];
  v10 = [v9 mainHeaderMetrics];
  v11 = [v10 headerBackgroundColor];
  v12 = [v8 isEqual:v11];

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
      v16 = [(BKLibraryBookshelfCollectionViewController *)self layout];
      v13 = [v16 mainHeaderMetrics];
      v14 = [v13 headerBackgroundColor];
      v15 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
      [v15 setBackgroundColor:v14];
    }
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];

  v11.receiver = self;
  v11.super_class = BKLibraryBookshelfCollectionViewController;
  [(BKLibraryBookshelfCollectionViewController *)&v11 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BB484;
  v10[3] = &unk_100A04410;
  v10[4] = self;
  [v6 animateAlongsideTransition:v10 completion:&stru_100A064D0];
}

- (void)selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v9 = a3;
  if ([(BKLibraryBookshelfCollectionViewController *)self shouldAllowCellSelection])
  {
    v8 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v8 selectItemAtIndexPath:v9 animated:v6 scrollPosition:a5];
  }
}

- (void)deselectItemAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([(BKLibraryBookshelfCollectionViewController *)self shouldAllowCellSelection])
  {
    v6 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
    [v6 deselectItemAtIndexPath:v7 animated:v4];
  }
}

- (id)indexPathForCell:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  v6 = [v5 indexPathForCell:v4];

  return v6;
}

- (BOOL)isAudiobookAtIndexpath:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor];
  v6 = [v5 booksDataSource];
  v7 = [v6 representedObjectForIndexPath:v4];

  LOBYTE(v5) = [v7 isAudiobook];
  return v5;
}

- (id)bkaxLabel
{
  v2 = [(BKLibraryBookshelfCollectionViewController *)self collection];
  v3 = [v2 localizedTitle];

  return v3;
}

- (void)didBecomeVisibleContentScrollView
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  [v3 bc_setPreferredTabBarScrollEdgeAppearance:0];

  v6 = [(BKLibraryBookshelfCollectionViewController *)self tabBarController];
  v4 = [v6 selectedViewController];
  v5 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  [v4 setContentScrollView:v5 forEdge:4];
}

- (void)_bkAccessibilityFocusCollectionView
{
  v2 = UIAccessibilityLayoutChangedNotification;
  v3 = [(BKLibraryBookshelfCollectionViewController *)self collectionView];
  UIAccessibilityPostNotification(v2, v3);
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(BKLibraryBookshelfCollectionViewController *)self isEditing];
  if (v3)
  {
    [(BKLibraryBookshelfCollectionViewController *)self doneForSelectedItems:0];
  }

  return v3;
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
  v2 = self;
  v3 = [(BKLibraryBookshelfCollectionViewController *)v2 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [(UICollectionView *)v3 indexPathsForSelectedItems];

    if (v5)
    {
      sub_100796E74();
      sub_1007A25E4();

      sub_1001F1160(&qword_100ADA958);
      sub_1002CD1B4(&unk_100ADA960, &qword_100ADA958);
      LOBYTE(v5) = sub_1007A28A4();
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
  v3 = [(BKLibraryBookshelfCollectionViewController *)v2 collectionView];
  if (v3)
  {
    v4 = v3;
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
  v2 = self;
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = BKLibraryBookshelfCollectionViewController.canPerformAction(_:withSender:)(a3, v10);

  sub_100007840(v10, &unk_100AD5B40);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  BKLibraryBookshelfCollectionViewController.validate(_:)(v4);
}

- (void)updateBarButtonsAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  if ([(BKLibraryBookshelfCollectionViewController *)v4 isEditing])
  {
    sub_1002DCF38(v3);
  }

  else
  {
    sub_1002DD76C(v3);
  }

  sub_1002DE4E8();
}

- (void)viewModeChanged
{
  v2 = self;
  BKLibraryBookshelfCollectionViewController.viewModeChanged()();
}

- (void)sortModeChanged
{
  v2 = self;
  BKLibraryBookshelfCollectionViewController.sortModeChanged()();
}

- (void)editButtonPressed:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v5 = self;
  }

  v6 = [(BKLibraryBookshelfCollectionViewController *)self dataSourceAdaptor:v8];
  v7 = [(BKLibraryDataSourceAdaptor *)v6 actionHandler];

  [(BKLibraryActionHandler *)v7 toggleEditMode];
  sub_100007840(&v8, &unk_100AD5B40);
}

- (void)largeTitleVisibilityDidChangeWithIsVisible:(BOOL)a3
{
  v3 = a3;
  v8 = self;
  v4 = _UISolariumEnabled();
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = sub_1002E1288();
    v5 = v8;
    if (v6)
    {
      v7 = v6;
      if ([v6 isHidden] != v3)
      {
        [v7 setHidden:v3];
      }

      v5 = v8;
    }
  }
}

- (void)dragAndDropSessionDidStart
{
  v3 = self;
  v2 = [(BKLibraryBookshelfCollectionViewController *)v3 dragAndDropSessionsActive];
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    [(BKLibraryBookshelfCollectionViewController *)v3 setDragAndDropSessionsActive:v2 + 1];
    [(BKLibraryBookshelfCollectionViewController *)v3 configureForDragAndDropSession];
  }
}

- (void)dragAndDropSessionDidEnd
{
  v3 = self;
  v2 = [(BKLibraryBookshelfCollectionViewController *)v3 dragAndDropSessionsActive];
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    [(BKLibraryBookshelfCollectionViewController *)v3 setDragAndDropSessionsActive:v2 - 1];
    [(BKLibraryBookshelfCollectionViewController *)v3 configureForDragAndDropSession];
  }
}

- (void)configureForDragAndDropSession
{
  sub_10000A7C4(0, &qword_100AD1E10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = self;

  sub_1007A2CD4();
}

- (void)books_createCollection:(id)a3
{
  if (!a3)
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
    if (_UISolariumEnabled())
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1002E1070(sub_1002E4B60, 0);
    goto LABEL_6;
  }

  v4 = self;
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

- (void)books_createCollectionFromSelection:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1002E20DC();

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)books_addSelectionToCollection:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1002E2760(v6);

  sub_100007840(v6, &unk_100AD5B40);
}

- (void)createSeriesViewControllerFromSeriesContainer:(BKLibraryAsset *)a3 withParentTracker:(_TtC13BookAnalytics9BATracker *)a4 completion:(id)a5
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10069E794(0, 0, v11, &unk_1008344D0, v16);
}

@end
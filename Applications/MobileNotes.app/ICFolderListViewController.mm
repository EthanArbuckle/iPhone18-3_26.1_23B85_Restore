@interface ICFolderListViewController
- (BOOL)addFolderButtonAppearsInNavigationBar;
- (BOOL)canBecomeFirstResponder;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)isSearchActive;
- (BOOL)isSearchActiveWithQuery;
- (ICFolderDataSource)folderDataSource;
- (ICFolderListViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager overrideContainerIdentifier:(id)identifier;
- (ICOutlineParentCollectionViewCell)tagHeadingCell;
- (double)availableWidthForSummaryView;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects;
- (id)noteContainerWithItemIdentifier:(id)identifier;
- (id)updateSummaryView:(id)view isPrimary:(BOOL)primary;
- (void)addFolderButtonAction:(id)action;
- (void)addNoteButtonPressed:(id)pressed event:(id)event;
- (void)addPermanentObservers;
- (void)checkIfShouldShowOrHideAllowNotificationsView;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)confirmFocusedCellSelection;
- (void)confirmSelection;
- (void)dataSourceDataUpdateDidRender:(id)render;
- (void)dealloc;
- (void)folderWasCreated:(id)created;
- (void)keyboardWillShow:(id)show;
- (void)loadView;
- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds;
- (void)noteDecryptedStatusDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerForTraitChanges;
- (void)reloadListWithDataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillDeactivate:(id)deactivate;
- (void)scrollToContainerWithObjectID:(id)d;
- (void)scrollToRecentlyCreatedFolderIfNeeded;
- (void)selectItemWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)summaryViewLockNowPressed:(id)pressed;
- (void)updateAddFolderButton;
- (void)updateAppearanceStyle;
- (void)updateContainerSelection;
- (void)updateNavigationBar;
- (void)updateNavigationTitle;
- (void)updateSummaryView;
- (void)updateTagHeadingCell;
- (void)updateTagOperatorPosition;
- (void)updateToolbarAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICFolderListViewController

- (ICFolderDataSource)folderDataSource
{
  folderDataSource = self->_folderDataSource;
  if (folderDataSource)
  {
    v3 = folderDataSource;
  }

  else
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    persistenceConfiguration = [viewControllerManager persistenceConfiguration];
    legacyViewContext = [persistenceConfiguration legacyViewContext];

    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    persistenceConfiguration2 = [viewControllerManager2 persistenceConfiguration];
    modernBackgroundContext = [persistenceConfiguration2 modernBackgroundContext];

    objc_initWeak(location, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000727A4;
    v29[3] = &unk_100646CB8;
    objc_copyWeak(&v30, location);
    v9 = objc_retainBlock(v29);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000729F0;
    v27[3] = &unk_100645718;
    objc_copyWeak(&v28, location);
    v10 = objc_retainBlock(v27);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100072AD4;
    v25[3] = &unk_100645C78;
    objc_copyWeak(&v26, location);
    v11 = objc_retainBlock(v25);
    v12 = [ICFolderDataSource alloc];
    collectionView = [(ICFolderListViewController *)self collectionView];
    overrideContainerIdentifier = [(ICFolderListViewController *)self overrideContainerIdentifier];
    unsupportedFolderInfoButtonTapHandler = [(ICBaseViewController *)self unsupportedFolderInfoButtonTapHandler];
    v16 = [(ICFolderDataSource *)v12 initWithCollectionView:collectionView presentingViewController:self legacyManagedObjectContext:legacyViewContext modernManagedObjectContext:modernBackgroundContext overrideContainerIdentifier:overrideContainerIdentifier unsupportedFolderInfoButtonTapHandler:unsupportedFolderInfoButtonTapHandler accountUpgradeButtonTapHandlerProvider:v9 tagSelectionDidChangeHandler:v10 allowNotificationsCloseHandler:v11];
    v17 = self->_folderDataSource;
    self->_folderDataSource = v16;

    v18 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v18 workerManagedObjectContext];
    [(ICFolderDataSource *)self->_folderDataSource setApplySnapshotModernManagedObjectContext:workerManagedObjectContext];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100072B5C;
    v23[3] = &unk_100646CE0;
    objc_copyWeak(&v24, location);
    [(ICFolderDataSource *)self->_folderDataSource setWillExpandItemHandler:v23];
    v3 = self->_folderDataSource;
    objc_destroyWeak(&v24);

    objc_destroyWeak(&v26);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v30);
    objc_destroyWeak(location);
  }

  return v3;
}

- (void)updateAppearanceStyle
{
  traitCollection = [(ICFolderListViewController *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  v5 = (_splitViewControllerContext - 3);
  v6 = (_splitViewControllerContext - 3) < 0xFFFFFFFFFFFFFFFELL;
  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  [folderDataSource setHasGroupInset:v6];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    if (_UISolariumEnabled())
    {
      v8 = 0;
    }

    else
    {
      v8 = +[UIColor secondarySystemBackgroundColor];
    }

    v11 = v8;
    v9 = v8;
    if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = +[UIColor ICGroupedBackgroundColor];
    }

    collectionView = [(ICFolderListViewController *)self collectionView];
    [collectionView setBackgroundColor:v9];

    if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
    {
    }
  }
}

- (void)updateNavigationTitle
{
  isSearchActive = [(ICFolderListViewController *)self isSearchActive];
  v5 = isSearchActive;
  if (isSearchActive)
  {
    [(ICBaseViewController *)self searchNavigationTitle];
  }

  else
  {
    v2 = +[NSBundle mainBundle];
    [v2 localizedStringForKey:@"Folders" value:&stru_100661CF0 table:0];
  }
  v6 = ;
  navigationItem = [(ICFolderListViewController *)self navigationItem];
  [navigationItem setTitle:v6];

  if ((v5 & 1) == 0)
  {

    v6 = v2;
  }

  if ([(ICBaseViewController *)self isShowingActiveSearch])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.1;
  }

  navigationItem2 = [(ICFolderListViewController *)self navigationItem];
  subtitleView = [navigationItem2 subtitleView];
  [subtitleView setAlpha:v8];
}

- (ICFolderListViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager overrideContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v29.receiver = self;
  v29.super_class = ICFolderListViewController;
  v10 = [(ICBaseViewController *)&v29 initWithViewMode:mode viewControllerManager:manager viewControllerType:2];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideContainerIdentifier, identifier);
    legacyViewContext = [(ICBaseViewController *)v11 legacyViewContext];
    modernViewContext = [(ICBaseViewController *)v11 modernViewContext];
    v14 = [NSSet setWithObjects:legacyViewContext, modernViewContext, 0];

    v15 = [[ICManagedObjectContextChangeController alloc] initWithManagedObjectContexts:v14 delegate:v11];
    managedObjectContextChangeController = v11->_managedObjectContextChangeController;
    v11->_managedObjectContextChangeController = v15;

    v17 = [[ICFolderCreationController alloc] initWithViewController:v11 noteContainer:0 creationApproach:1];
    folderCreationController = v11->_folderCreationController;
    v11->_folderCreationController = v17;

    v19 = [ICFolderListCollectionView alloc];
    legacyViewContext2 = [(ICBaseViewController *)v11 legacyViewContext];
    modernViewContext2 = [(ICBaseViewController *)v11 modernViewContext];
    viewControllerManager = [(ICBaseViewController *)v11 viewControllerManager];
    v23 = [(ICFolderListCollectionView *)v19 initWithPresentingViewController:v11 legacyManagedObjectContext:legacyViewContext2 modernManagedObjectContext:modernViewContext2 viewControllerManager:viewControllerManager];
    collectionView = v11->_collectionView;
    v11->_collectionView = v23;

    folderDataSource = [(ICFolderListViewController *)v11 folderDataSource];
    collectionViewDiffableDataSource = [folderDataSource collectionViewDiffableDataSource];
    [(ICCollectionView *)v11->_collectionView setDiffableDataSource:collectionViewDiffableDataSource];

    [(ICFolderListCollectionView *)v11->_collectionView setDelegate:v11];
    [(ICFolderListCollectionView *)v11->_collectionView setContentInsetAdjustmentBehavior:0];
    [(ICFolderListViewController *)v11 updateAppearanceStyle];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v11 selector:"sceneDidActivate:" name:UISceneDidActivateNotification object:0];
    [v27 addObserver:v11 selector:"sceneWillDeactivate:" name:UISceneWillDeactivateNotification object:0];
    [v27 addObserver:v11 selector:"userNotificationRegistrationCompleted:" name:ICUserNotificationRegistrationCompleted object:0];
    [v27 addObserver:v11 selector:"keyboardWillShow:" name:UIKeyboardDidShowNotification object:0];
    [(ICFolderListViewController *)v11 updateNavigationTitle];
  }

  return v11;
}

- (void)reloadListWithDataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  renderedBlockCopy = renderedBlock;
  blockCopy = block;
  dataSource = [(ICFolderListViewController *)self dataSource];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100070704;
  v10[3] = &unk_100645E80;
  v10[4] = self;
  v11 = renderedBlockCopy;
  v9 = renderedBlockCopy;
  [dataSource reloadDataAnimated:0 dataIndexedBlock:blockCopy dataRenderedBlock:v10];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[ICAppDelegate sharedInstance];
  cloudContextDelegate = [v4 cloudContextDelegate];
  v6 = ICKeyPathFromSelector();
  [cloudContextDelegate ic_removeObserver:self forKeyPath:v6 context:&off_1006BA600];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager ic_removeObserver:self forKeyPath:@"selectedContainerIdentifiers" context:&off_1006BA600];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager2 ic_removeObserver:self forKeyPath:@"selectedContainerItemID" context:&off_1006BA600];

  v9.receiver = self;
  v9.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v9 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = ICFolderListViewController;
  [(ICFolderListViewController *)&v4 loadView];
  collectionView = [(ICFolderListViewController *)self collectionView];
  [(ICFolderListViewController *)self setView:collectionView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v3 viewDidLoad];
  [(ICFolderListViewController *)self updateNavigationTitle];
  [(ICFolderListViewController *)self addPermanentObservers];
}

- (void)viewWillAppear:(BOOL)appear
{
  v19.receiver = self;
  v19.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v19 viewWillAppear:appear];
  managedObjectContextChangeController = [(ICFolderListViewController *)self managedObjectContextChangeController];
  [managedObjectContextChangeController performUpdatesIfNeeded];

  transitionCoordinator = [(ICFolderListViewController *)self transitionCoordinator];
  if (transitionCoordinator)
  {
    transitionCoordinator2 = [(ICFolderListViewController *)self transitionCoordinator];
    if ([transitionCoordinator2 isInteractive])
    {
      [(ICFolderListViewController *)self updateToolbarAnimated:0];
    }

    else
    {
      transitionCoordinator3 = [(ICFolderListViewController *)self transitionCoordinator];
      -[ICFolderListViewController updateToolbarAnimated:](self, "updateToolbarAnimated:", [transitionCoordinator3 isCancelled] ^ 1);
    }
  }

  else
  {
    [(ICFolderListViewController *)self updateToolbarAnimated:0];
  }

  [(ICFolderListViewController *)self updateNavigationBar];
  [(ICFolderListViewController *)self updateTagOperatorPosition];
  [(ICFolderListViewController *)self updateContainerSelection];
  [(ICFolderListViewController *)self updateAppearanceStyle];
  if ([(ICFolderListViewController *)self ic_isBeingRevealedFromPoppingViewController])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100070B74;
    v18[3] = &unk_100645E30;
    v18[4] = self;
    v8 = objc_retainBlock(v18);
    transitionCoordinator4 = [(ICFolderListViewController *)self transitionCoordinator];
    isInteractive = [transitionCoordinator4 isInteractive];

    if (isInteractive)
    {
      transitionCoordinator5 = [(ICFolderListViewController *)self transitionCoordinator];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100070C9C;
      v16 = &unk_1006461A0;
      v17 = v8;
      [transitionCoordinator5 notifyWhenInteractionChangesUsingBlock:&v13];
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v8);
    }
  }

  [(ICFolderListViewController *)self checkIfShouldShowOrHideAllowNotificationsView:v13];
  [(ICFolderListViewController *)self updateTagHeadingCell];
  v12 = +[NotesApp sharedNotesApp];
  [v12 refreshStoresListIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = ICFolderListViewController;
  [(ICFolderListViewController *)&v23 viewDidLayoutSubviews];
  primarySummaryView = [(ICFolderListViewController *)self primarySummaryView];
  [primarySummaryView availableWidth];
  v5 = v4;
  [(ICFolderListViewController *)self availableWidthForSummaryView];
  v7 = vabdd_f64(v5, v6);

  if (v7 >= 0.00999999978)
  {
    [(ICFolderListViewController *)self availableWidthForSummaryView];
    v9 = v8;
    primarySummaryView2 = [(ICFolderListViewController *)self primarySummaryView];
    [primarySummaryView2 setAvailableWidth:v9];

    primarySummaryView3 = [(ICFolderListViewController *)self primarySummaryView];
    [primarySummaryView3 update];
  }

  scrolledHeaderSummaryView = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
  [scrolledHeaderSummaryView availableWidth];
  v14 = v13;
  [(ICFolderListViewController *)self availableWidthForSummaryView];
  v16 = vabdd_f64(v14, v15);

  if (v16 >= 0.00999999978)
  {
    [(ICFolderListViewController *)self availableWidthForSummaryView];
    v18 = v17;
    scrolledHeaderSummaryView2 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    [scrolledHeaderSummaryView2 setAvailableWidth:v18];

    scrolledHeaderSummaryView3 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    [scrolledHeaderSummaryView3 update];
  }

  v21 = +[UIApplication sharedApplication];
  if ([v21 isRunningTest])
  {
    _appearState = [(ICFolderListViewController *)self _appearState];

    if (_appearState != 1)
    {
      return;
    }

    v21 = +[ICAppDelegate sharedInstance];
    [v21 folderListDidLayoutSubviews];
  }
}

- (void)sceneWillDeactivate:(id)deactivate
{
  object = [deactivate object];
  viewIfLoaded = [(ICFolderListViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v8 = [object isEqual:windowScene];

  if (v8 && [(ICFolderListViewController *)self ic_isViewVisible])
  {
    eventReporter = [(ICFolderListViewController *)self eventReporter];
    [eventReporter submitFolderListViewEvent];
  }
}

- (void)sceneDidActivate:(id)activate
{
  object = [activate object];
  viewIfLoaded = [(ICFolderListViewController *)self viewIfLoaded];
  window = [viewIfLoaded window];
  windowScene = [window windowScene];
  v8 = [object isEqual:windowScene];

  if (v8)
  {
    if ([(ICFolderListViewController *)self ic_isViewVisible])
    {
      eventReporter = [(ICFolderListViewController *)self eventReporter];
      [eventReporter startFolderListViewEventDurationTracking];
    }

    [(ICFolderListViewController *)self checkIfShouldShowOrHideAllowNotificationsView];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ICFolderListViewController;
  [(ICFolderListViewController *)&v5 viewWillDisappear:disappear];
  eventReporter = [(ICFolderListViewController *)self eventReporter];
  [eventReporter submitFolderListViewEvent];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v9 viewDidAppear:appear];
  if ([(ICFolderListViewController *)self canBecomeFirstResponder])
  {
    [(ICFolderListViewController *)self becomeFirstResponder];
  }

  v4 = +[ICAppDelegate sharedInstance];
  [v4 didFinishExtendedLaunch];

  v5 = +[UIApplication sharedApplication];
  isRunningTest = [v5 isRunningTest];

  if (isRunningTest)
  {
    v7 = +[ICAppDelegate sharedInstance];
    [v7 didShowFolderList];
  }

  eventReporter = [(ICFolderListViewController *)self eventReporter];
  [eventReporter startFolderListViewEventDurationTracking];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(ICFolderListViewController *)self isEditing]!= editing)
  {
    v28.receiver = self;
    v28.super_class = ICFolderListViewController;
    [(ICBaseViewController *)&v28 setEditing:editingCopy animated:animatedCopy];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    collectionView = [(ICFolderListViewController *)self collectionView];
    indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

    obj = indexPathsForVisibleItems;
    v9 = [indexPathsForVisibleItems countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          objc_opt_class();
          collectionView2 = [(ICFolderListViewController *)self collectionView];
          v15 = [collectionView2 cellForItemAtIndexPath:v13];
          v16 = ICDynamicCast();

          if (([v16 allowsEditing] & 1) == 0)
          {
            [v16 setEditing:editingCopy];
          }

          if (editingCopy)
          {
            [v16 setSelected:0];
          }

          [v16 setNeedsUpdateConfiguration];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    dataSource = [(ICFolderListViewController *)self dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000713F8;
    v22[3] = &unk_100646080;
    v22[4] = self;
    v23 = editingCopy;
    [collectionViewDiffableDataSource _performBatchApplyUsingReloadData:v22];

    collectionView3 = [(ICFolderListViewController *)self collectionView];
    [collectionView3 setEditing:editingCopy];

    if (editingCopy)
    {
      v20 = +[NSNotificationCenter defaultCenter];
      [v20 postNotificationName:@"ICFolderListViewControllerDidStartEditingNotification" object:self];
    }

    else
    {
      [(ICFolderListViewController *)self updateContainerSelection];
    }
  }
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  contextCopy = context;
  pathCopy = path;
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];

  v11 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  snapshot = [collectionViewDiffableDataSource snapshot];
  v13 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:v11];

  v14 = [collectionViewDiffableDataSource snapshotForSection:v13];
  v15 = [v14 childrenOfParent:v11];
  if (![v15 count])
  {

    goto LABEL_5;
  }

  v16 = [v14 isExpanded:v11];

  if (v16)
  {
LABEL_5:
    [(ICFolderListViewController *)self setCurrentSpringLoadedInteractionContext:0];
    v18 = 0;
    goto LABEL_6;
  }

  [(ICFolderListViewController *)self setCurrentSpringLoadedInteractionContext:contextCopy];
  currentSpringLoadedInteractionContext = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
  [currentSpringLoadedInteractionContext setTargetItem:v11];

  v18 = 1;
LABEL_6:

  return v18;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v10 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    traitCollection = [(ICFolderListViewController *)self traitCollection];
    _splitViewControllerContext = [traitCollection _splitViewControllerContext];

    if (_splitViewControllerContext >= 1)
    {
      viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
      selectedContainerItemID = [viewControllerManager selectedContainerItemID];
      if ([v11 isEqual:selectedContainerItemID])
      {
        isEditing = [(ICFolderListViewController *)self isEditing];

        if ((isEditing & 1) == 0)
        {
          [cellCopy setSelected:1];
        }
      }

      else
      {
      }
    }

    recentlyCreatedFolderObjectID = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
    v20 = [v11 isEqual:recentlyCreatedFolderObjectID];

    if (v20)
    {
      objc_opt_class();
      v21 = ICDynamicCast();
      [v21 setRecentlyCreated:1];

      [(ICFolderListViewController *)self setRecentlyCreatedFolderObjectID:0];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 sectionType] != 8)
    {
      goto LABEL_18;
    }

LABEL_15:
    objc_opt_class();
    v11 = ICDynamicCast();
    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    tagSelection = [viewControllerManager2 tagSelection];
    [v11 setTagSelection:tagSelection];
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  v11 = ICDynamicCast();
  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  tagSelection = [viewControllerManager2 tagSelection];
  [v11 selectTagsWithTagSelection:tagSelection animated:0];
LABEL_16:

LABEL_17:
LABEL_18:
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v8 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v8 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  currentSpringLoadedInteractionContext = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
  targetItem = [currentSpringLoadedInteractionContext targetItem];
  if ([targetItem isEqual:v8])
  {
    currentSpringLoadedInteractionContext2 = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
    state = [currentSpringLoadedInteractionContext2 state];

    if (state == 3)
    {
      [(ICFolderListViewController *)self setCurrentSpringLoadedInteractionContext:0];
      folderDataSource = [(ICFolderListViewController *)self folderDataSource];
      v21 = v8;
      v14 = [NSArray arrayWithObjects:&v21 count:1];
      [folderDataSource expandItemsWithIdentifiers:v14 completion:0];

      v15 = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_opt_class();
  v16 = ICDynamicCast();
  v15 = 1;
  if ([v16 ic_isModernFolderType])
  {
    v17 = +[ICNoteContext sharedContext];
    managedObjectContext = [v17 managedObjectContext];
    v19 = [managedObjectContext ic_existingObjectWithID:v16];

    LOBYTE(v17) = [v19 isUnsupported];
    if (v17)
    {
      v15 = 0;
    }
  }

LABEL_10:
  return v15;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(ICFolderListViewController *)self becomeFirstResponder];
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v11 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (v11)
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    v9 = [NSSet setWithObject:v11];
    v10 = +[NSSet set];
    [viewControllerManager selectContainerWithIdentifiers:v9 excludingIdentifiers:v10 usingRootViewController:1 deferUntilDataLoaded:1 animated:1];

    [(ICFolderListViewController *)self updateTagHeadingCell];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  if ([pathsCopy count] == 1)
  {
    collectionView = [(ICFolderListViewController *)self collectionView];
    v8 = [collectionView contextMenuConfigurationForItemsAtIndexPaths:pathsCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  collectionView = [(ICFolderListViewController *)self collectionView];
  v10 = [collectionView contextMenuPreviewForHighlightingMenuWithConfiguration:configurationCopy indexPath:pathCopy];

  return v10;
}

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration dismissalPreviewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  configurationCopy = configuration;
  collectionView = [(ICFolderListViewController *)self collectionView];
  v10 = [collectionView contextMenuPreviewForDismissingContextMenuWithConfiguration:configurationCopy indexPath:pathCopy];

  return v10;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  animatorCopy = animator;
  configurationCopy = configuration;
  collectionView = [(ICFolderListViewController *)self collectionView];
  [collectionView contextMenuWillPerformPreviewActionForMenuWithConfiguration:configurationCopy animator:animatorCopy];
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(ICFolderListViewController *)self collectionView];
  v7 = [collectionView canFocusItemAtIndexPath:pathCopy];

  return v7;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  viewCopy = view;
  pathCopy = path;
  proposedIndexPathCopy = proposedIndexPath;
  if (![viewCopy isEditing] || objc_msgSend(viewCopy, "hasActiveDrag"))
  {
    v12 = proposedIndexPathCopy;
    goto LABEL_14;
  }

  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];

  v15 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:pathCopy];
  v16 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:proposedIndexPathCopy];
  objc_opt_class();
  v17 = ICDynamicCast();
  v18 = [(ICFolderListViewController *)self noteContainerWithItemIdentifier:v15];
  v19 = [(ICFolderListViewController *)self noteContainerWithItemIdentifier:v16];
  if ([v17 ic_isModernFolderType])
  {
    v27 = collectionViewDiffableDataSource;
    v28 = v15;
    noteContainerAccount = [v19 noteContainerAccount];

    v19 = noteContainerAccount;
LABEL_9:
    v21 = [ICMoveDecision alloc];
    v29 = v18;
    v22 = [NSArray arrayWithObjects:&v29 count:1];
    v23 = v18;
    v24 = [v21 initWithSourceObjects:v22 destination:v19];

    if ([v24 shouldMove])
    {
      v25 = proposedIndexPathCopy;
    }

    else
    {
      v25 = pathCopy;
    }

    v12 = v25;

    v18 = v23;
    collectionViewDiffableDataSource = v27;
    v15 = v28;
    goto LABEL_13;
  }

  if (![v17 ic_isLegacyFolderType])
  {
    v27 = collectionViewDiffableDataSource;
    v28 = v15;
    goto LABEL_9;
  }

  v12 = pathCopy;
LABEL_13:

LABEL_14:

  return v12;
}

- (void)addPermanentObservers
{
  v3 = +[ICAppDelegate sharedInstance];
  cloudContextDelegate = [v3 cloudContextDelegate];
  v5 = ICKeyPathFromSelector();
  [cloudContextDelegate ic_addObserver:self forKeyPath:v5 context:&off_1006BA600];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager ic_addObserver:self forKeyPath:@"selectedContainerItemID" context:&off_1006BA600];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager2 ic_addObserver:self forKeyPath:@"selectedContainerIdentifiers" context:&off_1006BA600];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"folderWasCreated:" name:@"ICFolderCreationControllerFolderWasCreatedNotification" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = ICAuthenticationStateDidAuthenticateNotification;
  v11 = +[ICAuthenticationState sharedState];
  [v9 addObserver:self selector:"noteDecryptedStatusDidChange:" name:v10 object:v11];

  v14 = +[NSNotificationCenter defaultCenter];
  v12 = ICAuthenticationStateDidDeauthenticateNotification;
  v13 = +[ICAuthenticationState sharedState];
  [v14 addObserver:self selector:"noteDecryptedStatusDidChange:" name:v12 object:v13];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([(ICFolderListViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Folder/ICFolderListViewController.m"]& 1) != 0)
  {
    v13 = [(ICFolderListViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_1006BA600 && (v13 & 1) == 0)
    {
      v14 = +[ICAppDelegate sharedInstance];
      cloudContextDelegate = [v14 cloudContextDelegate];

      if (cloudContextDelegate == objectCopy)
      {
        v17 = ICKeyPathFromSelector();
        v18 = [pathCopy isEqualToString:v17];

        if (v18)
        {
          [(ICFolderListViewController *)self updateSummaryView];
        }
      }

      else
      {
        viewControllerManager = [(ICBaseViewController *)self viewControllerManager];

        if (viewControllerManager == objectCopy)
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100072410;
          block[3] = &unk_100645E30;
          block[4] = self;
          dispatch_async(&_dispatch_main_q, block);
        }
      }
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICFolderListViewController;
    [(ICFolderListViewController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)registerForTraitChanges
{
  v14.receiver = self;
  v14.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v14 registerForTraitChanges];
  objc_initWeak(&location, self);
  v17 = objc_opt_class();
  v3 = [NSArray arrayWithObjects:&v17 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100072674;
  v11[3] = &unk_100646240;
  objc_copyWeak(&v12, &location);
  v4 = [(ICFolderListViewController *)self registerForTraitChanges:v3 withHandler:v11];

  v16 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v6 = [(ICFolderListViewController *)self registerForTraitChanges:v5 withAction:"updateTagOperatorPosition"];

  v15 = objc_opt_class();
  v7 = [NSArray arrayWithObjects:&v15 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100072740;
  v9[3] = &unk_100646240;
  objc_copyWeak(&v10, &location);
  v8 = [(ICFolderListViewController *)self registerForTraitChanges:v7 withHandler:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (id)noteContainerWithItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = identifierCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100072E3C;
  v16 = sub_100072E4C;
  v17 = 0;
  if ([v5 ic_isModernContainerType])
  {
    modernViewContext = [(ICBaseViewController *)self modernViewContext];
    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100072E54;
    v11[3] = &unk_100645A40;
    v11[6] = &v12;
    v11[4] = self;
    v11[5] = v5;
    [modernViewContext performBlockAndWait:v11];
LABEL_7:

    goto LABEL_8;
  }

  if ([v5 ic_isLegacyContainerType])
  {
    modernViewContext = [(ICBaseViewController *)self legacyViewContext];
    v7 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100072EC0;
    v10[3] = &unk_100645A40;
    v10[6] = &v12;
    v10[4] = self;
    v10[5] = v5;
    [modernViewContext performBlockAndWait:v10];
    goto LABEL_7;
  }

LABEL_8:
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

LABEL_9:

  return v8;
}

- (BOOL)addFolderButtonAppearsInNavigationBar
{
  v2 = _UISolariumEnabled();
  if (v2)
  {
    LOBYTE(v2) = +[UIDevice ic_isVision]^ 1;
  }

  return v2;
}

- (void)updateNavigationBar
{
  if (-[ICFolderListViewController addFolderButtonAppearsInNavigationBar](self, "addFolderButtonAppearsInNavigationBar") && (-[ICFolderListViewController folderDataSource](self, "folderDataSource"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 countOfModernAccounts], v6, v7))
  {
    [(ICFolderListViewController *)self updateAddFolderButton];
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    hasCompactWidth = [viewControllerManager hasCompactWidth];

    if (hasCompactWidth)
    {
      viewControllerManager = [(ICFolderListViewController *)self editButtonItem];
      v25[0] = viewControllerManager;
      v2 = +[UIBarButtonItem ic_sectionSpacer];
      v25[1] = v2;
      addFolderButton = [(ICFolderListViewController *)self addFolderButton];
      v25[2] = addFolderButton;
      v10 = [NSArray arrayWithObjects:v25 count:3];
    }

    else
    {
      addFolderButton2 = [(ICFolderListViewController *)self addFolderButton];
      v24 = addFolderButton2;
      v10 = [NSArray arrayWithObjects:&v24 count:1];
    }

    navigationItem = [(ICFolderListViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v10];

    if (hasCompactWidth)
    {

      editButtonItem = 0;
    }

    else
    {

      editButtonItem = [(ICFolderListViewController *)self editButtonItem];
    }

    navigationItem2 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:editButtonItem];

    if ((hasCompactWidth & 1) == 0)
    {
    }
  }

  else
  {
    editButtonItem2 = [(ICFolderListViewController *)self editButtonItem];
    navigationItem3 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem3 setRightBarButtonItem:editButtonItem2];
  }

  if (_UISolariumEnabled())
  {
    if ([(ICFolderListViewController *)self addFolderButtonAppearsInNavigationBar])
    {
      traitCollection = [(ICFolderListViewController *)self traitCollection];
      _hasSplitViewControllerContextSidebarColumn = [traitCollection _hasSplitViewControllerContextSidebarColumn];
    }

    else
    {
      _hasSplitViewControllerContextSidebarColumn = 0;
    }

    v15 = objc_alloc_init(UINavigationBarAppearance);
    v16 = v15;
    v17 = _hasSplitViewControllerContextSidebarColumn & 1;
    if (_hasSplitViewControllerContextSidebarColumn)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [v15 _setTitleControlHidden:v17];
    navigationItem4 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem4 setStandardAppearance:v16];

    navigationItem5 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem5 setLargeTitleDisplayMode:v18];
  }
}

- (void)updateToolbarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  navigationController = [(ICFolderListViewController *)self navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == self)
  {
    v7 = (_UISolariumEnabled() & 1) == 0 && [(ICFolderListViewController *)self isSearchActive];
    navigationController2 = [(ICFolderListViewController *)self navigationController];
    [navigationController2 setToolbarHidden:v7 animated:animatedCopy];
  }

  v41 = +[NSMutableArray array];
  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  countOfModernAccounts = [folderDataSource countOfModernAccounts];

  if (countOfModernAccounts && ![(ICFolderListViewController *)self addFolderButtonAppearsInNavigationBar])
  {
    [(ICFolderListViewController *)self updateAddFolderButton];
    addFolderButton = [(ICFolderListViewController *)self addFolderButton];
    [v41 addObject:addFolderButton];
  }

  [(ICFolderListViewController *)self updateSummaryView];
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth = [viewControllerManager hasCompactWidth];

  view = [(ICFolderListViewController *)self view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (_UISolariumEnabled() && (+[UIDevice ic_isVision]& 1) == 0)
  {
    if (!userInterfaceIdiom)
    {
      noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
      searchController = [noteSearchViewController searchController];

      searchBar = [searchController searchBar];
      [searchBar setShowsCancelButton:1];

      [searchController setAutomaticallyShowsCancelButton:1];
      navigationItem = [(ICFolderListViewController *)self navigationItem];
      searchBarPlacementBarButtonItem = [navigationItem searchBarPlacementBarButtonItem];

      [v41 ic_addNonNilObject:searchBarPlacementBarButtonItem];
    }

    primarySummaryView = [(ICFolderListViewController *)self primarySummaryView];
    navigationItem2 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem2 setLargeSubtitleView:primarySummaryView];

    scrolledHeaderSummaryView = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    navigationItem3 = [(ICFolderListViewController *)self navigationItem];
    [navigationItem3 setSubtitleView:scrolledHeaderSummaryView];

    goto LABEL_16;
  }

  if (hasCompactWidth)
  {
    v17 = +[UIBarButtonItem flexibleSpaceItem];
    [v41 addObject:v17];

    v18 = [UIBarButtonItem alloc];
    primarySummaryView2 = [(ICFolderListViewController *)self primarySummaryView];
    scrolledHeaderSummaryView = [v18 initWithCustomView:primarySummaryView2];

    [v41 addObject:scrolledHeaderSummaryView];
LABEL_16:
  }

  v29 = +[UIBarButtonItem flexibleSpaceItem];
  [v41 addObject:v29];

  if (ICDebugModeEnabled() && (ICInternalSettingsIsDebugUISuppressed() & 1) == 0)
  {
    v30 = [UIImage systemImageNamed:@"gear"];
    v31 = [[UIBarButtonItem alloc] initWithImage:v30 style:0 target:self action:"debugButtonPressed:"];
    [v31 setTitle:@"Debug"];
    [v41 addObject:v31];
  }

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  hasCompactWidth2 = [viewControllerManager2 hasCompactWidth];

  if (hasCompactWidth2)
  {
    v34 = [UIImage systemImageNamed:@"square.and.pencil"];
    v35 = [[UIBarButtonItem alloc] initWithImage:v34 style:0 target:self action:"addNoteButtonPressed:event:"];
    v36 = +[NSBundle mainBundle];
    v37 = [v36 localizedStringForKey:@"New note" value:&stru_100661CF0 table:0];
    [v35 setAccessibilityLabel:v37];

    v38 = +[NSBundle mainBundle];
    v39 = [v38 localizedStringForKey:@"Double tap to compose a new note." value:&stru_100661CF0 table:0];
    [v35 setAccessibilityHint:v39];

    [v41 addObject:v35];
  }

  v40 = [v41 copy];
  [(ICFolderListViewController *)self setToolbarItems:v40 animated:animatedCopy];
}

- (void)updateAddFolderButton
{
  addFolderButton = [(ICFolderListViewController *)self addFolderButton];

  if (!addFolderButton)
  {
    v4 = [UIImage systemImageNamed:@"folder.badge.plus"];
    v5 = [[UIBarButtonItem alloc] initWithImage:v4 menu:0];
    [(ICFolderListViewController *)self setAddFolderButton:v5];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Create a folder" value:&stru_100661CF0 table:0];
    addFolderButton2 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton2 setTitle:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"New folder" value:&stru_100661CF0 table:0];
    addFolderButton3 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton3 setAccessibilityLabel:v10];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Double tap to add a new folder" value:&stru_100661CF0 table:0];
    addFolderButton4 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton4 setAccessibilityHint:v13];
  }

  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  countOfModernAccounts = [folderDataSource countOfModernAccounts];

  addFolderButton5 = [(ICFolderListViewController *)self addFolderButton];
  v18 = addFolderButton5;
  if (countOfModernAccounts < 2)
  {
    [addFolderButton5 setTarget:self];

    addFolderButton6 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton6 setAction:"addFolderButtonAction:"];
  }

  else
  {
    [addFolderButton5 setTarget:0];

    addFolderButton7 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton7 setAction:0];

    addFolderButton6 = [(ICFolderListViewController *)self folderCreationController];
    menu = [addFolderButton6 menu];
    addFolderButton8 = [(ICFolderListViewController *)self addFolderButton];
    [addFolderButton8 setMenu:menu];
  }
}

- (void)addFolderButtonAction:(id)action
{
  folderCreationController = [(ICFolderListViewController *)self folderCreationController];
  [folderCreationController promptToAddFolderAllowingSmartFolder:1 withCompletionHandler:0];
}

- (void)updateTagOperatorPosition
{
  v3 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  [folderDataSource setShouldShowTagOperatorOnSeparateLine:v3];
}

- (void)updateContainerSelection
{
  traitCollection = [(ICFolderListViewController *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  if (_splitViewControllerContext >= 1)
  {
    viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
    searchController = [viewControllerManager searchController];
    isActive = [searchController isActive];

    if (isActive)
    {
      collectionView = [(ICFolderListViewController *)self collectionView];
      [collectionView ic_deselectAllItems];

      collectionView2 = [(ICFolderListViewController *)self collectionView];
      [collectionView2 deselectAllTagsAnimated:0];
    }

    else
    {
      viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
      selectedContainerItemID = [viewControllerManager2 selectedContainerItemID];

      viewControllerManager3 = [(ICBaseViewController *)self viewControllerManager];
      tagSelection = [viewControllerManager3 tagSelection];

      if (selectedContainerItemID)
      {
        collectionView3 = [(ICFolderListViewController *)self collectionView];
        [collectionView3 deselectAllTagsAnimated:0];

        dataSource = [(ICFolderListViewController *)self dataSource];
        collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
        v16 = [collectionViewDiffableDataSource indexPathForItemIdentifier:selectedContainerItemID];

        collectionView4 = [(ICFolderListViewController *)self collectionView];
        v18 = collectionView4;
        if (v16)
        {
          indexPathsForSelectedItems = [collectionView4 indexPathsForSelectedItems];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v18 = indexPathsForSelectedItems;
          v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v31;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v31 != v22)
                {
                  objc_enumerationMutation(v18);
                }

                v24 = *(*(&v30 + 1) + 8 * i);
                if (([v24 isEqual:v16] & 1) == 0)
                {
                  collectionView5 = [(ICFolderListViewController *)self collectionView];
                  [collectionView5 deselectItemAtIndexPath:v24 animated:0];
                }
              }

              v21 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
            }

            while (v21);
          }

          if (([v18 containsObject:v16] & 1) == 0)
          {
            collectionView6 = [(ICFolderListViewController *)self collectionView];
            [collectionView6 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];
          }
        }

        else
        {
          [collectionView4 ic_deselectAllItems];
        }
      }

      else if ([tagSelection isNonEmpty])
      {
        collectionView7 = [(ICFolderListViewController *)self collectionView];
        [collectionView7 ic_deselectAllItems];

        collectionView8 = [(ICFolderListViewController *)self collectionView];
        [collectionView8 selectTagsWithTagSelection:tagSelection animated:0];
      }
    }
  }
}

- (void)updateTagHeadingCell
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  tagSelection = [viewControllerManager tagSelection];
  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  [folderDataSource setTagSelection:tagSelection];
}

- (void)scrollToRecentlyCreatedFolderIfNeeded
{
  recentlyCreatedFolderObjectID = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];

  if (recentlyCreatedFolderObjectID)
  {
    recentlyCreatedFolderObjectID2 = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
    [(ICFolderListViewController *)self scrollToContainerWithObjectID:recentlyCreatedFolderObjectID2];
  }
}

- (void)scrollToContainerWithObjectID:(id)d
{
  dCopy = d;
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
  v8 = [collectionViewDiffableDataSource indexPathForItemIdentifier:dCopy];

  if (v8)
  {
    collectionView = [(ICFolderListViewController *)self collectionView];
    [collectionView scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:1];
  }
}

- (void)keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;

  firstResponder = [(ICFolderListViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    collectionView = [(ICFolderListViewController *)self collectionView];
    [collectionView setContentInset:{0.0, 0.0, v6, 0.0}];
  }
}

- (void)checkIfShouldShowOrHideAllowNotificationsView
{
  if (!+[NSThread isMainThread])
  {
    [ICAssert handleFailedAssertWithCondition:"[NSThread isMainThread]" functionName:"[ICFolderListViewController checkIfShouldShowOrHideAllowNotificationsView]" simulateCrash:1 showAlert:0 format:@"Unexpected call from background thread"];
  }

  objc_initWeak(&location, self);
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"DidDismissAllowNotificationsView"];

  if (v4)
  {
    collectionView = [(ICFolderListViewController *)self collectionView];
    [collectionView setShouldShowAllowNotificationsView:0];
  }

  else
  {
    v6 = +[ICAppDelegate sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000740A0;
    v7[3] = &unk_100646D30;
    objc_copyWeak(&v8, &location);
    [v6 checkIfUserNotificationsAllowed:v7];

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

- (void)dataSourceDataUpdateDidRender:(id)render
{
  v4.receiver = self;
  v4.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v4 dataSourceDataUpdateDidRender:render];
  [(ICFolderListViewController *)self updateContainerSelection];
  [(ICFolderListViewController *)self updateToolbarAnimated:0];
  [(ICFolderListViewController *)self updateNavigationBar];
  [(ICFolderListViewController *)self scrollToRecentlyCreatedFolderIfNeeded];
  [(ICFolderListViewController *)self updateTagHeadingCell];
}

- (ICOutlineParentCollectionViewCell)tagHeadingCell
{
  dataSource = [(ICFolderListViewController *)self dataSource];
  collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];

  snapshot = [collectionViewDiffableDataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  v7 = [itemIdentifiers ic_objectPassingTest:&stru_100646D50];

  v8 = [collectionViewDiffableDataSource indexPathForItemIdentifier:v7];
  objc_opt_class();
  collectionView = [(ICFolderListViewController *)self collectionView];
  v10 = [collectionView cellForItemAtIndexPath:v8];
  v11 = ICDynamicCast();

  return v11;
}

- (void)folderWasCreated:(id)created
{
  createdCopy = created;
  objc_opt_class();
  object = [createdCopy object];

  v6 = ICDynamicCast();
  [(ICFolderListViewController *)self setRecentlyCreatedFolderObjectID:v6];

  modernViewContext = [(ICBaseViewController *)self modernViewContext];
  recentlyCreatedFolderObjectID = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
  v9 = [modernViewContext ic_existingObjectWithID:recentlyCreatedFolderObjectID];

  ancestorFolderObjectIDs = [v9 ancestorFolderObjectIDs];
  v11 = [ancestorFolderObjectIDs mutableCopy];

  v12 = [[ICFolderListSectionIdentifier alloc] initWithObject:v9];
  [v11 ic_addNonNilObject:v12];

  folderDataSource = [(ICFolderListViewController *)self folderDataSource];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000747DC;
  v14[3] = &unk_100645E30;
  v14[4] = self;
  [folderDataSource expandItemsWithIdentifiers:v11 completion:v14];
}

- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    dataSource = [(ICFolderListViewController *)self dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
    snapshot = [collectionViewDiffableDataSource snapshot];
    itemIdentifiers = [snapshot itemIdentifiers];
    v10 = [itemIdentifiers ic_objectsOfClass:objc_opt_class()];
    v11 = [NSSet setWithArray:v10];

    v12 = +[NSMutableSet set];
    [v12 unionSet:dsCopy];
    [v12 unionSet:v11];
    dataSource2 = [(ICFolderListViewController *)self dataSource];
    v14 = [dataSource2 associatedCellsForItemIdentifiers:v12];

    v15 = [v14 ic_objectsOfClass:objc_opt_class()];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v21 + 1) + 8 * i);
          [v20 updateSubfolderCount];
          [v20 updateNoteCount];
          [v20 updateTextAndStatus];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }
}

- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects
{
  objectsCopy = objects;
  v6 = +[NSMutableSet set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = objectsCopy;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    selfCopy = self;
    do
    {
      v10 = 0;
      v39 = "hostApplicationIdentifier";
      do
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          owner2 = v11;
          objectID = [owner2 objectID];
          [v6 addObject:objectID];

          noteContainerAccount = [owner2 noteContainerAccount];

          if (noteContainerAccount)
          {
            noteContainerAccount2 = [owner2 noteContainerAccount];
            objectID2 = [noteContainerAccount2 objectID];
            [v6 ic_addNonNilObject:objectID2];

            goto LABEL_28;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && (v19 = v11) != 0)
              {
                owner2 = v19;
                noteContainerAccount2 = [v19 store];
                store = [owner2 store];
                account = [store account];
                defaultStore = [account defaultStore];
                objectID3 = [defaultStore objectID];
                [v6 ic_addNonNilObject:objectID3];

                self = selfCopy;
                if (!noteContainerAccount2)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  noteContainerAccount2 = 0;
                  owner2 = 0;
                  goto LABEL_28;
                }

                noteContainerAccount2 = v11;
                owner2 = 0;
                if (!noteContainerAccount2)
                {
LABEL_28:

                  goto LABEL_29;
                }
              }

              objectID4 = [noteContainerAccount2 objectID];
              [v6 ic_addNonNilObject:objectID4];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_28;
              }

              store3 = noteContainerAccount2;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_30;
              }

              v28 = v11;
              owner = [v28 owner];
              store2 = [owner store];
              objectID5 = [store2 objectID];
              [v6 ic_addNonNilObject:objectID5];

              owner2 = [v28 owner];

              store3 = [owner2 store];
              noteContainerAccount2 = store3;
            }

            account2 = [store3 account];
            objectID6 = [account2 objectID];
            [v6 ic_addNonNilObject:objectID6];

            goto LABEL_28;
          }

          changedValues = [v11 changedValues];
          owner2 = [changedValues allKeys];

          v18 = ICKeyPathFromSelector();
          if ([owner2 containsObject:v18])
          {

LABEL_23:
            noteContainerAccount2 = [v11 objectID];
            [v6 ic_addNonNilObject:noteContainerAccount2];
            goto LABEL_28;
          }

          v26 = ICKeyPathFromSelector();
          v27 = [owner2 containsObject:v26];

          self = selfCopy;
          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_29:

LABEL_30:
        folderDataSource = [(ICFolderListViewController *)self folderDataSource];
        allSmartFolderObjectIDs = [folderDataSource allSmartFolderObjectIDs];
        allObjects = [allSmartFolderObjectIDs allObjects];
        [v6 ic_addObjectsFromNonNilArray:allObjects];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);
  }

  v37 = [v6 copy];

  return v37;
}

- (double)availableWidthForSummaryView
{
  view = [(ICFolderListViewController *)self view];
  [view bounds];
  v4 = v3 + -150.0;

  return v4;
}

- (void)updateSummaryView
{
  primarySummaryView = [(ICFolderListViewController *)self primarySummaryView];
  v4 = [(ICFolderListViewController *)self updateSummaryView:primarySummaryView isPrimary:1];
  [(ICFolderListViewController *)self setPrimarySummaryView:v4];

  if (_UISolariumEnabled())
  {
    scrolledHeaderSummaryView = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    v5 = [(ICFolderListViewController *)self updateSummaryView:scrolledHeaderSummaryView isPrimary:0];
    [(ICFolderListViewController *)self setScrolledHeaderSummaryView:v5];
  }
}

- (id)updateSummaryView:(id)view isPrimary:(BOOL)primary
{
  primaryCopy = primary;
  viewCopy = view;
  v7 = _UISolariumEnabled();
  v8 = 2;
  if (!primaryCopy)
  {
    v8 = 3;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = viewCopy;
  if (!viewCopy)
  {
    v10 = [[ICToolbarSummaryView alloc] initWithFrame:v9 type:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    [(ICToolbarSummaryView *)v10 setCountsHidden:1];
    [(ICToolbarSummaryView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  [(ICToolbarSummaryView *)v10 setHidden:0];
  [(ICToolbarSummaryView *)v10 setType:v9];
  [(ICToolbarSummaryView *)v10 setDelegate:self];
  [(ICFolderListViewController *)self availableWidthForSummaryView];
  [(ICToolbarSummaryView *)v10 setAvailableWidth:?];
  v11 = +[ICAppDelegate sharedInstance];
  cloudContextDelegate = [v11 cloudContextDelegate];
  syncMessage = [cloudContextDelegate syncMessage];
  [(ICToolbarSummaryView *)v10 setSyncMessage:syncMessage];

  if (_UISolariumEnabled())
  {
    [(ICToolbarSummaryView *)v10 setLockNowHidden:1];
  }

  [(ICToolbarSummaryView *)v10 update];

  return v10;
}

- (void)summaryViewLockNowPressed:(id)pressed
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1004D98EC(v4);
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager lockNotesNow];
}

- (BOOL)isSearchActive
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  isSearchActive = [viewControllerManager isSearchActive];

  return isSearchActive;
}

- (BOOL)isSearchActiveWithQuery
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  isSearchActiveWithQuery = [viewControllerManager isSearchActiveWithQuery];

  return isSearchActiveWithQuery;
}

- (void)noteDecryptedStatusDidChange:(id)change
{
  v3 = +[ICAuthenticationState sharedState];
  isBlockingDeauthentication = [v3 isBlockingDeauthentication];

  if ((isBlockingDeauthentication & 1) == 0)
  {
    performBlockOnMainThread();
  }
}

- (void)addNoteButtonPressed:(id)pressed event:(id)event
{
  eventCopy = event;
  if ([(ICFolderListViewController *)self isEditing])
  {
    [(ICFolderListViewController *)self setEditing:0 animated:1];
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  v6 = [viewControllerManager showNewNoteWithApproach:13 sender:eventCopy animated:1];
}

- (void)confirmSelection
{
  collectionView = [(ICFolderListViewController *)self collectionView];
  collectionView2 = [(ICFolderListViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView2 indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];
  [(ICFolderListViewController *)self collectionView:collectionView didSelectItemAtIndexPath:firstObject];
}

- (void)confirmFocusedCellSelection
{
  collectionView = [(ICFolderListViewController *)self collectionView];
  indexPathsForFocusedItems = [collectionView indexPathsForFocusedItems];
  firstObject = [indexPathsForFocusedItems firstObject];

  if (firstObject)
  {
    collectionView2 = [(ICFolderListViewController *)self collectionView];
    [(ICFolderListViewController *)self collectionView:collectionView2 didSelectItemAtIndexPath:firstObject];
  }
}

- (BOOL)canBecomeFirstResponder
{
  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  keyboardHandler = [viewControllerManager keyboardHandler];
  isInHardwareKeyboardMode = [keyboardHandler isInHardwareKeyboardMode];

  if (isInHardwareKeyboardMode)
  {
    viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
    activeEditorController = [viewControllerManager2 activeEditorController];
    v8 = [activeEditorController wantsToRemainFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)selectItemWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  collectionView = [(ICFolderListViewController *)self collectionView];

  if (collectionView)
  {
    dataSource = [(ICFolderListViewController *)self dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
    v9 = [collectionViewDiffableDataSource indexPathForItemIdentifier:identifierCopy];

    if (v9)
    {
      collectionView2 = [(ICFolderListViewController *)self collectionView];
      [collectionView2 selectItemAtIndexPath:v9 animated:animatedCopy scrollPosition:0];

      collectionView3 = [(ICFolderListViewController *)self collectionView];
      delegate = [collectionView3 delegate];
      collectionView4 = [(ICFolderListViewController *)self collectionView];
      [delegate collectionView:collectionView4 didSelectItemAtIndexPath:v9];
    }
  }
}

@end
@interface ICFolderListViewController
- (BOOL)addFolderButtonAppearsInNavigationBar;
- (BOOL)canBecomeFirstResponder;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)isSearchActive;
- (BOOL)isSearchActiveWithQuery;
- (ICFolderDataSource)folderDataSource;
- (ICFolderListViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 overrideContainerIdentifier:(id)a5;
- (ICOutlineParentCollectionViewCell)tagHeadingCell;
- (double)availableWidthForSummaryView;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (id)noteContainerWithItemIdentifier:(id)a3;
- (id)updateSummaryView:(id)a3 isPrimary:(BOOL)a4;
- (void)addFolderButtonAction:(id)a3;
- (void)addNoteButtonPressed:(id)a3 event:(id)a4;
- (void)addPermanentObservers;
- (void)checkIfShouldShowOrHideAllowNotificationsView;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)confirmFocusedCellSelection;
- (void)confirmSelection;
- (void)dataSourceDataUpdateDidRender:(id)a3;
- (void)dealloc;
- (void)folderWasCreated:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)loadView;
- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4;
- (void)noteDecryptedStatusDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForTraitChanges;
- (void)reloadListWithDataIndexedBlock:(id)a3 dataRenderedBlock:(id)a4;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillDeactivate:(id)a3;
- (void)scrollToContainerWithObjectID:(id)a3;
- (void)scrollToRecentlyCreatedFolderIfNeeded;
- (void)selectItemWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)summaryViewLockNowPressed:(id)a3;
- (void)updateAddFolderButton;
- (void)updateAppearanceStyle;
- (void)updateContainerSelection;
- (void)updateNavigationBar;
- (void)updateNavigationTitle;
- (void)updateSummaryView;
- (void)updateTagHeadingCell;
- (void)updateTagOperatorPosition;
- (void)updateToolbarAnimated:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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
    v5 = [(ICBaseViewController *)self viewControllerManager];
    v6 = [v5 persistenceConfiguration];
    v22 = [v6 legacyViewContext];

    v7 = [(ICBaseViewController *)self viewControllerManager];
    v8 = [v7 persistenceConfiguration];
    v21 = [v8 modernBackgroundContext];

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
    v13 = [(ICFolderListViewController *)self collectionView];
    v14 = [(ICFolderListViewController *)self overrideContainerIdentifier];
    v15 = [(ICBaseViewController *)self unsupportedFolderInfoButtonTapHandler];
    v16 = [(ICFolderDataSource *)v12 initWithCollectionView:v13 presentingViewController:self legacyManagedObjectContext:v22 modernManagedObjectContext:v21 overrideContainerIdentifier:v14 unsupportedFolderInfoButtonTapHandler:v15 accountUpgradeButtonTapHandlerProvider:v9 tagSelectionDidChangeHandler:v10 allowNotificationsCloseHandler:v11];
    v17 = self->_folderDataSource;
    self->_folderDataSource = v16;

    v18 = +[ICNoteContext sharedContext];
    v19 = [v18 workerManagedObjectContext];
    [(ICFolderDataSource *)self->_folderDataSource setApplySnapshotModernManagedObjectContext:v19];

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
  v3 = [(ICFolderListViewController *)self traitCollection];
  v4 = [v3 _splitViewControllerContext];

  v5 = (v4 - 3);
  v6 = (v4 - 3) < 0xFFFFFFFFFFFFFFFELL;
  v7 = [(ICFolderListViewController *)self folderDataSource];
  [v7 setHasGroupInset:v6];

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

    v10 = [(ICFolderListViewController *)self collectionView];
    [v10 setBackgroundColor:v9];

    if (v5 <= 0xFFFFFFFFFFFFFFFDLL)
    {
    }
  }
}

- (void)updateNavigationTitle
{
  v4 = [(ICFolderListViewController *)self isSearchActive];
  v5 = v4;
  if (v4)
  {
    [(ICBaseViewController *)self searchNavigationTitle];
  }

  else
  {
    v2 = +[NSBundle mainBundle];
    [v2 localizedStringForKey:@"Folders" value:&stru_100661CF0 table:0];
  }
  v6 = ;
  v7 = [(ICFolderListViewController *)self navigationItem];
  [v7 setTitle:v6];

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

  v10 = [(ICFolderListViewController *)self navigationItem];
  v9 = [v10 subtitleView];
  [v9 setAlpha:v8];
}

- (ICFolderListViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 overrideContainerIdentifier:(id)a5
{
  v9 = a5;
  v29.receiver = self;
  v29.super_class = ICFolderListViewController;
  v10 = [(ICBaseViewController *)&v29 initWithViewMode:a3 viewControllerManager:a4 viewControllerType:2];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_overrideContainerIdentifier, a5);
    v12 = [(ICBaseViewController *)v11 legacyViewContext];
    v13 = [(ICBaseViewController *)v11 modernViewContext];
    v14 = [NSSet setWithObjects:v12, v13, 0];

    v15 = [[ICManagedObjectContextChangeController alloc] initWithManagedObjectContexts:v14 delegate:v11];
    managedObjectContextChangeController = v11->_managedObjectContextChangeController;
    v11->_managedObjectContextChangeController = v15;

    v17 = [[ICFolderCreationController alloc] initWithViewController:v11 noteContainer:0 creationApproach:1];
    folderCreationController = v11->_folderCreationController;
    v11->_folderCreationController = v17;

    v19 = [ICFolderListCollectionView alloc];
    v20 = [(ICBaseViewController *)v11 legacyViewContext];
    v21 = [(ICBaseViewController *)v11 modernViewContext];
    v22 = [(ICBaseViewController *)v11 viewControllerManager];
    v23 = [(ICFolderListCollectionView *)v19 initWithPresentingViewController:v11 legacyManagedObjectContext:v20 modernManagedObjectContext:v21 viewControllerManager:v22];
    collectionView = v11->_collectionView;
    v11->_collectionView = v23;

    v25 = [(ICFolderListViewController *)v11 folderDataSource];
    v26 = [v25 collectionViewDiffableDataSource];
    [(ICCollectionView *)v11->_collectionView setDiffableDataSource:v26];

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

- (void)reloadListWithDataIndexedBlock:(id)a3 dataRenderedBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICFolderListViewController *)self dataSource];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100070704;
  v10[3] = &unk_100645E80;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 reloadDataAnimated:0 dataIndexedBlock:v7 dataRenderedBlock:v10];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[ICAppDelegate sharedInstance];
  v5 = [v4 cloudContextDelegate];
  v6 = ICKeyPathFromSelector();
  [v5 ic_removeObserver:self forKeyPath:v6 context:&off_1006BA600];

  v7 = [(ICBaseViewController *)self viewControllerManager];
  [v7 ic_removeObserver:self forKeyPath:@"selectedContainerIdentifiers" context:&off_1006BA600];

  v8 = [(ICBaseViewController *)self viewControllerManager];
  [v8 ic_removeObserver:self forKeyPath:@"selectedContainerItemID" context:&off_1006BA600];

  v9.receiver = self;
  v9.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v9 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = ICFolderListViewController;
  [(ICFolderListViewController *)&v4 loadView];
  v3 = [(ICFolderListViewController *)self collectionView];
  [(ICFolderListViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v3 viewDidLoad];
  [(ICFolderListViewController *)self updateNavigationTitle];
  [(ICFolderListViewController *)self addPermanentObservers];
}

- (void)viewWillAppear:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v19 viewWillAppear:a3];
  v4 = [(ICFolderListViewController *)self managedObjectContextChangeController];
  [v4 performUpdatesIfNeeded];

  v5 = [(ICFolderListViewController *)self transitionCoordinator];
  if (v5)
  {
    v6 = [(ICFolderListViewController *)self transitionCoordinator];
    if ([v6 isInteractive])
    {
      [(ICFolderListViewController *)self updateToolbarAnimated:0];
    }

    else
    {
      v7 = [(ICFolderListViewController *)self transitionCoordinator];
      -[ICFolderListViewController updateToolbarAnimated:](self, "updateToolbarAnimated:", [v7 isCancelled] ^ 1);
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
    v9 = [(ICFolderListViewController *)self transitionCoordinator];
    v10 = [v9 isInteractive];

    if (v10)
    {
      v11 = [(ICFolderListViewController *)self transitionCoordinator];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_100070C9C;
      v16 = &unk_1006461A0;
      v17 = v8;
      [v11 notifyWhenInteractionChangesUsingBlock:&v13];
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
  v3 = [(ICFolderListViewController *)self primarySummaryView];
  [v3 availableWidth];
  v5 = v4;
  [(ICFolderListViewController *)self availableWidthForSummaryView];
  v7 = vabdd_f64(v5, v6);

  if (v7 >= 0.00999999978)
  {
    [(ICFolderListViewController *)self availableWidthForSummaryView];
    v9 = v8;
    v10 = [(ICFolderListViewController *)self primarySummaryView];
    [v10 setAvailableWidth:v9];

    v11 = [(ICFolderListViewController *)self primarySummaryView];
    [v11 update];
  }

  v12 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
  [v12 availableWidth];
  v14 = v13;
  [(ICFolderListViewController *)self availableWidthForSummaryView];
  v16 = vabdd_f64(v14, v15);

  if (v16 >= 0.00999999978)
  {
    [(ICFolderListViewController *)self availableWidthForSummaryView];
    v18 = v17;
    v19 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    [v19 setAvailableWidth:v18];

    v20 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    [v20 update];
  }

  v21 = +[UIApplication sharedApplication];
  if ([v21 isRunningTest])
  {
    v22 = [(ICFolderListViewController *)self _appearState];

    if (v22 != 1)
    {
      return;
    }

    v21 = +[ICAppDelegate sharedInstance];
    [v21 folderListDidLayoutSubviews];
  }
}

- (void)sceneWillDeactivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICFolderListViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 isEqual:v7];

  if (v8 && [(ICFolderListViewController *)self ic_isViewVisible])
  {
    v9 = [(ICFolderListViewController *)self eventReporter];
    [v9 submitFolderListViewEvent];
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = [a3 object];
  v5 = [(ICFolderListViewController *)self viewIfLoaded];
  v6 = [v5 window];
  v7 = [v6 windowScene];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    if ([(ICFolderListViewController *)self ic_isViewVisible])
    {
      v9 = [(ICFolderListViewController *)self eventReporter];
      [v9 startFolderListViewEventDurationTracking];
    }

    [(ICFolderListViewController *)self checkIfShouldShowOrHideAllowNotificationsView];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICFolderListViewController;
  [(ICFolderListViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ICFolderListViewController *)self eventReporter];
  [v4 submitFolderListViewEvent];
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v9 viewDidAppear:a3];
  if ([(ICFolderListViewController *)self canBecomeFirstResponder])
  {
    [(ICFolderListViewController *)self becomeFirstResponder];
  }

  v4 = +[ICAppDelegate sharedInstance];
  [v4 didFinishExtendedLaunch];

  v5 = +[UIApplication sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = +[ICAppDelegate sharedInstance];
    [v7 didShowFolderList];
  }

  v8 = [(ICFolderListViewController *)self eventReporter];
  [v8 startFolderListViewEventDurationTracking];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(ICFolderListViewController *)self isEditing]!= a3)
  {
    v28.receiver = self;
    v28.super_class = ICFolderListViewController;
    [(ICBaseViewController *)&v28 setEditing:v5 animated:v4];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [(ICFolderListViewController *)self collectionView];
    v8 = [v7 indexPathsForVisibleItems];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          v14 = [(ICFolderListViewController *)self collectionView];
          v15 = [v14 cellForItemAtIndexPath:v13];
          v16 = ICDynamicCast();

          if (([v16 allowsEditing] & 1) == 0)
          {
            [v16 setEditing:v5];
          }

          if (v5)
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

    v17 = [(ICFolderListViewController *)self dataSource];
    v18 = [v17 collectionViewDiffableDataSource];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000713F8;
    v22[3] = &unk_100646080;
    v22[4] = self;
    v23 = v5;
    [v18 _performBatchApplyUsingReloadData:v22];

    v19 = [(ICFolderListViewController *)self collectionView];
    [v19 setEditing:v5];

    if (v5)
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

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ICFolderListViewController *)self dataSource];
  v10 = [v9 collectionViewDiffableDataSource];

  v11 = [v10 itemIdentifierForIndexPath:v8];

  v12 = [v10 snapshot];
  v13 = [v12 sectionIdentifierForSectionContainingItemIdentifier:v11];

  v14 = [v10 snapshotForSection:v13];
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

  [(ICFolderListViewController *)self setCurrentSpringLoadedInteractionContext:v7];
  v17 = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
  [v17 setTargetItem:v11];

  v18 = 1;
LABEL_6:

  return v18;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = [(ICFolderListViewController *)self dataSource];
  v9 = [v8 collectionViewDiffableDataSource];
  v10 = [v9 itemIdentifierForIndexPath:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [(ICFolderListViewController *)self traitCollection];
    v13 = [v12 _splitViewControllerContext];

    if (v13 >= 1)
    {
      v14 = [(ICBaseViewController *)self viewControllerManager];
      v15 = [v14 selectedContainerItemID];
      if ([v11 isEqual:v15])
      {
        v16 = [(ICFolderListViewController *)self isEditing];

        if ((v16 & 1) == 0)
        {
          [v22 setSelected:1];
        }
      }

      else
      {
      }
    }

    v19 = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
    v20 = [v11 isEqual:v19];

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
    v17 = [(ICBaseViewController *)self viewControllerManager];
    v18 = [v17 tagSelection];
    [v11 setTagSelection:v18];
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
  v17 = [(ICBaseViewController *)self viewControllerManager];
  v18 = [v17 tagSelection];
  [v11 selectTagsWithTagSelection:v18 animated:0];
LABEL_16:

LABEL_17:
LABEL_18:
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICFolderListViewController *)self dataSource];
  v7 = [v6 collectionViewDiffableDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v5];

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

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICFolderListViewController *)self dataSource];
  v7 = [v6 collectionViewDiffableDataSource];
  v8 = [v7 itemIdentifierForIndexPath:v5];

  v9 = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
  v10 = [v9 targetItem];
  if ([v10 isEqual:v8])
  {
    v11 = [(ICFolderListViewController *)self currentSpringLoadedInteractionContext];
    v12 = [v11 state];

    if (v12 == 3)
    {
      [(ICFolderListViewController *)self setCurrentSpringLoadedInteractionContext:0];
      v13 = [(ICFolderListViewController *)self folderDataSource];
      v21 = v8;
      v14 = [NSArray arrayWithObjects:&v21 count:1];
      [v13 expandItemsWithIdentifiers:v14 completion:0];

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
    v18 = [v17 managedObjectContext];
    v19 = [v18 ic_existingObjectWithID:v16];

    LOBYTE(v17) = [v19 isUnsupported];
    if (v17)
    {
      v15 = 0;
    }
  }

LABEL_10:
  return v15;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  [(ICFolderListViewController *)self becomeFirstResponder];
  v6 = [(ICFolderListViewController *)self dataSource];
  v7 = [v6 collectionViewDiffableDataSource];
  v11 = [v7 itemIdentifierForIndexPath:v5];

  if (v11)
  {
    v8 = [(ICBaseViewController *)self viewControllerManager];
    v9 = [NSSet setWithObject:v11];
    v10 = +[NSSet set];
    [v8 selectContainerWithIdentifiers:v9 excludingIdentifiers:v10 usingRootViewController:1 deferUntilDataLoaded:1 animated:1];

    [(ICFolderListViewController *)self updateTagHeadingCell];
  }
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if ([v6 count] == 1)
  {
    v7 = [(ICFolderListViewController *)self collectionView];
    v8 = [v7 contextMenuConfigurationForItemsAtIndexPaths:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ICFolderListViewController *)self collectionView];
  v10 = [v9 contextMenuPreviewForHighlightingMenuWithConfiguration:v8 indexPath:v7];

  return v10;
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 dismissalPreviewForItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ICFolderListViewController *)self collectionView];
  v10 = [v9 contextMenuPreviewForDismissingContextMenuWithConfiguration:v8 indexPath:v7];

  return v10;
}

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(ICFolderListViewController *)self collectionView];
  [v9 contextMenuWillPerformPreviewActionForMenuWithConfiguration:v8 animator:v7];
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(ICFolderListViewController *)self collectionView];
  v7 = [v6 canFocusItemAtIndexPath:v5];

  return v7;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (![v9 isEditing] || objc_msgSend(v9, "hasActiveDrag"))
  {
    v12 = v11;
    goto LABEL_14;
  }

  v13 = [(ICFolderListViewController *)self dataSource];
  v14 = [v13 collectionViewDiffableDataSource];

  v15 = [v14 itemIdentifierForIndexPath:v10];
  v16 = [v14 itemIdentifierForIndexPath:v11];
  objc_opt_class();
  v17 = ICDynamicCast();
  v18 = [(ICFolderListViewController *)self noteContainerWithItemIdentifier:v15];
  v19 = [(ICFolderListViewController *)self noteContainerWithItemIdentifier:v16];
  if ([v17 ic_isModernFolderType])
  {
    v27 = v14;
    v28 = v15;
    v20 = [v19 noteContainerAccount];

    v19 = v20;
LABEL_9:
    v21 = [ICMoveDecision alloc];
    v29 = v18;
    v22 = [NSArray arrayWithObjects:&v29 count:1];
    v23 = v18;
    v24 = [v21 initWithSourceObjects:v22 destination:v19];

    if ([v24 shouldMove])
    {
      v25 = v11;
    }

    else
    {
      v25 = v10;
    }

    v12 = v25;

    v18 = v23;
    v14 = v27;
    v15 = v28;
    goto LABEL_13;
  }

  if (![v17 ic_isLegacyFolderType])
  {
    v27 = v14;
    v28 = v15;
    goto LABEL_9;
  }

  v12 = v10;
LABEL_13:

LABEL_14:

  return v12;
}

- (void)addPermanentObservers
{
  v3 = +[ICAppDelegate sharedInstance];
  v4 = [v3 cloudContextDelegate];
  v5 = ICKeyPathFromSelector();
  [v4 ic_addObserver:self forKeyPath:v5 context:&off_1006BA600];

  v6 = [(ICBaseViewController *)self viewControllerManager];
  [v6 ic_addObserver:self forKeyPath:@"selectedContainerItemID" context:&off_1006BA600];

  v7 = [(ICBaseViewController *)self viewControllerManager];
  [v7 ic_addObserver:self forKeyPath:@"selectedContainerIdentifiers" context:&off_1006BA600];

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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([(ICFolderListViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Folder/ICFolderListViewController.m"]& 1) != 0)
  {
    v13 = [(ICFolderListViewController *)self ic_shouldIgnoreObserveValue:v12 ofObject:v11 forKeyPath:v10];

    if (a6 == &off_1006BA600 && (v13 & 1) == 0)
    {
      v14 = +[ICAppDelegate sharedInstance];
      v15 = [v14 cloudContextDelegate];

      if (v15 == v11)
      {
        v17 = ICKeyPathFromSelector();
        v18 = [v10 isEqualToString:v17];

        if (v18)
        {
          [(ICFolderListViewController *)self updateSummaryView];
        }
      }

      else
      {
        v16 = [(ICBaseViewController *)self viewControllerManager];

        if (v16 == v11)
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
    [(ICFolderListViewController *)&v20 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (id)noteContainerWithItemIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100072E3C;
  v16 = sub_100072E4C;
  v17 = 0;
  if ([v5 ic_isModernContainerType])
  {
    v6 = [(ICBaseViewController *)self modernViewContext];
    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100072E54;
    v11[3] = &unk_100645A40;
    v11[6] = &v12;
    v11[4] = self;
    v11[5] = v5;
    [v6 performBlockAndWait:v11];
LABEL_7:

    goto LABEL_8;
  }

  if ([v5 ic_isLegacyContainerType])
  {
    v6 = [(ICBaseViewController *)self legacyViewContext];
    v7 = v10;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100072EC0;
    v10[3] = &unk_100645A40;
    v10[6] = &v12;
    v10[4] = self;
    v10[5] = v5;
    [v6 performBlockAndWait:v10];
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
    v8 = [(ICBaseViewController *)self viewControllerManager];
    v9 = [v8 hasCompactWidth];

    if (v9)
    {
      v8 = [(ICFolderListViewController *)self editButtonItem];
      v25[0] = v8;
      v2 = +[UIBarButtonItem ic_sectionSpacer];
      v25[1] = v2;
      v3 = [(ICFolderListViewController *)self addFolderButton];
      v25[2] = v3;
      v10 = [NSArray arrayWithObjects:v25 count:3];
    }

    else
    {
      v4 = [(ICFolderListViewController *)self addFolderButton];
      v24 = v4;
      v10 = [NSArray arrayWithObjects:&v24 count:1];
    }

    v21 = [(ICFolderListViewController *)self navigationItem];
    [v21 setRightBarButtonItems:v10];

    if (v9)
    {

      v22 = 0;
    }

    else
    {

      v22 = [(ICFolderListViewController *)self editButtonItem];
    }

    v23 = [(ICFolderListViewController *)self navigationItem];
    [v23 setLeftBarButtonItem:v22];

    if ((v9 & 1) == 0)
    {
    }
  }

  else
  {
    v11 = [(ICFolderListViewController *)self editButtonItem];
    v12 = [(ICFolderListViewController *)self navigationItem];
    [v12 setRightBarButtonItem:v11];
  }

  if (_UISolariumEnabled())
  {
    if ([(ICFolderListViewController *)self addFolderButtonAppearsInNavigationBar])
    {
      v13 = [(ICFolderListViewController *)self traitCollection];
      v14 = [v13 _hasSplitViewControllerContextSidebarColumn];
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_alloc_init(UINavigationBarAppearance);
    v16 = v15;
    v17 = v14 & 1;
    if (v14)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    [v15 _setTitleControlHidden:v17];
    v19 = [(ICFolderListViewController *)self navigationItem];
    [v19 setStandardAppearance:v16];

    v20 = [(ICFolderListViewController *)self navigationItem];
    [v20 setLargeTitleDisplayMode:v18];
  }
}

- (void)updateToolbarAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICFolderListViewController *)self navigationController];
  v6 = [v5 topViewController];

  if (v6 == self)
  {
    v7 = (_UISolariumEnabled() & 1) == 0 && [(ICFolderListViewController *)self isSearchActive];
    v8 = [(ICFolderListViewController *)self navigationController];
    [v8 setToolbarHidden:v7 animated:v3];
  }

  v41 = +[NSMutableArray array];
  v9 = [(ICFolderListViewController *)self folderDataSource];
  v10 = [v9 countOfModernAccounts];

  if (v10 && ![(ICFolderListViewController *)self addFolderButtonAppearsInNavigationBar])
  {
    [(ICFolderListViewController *)self updateAddFolderButton];
    v11 = [(ICFolderListViewController *)self addFolderButton];
    [v41 addObject:v11];
  }

  [(ICFolderListViewController *)self updateSummaryView];
  v12 = [(ICBaseViewController *)self viewControllerManager];
  v13 = [v12 hasCompactWidth];

  v14 = [(ICFolderListViewController *)self view];
  v15 = [v14 traitCollection];
  v16 = [v15 userInterfaceIdiom];

  if (_UISolariumEnabled() && (+[UIDevice ic_isVision]& 1) == 0)
  {
    if (!v16)
    {
      v21 = [(ICBaseViewController *)self noteSearchViewController];
      v22 = [v21 searchController];

      v23 = [v22 searchBar];
      [v23 setShowsCancelButton:1];

      [v22 setAutomaticallyShowsCancelButton:1];
      v24 = [(ICFolderListViewController *)self navigationItem];
      v25 = [v24 searchBarPlacementBarButtonItem];

      [v41 ic_addNonNilObject:v25];
    }

    v26 = [(ICFolderListViewController *)self primarySummaryView];
    v27 = [(ICFolderListViewController *)self navigationItem];
    [v27 setLargeSubtitleView:v26];

    v20 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    v28 = [(ICFolderListViewController *)self navigationItem];
    [v28 setSubtitleView:v20];

    goto LABEL_16;
  }

  if (v13)
  {
    v17 = +[UIBarButtonItem flexibleSpaceItem];
    [v41 addObject:v17];

    v18 = [UIBarButtonItem alloc];
    v19 = [(ICFolderListViewController *)self primarySummaryView];
    v20 = [v18 initWithCustomView:v19];

    [v41 addObject:v20];
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

  v32 = [(ICBaseViewController *)self viewControllerManager];
  v33 = [v32 hasCompactWidth];

  if (v33)
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
  [(ICFolderListViewController *)self setToolbarItems:v40 animated:v3];
}

- (void)updateAddFolderButton
{
  v3 = [(ICFolderListViewController *)self addFolderButton];

  if (!v3)
  {
    v4 = [UIImage systemImageNamed:@"folder.badge.plus"];
    v5 = [[UIBarButtonItem alloc] initWithImage:v4 menu:0];
    [(ICFolderListViewController *)self setAddFolderButton:v5];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Create a folder" value:&stru_100661CF0 table:0];
    v8 = [(ICFolderListViewController *)self addFolderButton];
    [v8 setTitle:v7];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"New folder" value:&stru_100661CF0 table:0];
    v11 = [(ICFolderListViewController *)self addFolderButton];
    [v11 setAccessibilityLabel:v10];

    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Double tap to add a new folder" value:&stru_100661CF0 table:0];
    v14 = [(ICFolderListViewController *)self addFolderButton];
    [v14 setAccessibilityHint:v13];
  }

  v15 = [(ICFolderListViewController *)self folderDataSource];
  v16 = [v15 countOfModernAccounts];

  v17 = [(ICFolderListViewController *)self addFolderButton];
  v18 = v17;
  if (v16 < 2)
  {
    [v17 setTarget:self];

    v22 = [(ICFolderListViewController *)self addFolderButton];
    [v22 setAction:"addFolderButtonAction:"];
  }

  else
  {
    [v17 setTarget:0];

    v19 = [(ICFolderListViewController *)self addFolderButton];
    [v19 setAction:0];

    v22 = [(ICFolderListViewController *)self folderCreationController];
    v20 = [v22 menu];
    v21 = [(ICFolderListViewController *)self addFolderButton];
    [v21 setMenu:v20];
  }
}

- (void)addFolderButtonAction:(id)a3
{
  v3 = [(ICFolderListViewController *)self folderCreationController];
  [v3 promptToAddFolderAllowingSmartFolder:1 withCompletionHandler:0];
}

- (void)updateTagOperatorPosition
{
  v3 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v4 = [(ICFolderListViewController *)self folderDataSource];
  [v4 setShouldShowTagOperatorOnSeparateLine:v3];
}

- (void)updateContainerSelection
{
  v3 = [(ICFolderListViewController *)self traitCollection];
  v4 = [v3 _splitViewControllerContext];

  if (v4 >= 1)
  {
    v5 = [(ICBaseViewController *)self viewControllerManager];
    v6 = [v5 searchController];
    v7 = [v6 isActive];

    if (v7)
    {
      v8 = [(ICFolderListViewController *)self collectionView];
      [v8 ic_deselectAllItems];

      v29 = [(ICFolderListViewController *)self collectionView];
      [v29 deselectAllTagsAnimated:0];
    }

    else
    {
      v9 = [(ICBaseViewController *)self viewControllerManager];
      v10 = [v9 selectedContainerItemID];

      v11 = [(ICBaseViewController *)self viewControllerManager];
      v12 = [v11 tagSelection];

      if (v10)
      {
        v13 = [(ICFolderListViewController *)self collectionView];
        [v13 deselectAllTagsAnimated:0];

        v14 = [(ICFolderListViewController *)self dataSource];
        v15 = [v14 collectionViewDiffableDataSource];
        v16 = [v15 indexPathForItemIdentifier:v10];

        v17 = [(ICFolderListViewController *)self collectionView];
        v18 = v17;
        if (v16)
        {
          v19 = [v17 indexPathsForSelectedItems];

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v18 = v19;
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
                  v25 = [(ICFolderListViewController *)self collectionView];
                  [v25 deselectItemAtIndexPath:v24 animated:0];
                }
              }

              v21 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
            }

            while (v21);
          }

          if (([v18 containsObject:v16] & 1) == 0)
          {
            v26 = [(ICFolderListViewController *)self collectionView];
            [v26 selectItemAtIndexPath:v16 animated:0 scrollPosition:0];
          }
        }

        else
        {
          [v17 ic_deselectAllItems];
        }
      }

      else if ([v12 isNonEmpty])
      {
        v27 = [(ICFolderListViewController *)self collectionView];
        [v27 ic_deselectAllItems];

        v28 = [(ICFolderListViewController *)self collectionView];
        [v28 selectTagsWithTagSelection:v12 animated:0];
      }
    }
  }
}

- (void)updateTagHeadingCell
{
  v5 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v5 tagSelection];
  v4 = [(ICFolderListViewController *)self folderDataSource];
  [v4 setTagSelection:v3];
}

- (void)scrollToRecentlyCreatedFolderIfNeeded
{
  v3 = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];

  if (v3)
  {
    v4 = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
    [(ICFolderListViewController *)self scrollToContainerWithObjectID:v4];
  }
}

- (void)scrollToContainerWithObjectID:(id)a3
{
  v4 = a3;
  v5 = [(ICFolderListViewController *)self dataSource];
  v6 = [v5 collectionViewDiffableDataSource];
  v8 = [v6 indexPathForItemIdentifier:v4];

  if (v8)
  {
    v7 = [(ICFolderListViewController *)self collectionView];
    [v7 scrollToItemAtIndexPath:v8 atScrollPosition:2 animated:1];
  }
}

- (void)keyboardWillShow:(id)a3
{
  v10 = [a3 userInfo];
  v4 = [v10 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;

  v7 = [(ICFolderListViewController *)self firstResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [(ICFolderListViewController *)self collectionView];
    [v9 setContentInset:{0.0, 0.0, v6, 0.0}];
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
    v5 = [(ICFolderListViewController *)self collectionView];
    [v5 setShouldShowAllowNotificationsView:0];
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

- (void)dataSourceDataUpdateDidRender:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICFolderListViewController;
  [(ICBaseViewController *)&v4 dataSourceDataUpdateDidRender:a3];
  [(ICFolderListViewController *)self updateContainerSelection];
  [(ICFolderListViewController *)self updateToolbarAnimated:0];
  [(ICFolderListViewController *)self updateNavigationBar];
  [(ICFolderListViewController *)self scrollToRecentlyCreatedFolderIfNeeded];
  [(ICFolderListViewController *)self updateTagHeadingCell];
}

- (ICOutlineParentCollectionViewCell)tagHeadingCell
{
  v3 = [(ICFolderListViewController *)self dataSource];
  v4 = [v3 collectionViewDiffableDataSource];

  v5 = [v4 snapshot];
  v6 = [v5 itemIdentifiers];
  v7 = [v6 ic_objectPassingTest:&stru_100646D50];

  v8 = [v4 indexPathForItemIdentifier:v7];
  objc_opt_class();
  v9 = [(ICFolderListViewController *)self collectionView];
  v10 = [v9 cellForItemAtIndexPath:v8];
  v11 = ICDynamicCast();

  return v11;
}

- (void)folderWasCreated:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v6 = ICDynamicCast();
  [(ICFolderListViewController *)self setRecentlyCreatedFolderObjectID:v6];

  v7 = [(ICBaseViewController *)self modernViewContext];
  v8 = [(ICFolderListViewController *)self recentlyCreatedFolderObjectID];
  v9 = [v7 ic_existingObjectWithID:v8];

  v10 = [v9 ancestorFolderObjectIDs];
  v11 = [v10 mutableCopy];

  v12 = [[ICFolderListSectionIdentifier alloc] initWithObject:v9];
  [v11 ic_addNonNilObject:v12];

  v13 = [(ICFolderListViewController *)self folderDataSource];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000747DC;
  v14[3] = &unk_100645E30;
  v14[4] = self;
  [v13 expandItemsWithIdentifiers:v11 completion:v14];
}

- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [(ICFolderListViewController *)self dataSource];
    v7 = [v6 collectionViewDiffableDataSource];
    v8 = [v7 snapshot];
    v9 = [v8 itemIdentifiers];
    v10 = [v9 ic_objectsOfClass:objc_opt_class()];
    v11 = [NSSet setWithArray:v10];

    v12 = +[NSMutableSet set];
    [v12 unionSet:v5];
    [v12 unionSet:v11];
    v13 = [(ICFolderListViewController *)self dataSource];
    v14 = [v13 associatedCellsForItemIdentifiers:v12];

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

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v5 = a4;
  v6 = +[NSMutableSet set];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    v40 = self;
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
          v12 = v11;
          v13 = [v12 objectID];
          [v6 addObject:v13];

          v14 = [v12 noteContainerAccount];

          if (v14)
          {
            v15 = [v12 noteContainerAccount];
            v16 = [v15 objectID];
            [v6 ic_addNonNilObject:v16];

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
                v12 = v19;
                v15 = [v19 store];
                v20 = [v12 store];
                v21 = [v20 account];
                v22 = [v21 defaultStore];
                v23 = [v22 objectID];
                [v6 ic_addNonNilObject:v23];

                self = v40;
                if (!v15)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v15 = 0;
                  v12 = 0;
                  goto LABEL_28;
                }

                v15 = v11;
                v12 = 0;
                if (!v15)
                {
LABEL_28:

                  goto LABEL_29;
                }
              }

              v24 = [v15 objectID];
              [v6 ic_addNonNilObject:v24];

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_28;
              }

              v25 = v15;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_30;
              }

              v28 = v11;
              v29 = [v28 owner];
              v30 = [v29 store];
              v31 = [v30 objectID];
              [v6 ic_addNonNilObject:v31];

              v12 = [v28 owner];

              v25 = [v12 store];
              v15 = v25;
            }

            v32 = [v25 account];
            v33 = [v32 objectID];
            [v6 ic_addNonNilObject:v33];

            goto LABEL_28;
          }

          v17 = [v11 changedValues];
          v12 = [v17 allKeys];

          v18 = ICKeyPathFromSelector();
          if ([v12 containsObject:v18])
          {

LABEL_23:
            v15 = [v11 objectID];
            [v6 ic_addNonNilObject:v15];
            goto LABEL_28;
          }

          v26 = ICKeyPathFromSelector();
          v27 = [v12 containsObject:v26];

          self = v40;
          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_29:

LABEL_30:
        v34 = [(ICFolderListViewController *)self folderDataSource];
        v35 = [v34 allSmartFolderObjectIDs];
        v36 = [v35 allObjects];
        [v6 ic_addObjectsFromNonNilArray:v36];

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
  v2 = [(ICFolderListViewController *)self view];
  [v2 bounds];
  v4 = v3 + -150.0;

  return v4;
}

- (void)updateSummaryView
{
  v3 = [(ICFolderListViewController *)self primarySummaryView];
  v4 = [(ICFolderListViewController *)self updateSummaryView:v3 isPrimary:1];
  [(ICFolderListViewController *)self setPrimarySummaryView:v4];

  if (_UISolariumEnabled())
  {
    v6 = [(ICFolderListViewController *)self scrolledHeaderSummaryView];
    v5 = [(ICFolderListViewController *)self updateSummaryView:v6 isPrimary:0];
    [(ICFolderListViewController *)self setScrolledHeaderSummaryView:v5];
  }
}

- (id)updateSummaryView:(id)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = _UISolariumEnabled();
  v8 = 2;
  if (!v4)
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

  v10 = v6;
  if (!v6)
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
  v12 = [v11 cloudContextDelegate];
  v13 = [v12 syncMessage];
  [(ICToolbarSummaryView *)v10 setSyncMessage:v13];

  if (_UISolariumEnabled())
  {
    [(ICToolbarSummaryView *)v10 setLockNowHidden:1];
  }

  [(ICToolbarSummaryView *)v10 update];

  return v10;
}

- (void)summaryViewLockNowPressed:(id)a3
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1004D98EC(v4);
  }

  v5 = [(ICBaseViewController *)self viewControllerManager];
  [v5 lockNotesNow];
}

- (BOOL)isSearchActive
{
  v2 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v2 isSearchActive];

  return v3;
}

- (BOOL)isSearchActiveWithQuery
{
  v2 = [(ICBaseViewController *)self viewControllerManager];
  v3 = [v2 isSearchActiveWithQuery];

  return v3;
}

- (void)noteDecryptedStatusDidChange:(id)a3
{
  v3 = +[ICAuthenticationState sharedState];
  v4 = [v3 isBlockingDeauthentication];

  if ((v4 & 1) == 0)
  {
    performBlockOnMainThread();
  }
}

- (void)addNoteButtonPressed:(id)a3 event:(id)a4
{
  v7 = a4;
  if ([(ICFolderListViewController *)self isEditing])
  {
    [(ICFolderListViewController *)self setEditing:0 animated:1];
  }

  v5 = [(ICBaseViewController *)self viewControllerManager];
  v6 = [v5 showNewNoteWithApproach:13 sender:v7 animated:1];
}

- (void)confirmSelection
{
  v6 = [(ICFolderListViewController *)self collectionView];
  v3 = [(ICFolderListViewController *)self collectionView];
  v4 = [v3 indexPathsForSelectedItems];
  v5 = [v4 firstObject];
  [(ICFolderListViewController *)self collectionView:v6 didSelectItemAtIndexPath:v5];
}

- (void)confirmFocusedCellSelection
{
  v3 = [(ICFolderListViewController *)self collectionView];
  v4 = [v3 indexPathsForFocusedItems];
  v6 = [v4 firstObject];

  if (v6)
  {
    v5 = [(ICFolderListViewController *)self collectionView];
    [(ICFolderListViewController *)self collectionView:v5 didSelectItemAtIndexPath:v6];
  }
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(ICBaseViewController *)self viewControllerManager];
  v4 = [v3 keyboardHandler];
  v5 = [v4 isInHardwareKeyboardMode];

  if (v5)
  {
    v6 = [(ICBaseViewController *)self viewControllerManager];
    v7 = [v6 activeEditorController];
    v8 = [v7 wantsToRemainFirstResponder] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)selectItemWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(ICFolderListViewController *)self collectionView];

  if (v6)
  {
    v7 = [(ICFolderListViewController *)self dataSource];
    v8 = [v7 collectionViewDiffableDataSource];
    v9 = [v8 indexPathForItemIdentifier:v14];

    if (v9)
    {
      v10 = [(ICFolderListViewController *)self collectionView];
      [v10 selectItemAtIndexPath:v9 animated:v4 scrollPosition:0];

      v11 = [(ICFolderListViewController *)self collectionView];
      v12 = [v11 delegate];
      v13 = [(ICFolderListViewController *)self collectionView];
      [v12 collectionView:v13 didSelectItemAtIndexPath:v9];
    }
  }
}

@end
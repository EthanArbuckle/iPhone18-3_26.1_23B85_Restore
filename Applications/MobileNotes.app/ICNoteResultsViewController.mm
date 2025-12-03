@interface ICNoteResultsViewController
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (ICNoteResultsViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type;
- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects;
- (void)dataSourceDataUpdateDidRender:(id)render;
- (void)dealloc;
- (void)dismissContextMenu;
- (void)noteDecryptedStatusDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)thumbnailCacheDidInvalidateThumbnail:(id)thumbnail;
- (void)updateCellsForManagedObjectIDs:(id)ds updateTextAndStatus:(BOOL)status updateThumbnails:(BOOL)thumbnails;
- (void)updateNoteSelectionAnimated:(BOOL)animated;
- (void)updatePreparedCells;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICNoteResultsViewController

- (ICNoteResultsViewController)initWithViewMode:(int64_t)mode viewControllerManager:(id)manager viewControllerType:(int64_t)type
{
  v15.receiver = self;
  v15.super_class = ICNoteResultsViewController;
  v5 = [(ICBaseViewController *)&v15 initWithViewMode:mode viewControllerManager:manager viewControllerType:type];
  v6 = v5;
  if (v5)
  {
    legacyViewContext = [(ICBaseViewController *)v5 legacyViewContext];
    modernViewContext = [(ICBaseViewController *)v6 modernViewContext];
    v9 = [NSSet setWithObjects:legacyViewContext, modernViewContext, 0];

    v10 = [[ICManagedObjectContextChangeController alloc] initWithManagedObjectContexts:v9 delegate:v6];
    managedObjectContextChangeController = v6->_managedObjectContextChangeController;
    v6->_managedObjectContextChangeController = v10;

    v12 = +[NSMutableSet set];
    managedObjectIDsForDeferredCellUpdates = v6->_managedObjectIDsForDeferredCellUpdates;
    v6->_managedObjectIDsForDeferredCellUpdates = v12;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager ic_removeObserver:self forKeyPath:@"selectedNoteObjectID" context:&off_1006BBA38];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager2 ic_removeObserver:self forKeyPath:@"selectedSearchResult" context:&off_1006BBA38];

  v6.receiver = self;
  v6.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v12 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"thumbnailCacheDidInvalidateThumbnail:" name:ICThumbnailCacheDidInvalidateThumbnailNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  v5 = ICAuthenticationStateDidAuthenticateNotification;
  v6 = +[ICAuthenticationState sharedState];
  [v4 addObserver:self selector:"noteDecryptedStatusDidChange:" name:v5 object:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = ICAuthenticationStateDidDeauthenticateNotification;
  v9 = +[ICAuthenticationState sharedState];
  [v7 addObserver:self selector:"noteDecryptedStatusDidChange:" name:v8 object:v9];

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager ic_addObserver:self forKeyPath:@"selectedNoteObjectID" context:&off_1006BBA38];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  [viewControllerManager2 ic_addObserver:self forKeyPath:@"selectedSearchResult" context:&off_1006BBA38];
}

- (void)viewWillAppear:(BOOL)appear
{
  v24.receiver = self;
  v24.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v24 viewWillAppear:appear];
  managedObjectContextChangeController = [(ICNoteResultsViewController *)self managedObjectContextChangeController];
  [managedObjectContextChangeController performUpdatesIfNeeded];

  if ([(ICNoteResultsViewController *)self ic_isBeingRevealedFromPoppingViewController]&& ([(ICNoteResultsViewController *)self isEditing]& 1) == 0)
  {
    collectionView = [(ICNoteResultsViewController *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = indexPathsForSelectedItems;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        v11 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * v11);
          dataSource = [(ICBaseViewController *)self dataSource];
          collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];
          v15 = [collectionViewDiffableDataSource itemIdentifierForIndexPath:v12];

          objc_opt_class();
          v16 = ICDynamicCast();
          if (([v16 ic_isNoteType] & 1) != 0 || (objc_msgSend(v16, "ic_isFolderType") & 1) != 0 || objc_msgSend(v16, "ic_isInvitationType"))
          {
            collectionView2 = [(ICNoteResultsViewController *)self collectionView];
            [collectionView2 deselectItemAtIndexPath:v12 animated:1];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    noteSearchViewController = [(ICBaseViewController *)self noteSearchViewController];
    collectionView3 = [noteSearchViewController collectionView];
    [collectionView3 ic_deselectAllItemsAnimated:1];
  }

  [(ICNoteResultsViewController *)self updateNoteSelectionAnimated:0, v20];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v6 viewDidAppear:appear];
  managedObjectIDsForDeferredCellUpdates = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
  [(ICNoteResultsViewController *)self updateCellsForManagedObjectIDs:managedObjectIDsForDeferredCellUpdates updateTextAndStatus:1 updateThumbnails:1];

  managedObjectIDsForDeferredCellUpdates2 = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
  [managedObjectIDsForDeferredCellUpdates2 removeAllObjects];
}

- (void)updateNoteSelectionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(ICNoteResultsViewController *)self isEditing]& 1) != 0)
  {
    return;
  }

  viewControllerManager = [(ICBaseViewController *)self viewControllerManager];
  selectedNoteObjectID = [viewControllerManager selectedNoteObjectID];

  viewControllerManager2 = [(ICBaseViewController *)self viewControllerManager];
  selectedInvitationObjectID = [viewControllerManager2 selectedInvitationObjectID];

  viewControllerManager3 = [(ICBaseViewController *)self viewControllerManager];
  selectedContainerIdentifiers = [viewControllerManager3 selectedContainerIdentifiers];

  if (!(selectedNoteObjectID | selectedInvitationObjectID) && ([(ICNoteResultsViewController *)self isEditing]& 1) == 0)
  {
    viewControllerManager4 = [(ICBaseViewController *)self viewControllerManager];
    if ([viewControllerManager4 isAutomaticallySelectingNotes])
    {
    }

    else
    {
      v11 = [selectedContainerIdentifiers count];

      if (!v11)
      {
        collectionView = [(ICNoteResultsViewController *)self collectionView];
        [collectionView ic_deselectAllItemsAnimated:animatedCopy];
        goto LABEL_29;
      }
    }
  }

  collectionView = [(ICBaseViewController *)self viewControllerManager];
  if (![collectionView isAutomaticallySelectingNotes])
  {
    goto LABEL_29;
  }

  isEditing = [(ICNoteResultsViewController *)self isEditing];

  if ((isEditing & 1) == 0)
  {
    if (selectedNoteObjectID | selectedInvitationObjectID && (!selectedNoteObjectID ? (v14 = selectedInvitationObjectID) : (v14 = selectedNoteObjectID), -[ICBaseViewController dataSource](self, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), [v15 collectionViewDiffableDataSource], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "indexPathForItemIdentifier:", v14), collectionView = objc_claimAutoreleasedReturnValue(), v16, v15, collectionView) || (-[ICBaseViewController viewControllerManager](self, "viewControllerManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "selectedSearchResult"), v18 = objc_claimAutoreleasedReturnValue(), v17, -[ICBaseViewController dataSource](self, "dataSource"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "collectionViewDiffableDataSource"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "indexPathForItemIdentifier:", v18), collectionView = objc_claimAutoreleasedReturnValue(), v20, v19, v18, collectionView))
    {
      collectionView2 = [(ICNoteResultsViewController *)self collectionView];
      numberOfSections = [collectionView2 numberOfSections];
      if (numberOfSections <= [collectionView section])
      {
      }

      else
      {
        collectionView3 = [(ICNoteResultsViewController *)self collectionView];
        v24 = [collectionView3 numberOfItemsInSection:{objc_msgSend(collectionView, "section")}];
        v25 = [collectionView row];

        if (v24 > v25)
        {
          collectionView4 = [(ICNoteResultsViewController *)self collectionView];
          indexPathsForSelectedItems = [collectionView4 indexPathsForSelectedItems];
          firstObject = [indexPathsForSelectedItems firstObject];
          v29 = [firstObject isEqual:collectionView];

          if ((v29 & 1) == 0)
          {
            collectionView5 = [(ICNoteResultsViewController *)self collectionView];
            indexPathsForVisibleItems = [collectionView5 indexPathsForVisibleItems];
            if ([indexPathsForVisibleItems containsObject:collectionView])
            {
              v32 = 0;
            }

            else
            {
              v32 = 2;
            }

            collectionView6 = [(ICNoteResultsViewController *)self collectionView];
            if ([collectionView6 allowsMultipleSelection])
            {
              collectionView7 = [(ICNoteResultsViewController *)self collectionView];
              indexPathsForSelectedItems2 = [collectionView7 indexPathsForSelectedItems];
              v36 = [indexPathsForSelectedItems2 count];

              if (v36 != 1)
              {
LABEL_25:
                collectionView8 = [(ICNoteResultsViewController *)self collectionView];
                [collectionView8 selectItemAtIndexPath:collectionView animated:animatedCopy scrollPosition:v32];
LABEL_28:

                goto LABEL_29;
              }

              collectionView6 = [(ICNoteResultsViewController *)self collectionView];
              [collectionView6 ic_deselectAllItemsAnimated:animatedCopy];
            }

            goto LABEL_25;
          }

LABEL_29:

          goto LABEL_30;
        }
      }
    }

    collectionView8 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView8 ic_deselectAllItemsAnimated:animatedCopy];
    goto LABEL_28;
  }

LABEL_30:
}

- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        objectID = [*(*(&v18 + 1) + 8 * i) objectID];
        if ([objectID ic_isInvitationType])
        {
          [v5 addObject:objectID];
        }

        if ([objectID ic_isNoteType])
        {
          [v5 addObject:objectID];
        }

        if ([objectID ic_isModernFolderType])
        {
          objc_opt_class();
          v12 = ICCheckedDynamicCast();
          [v5 addObject:objectID];
          recursiveVisibleSubfolders = [v12 recursiveVisibleSubfolders];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1001056F4;
          v16[3] = &unk_10064A058;
          v17 = v5;
          [recursiveVisibleSubfolders enumerateObjectsUsingBlock:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)dataSourceDataUpdateDidRender:(id)render
{
  v3.receiver = self;
  v3.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v3 dataSourceDataUpdateDidRender:render];
  performBlockOnMainThread();
}

- (void)thumbnailCacheDidInvalidateThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  modernViewContext = [(ICBaseViewController *)self modernViewContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001058B0;
  v7[3] = &unk_100645BA0;
  v7[4] = self;
  v8 = thumbnailCopy;
  v6 = thumbnailCopy;
  [modernViewContext performBlockAndWait:v7];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICNoteResultsViewController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Note/Common/View Controllers/ICNoteResultsViewController.m"]& 1) != 0)
  {
    v13 = [(ICNoteResultsViewController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &off_1006BBA38 && (v13 & 1) == 0 && (([pathCopy isEqualToString:@"selectedNoteObjectID"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"selectedSearchResult")))
    {
      performBlockOnMainThread();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICNoteResultsViewController;
    [(ICNoteResultsViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
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

- (void)updatePreparedCells
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  preparedCells = [collectionView preparedCells];
  v4 = [preparedCells ic_objectsConformingToProtocol:&OBJC_PROTOCOL___ICNoteBrowseCellUpdating];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 updateThumbnail];
        [v10 updateTextAndStatus];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)dismissContextMenu
{
  collectionView = [(ICNoteResultsViewController *)self collectionView];
  interactions = [collectionView interactions];
  v5 = [interactions ic_objectPassingTest:&stru_10064A098];

  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  [v4 dismissMenu];
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 0;
  }

  else
  {
    nextFocusedItem = [contextCopy nextFocusedItem];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  collectionView = [(ICNoteResultsViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  v10 = [indexPathsForSelectedItems count];

  if (v10 && (isKindOfClass & 1) != 0)
  {
    collectionView2 = [(ICNoteResultsViewController *)self collectionView];
    [collectionView2 ic_deselectAllItems];
  }

  return 1;
}

- (void)updateCellsForManagedObjectIDs:(id)ds updateTextAndStatus:(BOOL)status updateThumbnails:(BOOL)thumbnails
{
  thumbnailsCopy = thumbnails;
  statusCopy = status;
  dsCopy = ds;
  if ([dsCopy count])
  {
    viewIfLoaded = [(ICNoteResultsViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      dataSource = [(ICBaseViewController *)self dataSource];
      v12 = [dataSource associatedCellsForItemIdentifiers:dsCopy];

      v21 = v12;
      v13 = [v12 ic_objectsConformingToProtocol:&OBJC_PROTOCOL___ICNoteBrowseCellUpdating];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v22 + 1) + 8 * i);
            if (statusCopy)
            {
              [*(*(&v22 + 1) + 8 * i) updateTextAndStatus];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v18;
                [v19 updateSubfolderCount];
                [v19 updateNoteCount];
              }
            }

            if (thumbnailsCopy)
            {
              [v18 updateThumbnail];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }
    }

    else
    {
      managedObjectIDsForDeferredCellUpdates = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
      [managedObjectIDsForDeferredCellUpdates unionSet:dsCopy];
    }
  }
}

@end
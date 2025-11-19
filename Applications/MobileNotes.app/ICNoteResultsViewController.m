@interface ICNoteResultsViewController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (ICNoteResultsViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 viewControllerType:(int64_t)a5;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (void)dataSourceDataUpdateDidRender:(id)a3;
- (void)dealloc;
- (void)dismissContextMenu;
- (void)noteDecryptedStatusDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)thumbnailCacheDidInvalidateThumbnail:(id)a3;
- (void)updateCellsForManagedObjectIDs:(id)a3 updateTextAndStatus:(BOOL)a4 updateThumbnails:(BOOL)a5;
- (void)updateNoteSelectionAnimated:(BOOL)a3;
- (void)updatePreparedCells;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ICNoteResultsViewController

- (ICNoteResultsViewController)initWithViewMode:(int64_t)a3 viewControllerManager:(id)a4 viewControllerType:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = ICNoteResultsViewController;
  v5 = [(ICBaseViewController *)&v15 initWithViewMode:a3 viewControllerManager:a4 viewControllerType:a5];
  v6 = v5;
  if (v5)
  {
    v7 = [(ICBaseViewController *)v5 legacyViewContext];
    v8 = [(ICBaseViewController *)v6 modernViewContext];
    v9 = [NSSet setWithObjects:v7, v8, 0];

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

  v4 = [(ICBaseViewController *)self viewControllerManager];
  [v4 ic_removeObserver:self forKeyPath:@"selectedNoteObjectID" context:&off_1006BBA38];

  v5 = [(ICBaseViewController *)self viewControllerManager];
  [v5 ic_removeObserver:self forKeyPath:@"selectedSearchResult" context:&off_1006BBA38];

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

  v10 = [(ICBaseViewController *)self viewControllerManager];
  [v10 ic_addObserver:self forKeyPath:@"selectedNoteObjectID" context:&off_1006BBA38];

  v11 = [(ICBaseViewController *)self viewControllerManager];
  [v11 ic_addObserver:self forKeyPath:@"selectedSearchResult" context:&off_1006BBA38];
}

- (void)viewWillAppear:(BOOL)a3
{
  v24.receiver = self;
  v24.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v24 viewWillAppear:a3];
  v4 = [(ICNoteResultsViewController *)self managedObjectContextChangeController];
  [v4 performUpdatesIfNeeded];

  if ([(ICNoteResultsViewController *)self ic_isBeingRevealedFromPoppingViewController]&& ([(ICNoteResultsViewController *)self isEditing]& 1) == 0)
  {
    v5 = [(ICNoteResultsViewController *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v6;
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
          v13 = [(ICBaseViewController *)self dataSource];
          v14 = [v13 collectionViewDiffableDataSource];
          v15 = [v14 itemIdentifierForIndexPath:v12];

          objc_opt_class();
          v16 = ICDynamicCast();
          if (([v16 ic_isNoteType] & 1) != 0 || (objc_msgSend(v16, "ic_isFolderType") & 1) != 0 || objc_msgSend(v16, "ic_isInvitationType"))
          {
            v17 = [(ICNoteResultsViewController *)self collectionView];
            [v17 deselectItemAtIndexPath:v12 animated:1];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v18 = [(ICBaseViewController *)self noteSearchViewController];
    v19 = [v18 collectionView];
    [v19 ic_deselectAllItemsAnimated:1];
  }

  [(ICNoteResultsViewController *)self updateNoteSelectionAnimated:0, v20];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v6 viewDidAppear:a3];
  v4 = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
  [(ICNoteResultsViewController *)self updateCellsForManagedObjectIDs:v4 updateTextAndStatus:1 updateThumbnails:1];

  v5 = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
  [v5 removeAllObjects];
}

- (void)updateNoteSelectionAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(ICNoteResultsViewController *)self isEditing]& 1) != 0)
  {
    return;
  }

  v5 = [(ICBaseViewController *)self viewControllerManager];
  v38 = [v5 selectedNoteObjectID];

  v6 = [(ICBaseViewController *)self viewControllerManager];
  v7 = [v6 selectedInvitationObjectID];

  v8 = [(ICBaseViewController *)self viewControllerManager];
  v9 = [v8 selectedContainerIdentifiers];

  if (!(v38 | v7) && ([(ICNoteResultsViewController *)self isEditing]& 1) == 0)
  {
    v10 = [(ICBaseViewController *)self viewControllerManager];
    if ([v10 isAutomaticallySelectingNotes])
    {
    }

    else
    {
      v11 = [v9 count];

      if (!v11)
      {
        v12 = [(ICNoteResultsViewController *)self collectionView];
        [v12 ic_deselectAllItemsAnimated:v3];
        goto LABEL_29;
      }
    }
  }

  v12 = [(ICBaseViewController *)self viewControllerManager];
  if (![v12 isAutomaticallySelectingNotes])
  {
    goto LABEL_29;
  }

  v13 = [(ICNoteResultsViewController *)self isEditing];

  if ((v13 & 1) == 0)
  {
    if (v38 | v7 && (!v38 ? (v14 = v7) : (v14 = v38), -[ICBaseViewController dataSource](self, "dataSource"), v15 = objc_claimAutoreleasedReturnValue(), [v15 collectionViewDiffableDataSource], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "indexPathForItemIdentifier:", v14), v12 = objc_claimAutoreleasedReturnValue(), v16, v15, v12) || (-[ICBaseViewController viewControllerManager](self, "viewControllerManager"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "selectedSearchResult"), v18 = objc_claimAutoreleasedReturnValue(), v17, -[ICBaseViewController dataSource](self, "dataSource"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "collectionViewDiffableDataSource"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "indexPathForItemIdentifier:", v18), v12 = objc_claimAutoreleasedReturnValue(), v20, v19, v18, v12))
    {
      v21 = [(ICNoteResultsViewController *)self collectionView];
      v22 = [v21 numberOfSections];
      if (v22 <= [v12 section])
      {
      }

      else
      {
        v23 = [(ICNoteResultsViewController *)self collectionView];
        v24 = [v23 numberOfItemsInSection:{objc_msgSend(v12, "section")}];
        v25 = [v12 row];

        if (v24 > v25)
        {
          v26 = [(ICNoteResultsViewController *)self collectionView];
          v27 = [v26 indexPathsForSelectedItems];
          v28 = [v27 firstObject];
          v29 = [v28 isEqual:v12];

          if ((v29 & 1) == 0)
          {
            v30 = [(ICNoteResultsViewController *)self collectionView];
            v31 = [v30 indexPathsForVisibleItems];
            if ([v31 containsObject:v12])
            {
              v32 = 0;
            }

            else
            {
              v32 = 2;
            }

            v33 = [(ICNoteResultsViewController *)self collectionView];
            if ([v33 allowsMultipleSelection])
            {
              v34 = [(ICNoteResultsViewController *)self collectionView];
              v35 = [v34 indexPathsForSelectedItems];
              v36 = [v35 count];

              if (v36 != 1)
              {
LABEL_25:
                v37 = [(ICNoteResultsViewController *)self collectionView];
                [v37 selectItemAtIndexPath:v12 animated:v3 scrollPosition:v32];
LABEL_28:

                goto LABEL_29;
              }

              v33 = [(ICNoteResultsViewController *)self collectionView];
              [v33 ic_deselectAllItemsAnimated:v3];
            }

            goto LABEL_25;
          }

LABEL_29:

          goto LABEL_30;
        }
      }
    }

    v37 = [(ICNoteResultsViewController *)self collectionView];
    [v37 ic_deselectAllItemsAnimated:v3];
    goto LABEL_28;
  }

LABEL_30:
}

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
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

        v11 = [*(*(&v18 + 1) + 8 * i) objectID];
        if ([v11 ic_isInvitationType])
        {
          [v5 addObject:v11];
        }

        if ([v11 ic_isNoteType])
        {
          [v5 addObject:v11];
        }

        if ([v11 ic_isModernFolderType])
        {
          objc_opt_class();
          v12 = ICCheckedDynamicCast();
          [v5 addObject:v11];
          v13 = [v12 recursiveVisibleSubfolders];
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_1001056F4;
          v16[3] = &unk_10064A058;
          v17 = v5;
          [v13 enumerateObjectsUsingBlock:v16];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (void)dataSourceDataUpdateDidRender:(id)a3
{
  v3.receiver = self;
  v3.super_class = ICNoteResultsViewController;
  [(ICBaseViewController *)&v3 dataSourceDataUpdateDidRender:a3];
  performBlockOnMainThread();
}

- (void)thumbnailCacheDidInvalidateThumbnail:(id)a3
{
  v4 = a3;
  v5 = [(ICBaseViewController *)self modernViewContext];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001058B0;
  v7[3] = &unk_100645BA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICNoteResultsViewController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/UI/Note/Common/View Controllers/ICNoteResultsViewController.m"]& 1) != 0)
  {
    v13 = [(ICNoteResultsViewController *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

    if (a6 == &off_1006BBA38 && (v13 & 1) == 0 && (([v10 isEqualToString:@"selectedNoteObjectID"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"selectedSearchResult")))
    {
      performBlockOnMainThread();
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICNoteResultsViewController;
    [(ICNoteResultsViewController *)&v14 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
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

- (void)updatePreparedCells
{
  v2 = [(ICNoteResultsViewController *)self collectionView];
  v3 = [v2 preparedCells];
  v4 = [v3 ic_objectsConformingToProtocol:&OBJC_PROTOCOL___ICNoteBrowseCellUpdating];

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
  v2 = [(ICNoteResultsViewController *)self collectionView];
  v3 = [v2 interactions];
  v5 = [v3 ic_objectPassingTest:&stru_10064A098];

  objc_opt_class();
  v4 = ICCheckedDynamicCast();
  [v4 dismissMenu];
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 previouslyFocusedItem];
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 0;
  }

  else
  {
    v7 = [v4 nextFocusedItem];
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v8 = [(ICNoteResultsViewController *)self collectionView];
  v9 = [v8 indexPathsForSelectedItems];
  v10 = [v9 count];

  if (v10 && (isKindOfClass & 1) != 0)
  {
    v11 = [(ICNoteResultsViewController *)self collectionView];
    [v11 ic_deselectAllItems];
  }

  return 1;
}

- (void)updateCellsForManagedObjectIDs:(id)a3 updateTextAndStatus:(BOOL)a4 updateThumbnails:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([v8 count])
  {
    v9 = [(ICNoteResultsViewController *)self viewIfLoaded];
    v10 = [v9 window];

    if (v10)
    {
      v11 = [(ICBaseViewController *)self dataSource];
      v12 = [v11 associatedCellsForItemIdentifiers:v8];

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
            if (v6)
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

            if (v5)
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
      v20 = [(ICNoteResultsViewController *)self managedObjectIDsForDeferredCellUpdates];
      [v20 unionSet:v8];
    }
  }
}

@end
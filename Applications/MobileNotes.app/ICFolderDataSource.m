@interface ICFolderDataSource
- (BOOL)shouldDisplayTagOperatorInTagHeading;
- (BOOL)shouldIndentNoteCount;
- (ICFolderCoreDataIndexer)indexer;
- (ICFolderDataSource)initWithCollectionView:(id)a3 presentingViewController:(id)a4 legacyManagedObjectContext:(id)a5 modernManagedObjectContext:(id)a6 overrideContainerIdentifier:(id)a7 unsupportedFolderInfoButtonTapHandler:(id)a8 accountUpgradeButtonTapHandlerProvider:(id)a9 tagSelectionDidChangeHandler:(id)a10 allowNotificationsCloseHandler:(id)a11;
- (ICNAViewController)presentingViewController;
- (ICOutlineParentCollectionViewCell)tagHeadingCell;
- (ICTagOperatorCell)tagOperatorCell;
- (NSManagedObjectContext)legacyViewContext;
- (NSManagedObjectContext)modernViewContext;
- (NSSet)allSmartFolderObjectIDs;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (int64_t)shouldIncludeCallNotes;
- (int64_t)shouldIncludeMathNotes;
- (int64_t)shouldIncludeSharedWithYou;
- (int64_t)shouldIncludeSystemPaper;
- (unint64_t)countOfLegacyAccounts;
- (unint64_t)countOfModernAccounts;
- (void)accountHidesNotesInCustomFoldersDidChange:(id)a3;
- (void)accountsDidChange:(id)a3;
- (void)checkUpdateVirtualSmartFolders;
- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4;
- (void)reindexDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5;
- (void)setHasGroupInset:(BOOL)a3;
- (void)setShouldIncludeCallNotes:(int64_t)a3;
- (void)setShouldIncludeMathNotes:(int64_t)a3;
- (void)setShouldIncludeSharedWithYou:(int64_t)a3;
- (void)setShouldIncludeSystemPaper:(int64_t)a3;
- (void)setTagSelection:(id)a3;
- (void)updateTagOperatorVisibility;
@end

@implementation ICFolderDataSource

- (NSManagedObjectContext)modernViewContext
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];

  return v3;
}

- (ICFolderCoreDataIndexer)indexer
{
  v4.receiver = self;
  v4.super_class = ICFolderDataSource;
  v2 = [(ICFolderDataSource *)&v4 indexer];

  return v2;
}

- (ICFolderDataSource)initWithCollectionView:(id)a3 presentingViewController:(id)a4 legacyManagedObjectContext:(id)a5 modernManagedObjectContext:(id)a6 overrideContainerIdentifier:(id)a7 unsupportedFolderInfoButtonTapHandler:(id)a8 accountUpgradeButtonTapHandlerProvider:(id)a9 tagSelectionDidChangeHandler:(id)a10 allowNotificationsCloseHandler:(id)a11
{
  v17 = a3;
  obj = a4;
  v71 = a5;
  v70 = a6;
  v18 = a7;
  v67 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  objc_initWeak(location, self);
  v69 = v17;
  objc_initWeak(&from, v17);
  self->_shouldShowTagOperatorOnSeparateLine = 0;
  v22 = [[ICFolderCoreDataIndexer alloc] initWithLegacyManagedObjectContext:v71 modernManagedObjectContext:v70 overrideContainerIdentifier:v18];
  [v22 setShouldIncludeOutlineParentItems:v18 == 0];
  [v22 setShouldIncludeTags:v18 == 0];
  v23 = objc_opt_class();
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10014C05C;
  v97[3] = &unk_10064B2B0;
  objc_copyWeak(&v100, location);
  v66 = v19;
  v98 = v66;
  v24 = v20;
  v99 = v24;
  v25 = [UICollectionViewCellRegistration registrationWithCellClass:v23 configurationHandler:v97];
  v26 = objc_opt_class();
  v65 = v18;
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10014C328;
  v94[3] = &unk_10064B2D8;
  objc_copyWeak(&v95, location);
  objc_copyWeak(&v96, &from);
  v27 = [UICollectionViewCellRegistration registrationWithCellClass:v26 configurationHandler:v94];
  v28 = objc_opt_class();
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_10014C5A4;
  v91[3] = &unk_10064B300;
  objc_copyWeak(&v93, location);
  v29 = v24;
  v92 = v29;
  v30 = [UICollectionViewCellRegistration registrationWithCellClass:v28 configurationHandler:v91];
  v31 = objc_opt_class();
  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_10014C738;
  v88[3] = &unk_10064B328;
  objc_copyWeak(&v90, location);
  v64 = v29;
  v89 = v64;
  v32 = [UICollectionViewCellRegistration registrationWithCellClass:v31 configurationHandler:v88];
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_10014C8E8;
  v82[3] = &unk_10064B350;
  v33 = v25;
  v83 = v33;
  v63 = v30;
  v84 = v63;
  v62 = v32;
  v85 = v62;
  v34 = v27;
  v86 = v34;
  objc_copyWeak(&v87, &from);
  v35 = objc_retainBlock(v82);
  v36 = objc_opt_class();
  v61 = v33;
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10014C9F4;
  v79[3] = &unk_10064B378;
  objc_copyWeak(&v81, location);
  v37 = v21;
  v80 = v37;
  [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v36 elementKind:UICollectionElementKindSectionHeader configurationHandler:v79];
  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_10014CA64;
  v38 = v77[3] = &unk_100648FD0;
  v78 = v38;
  v39 = objc_retainBlock(v77);
  v76.receiver = self;
  v76.super_class = ICFolderDataSource;
  v40 = [(ICFolderDataSource *)&v76 initWithCollectionView:v69 cellProvider:v35 indexer:v22];
  v41 = v40;
  if (v40)
  {
    objc_storeWeak(&v40->_presentingViewController, obj);
    v42 = objc_retainBlock(v67);
    unsupportedFolderInfoButtonTapHandler = v41->_unsupportedFolderInfoButtonTapHandler;
    v41->_unsupportedFolderInfoButtonTapHandler = v42;

    v44 = +[ICNoteContext sharedContext];

    if (v44)
    {
      v45 = [ICManagedObjectContextChangeController alloc];
      v46 = [(ICFolderDataSource *)v41 modernViewContext];
      v47 = [NSSet setWithObject:v46];
      v48 = [v45 initWithManagedObjectContexts:v47 delegate:v41];
      managedObjectContextChangeController = v41->_managedObjectContextChangeController;
      v41->_managedObjectContextChangeController = v48;
    }

    v50 = objc_alloc_init(UICollectionViewDiffableDataSourceSectionSnapshotHandlers);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_10014CA70;
    v74[3] = &unk_1006458D8;
    objc_copyWeak(&v75, location);
    [v50 setWillExpandItemHandler:v74];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_10014CB70;
    v72[3] = &unk_1006458D8;
    objc_copyWeak(&v73, location);
    [v50 setWillCollapseItemHandler:v72];
    v51 = [(ICFolderDataSource *)v41 collectionViewDiffableDataSource];
    [v51 setSectionSnapshotHandlers:v50];

    [(ICFolderDataSource *)v41 setSectionTypes:&off_10066E368];
    v52 = [(ICFolderDataSource *)v41 collectionViewDiffableDataSource];
    [v52 setSupplementaryViewProvider:v39];

    v53 = +[NSNotificationCenter defaultCenter];
    [v53 addObserver:v41 selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];

    v54 = +[NSNotificationCenter defaultCenter];
    [v54 addObserver:v41 selector:"accountsDidChange:" name:ICLocalAccountDidChooseToMigrateNotification object:0];

    v55 = [[ICSelectorDelayer alloc] initWithTarget:v41 selector:"reloadDataAnimatedYes" delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:0.3];
    accountChangeDelayer = v41->_accountChangeDelayer;
    v41->_accountChangeDelayer = v55;

    v57 = [[ICSelectorDelayer alloc] initWithTarget:v41 selector:"checkUpdateVirtualSmartFolders" delay:1 waitToFireUntilRequestsStop:1 callOnMainThread:0.3];
    updateVirtualSmartFoldersDelayer = v41->_updateVirtualSmartFoldersDelayer;
    v41->_updateVirtualSmartFoldersDelayer = v57;

    objc_destroyWeak(&v73);
    objc_destroyWeak(&v75);
  }

  v59 = v41;

  objc_destroyWeak(&v81);
  objc_destroyWeak(&v87);

  objc_destroyWeak(&v90);
  objc_destroyWeak(&v93);

  objc_destroyWeak(&v96);
  objc_destroyWeak(&v95);

  objc_destroyWeak(&v100);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  return v59;
}

- (void)reindexDataAnimated:(BOOL)a3 dataIndexedBlock:(id)a4 dataRenderedBlock:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014CD8C;
  v12[3] = &unk_10064B3A0;
  objc_copyWeak(&v14, &location);
  v10 = v8;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = ICFolderDataSource;
  [(ICFolderDataSource *)&v11 reindexDataAnimated:v6 dataIndexedBlock:v12 dataRenderedBlock:v9];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)setTagSelection:(id)a3
{
  objc_storeStrong(&self->_tagSelection, a3);
  v5 = a3;
  v6 = [(ICFolderDataSource *)self tagOperatorCell];
  [v6 setTagSelection:v5];

  v7 = [(ICFolderDataSource *)self tagHeadingCell];
  [v7 setTagSelection:v5];

  [(ICFolderDataSource *)self updateTagOperatorVisibility];
}

- (void)setHasGroupInset:(BOOL)a3
{
  v3 = a3;
  hasGroupInset = self->_hasGroupInset;
  self->_hasGroupInset = a3;
  objc_opt_class();
  v6 = [(ICFolderDataSource *)self collectionView];
  v7 = ICDynamicCast();
  [v7 setHasGroupInset:v3];

  if (hasGroupInset != v3)
  {
    v8 = [(ICFolderDataSource *)self collectionView];
    [v8 reloadData];
  }
}

- (unint64_t)countOfLegacyAccounts
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 countOfLegacyAccounts];

  return v3;
}

- (unint64_t)countOfModernAccounts
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 countOfModernAccounts];

  return v3;
}

- (NSSet)allSmartFolderObjectIDs
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 allSmartFolderObjectIDs];

  return v3;
}

- (int64_t)shouldIncludeSharedWithYou
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 shouldIncludeSharedWithYou];

  return v3;
}

- (void)setShouldIncludeSharedWithYou:(int64_t)a3
{
  v4 = [(ICFolderDataSource *)self indexer];
  [v4 setShouldIncludeSharedWithYou:a3];
}

- (int64_t)shouldIncludeSystemPaper
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 shouldIncludeSystemPaper];

  return v3;
}

- (void)setShouldIncludeSystemPaper:(int64_t)a3
{
  v4 = [(ICFolderDataSource *)self indexer];
  [v4 setShouldIncludeSystemPaper:a3];
}

- (int64_t)shouldIncludeCallNotes
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 shouldIncludeCallNotes];

  return v3;
}

- (void)setShouldIncludeCallNotes:(int64_t)a3
{
  v4 = [(ICFolderDataSource *)self indexer];
  [v4 setShouldIncludeCallNotes:a3];
}

- (int64_t)shouldIncludeMathNotes
{
  v2 = [(ICFolderDataSource *)self indexer];
  v3 = [v2 shouldIncludeMathNotes];

  return v3;
}

- (void)setShouldIncludeMathNotes:(int64_t)a3
{
  v4 = [(ICFolderDataSource *)self indexer];
  [v4 setShouldIncludeMathNotes:a3];
}

- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4
{
  v19 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v26 = 0u;
    v16 = v6;
    obj = v6;
    v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v20)
    {
      v18 = *v27;
      do
      {
        v7 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v26 + 1) + 8 * v7);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v9 = [v19 managedObjectContexts];
          v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            do
            {
              v13 = 0;
              do
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v22 + 1) + 8 * v13);
                v21[0] = _NSConcreteStackBlock;
                v21[1] = 3221225472;
                v21[2] = sub_10014D620;
                v21[3] = &unk_100645D40;
                v21[4] = v14;
                v21[5] = v8;
                v21[6] = self;
                [v14 performBlock:v21];
                v13 = v13 + 1;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v11);
          }

          v7 = v7 + 1;
        }

        while (v7 != v20);
        v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    v15 = [(ICFolderDataSource *)self updateVirtualSmartFoldersDelayer];
    [v15 requestFire];

    v6 = v16;
  }
}

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v4 = a4;
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectID];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (BOOL)shouldIndentNoteCount
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  else
  {
    return +[UIDevice ic_isVision]^ 1;
  }
}

- (NSManagedObjectContext)legacyViewContext
{
  v2 = +[NotesApp sharedNotesApp];
  v3 = [v2 noteContext];
  v4 = [v3 managedObjectContext];

  return v4;
}

- (void)accountsDidChange:(id)a3
{
  v3 = [(ICFolderDataSource *)self accountChangeDelayer];
  [v3 requestFire];
}

- (void)accountHidesNotesInCustomFoldersDidChange:(id)a3
{
  v18.receiver = self;
  v18.super_class = ICFolderDataSource;
  [(ICFolderDataSource *)&v18 accountHidesNotesInCustomFoldersDidChange:a3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICFolderDataSource *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        v11 = [(ICFolderDataSource *)self collectionView];
        v12 = [v11 cellForItemAtIndexPath:v10];
        v13 = ICDynamicCast();

        [v13 updateNoteCount];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)checkUpdateVirtualSmartFolders
{
  v3 = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  v4 = [v3 snapshot];
  v5 = [v4 itemIdentifiers];
  v6 = [v5 ic_objectsOfClass:objc_opt_class()];
  v7 = [NSSet setWithArray:v6];

  v8 = [(ICFolderDataSource *)self indexer];
  v9 = [v8 allVirtualSmartFolderIdentifiers];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DD90;
  v11[3] = &unk_10064B3C8;
  v11[4] = self;
  v10 = [v9 ic_objectsPassingTest:v11];

  if (([v10 isEqualToSet:v7] & 1) == 0)
  {
    [(ICFolderDataSource *)self reindexDataAnimated:1];
  }
}

- (ICOutlineParentCollectionViewCell)tagHeadingCell
{
  v3 = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  v4 = [v3 snapshot];

  v5 = [v4 itemIdentifiers];
  v6 = [v5 ic_objectPassingTest:&stru_10064B3E8];

  if (v6)
  {
    v7 = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
    v8 = [v7 indexPathForItemIdentifier:v6];

    objc_opt_class();
    v9 = [(ICFolderDataSource *)self collectionView];
    v10 = [v9 cellForItemAtIndexPath:v8];
    v11 = ICDynamicCast();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ICTagOperatorCell)tagOperatorCell
{
  v3 = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  v4 = +[ICTagOperatorItemIdentifier sharedItemIdentifier];
  v5 = [v3 indexPathForItemIdentifier:v4];

  objc_opt_class();
  v6 = [(ICFolderDataSource *)self collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];
  v8 = ICDynamicCast();

  return v8;
}

- (void)updateTagOperatorVisibility
{
  v3 = [(ICFolderDataSource *)self shouldDisplayTagOperatorInTagHeading];
  v4 = [(ICFolderDataSource *)self tagHeadingCell];
  [v4 setShouldDisplayTagSelectionOperator:v3];

  if ([(ICFolderDataSource *)self hasGroupInset]|| ![(ICFolderDataSource *)self shouldShowTagOperatorOnSeparateLine])
  {
    v6 = 0;
  }

  else
  {
    v5 = [(ICFolderDataSource *)self tagSelection];
    v6 = [v5 selectedTagCount] > 1;
  }

  v7 = [(ICFolderDataSource *)self indexer];
  v8 = [v7 shouldIncludeTagOperator];

  if (v6 != v8)
  {
    v9 = [(ICFolderDataSource *)self indexer];
    [v9 setShouldIncludeTagOperator:v6];

    [(ICFolderDataSource *)self reloadDataAnimated:1];
  }
}

- (BOOL)shouldDisplayTagOperatorInTagHeading
{
  if ([(ICFolderDataSource *)self hasGroupInset])
  {
    return 0;
  }

  else
  {
    return ![(ICFolderDataSource *)self shouldShowTagOperatorOnSeparateLine];
  }
}

- (ICNAViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end
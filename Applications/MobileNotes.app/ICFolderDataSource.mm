@interface ICFolderDataSource
- (BOOL)shouldDisplayTagOperatorInTagHeading;
- (BOOL)shouldIndentNoteCount;
- (ICFolderCoreDataIndexer)indexer;
- (ICFolderDataSource)initWithCollectionView:(id)view presentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext overrideContainerIdentifier:(id)identifier unsupportedFolderInfoButtonTapHandler:(id)handler accountUpgradeButtonTapHandlerProvider:(id)provider tagSelectionDidChangeHandler:(id)self0 allowNotificationsCloseHandler:(id)self1;
- (ICNAViewController)presentingViewController;
- (ICOutlineParentCollectionViewCell)tagHeadingCell;
- (ICTagOperatorCell)tagOperatorCell;
- (NSManagedObjectContext)legacyViewContext;
- (NSManagedObjectContext)modernViewContext;
- (NSSet)allSmartFolderObjectIDs;
- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects;
- (int64_t)shouldIncludeCallNotes;
- (int64_t)shouldIncludeMathNotes;
- (int64_t)shouldIncludeSharedWithYou;
- (int64_t)shouldIncludeSystemPaper;
- (unint64_t)countOfLegacyAccounts;
- (unint64_t)countOfModernAccounts;
- (void)accountHidesNotesInCustomFoldersDidChange:(id)change;
- (void)accountsDidChange:(id)change;
- (void)checkUpdateVirtualSmartFolders;
- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds;
- (void)reindexDataAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock;
- (void)setHasGroupInset:(BOOL)inset;
- (void)setShouldIncludeCallNotes:(int64_t)notes;
- (void)setShouldIncludeMathNotes:(int64_t)notes;
- (void)setShouldIncludeSharedWithYou:(int64_t)you;
- (void)setShouldIncludeSystemPaper:(int64_t)paper;
- (void)setTagSelection:(id)selection;
- (void)updateTagOperatorVisibility;
@end

@implementation ICFolderDataSource

- (NSManagedObjectContext)modernViewContext
{
  v2 = +[ICNoteContext sharedContext];
  managedObjectContext = [v2 managedObjectContext];

  return managedObjectContext;
}

- (ICFolderCoreDataIndexer)indexer
{
  v4.receiver = self;
  v4.super_class = ICFolderDataSource;
  indexer = [(ICFolderDataSource *)&v4 indexer];

  return indexer;
}

- (ICFolderDataSource)initWithCollectionView:(id)view presentingViewController:(id)controller legacyManagedObjectContext:(id)context modernManagedObjectContext:(id)objectContext overrideContainerIdentifier:(id)identifier unsupportedFolderInfoButtonTapHandler:(id)handler accountUpgradeButtonTapHandlerProvider:(id)provider tagSelectionDidChangeHandler:(id)self0 allowNotificationsCloseHandler:(id)self1
{
  viewCopy = view;
  obj = controller;
  contextCopy = context;
  objectContextCopy = objectContext;
  identifierCopy = identifier;
  handlerCopy = handler;
  providerCopy = provider;
  changeHandlerCopy = changeHandler;
  closeHandlerCopy = closeHandler;
  objc_initWeak(location, self);
  v69 = viewCopy;
  objc_initWeak(&from, viewCopy);
  self->_shouldShowTagOperatorOnSeparateLine = 0;
  v22 = [[ICFolderCoreDataIndexer alloc] initWithLegacyManagedObjectContext:contextCopy modernManagedObjectContext:objectContextCopy overrideContainerIdentifier:identifierCopy];
  [v22 setShouldIncludeOutlineParentItems:identifierCopy == 0];
  [v22 setShouldIncludeTags:identifierCopy == 0];
  v23 = objc_opt_class();
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10014C05C;
  v97[3] = &unk_10064B2B0;
  objc_copyWeak(&v100, location);
  v66 = providerCopy;
  v98 = v66;
  v24 = changeHandlerCopy;
  v99 = v24;
  v25 = [UICollectionViewCellRegistration registrationWithCellClass:v23 configurationHandler:v97];
  v26 = objc_opt_class();
  v65 = identifierCopy;
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
  v37 = closeHandlerCopy;
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
    v42 = objc_retainBlock(handlerCopy);
    unsupportedFolderInfoButtonTapHandler = v41->_unsupportedFolderInfoButtonTapHandler;
    v41->_unsupportedFolderInfoButtonTapHandler = v42;

    v44 = +[ICNoteContext sharedContext];

    if (v44)
    {
      v45 = [ICManagedObjectContextChangeController alloc];
      modernViewContext = [(ICFolderDataSource *)v41 modernViewContext];
      v47 = [NSSet setWithObject:modernViewContext];
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
    collectionViewDiffableDataSource = [(ICFolderDataSource *)v41 collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource setSectionSnapshotHandlers:v50];

    [(ICFolderDataSource *)v41 setSectionTypes:&off_10066E368];
    collectionViewDiffableDataSource2 = [(ICFolderDataSource *)v41 collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource2 setSupplementaryViewProvider:v39];

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

- (void)reindexDataAnimated:(BOOL)animated dataIndexedBlock:(id)block dataRenderedBlock:(id)renderedBlock
{
  animatedCopy = animated;
  blockCopy = block;
  renderedBlockCopy = renderedBlock;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10014CD8C;
  v12[3] = &unk_10064B3A0;
  objc_copyWeak(&v14, &location);
  v10 = blockCopy;
  v13 = v10;
  v11.receiver = self;
  v11.super_class = ICFolderDataSource;
  [(ICFolderDataSource *)&v11 reindexDataAnimated:animatedCopy dataIndexedBlock:v12 dataRenderedBlock:renderedBlockCopy];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)setTagSelection:(id)selection
{
  objc_storeStrong(&self->_tagSelection, selection);
  selectionCopy = selection;
  tagOperatorCell = [(ICFolderDataSource *)self tagOperatorCell];
  [tagOperatorCell setTagSelection:selectionCopy];

  tagHeadingCell = [(ICFolderDataSource *)self tagHeadingCell];
  [tagHeadingCell setTagSelection:selectionCopy];

  [(ICFolderDataSource *)self updateTagOperatorVisibility];
}

- (void)setHasGroupInset:(BOOL)inset
{
  insetCopy = inset;
  hasGroupInset = self->_hasGroupInset;
  self->_hasGroupInset = inset;
  objc_opt_class();
  collectionView = [(ICFolderDataSource *)self collectionView];
  v7 = ICDynamicCast();
  [v7 setHasGroupInset:insetCopy];

  if (hasGroupInset != insetCopy)
  {
    collectionView2 = [(ICFolderDataSource *)self collectionView];
    [collectionView2 reloadData];
  }
}

- (unint64_t)countOfLegacyAccounts
{
  indexer = [(ICFolderDataSource *)self indexer];
  countOfLegacyAccounts = [indexer countOfLegacyAccounts];

  return countOfLegacyAccounts;
}

- (unint64_t)countOfModernAccounts
{
  indexer = [(ICFolderDataSource *)self indexer];
  countOfModernAccounts = [indexer countOfModernAccounts];

  return countOfModernAccounts;
}

- (NSSet)allSmartFolderObjectIDs
{
  indexer = [(ICFolderDataSource *)self indexer];
  allSmartFolderObjectIDs = [indexer allSmartFolderObjectIDs];

  return allSmartFolderObjectIDs;
}

- (int64_t)shouldIncludeSharedWithYou
{
  indexer = [(ICFolderDataSource *)self indexer];
  shouldIncludeSharedWithYou = [indexer shouldIncludeSharedWithYou];

  return shouldIncludeSharedWithYou;
}

- (void)setShouldIncludeSharedWithYou:(int64_t)you
{
  indexer = [(ICFolderDataSource *)self indexer];
  [indexer setShouldIncludeSharedWithYou:you];
}

- (int64_t)shouldIncludeSystemPaper
{
  indexer = [(ICFolderDataSource *)self indexer];
  shouldIncludeSystemPaper = [indexer shouldIncludeSystemPaper];

  return shouldIncludeSystemPaper;
}

- (void)setShouldIncludeSystemPaper:(int64_t)paper
{
  indexer = [(ICFolderDataSource *)self indexer];
  [indexer setShouldIncludeSystemPaper:paper];
}

- (int64_t)shouldIncludeCallNotes
{
  indexer = [(ICFolderDataSource *)self indexer];
  shouldIncludeCallNotes = [indexer shouldIncludeCallNotes];

  return shouldIncludeCallNotes;
}

- (void)setShouldIncludeCallNotes:(int64_t)notes
{
  indexer = [(ICFolderDataSource *)self indexer];
  [indexer setShouldIncludeCallNotes:notes];
}

- (int64_t)shouldIncludeMathNotes
{
  indexer = [(ICFolderDataSource *)self indexer];
  shouldIncludeMathNotes = [indexer shouldIncludeMathNotes];

  return shouldIncludeMathNotes;
}

- (void)setShouldIncludeMathNotes:(int64_t)notes
{
  indexer = [(ICFolderDataSource *)self indexer];
  [indexer setShouldIncludeMathNotes:notes];
}

- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds
{
  controllerCopy = controller;
  dsCopy = ds;
  if ([dsCopy count])
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v26 = 0u;
    v16 = dsCopy;
    obj = dsCopy;
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
          managedObjectContexts = [controllerCopy managedObjectContexts];
          v10 = [managedObjectContexts countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                  objc_enumerationMutation(managedObjectContexts);
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
              v11 = [managedObjectContexts countByEnumeratingWithState:&v22 objects:v30 count:16];
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

    updateVirtualSmartFoldersDelayer = [(ICFolderDataSource *)self updateVirtualSmartFoldersDelayer];
    [updateVirtualSmartFoldersDelayer requestFire];

    dsCopy = v16;
  }
}

- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects
{
  objectsCopy = objects;
  v5 = +[NSMutableSet set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = objectsCopy;
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
          objectID = [v11 objectID];
          [v5 addObject:objectID];
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
  noteContext = [v2 noteContext];
  managedObjectContext = [noteContext managedObjectContext];

  return managedObjectContext;
}

- (void)accountsDidChange:(id)change
{
  accountChangeDelayer = [(ICFolderDataSource *)self accountChangeDelayer];
  [accountChangeDelayer requestFire];
}

- (void)accountHidesNotesInCustomFoldersDidChange:(id)change
{
  v18.receiver = self;
  v18.super_class = ICFolderDataSource;
  [(ICFolderDataSource *)&v18 accountHidesNotesInCustomFoldersDidChange:change];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  collectionView = [(ICFolderDataSource *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        collectionView2 = [(ICFolderDataSource *)self collectionView];
        v12 = [collectionView2 cellForItemAtIndexPath:v10];
        v13 = ICDynamicCast();

        [v13 updateNoteCount];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [indexPathsForVisibleItems countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)checkUpdateVirtualSmartFolders
{
  collectionViewDiffableDataSource = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];
  v6 = [itemIdentifiers ic_objectsOfClass:objc_opt_class()];
  v7 = [NSSet setWithArray:v6];

  indexer = [(ICFolderDataSource *)self indexer];
  allVirtualSmartFolderIdentifiers = [indexer allVirtualSmartFolderIdentifiers];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DD90;
  v11[3] = &unk_10064B3C8;
  v11[4] = self;
  v10 = [allVirtualSmartFolderIdentifiers ic_objectsPassingTest:v11];

  if (([v10 isEqualToSet:v7] & 1) == 0)
  {
    [(ICFolderDataSource *)self reindexDataAnimated:1];
  }
}

- (ICOutlineParentCollectionViewCell)tagHeadingCell
{
  collectionViewDiffableDataSource = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  v6 = [itemIdentifiers ic_objectPassingTest:&stru_10064B3E8];

  if (v6)
  {
    collectionViewDiffableDataSource2 = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
    v8 = [collectionViewDiffableDataSource2 indexPathForItemIdentifier:v6];

    objc_opt_class();
    collectionView = [(ICFolderDataSource *)self collectionView];
    v10 = [collectionView cellForItemAtIndexPath:v8];
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
  collectionViewDiffableDataSource = [(ICFolderDataSource *)self collectionViewDiffableDataSource];
  v4 = +[ICTagOperatorItemIdentifier sharedItemIdentifier];
  v5 = [collectionViewDiffableDataSource indexPathForItemIdentifier:v4];

  objc_opt_class();
  collectionView = [(ICFolderDataSource *)self collectionView];
  v7 = [collectionView cellForItemAtIndexPath:v5];
  v8 = ICDynamicCast();

  return v8;
}

- (void)updateTagOperatorVisibility
{
  shouldDisplayTagOperatorInTagHeading = [(ICFolderDataSource *)self shouldDisplayTagOperatorInTagHeading];
  tagHeadingCell = [(ICFolderDataSource *)self tagHeadingCell];
  [tagHeadingCell setShouldDisplayTagSelectionOperator:shouldDisplayTagOperatorInTagHeading];

  if ([(ICFolderDataSource *)self hasGroupInset]|| ![(ICFolderDataSource *)self shouldShowTagOperatorOnSeparateLine])
  {
    v6 = 0;
  }

  else
  {
    tagSelection = [(ICFolderDataSource *)self tagSelection];
    v6 = [tagSelection selectedTagCount] > 1;
  }

  indexer = [(ICFolderDataSource *)self indexer];
  shouldIncludeTagOperator = [indexer shouldIncludeTagOperator];

  if (v6 != shouldIncludeTagOperator)
  {
    indexer2 = [(ICFolderDataSource *)self indexer];
    [indexer2 setShouldIncludeTagOperator:v6];

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
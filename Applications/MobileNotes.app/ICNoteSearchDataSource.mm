@interface ICNoteSearchDataSource
+ (int64_t)numberOfItemsInSection:(id)section forSnapshot:(id)snapshot;
- (BOOL)shouldShowEmptyState;
- (BOOL)shouldShowLoadingState;
- (ICNoteSearchDataSource)initWithCollectionView:(id)view noteContainerViewMode:(int64_t)mode viewControllerManager:(id)manager legacyViewContext:(id)context modernViewContext:(id)viewContext searchContext:(id)searchContext;
- (ICNoteSearchDataSourceDelegate)delegate;
- (ICViewControllerManager)viewControllerManager;
- (id)associatedCellsForItemIdentifiers:(id)identifiers;
- (id)firstRelevantItemIdentifier;
- (id)legacyViewContext;
- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects;
- (id)modernViewContext;
- (id)nextRelevantItemIdentifierAfter:(id)after;
- (void)cancelSearchQuery;
- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds;
- (void)noteLockManagerDidToggleLock:(id)lock;
- (void)performUpdatesIfNeededAndWait;
- (void)searchSnapshotDidUpdateSuggestions:(id)suggestions;
- (void)searchWithUserInput:(id)input updateHandler:(id)handler;
- (void)switchToMode:(unint64_t)mode;
@end

@implementation ICNoteSearchDataSource

- (ICNoteSearchDataSource)initWithCollectionView:(id)view noteContainerViewMode:(int64_t)mode viewControllerManager:(id)manager legacyViewContext:(id)context modernViewContext:(id)viewContext searchContext:(id)searchContext
{
  viewCopy = view;
  obj = manager;
  contextCopy = context;
  viewContextCopy = viewContext;
  searchContextCopy = searchContext;
  objc_initWeak(location, self);
  v53 = viewCopy;
  objc_initWeak(&from, viewCopy);
  v14 = objc_opt_class();
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100118F04;
  v72[3] = &unk_100645660;
  objc_copyWeak(&v73, location);
  objc_copyWeak(&v74, &from);
  v15 = [UICollectionViewCellRegistration registrationWithCellClass:v14 configurationHandler:v72];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [UINib nibWithNibName:v17 bundle:0];

  v69[0] = _NSConcreteStackBlock;
  v69[1] = 3221225472;
  v69[2] = sub_100119064;
  v69[3] = &unk_100645688;
  objc_copyWeak(&v70, location);
  objc_copyWeak(&v71, &from);
  v19 = [UICollectionViewCellRegistration registrationWithCellNib:v18 configurationHandler:v69];
  v20 = objc_opt_class();
  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100119230;
  v67[3] = &unk_10064A4E8;
  objc_copyWeak(&v68, location);
  v21 = [UICollectionViewCellRegistration registrationWithCellClass:v20 configurationHandler:v67];
  v22 = [UICollectionViewCellRegistration registrationWithCellClass:objc_opt_class() configurationHandler:&stru_10064A528];
  v23 = objc_opt_class();
  v47 = v18;
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_100119470;
  v65[3] = &unk_10064A550;
  objc_copyWeak(&v66, location);
  v49 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:v23 elementKind:UICollectionElementKindSectionHeader configurationHandler:v65];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10011952C;
  v59[3] = &unk_10064A578;
  objc_copyWeak(&v64, location);
  v24 = v22;
  v60 = v24;
  v25 = v21;
  v61 = v25;
  v26 = v15;
  v62 = v26;
  v27 = v19;
  v63 = v27;
  v28 = objc_retainBlock(v59);
  v58.receiver = self;
  v58.super_class = ICNoteSearchDataSource;
  v29 = [(ICNoteSearchDataSource *)&v58 initWithCollectionView:v53 cellProvider:v28];
  if (v29)
  {
    v30 = objc_alloc_init(ICNoteSearchResultsController);
    searchResultsController = v29->_searchResultsController;
    v29->_searchResultsController = v30;

    v29->_noteContainerViewMode = mode;
    objc_storeWeak(&v29->_viewControllerManager, obj);
    v32 = [ICNoteSearchSnapshot alloc];
    collectionViewDiffableDataSource = [(ICNoteSearchDataSource *)v29 collectionViewDiffableDataSource];
    hasCompactWidth = [obj hasCompactWidth];
    collectionView = [(ICNoteSearchDataSource *)v29 collectionView];
    v36 = [(ICNoteSearchSnapshot *)v32 initWithDiffableDataSource:collectionViewDiffableDataSource containerViewMode:mode isCompactSize:hasCompactWidth collectionView:collectionView searchContext:searchContextCopy];
    snapshot = v29->_snapshot;
    v29->_snapshot = v36;

    collectionView2 = [(ICNoteSearchDataSource *)v29 collectionView];
    -[ICNoteSearchSnapshot setBehavior:](v29->_snapshot, "setBehavior:", [collectionView2 ic_behavior]);

    [(ICNoteSearchSnapshot *)v29->_snapshot setDelegate:v29];
    v39 = [NSSet setWithObjects:contextCopy, viewContextCopy, 0, v47];
    v40 = [[ICManagedObjectContextChangeController alloc] initWithManagedObjectContexts:v39 delegate:v29];
    removedObjectsManagedObjectContextChangeController = v29->_removedObjectsManagedObjectContextChangeController;
    v29->_removedObjectsManagedObjectContextChangeController = v40;

    v42 = +[NSMutableArray array];
    if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
    {
      [v42 addObject:&off_10066DFC8];
      [v42 addObject:&off_10066DFE0];
    }

    [v42 addObject:&off_10066DFF8];
    [v42 addObject:&off_10066E010];
    v43 = [v42 copy];
    [(ICNoteSearchDataSource *)v29 setSectionTypes:v43];

    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1001196C0;
    v55[3] = &unk_10064A5A0;
    objc_copyWeak(&v57, &from);
    v56 = v49;
    collectionViewDiffableDataSource2 = [(ICNoteSearchDataSource *)v29 collectionViewDiffableDataSource];
    [collectionViewDiffableDataSource2 setSupplementaryViewProvider:v55];

    objc_destroyWeak(&v57);
  }

  v45 = v29;

  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);

  objc_destroyWeak(&v68);
  objc_destroyWeak(&v71);
  objc_destroyWeak(&v70);

  objc_destroyWeak(&v74);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);

  return v45;
}

- (void)cancelSearchQuery
{
  searchResultsController = [(ICNoteSearchDataSource *)self searchResultsController];
  [searchResultsController cancelSearchQuery];

  [(ICNoteSearchDataSource *)self setCurrentSearchUserInput:0];
}

- (void)searchWithUserInput:(id)input updateHandler:(id)handler
{
  inputCopy = input;
  handlerCopy = handler;
  [(ICNoteSearchDataSource *)self setCurrentSearchUserInput:inputCopy];
  [(ICNoteSearchDataSource *)self switchToMode:1];
  if ([inputCopy isEmpty])
  {
    v8 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0734(v8);
    }

    [(ICNoteSearchDataSource *)self cancelSearchQuery];
    snapshot = [(ICNoteSearchDataSource *)self snapshot];
    [snapshot clear];
  }

  else
  {
    noteContainerViewMode = [(ICNoteSearchDataSource *)self noteContainerViewMode];
    searchResultsController = [(ICNoteSearchDataSource *)self searchResultsController];
    accountIdentifier = [(ICNoteSearchDataSource *)self accountIdentifier];
    v13 = [searchResultsController isUpToDateForInput:inputCopy accountIdentifier:accountIdentifier];

    if ((v13 & 1) == 0)
    {
      tokens = [inputCopy tokens];
      v15 = [tokens ic_containsObjectPassingTest:&stru_10064A5E0];

      snapshot2 = [(ICNoteSearchDataSource *)self snapshot];
      [snapshot2 prepareSearchWithCannedSuggestionToken:v15];

      +[NSDate timeIntervalSinceReferenceDate];
      [(ICNoteSearchDataSource *)self setUncompletedSearchStartTime:?];
    }

    collectionView = [(ICNoteSearchDataSource *)self collectionView];
    ic_behavior = [collectionView ic_behavior];

    objc_initWeak(&location, self);
    searchResultsController2 = [(ICNoteSearchDataSource *)self searchResultsController];
    snapshot3 = [(ICNoteSearchDataSource *)self snapshot];
    accountIdentifier2 = [(ICNoteSearchDataSource *)self accountIdentifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100119A48;
    v22[3] = &unk_10064A608;
    objc_copyWeak(v24, &location);
    v24[1] = ic_behavior;
    v23 = handlerCopy;
    [searchResultsController2 performSearchWithInput:inputCopy suggestionsResponder:snapshot3 accountIdentifier:accountIdentifier2 modernResultsOnly:noteContainerViewMode == 1 updateHandler:v22];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }
}

- (BOOL)shouldShowLoadingState
{
  stillSearching = [(ICNoteSearchDataSource *)self stillSearching];
  if (stillSearching)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    [(ICNoteSearchDataSource *)self uncompletedSearchStartTime];
    LOBYTE(stillSearching) = v5 - v6 >= 0.8;
  }

  return stillSearching;
}

- (BOOL)shouldShowEmptyState
{
  if ([(ICNoteSearchDataSource *)self stillSearching])
  {
    return 0;
  }

  snapshot = [(ICNoteSearchDataSource *)self snapshot];
  currentSnapshot = [snapshot currentSnapshot];
  v3 = [currentSnapshot numberOfItems] == 0;

  return v3;
}

- (void)switchToMode:(unint64_t)mode
{
  snapshot = [(ICNoteSearchDataSource *)self snapshot];
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    modeCopy = mode;
  }

  else
  {
    modeCopy = 0;
  }

  [snapshot switchToMode:modeCopy];
}

+ (int64_t)numberOfItemsInSection:(id)section forSnapshot:(id)snapshot
{
  sectionCopy = section;
  snapshotCopy = snapshot;
  sectionIdentifiers = [snapshotCopy sectionIdentifiers];
  v8 = [sectionIdentifiers containsObject:sectionCopy];

  if (v8)
  {
    v9 = [snapshotCopy numberOfItemsInSection:sectionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUpdatesIfNeededAndWait
{
  removedObjectsManagedObjectContextChangeController = [(ICNoteSearchDataSource *)self removedObjectsManagedObjectContextChangeController];
  [removedObjectsManagedObjectContextChangeController performUpdatesIfNeededAndWait];
}

- (id)firstRelevantItemIdentifier
{
  collectionViewDiffableDataSource = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  v5 = [itemIdentifiers ic_firstObjectOfClass:objc_opt_class()];

  return v5;
}

- (id)nextRelevantItemIdentifierAfter:(id)after
{
  afterCopy = after;
  objc_opt_class();
  lastObject = [afterCopy lastObject];

  v6 = ICDynamicCast();

  if (!v6)
  {
    goto LABEL_11;
  }

  collectionViewDiffableDataSource = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  v10 = [itemIdentifiers ic_map:&stru_10064A628];

  v11 = [v10 indexOfObject:v6];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    v13 = v11 + 1;
    if (v11 + 1 >= [v10 count])
    {
      v16 = 0;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      itemIdentifiers2 = [snapshot itemIdentifiers];
      v15 = [itemIdentifiers2 objectAtIndexedSubscript:v13];
      v16 = ICDynamicCast();

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    if (!v16)
    {
      objc_opt_class();
      itemIdentifiers3 = [snapshot itemIdentifiers];
      v18 = [itemIdentifiers3 objectAtIndexedSubscript:v12 - 1];
      v16 = ICDynamicCast();
    }

LABEL_10:

    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_11:
  objc_opt_class();
  firstRelevantItemIdentifier = [(ICNoteSearchDataSource *)self firstRelevantItemIdentifier];
  v16 = ICDynamicCast();

LABEL_12:
  object = [v16 object];
  objectID = [object objectID];
  v22 = [objectID isEqual:v6];

  if (v22)
  {

    v16 = 0;
  }

  return v16;
}

- (id)associatedCellsForItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  collectionViewDiffableDataSource = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  v8 = [NSSet setWithArray:itemIdentifiers];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011A30C;
  v12[3] = &unk_10064A650;
  v12[4] = self;
  v13 = identifiersCopy;
  v9 = identifiersCopy;
  v10 = [v8 ic_compactMap:v12];

  return v10;
}

- (id)managedObjectContextChangeController:(id)controller managedObjectIDsToUpdateForUpdatedManagedObjects:(id)objects
{
  objectsCopy = objects;
  collectionViewDiffableDataSource = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  snapshot = [collectionViewDiffableDataSource snapshot];
  numberOfItems = [snapshot numberOfItems];

  if (numberOfItems)
  {
    +[NSMutableSet set];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011A554;
    v13 = v12[3] = &unk_10064A678;
    v9 = v13;
    [objectsCopy enumerateObjectsUsingBlock:v12];
    v10 = [v9 copy];
  }

  else
  {
    v10 = +[NSSet set];
  }

  return v10;
}

- (void)managedObjectContextChangeController:(id)controller performUpdatesForManagedObjectIDs:(id)ds
{
  dsCopy = ds;
  snapshot = [(ICNoteSearchDataSource *)self snapshot];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011A73C;
  v8[3] = &unk_10064A6C8;
  v9 = dsCopy;
  v7 = dsCopy;
  [snapshot performBlockAndUpdateHeaders:1 animated:1 block:v8];
}

- (void)searchSnapshotDidUpdateSuggestions:(id)suggestions
{
  if ([(ICNoteSearchDataSource *)self noteDisplayMode]== 1 || _UISolariumEnabled())
  {
    delegate = [(ICNoteSearchDataSource *)self delegate];
    [delegate searchDataSourceDidUpdateSuggestions:self];
  }
}

- (void)noteLockManagerDidToggleLock:(id)lock
{
  lockCopy = lock;
  objc_opt_class();
  object = [lockCopy object];
  v6 = ICCheckedDynamicCast();

  updatedNote = [v6 updatedNote];

  if (updatedNote)
  {
    snapshot = [(ICNoteSearchDataSource *)self snapshot];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011AA70;
    v10[3] = &unk_10064A6C8;
    v11 = v6;
    [snapshot performBlockAndUpdateHeaders:0 animated:1 block:v10];
  }

  v9.receiver = self;
  v9.super_class = ICNoteSearchDataSource;
  [(ICNoteSearchDataSource *)&v9 noteLockManagerDidToggleLock:lockCopy];
}

- (id)legacyViewContext
{
  v2 = +[NotesApp sharedNotesApp];
  noteContext = [v2 noteContext];
  managedObjectContext = [noteContext managedObjectContext];

  return managedObjectContext;
}

- (id)modernViewContext
{
  v2 = +[ICNoteContext sharedContext];
  managedObjectContext = [v2 managedObjectContext];

  return managedObjectContext;
}

- (ICNoteSearchDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICViewControllerManager)viewControllerManager
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerManager);

  return WeakRetained;
}

@end
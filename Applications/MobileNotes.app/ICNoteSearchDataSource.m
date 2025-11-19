@interface ICNoteSearchDataSource
+ (int64_t)numberOfItemsInSection:(id)a3 forSnapshot:(id)a4;
- (BOOL)shouldShowEmptyState;
- (BOOL)shouldShowLoadingState;
- (ICNoteSearchDataSource)initWithCollectionView:(id)a3 noteContainerViewMode:(int64_t)a4 viewControllerManager:(id)a5 legacyViewContext:(id)a6 modernViewContext:(id)a7 searchContext:(id)a8;
- (ICNoteSearchDataSourceDelegate)delegate;
- (ICViewControllerManager)viewControllerManager;
- (id)associatedCellsForItemIdentifiers:(id)a3;
- (id)firstRelevantItemIdentifier;
- (id)legacyViewContext;
- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4;
- (id)modernViewContext;
- (id)nextRelevantItemIdentifierAfter:(id)a3;
- (void)cancelSearchQuery;
- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4;
- (void)noteLockManagerDidToggleLock:(id)a3;
- (void)performUpdatesIfNeededAndWait;
- (void)searchSnapshotDidUpdateSuggestions:(id)a3;
- (void)searchWithUserInput:(id)a3 updateHandler:(id)a4;
- (void)switchToMode:(unint64_t)a3;
@end

@implementation ICNoteSearchDataSource

- (ICNoteSearchDataSource)initWithCollectionView:(id)a3 noteContainerViewMode:(int64_t)a4 viewControllerManager:(id)a5 legacyViewContext:(id)a6 modernViewContext:(id)a7 searchContext:(id)a8
{
  v13 = a3;
  obj = a5;
  v51 = a6;
  v50 = a7;
  v52 = a8;
  objc_initWeak(location, self);
  v53 = v13;
  objc_initWeak(&from, v13);
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

    v29->_noteContainerViewMode = a4;
    objc_storeWeak(&v29->_viewControllerManager, obj);
    v32 = [ICNoteSearchSnapshot alloc];
    v33 = [(ICNoteSearchDataSource *)v29 collectionViewDiffableDataSource];
    v34 = [obj hasCompactWidth];
    v35 = [(ICNoteSearchDataSource *)v29 collectionView];
    v36 = [(ICNoteSearchSnapshot *)v32 initWithDiffableDataSource:v33 containerViewMode:a4 isCompactSize:v34 collectionView:v35 searchContext:v52];
    snapshot = v29->_snapshot;
    v29->_snapshot = v36;

    v38 = [(ICNoteSearchDataSource *)v29 collectionView];
    -[ICNoteSearchSnapshot setBehavior:](v29->_snapshot, "setBehavior:", [v38 ic_behavior]);

    [(ICNoteSearchSnapshot *)v29->_snapshot setDelegate:v29];
    v39 = [NSSet setWithObjects:v51, v50, 0, v47];
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
    v44 = [(ICNoteSearchDataSource *)v29 collectionViewDiffableDataSource];
    [v44 setSupplementaryViewProvider:v55];

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
  v3 = [(ICNoteSearchDataSource *)self searchResultsController];
  [v3 cancelSearchQuery];

  [(ICNoteSearchDataSource *)self setCurrentSearchUserInput:0];
}

- (void)searchWithUserInput:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(ICNoteSearchDataSource *)self setCurrentSearchUserInput:v6];
  [(ICNoteSearchDataSource *)self switchToMode:1];
  if ([v6 isEmpty])
  {
    v8 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004E0734(v8);
    }

    [(ICNoteSearchDataSource *)self cancelSearchQuery];
    v9 = [(ICNoteSearchDataSource *)self snapshot];
    [v9 clear];
  }

  else
  {
    v10 = [(ICNoteSearchDataSource *)self noteContainerViewMode];
    v11 = [(ICNoteSearchDataSource *)self searchResultsController];
    v12 = [(ICNoteSearchDataSource *)self accountIdentifier];
    v13 = [v11 isUpToDateForInput:v6 accountIdentifier:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [v6 tokens];
      v15 = [v14 ic_containsObjectPassingTest:&stru_10064A5E0];

      v16 = [(ICNoteSearchDataSource *)self snapshot];
      [v16 prepareSearchWithCannedSuggestionToken:v15];

      +[NSDate timeIntervalSinceReferenceDate];
      [(ICNoteSearchDataSource *)self setUncompletedSearchStartTime:?];
    }

    v17 = [(ICNoteSearchDataSource *)self collectionView];
    v18 = [v17 ic_behavior];

    objc_initWeak(&location, self);
    v19 = [(ICNoteSearchDataSource *)self searchResultsController];
    v20 = [(ICNoteSearchDataSource *)self snapshot];
    v21 = [(ICNoteSearchDataSource *)self accountIdentifier];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100119A48;
    v22[3] = &unk_10064A608;
    objc_copyWeak(v24, &location);
    v24[1] = v18;
    v23 = v7;
    [v19 performSearchWithInput:v6 suggestionsResponder:v20 accountIdentifier:v21 modernResultsOnly:v10 == 1 updateHandler:v22];

    objc_destroyWeak(v24);
    objc_destroyWeak(&location);
  }
}

- (BOOL)shouldShowLoadingState
{
  v3 = [(ICNoteSearchDataSource *)self stillSearching];
  if (v3)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4;
    [(ICNoteSearchDataSource *)self uncompletedSearchStartTime];
    LOBYTE(v3) = v5 - v6 >= 0.8;
  }

  return v3;
}

- (BOOL)shouldShowEmptyState
{
  if ([(ICNoteSearchDataSource *)self stillSearching])
  {
    return 0;
  }

  v4 = [(ICNoteSearchDataSource *)self snapshot];
  v5 = [v4 currentSnapshot];
  v3 = [v5 numberOfItems] == 0;

  return v3;
}

- (void)switchToMode:(unint64_t)a3
{
  v5 = [(ICNoteSearchDataSource *)self snapshot];
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  [v5 switchToMode:v4];
}

+ (int64_t)numberOfItemsInSection:(id)a3 forSnapshot:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 sectionIdentifiers];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v9 = [v6 numberOfItemsInSection:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUpdatesIfNeededAndWait
{
  v2 = [(ICNoteSearchDataSource *)self removedObjectsManagedObjectContextChangeController];
  [v2 performUpdatesIfNeededAndWait];
}

- (id)firstRelevantItemIdentifier
{
  v2 = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  v3 = [v2 snapshot];

  v4 = [v3 itemIdentifiers];
  v5 = [v4 ic_firstObjectOfClass:objc_opt_class()];

  return v5;
}

- (id)nextRelevantItemIdentifierAfter:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 lastObject];

  v6 = ICDynamicCast();

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  v8 = [v7 snapshot];

  v9 = [v8 itemIdentifiers];
  v10 = [v9 ic_map:&stru_10064A628];

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
      v14 = [v8 itemIdentifiers];
      v15 = [v14 objectAtIndexedSubscript:v13];
      v16 = ICDynamicCast();

      if (!v12)
      {
        goto LABEL_10;
      }
    }

    if (!v16)
    {
      objc_opt_class();
      v17 = [v8 itemIdentifiers];
      v18 = [v17 objectAtIndexedSubscript:v12 - 1];
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
  v19 = [(ICNoteSearchDataSource *)self firstRelevantItemIdentifier];
  v16 = ICDynamicCast();

LABEL_12:
  v20 = [v16 object];
  v21 = [v20 objectID];
  v22 = [v21 isEqual:v6];

  if (v22)
  {

    v16 = 0;
  }

  return v16;
}

- (id)associatedCellsForItemIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  v6 = [v5 snapshot];

  v7 = [v6 itemIdentifiers];
  v8 = [NSSet setWithArray:v7];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10011A30C;
  v12[3] = &unk_10064A650;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v8 ic_compactMap:v12];

  return v10;
}

- (id)managedObjectContextChangeController:(id)a3 managedObjectIDsToUpdateForUpdatedManagedObjects:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteSearchDataSource *)self collectionViewDiffableDataSource];
  v7 = [v6 snapshot];
  v8 = [v7 numberOfItems];

  if (v8)
  {
    +[NSMutableSet set];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10011A554;
    v13 = v12[3] = &unk_10064A678;
    v9 = v13;
    [v5 enumerateObjectsUsingBlock:v12];
    v10 = [v9 copy];
  }

  else
  {
    v10 = +[NSSet set];
  }

  return v10;
}

- (void)managedObjectContextChangeController:(id)a3 performUpdatesForManagedObjectIDs:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteSearchDataSource *)self snapshot];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10011A73C;
  v8[3] = &unk_10064A6C8;
  v9 = v5;
  v7 = v5;
  [v6 performBlockAndUpdateHeaders:1 animated:1 block:v8];
}

- (void)searchSnapshotDidUpdateSuggestions:(id)a3
{
  if ([(ICNoteSearchDataSource *)self noteDisplayMode]== 1 || _UISolariumEnabled())
  {
    v4 = [(ICNoteSearchDataSource *)self delegate];
    [v4 searchDataSourceDidUpdateSuggestions:self];
  }
}

- (void)noteLockManagerDidToggleLock:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  v6 = ICCheckedDynamicCast();

  v7 = [v6 updatedNote];

  if (v7)
  {
    v8 = [(ICNoteSearchDataSource *)self snapshot];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10011AA70;
    v10[3] = &unk_10064A6C8;
    v11 = v6;
    [v8 performBlockAndUpdateHeaders:0 animated:1 block:v10];
  }

  v9.receiver = self;
  v9.super_class = ICNoteSearchDataSource;
  [(ICNoteSearchDataSource *)&v9 noteLockManagerDidToggleLock:v4];
}

- (id)legacyViewContext
{
  v2 = +[NotesApp sharedNotesApp];
  v3 = [v2 noteContext];
  v4 = [v3 managedObjectContext];

  return v4;
}

- (id)modernViewContext
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 managedObjectContext];

  return v3;
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
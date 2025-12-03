@interface MailboxPickerCollectionHelper
- (BOOL)_updateSnapshot:(id)snapshot forSection:(id)section;
- (BOOL)canBeginMultiSelectAtIndexPath:(id)path;
- (BOOL)canReorderItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)isAddButtonAtIndexPath:(id)path;
- (BOOL)isCellSelectable:(id)selectable atIndexPath:(id)path;
- (BOOL)isSplitViewCollapsed;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (MailboxPickerCollectionHelper)initWithCollectionView:(id)view favoritesManager:(id)manager focusController:(id)controller scene:(id)scene logClient:(id)client updateCompletion:(id)completion;
- (MailboxPickerCollectionHelperDelegate)delegate;
- (id)_favoritesDidChangedBlock;
- (id)_nextVisibleFavoriteItemInDirection:(int64_t)direction fromItem:(id)item;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)createMailboxesFromUids:(id)uids;
- (id)favoriteItemAfterItem:(id)item;
- (id)favoriteItemAtIndexPath:(id)path;
- (id)favoriteItemBeforeItem:(id)item;
- (id)favoriteItemForItemID:(id)d;
- (id)favoriteItemForItemID:(id)d inSection:(id)section;
- (id)indexPathForItem:(id)item;
- (id)snapshotFromFavoriteItems:(id)items;
- (int64_t)_applyInsertionsInSnapshot:(id)snapshot differences:(id)differences collection:(id)collection;
- (int64_t)_applyRemovalsInSnapshot:(id)snapshot differences:(id)differences;
- (int64_t)sectionTypeForIndex:(int64_t)index;
- (void)_configureAccountsCell:(id)cell forItem:(id)item;
- (void)_configureAddMailboxCell:(id)cell;
- (void)_configureCell:(id)cell forItemID:(id)d indexPath:(id)path;
- (void)_configureFlattenedCell:(id)cell forItem:(id)item;
- (void)_configureMailboxCell:(id)cell mailbox:(id)mailbox indexPath:(id)path;
- (void)_detailsDisclosureButtonTapped:(id)tapped;
- (void)_favoritesDidChange:(id)change;
- (void)_favoritesFocusDidChange:(id)change;
- (void)_performDataSourceUpdateAnimated:(BOOL)animated forceReload:(BOOL)reload update:(id)update;
- (void)_performDataSourceUpdateAnimated:(BOOL)animated forceReload:(BOOL)reload update:(id)update toSection:(id)section;
- (void)_reloadDataForCellsAtIndexPaths:(id)paths;
- (void)_setupDataSource;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)reloadDataForIndexPaths:(id)paths;
- (void)reloadDataSourceWithReason:(int64_t)reason;
- (void)reloadFavorites;
- (void)selectAccount:(id)account item:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)selectCombinedMailbox:(id)mailbox;
- (void)selectCombinedMailboxWithType:(int64_t)type item:(id)item animated:(BOOL)animated;
- (void)selectCustomViewController:(id)controller item:(id)item animated:(BOOL)animated;
- (void)selectMailbox:(id)mailbox item:(id)item andPopToMailboxController:(BOOL)controller animated:(BOOL)animated;
- (void)selectVIPMailboxWithItem:(id)item animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)updateCellForSourceType:(unint64_t)type;
- (void)updateCheckmarkColor:(id)color;
- (void)updateMailboxSelectionAnimated:(BOOL)animated scrollToSelected:(BOOL)selected;
- (void)updatedSelectedState:(id)state;
@end

@implementation MailboxPickerCollectionHelper

- (id)_favoritesDidChangedBlock
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F6D5C;
  v4[3] = &unk_1006502E8;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)_setupDataSource
{
  objc_initWeak(location, self);
  v3 = objc_opt_class();
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000F1A24;
  v44[3] = &unk_10064FF58;
  objc_copyWeak(&v45, location);
  v4 = [UICollectionViewCellRegistration registrationWithCellClass:v3 configurationHandler:v44];
  v5 = objc_opt_class();
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000F1AD8;
  v42[3] = &unk_10064FF58;
  objc_copyWeak(&v43, location);
  v6 = [UICollectionViewCellRegistration registrationWithCellClass:v5 configurationHandler:v42];
  v7 = [UICollectionViewDiffableDataSource alloc];
  v8 = [(MailboxPickerCollectionHelper *)self collectionView:v6];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000F1B4C;
  v39[3] = &unk_10064FF80;
  v9 = v6;
  v40 = v9;
  v10 = v4;
  v41 = v10;
  v11 = [v7 initWithCollectionView:v8 cellProvider:v39];
  [(MailboxPickerCollectionHelper *)self setDataSource:v11];

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000F1C54;
  v37[3] = &unk_10064FFE8;
  objc_copyWeak(&v38, location);
  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  reorderingHandlers = [dataSource reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:v37];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F1D00;
  v34[3] = &unk_100650010;
  objc_copyWeak(&v36, location);
  v35 = &stru_10064FFC0;
  dataSource2 = [(MailboxPickerCollectionHelper *)self dataSource];
  reorderingHandlers2 = [dataSource2 reorderingHandlers];
  [reorderingHandlers2 setWillReorderHandler:v34];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F2118;
  v31[3] = &unk_100650010;
  objc_copyWeak(&v33, location);
  v32 = &stru_10064FFC0;
  dataSource3 = [(MailboxPickerCollectionHelper *)self dataSource];
  reorderingHandlers3 = [dataSource3 reorderingHandlers];
  [reorderingHandlers3 setDidReorderHandler:v31];

  v18 = [_UIDiffableDataSourceOutlineSectionController alloc];
  dataSource4 = [(MailboxPickerCollectionHelper *)self dataSource];
  v20 = [v18 initWithDiffableDataSource:dataSource4];
  [(MailboxPickerCollectionHelper *)self setSectionController:v20];

  v21 = objc_alloc_init(UICollectionViewDiffableDataSourceSectionSnapshotHandlers);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000F2224;
  v29[3] = &unk_10064FFE8;
  objc_copyWeak(&v30, location);
  [v21 setShouldExpandItemHandler:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000F22A8;
  v27[3] = &unk_100650038;
  objc_copyWeak(&v28, location);
  v22 = objc_retainBlock(v27);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000F23BC;
  v25[3] = &unk_100650038;
  objc_copyWeak(&v26, location);
  v23 = objc_retainBlock(v25);
  [v21 setWillExpandItemHandler:v22];
  [v21 setWillCollapseItemHandler:v23];
  dataSource5 = [(MailboxPickerCollectionHelper *)self dataSource];
  [dataSource5 setSectionSnapshotHandlers:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);
  objc_destroyWeak(location);
}

- (MailboxPickerCollectionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MailboxPickerCollectionHelper)initWithCollectionView:(id)view favoritesManager:(id)manager focusController:(id)controller scene:(id)scene logClient:(id)client updateCompletion:(id)completion
{
  viewCopy = view;
  managerCopy = manager;
  controllerCopy = controller;
  sceneCopy = scene;
  clientCopy = client;
  completionCopy = completion;
  v42.receiver = self;
  v42.super_class = MailboxPickerCollectionHelper;
  v19 = [(MailboxPickerCollectionHelper *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scene, scene);
    objc_storeStrong(&v20->_collectionView, view);
    objc_storeStrong(&v20->_favoritesManager, manager);
    v21 = [EFDebouncer alloc];
    v22 = [EFScheduler mainThreadScheduler:sceneCopy];
    _favoritesDidChangedBlock = [(MailboxPickerCollectionHelper *)v20 _favoritesDidChangedBlock];
    v24 = [v21 initWithTimeInterval:v22 scheduler:0 startAfter:_favoritesDidChangedBlock block:0.2];
    favoritesDidChangedDebouncer = v20->_favoritesDidChangedDebouncer;
    v20->_favoritesDidChangedDebouncer = v24;

    objc_storeStrong(&v20->_logClient, client);
    v26 = objc_retainBlock(completionCopy);
    updateCompletion = v20->_updateCompletion;
    v20->_updateCompletion = v26;

    v28 = +[UIColor mailInteractiveColor];
    multiSelectCheckmarkColor = v20->_multiSelectCheckmarkColor;
    v20->_multiSelectCheckmarkColor = v28;

    v30 = [[MailboxPickerCollectionHelperModel alloc] initWithFavoritesManager:managerCopy];
    model = v20->_model;
    v20->_model = v30;

    objc_initWeak(&location, v20);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000F1740;
    v39[3] = &unk_10064FF30;
    objc_copyWeak(&v40, &location);
    [controllerCopy getCurrentFocus:v39];
    v32 = +[NSNotificationCenter defaultCenter];
    favoritesManager = [(MailboxPickerCollectionHelper *)v20 favoritesManager];
    [v32 addObserver:v20 selector:"_favoritesDidChange:" name:@"FavoritesManagerFavoritesDidChangeNotification" object:favoritesManager];

    v34 = +[NSNotificationCenter defaultCenter];
    [v34 addObserver:v20 selector:"_favoritesFocusDidChange:" name:@"FavoritesPersistenceFocusDidChangeNotification" object:0];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v20 selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];

    [(MailboxPickerCollectionHelper *)v20 _setupDataSource];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  favoritesDidChangedDebouncer = [(MailboxPickerCollectionHelper *)self favoritesDidChangedDebouncer];
  [favoritesDidChangedDebouncer cancel];

  v5.receiver = self;
  v5.super_class = MailboxPickerCollectionHelper;
  [(MailboxPickerCollectionHelper *)&v5 dealloc];
}

- (int64_t)sectionTypeForIndex:(int64_t)index
{
  model = [(MailboxPickerCollectionHelper *)self model];
  sections = [model sections];

  if ([sections count] <= index)
  {
    type = 3;
  }

  else
  {
    v6 = [sections objectAtIndexedSubscript:index];
    type = [v6 type];
  }

  return type;
}

- (void)reloadDataSourceWithReason:(int64_t)reason
{
  if (pthread_main_np() != 1)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:238 description:@"Current thread must be main"];
  }

  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites Reloading data source...", buf, 2u);
  }

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  [collectionView contentOffset];
  v7 = v6;
  v9 = v8;
  isEditing = [collectionView isEditing];
  model = [(MailboxPickerCollectionHelper *)self model];
  [model invalidateSections];

  model2 = [(MailboxPickerCollectionHelper *)self model];
  sections = [model2 sections];

  currentFocus = [(MailboxPickerCollectionHelper *)self currentFocus];
  v33 = sub_1000F2C2C(self, currentFocus);

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000F2F28;
  v56[3] = &unk_1006500E0;
  v13 = sections;
  v57 = v13;
  selfCopy = self;
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v56];
  v37 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v15)
  {
    v16 = *v53;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1000F3394;
        v48[3] = &unk_100650108;
        v49 = v37;
        v50 = v18;
        selfCopy2 = self;
        sectionIdentifier = [v18 sectionIdentifier];
        [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v48 toSection:sectionIdentifier];
      }

      v15 = [v14 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v15);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000F3440;
  v45[3] = &unk_100650158;
  v45[4] = self;
  v29 = v14;
  v46 = v29;
  v30 = v37;
  v47 = v30;
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v45];
  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  obj = v33;
  v21 = [obj countByEnumeratingWithState:&v41 objects:v61 count:16];
  if (v21)
  {
    v22 = *v42;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v42 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v41 + 1) + 8 * j);
        snapshot = [dataSource snapshot];
        v26 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:v24];

        if (v26)
        {
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000F3A2C;
          v40[3] = &unk_100650180;
          v40[4] = v24;
          [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:1 forceReload:0 update:v40 toSection:v26];
        }

        else
        {
          logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
          if (os_log_type_enabled(logClient2, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, logClient2, OS_LOG_TYPE_DEFAULT, "#Favorites Did not find section identifier to collapse for itemID: %{public}@", buf, 0xCu);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v41 objects:v61 count:16];
    }

    while (v21);
  }

  if (reason == 1)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000F3AEC;
    v38[3] = &unk_1006500E0;
    v38[4] = self;
    v39 = dataSource;
    [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v38];
  }

  [(MailboxPickerCollectionHelper *)self updatedSelectedState:collectionView];
  if (isEditing)
  {
    [collectionView setContentOffset:0 animated:{v7, v9}];
  }

  else
  {
    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:0];
  }
}

- (void)reloadFavorites
{
  model = [(MailboxPickerCollectionHelper *)self model];
  sections = [model sections];
  firstObject = [sections firstObject];

  if (([firstObject isFavorites] & 1) == 0)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:360 description:@"First section is not favorites"];
  }

  v7 = firstObject;
  v12 = v7;
  sectionIdentifier = [v7 sectionIdentifier];
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:&v11 toSection:sectionIdentifier];

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  [(MailboxPickerCollectionHelper *)self updatedSelectedState:collectionView];
}

- (void)reloadDataForIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (pthread_main_np() != 1)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:370 description:@"Current thread must be main"];
  }

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (([collectionView mf_isIndexPathValid:{*(*(&v15 + 1) + 8 * i), v15}] & 1) == 0)
        {
          logClient = [(MailboxPickerCollectionHelper *)self logClient];
          if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths skipped because the data is out of sync with UI", buf, 2u);
          }

          goto LABEL_15;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if ([v7 count])
  {
    logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, logClient2, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths %@", buf, 0xCu);
    }

    [(MailboxPickerCollectionHelper *)self _reloadDataForCellsAtIndexPaths:v7];
    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:0];
  }

  else
  {
    logClient3 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, logClient3, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths reloadingCollectionViewData indexPaths:%@", buf, 0xCu);
    }

    [(MailboxPickerCollectionHelper *)self reloadDataSource];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)animated forceReload:(BOOL)reload update:(id)update
{
  reloadCopy = reload;
  animatedCopy = animated;
  updateCopy = update;
  if (pthread_main_np() == 1)
  {
    if (reloadCopy)
    {
LABEL_3:
      snapshot = objc_alloc_init(NSDiffableDataSourceSnapshot);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:395 description:@"Current thread must be main"];

    if (reloadCopy)
    {
      goto LABEL_3;
    }
  }

  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  snapshot = [dataSource snapshot];

LABEL_6:
  if (updateCopy[2](updateCopy, snapshot))
  {
    logClient = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEBUG))
    {
      sub_1004884C8(snapshot, logClient);
    }

    dataSource2 = [(MailboxPickerCollectionHelper *)self dataSource];
    updateCompletion = [(MailboxPickerCollectionHelper *)self updateCompletion];
    [dataSource2 applySnapshot:snapshot animatingDifferences:animatedCopy completion:updateCompletion];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)animated forceReload:(BOOL)reload update:(id)update toSection:(id)section
{
  reloadCopy = reload;
  animatedCopy = animated;
  updateCopy = update;
  sectionCopy = section;
  if (pthread_main_np() != 1)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:409 description:@"Current thread must be main"];
  }

  sectionController = [(MailboxPickerCollectionHelper *)self sectionController];
  v14 = sectionController;
  if (reloadCopy)
  {
    v15 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  }

  else
  {
    v15 = [sectionController snapshotForSection:sectionCopy];
  }

  v16 = v15;
  if (updateCopy[2](updateCopy, v15))
  {
    logClient = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEBUG))
    {
      sub_100488540(v16, sectionCopy, logClient);
    }

    updateCompletion = [(MailboxPickerCollectionHelper *)self updateCompletion];
    [v14 applySnapshot:v16 toSection:sectionCopy animatingDifferences:animatedCopy completion:updateCompletion];
  }
}

- (BOOL)_updateSnapshot:(id)snapshot forSection:(id)section
{
  snapshotCopy = snapshot;
  sectionCopy = section;
  items = [sectionCopy items];
  v56 = [items ef_map:&stru_1006501F0];
  if ([sectionCopy isFavorites])
  {
    [sectionCopy prepareItemsForView];
  }

  if ([sectionCopy isFavorites])
  {
    collection = [sectionCopy collection];
    isEditing = [collection isEditing];

    if (isEditing)
    {
      v8 = [v56 arrayByAddingObject:@"kAddButtonItemIdentifier"];

      v56 = v8;
    }
  }

  v58 = [NSOrderedSet orderedSetWithArray:v56];
  v9 = snapshotCopy;
  items2 = [snapshotCopy items];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000F4D64;
  v71[3] = &unk_10064E820;
  v57 = v9;
  v72 = v57;
  v52 = [items2 ef_filter:v71];

  v11 = [NSOrderedSet orderedSetWithArray:v52];
  v53 = [v58 differenceFromOrderedSet:v11];

  v50 = [(MailboxPickerCollectionHelper *)self _applyRemovalsInSnapshot:v57 differences:v53];
  v46 = [(MailboxPickerCollectionHelper *)self _applyInsertionsInSnapshot:v57 differences:v53 collection:v58];
  v51 = (v50 | v46) != 0;
  accountFavoriteItem = [sectionCopy accountFavoriteItem];
  v54 = accountFavoriteItem;
  isAccounts = [sectionCopy isAccounts];
  if (accountFavoriteItem)
  {
    v14 = isAccounts;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    itemID = [accountFavoriteItem itemID];
    subItems = [accountFavoriteItem subItems];
    v47 = [subItems ef_filter:&stru_100650210];

    v16 = +[NSMutableDictionary dictionary];
    v60 = +[NSMutableDictionary dictionary];
    [v60 setObject:v47 forKeyedSubscript:itemID];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v17 = v47;
    v18 = [v17 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v18)
    {
      v19 = *v68;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v67 + 1) + 8 * i);
          itemUUID = [v21 itemUUID];
          [v16 setObject:v21 forKeyedSubscript:itemUUID];
        }

        v18 = [v17 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v18);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    subItems2 = [v54 subItems];
    v24 = [subItems2 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v24)
    {
      v25 = *v64;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v64 != v25)
          {
            objc_enumerationMutation(subItems2);
          }

          v27 = *(*(&v63 + 1) + 8 * j);
          itemUUID2 = [v27 itemUUID];
          v29 = [v16 objectForKeyedSubscript:itemUUID2];

          if (!v29)
          {
            representingMailbox = [v27 representingMailbox];
            parent = [representingMailbox parent];
            uniqueId = [parent uniqueId];

            v33 = [v60 objectForKeyedSubscript:uniqueId];
            v34 = [v33 mutableCopy];

            if (!v34)
            {
              v34 = +[NSMutableArray array];
            }

            [v34 addObject:v27];
            [v60 setObject:v34 forKeyedSubscript:uniqueId];
            itemUUID3 = [v27 itemUUID];
            [v16 setObject:v27 forKeyedSubscript:itemUUID3];
          }
        }

        v24 = [subItems2 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v24);
    }

    if ([v60 count])
    {
      sub_1000F4E0C(self, v54, itemID, v57, v60);
      v51 = 1;
    }

    collection2 = [sectionCopy collection];
    expandedItems = [collection2 expandedItems];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000F504C;
    v61[3] = &unk_10064EC80;
    v38 = v57;
    v62 = v38;
    v39 = [expandedItems ef_filter:v61];
    v40 = [v39 ef_compactMap:&stru_100650250];

    if ([v54 isExpanded])
    {
      v41 = [v40 arrayByAddingObject:itemID];
    }

    else
    {
      v41 = v40;
    }

    v42 = v41;
    if ([v41 count])
    {
      [v38 expandItems:v42];
      v51 = 1;
    }
  }

  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    sectionIdentifier = [sectionCopy sectionIdentifier];
    *buf = 138412802;
    v74 = sectionIdentifier;
    v75 = 2048;
    v76 = v46;
    v77 = 2048;
    v78 = v50;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites %@ - Added %ld, removed %ld favorite items", buf, 0x20u);
  }

  return v51;
}

- (int64_t)_applyInsertionsInSnapshot:(id)snapshot differences:(id)differences collection:(id)collection
{
  snapshotCopy = snapshot;
  [differences mf_groupedInsertionsForCollection:collection];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v8 = v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if ([v12 type] == 2)
        {
          insertions = [v12 insertions];
          associatedObject = [v12 associatedObject];
          [snapshotCopy insertItems:insertions beforeItem:associatedObject];
LABEL_10:

          goto LABEL_12;
        }

        if ([v12 type] == 1)
        {
          insertions = [v12 insertions];
          associatedObject = [v12 associatedObject];
          [snapshotCopy insertItems:insertions afterItem:associatedObject];
          goto LABEL_10;
        }

        insertions = [v12 insertions];
        [snapshotCopy appendItems:insertions];
LABEL_12:
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v8 count];
  return v15;
}

- (int64_t)_applyRemovalsInSnapshot:(id)snapshot differences:(id)differences
{
  snapshotCopy = snapshot;
  removals = [differences removals];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F5470;
  v11[3] = &unk_100650278;
  v7 = snapshotCopy;
  v12 = v7;
  v8 = [removals ef_compactMap:v11];

  [v7 deleteItems:v8];
  v9 = [v8 count];

  return v9;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(MailboxPickerCollectionHelper *)self isPerformingMultiSelect]&& ![(MailboxPickerCollectionHelper *)self canBeginMultiSelectAtIndexPath:pathCopy])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MailboxPickerCollectionHelper *)self isCellSelectable:viewCopy atIndexPath:pathCopy];
  }

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = +[EFDevice currentDevice];
  isInternal = [v8 isInternal];

  if (isInternal)
  {
    logClient2 = [viewCopy cellForItemAtIndexPath:pathCopy];
    logClient = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [pathCopy ef_publicDescription];
      title = [logClient2 title];
      v14 = [EFPrivacy partiallyRedactedStringForString:title];
      v23 = 138543618;
      v24 = ef_publicDescription;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "Did select mailbox at indexPath:%{public}@ with cell title:%{public}@", &v23, 0x16u);
    }
  }

  else
  {
    logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient2, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription2 = [pathCopy ef_publicDescription];
      v23 = 138543362;
      v24 = ef_publicDescription2;
      _os_log_impl(&_mh_execute_header, logClient2, OS_LOG_TYPE_DEFAULT, "Did select mailbox at indexPath:%{public}@", &v23, 0xCu);
    }
  }

  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:pathCopy])
  {
    delegate = [(MailboxPickerCollectionHelper *)self delegate];
    v17 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [delegate mailboxCollectionHelperWantsToShowAddFavoritesController:self sourceView:v17];

    [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  }

  else
  {
    v18 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:pathCopy];
    model = [(MailboxPickerCollectionHelper *)self model];
    v20 = [model sectionForIndexPath:pathCopy];

    collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
    isEditing = [collectionView isEditing];

    if (isEditing)
    {
      if ([v20 isFavorites])
      {
        [v18 setSelected:1 fromUI:1];
        [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:viewCopy];
      }

      else if ([v20 isAccounts])
      {
        [v18 wasSelected:self indexPath:pathCopy accessoryTapped:0 animated:1];
        [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
      }
    }

    else
    {
      sub_1000F5934(self, v18, v20);
      [v18 wasSelected:self indexPath:pathCopy accessoryTapped:0 animated:1];
    }
  }
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  if (![collectionView isEditing])
  {

    goto LABEL_10;
  }

  section = [pathCopy section];

  if (section)
  {
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  v10 = [viewCopy numberOfItemsInSection:0];
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = (v10 - 1);
    do
    {
      if (v11 != [pathCopy item])
      {
        v13 = [NSIndexPath indexPathForItem:v11 inSection:0];
        v14 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v13];

        LOBYTE(v13) = [v14 isSelected];
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    while (v12 != ++v11);
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:pathCopy];
    [v9 setSelected:0 fromUI:1];
    [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:viewCopy];
  }
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  v5 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:path];
  isExpandable = [v5 isExpandable];

  return isExpandable;
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  viewCopy = view;
  pinnedItemIdentifier = [(MailboxPickerCollectionHelper *)self pinnedItemIdentifier];

  if (pinnedItemIdentifier)
  {
    dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
    pinnedItemIdentifier2 = [(MailboxPickerCollectionHelper *)self pinnedItemIdentifier];
    v11 = [dataSource indexPathForItemIdentifier:pinnedItemIdentifier2];

    if (v11)
    {
      v12 = [viewCopy layoutAttributesForItemAtIndexPath:v11];
      v13 = v12;
      if (v12)
      {
        [v12 frame];
        MinY = CGRectGetMinY(v19);
        [(MailboxPickerCollectionHelper *)self pinnedItemOffset];
        y = MinY + v15;

        x = 0.0;
      }
    }
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)collectionView:(id)view selectionFollowsFocusForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:pathCopy];
    if ([v9 sourceType] == 1)
    {
      v10 = +[VIPManager defaultInstance];
      allVIPs = [v10 allVIPs];
      v8 = [allVIPs count] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  pathCopy = path;
  proposedIndexPathCopy = proposedIndexPath;
  if (![(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:proposedIndexPathCopy])
  {
    section = [proposedIndexPathCopy section];
    if (section == [pathCopy section])
    {
      v12 = 0;
      v13 = 0;
      v11 = proposedIndexPathCopy;
      goto LABEL_17;
    }

    model = [(MailboxPickerCollectionHelper *)self model];
    sections = [model sections];

    v17 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    if ([v17 isAccounts])
    {
      v18 = [MailboxPickerCollectionHelperModel indexOfFirstAccountSection:sections];
      v19 = [MailboxPickerCollectionHelperModel indexOfLastAccountSection:sections];
      section2 = [proposedIndexPathCopy section];
      if (section2 <= ([pathCopy section] - 2))
      {
        v13 = 1;
      }

      else
      {
        section3 = [proposedIndexPathCopy section];
        v13 = section3 >= ([pathCopy section] + 2);
      }

      if ([proposedIndexPathCopy section] < v18 - 1)
      {
        v12 = 0;
LABEL_14:
        v11 = pathCopy;

        goto LABEL_15;
      }

      v12 = [proposedIndexPathCopy section] <= v19 + 1;
      if (!v13 || !v12)
      {
        goto LABEL_14;
      }

      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [proposedIndexPathCopy section]);

      v12 = 1;
    }

    else
    {
      v11 = pathCopy;

      v12 = 0;
      v13 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = pathCopy;
  v12 = 0;
  v13 = 0;
  sections = proposedIndexPathCopy;
LABEL_16:

LABEL_17:
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_INFO))
  {
    v23 = NSStringFromSelector(a2);
    v25 = 138413570;
    v26 = v23;
    v27 = 2112;
    v28 = pathCopy;
    v29 = 2112;
    v30 = proposedIndexPathCopy;
    v31 = 2112;
    v32 = v11;
    v33 = 1024;
    v34 = v13;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_INFO, "#Favorites %@  - \torgPath:%@ \tpropPath:%@, \tdestPath:%@ invalR:%d accR:%d", &v25, 0x36u);
  }

  return v11;
}

- (id)favoriteItemForItemID:(id)d
{
  dCopy = d;
  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:dCopy];

  model = [(MailboxPickerCollectionHelper *)self model];
  sections = [model sections];
  v9 = [sections objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [(MailboxPickerCollectionHelper *)self favoriteItemForItemID:dCopy inSection:v9];

  return v10;
}

- (id)favoriteItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[MailboxPickerCollectionHelper sectionTypeForIndex:](self, "sectionTypeForIndex:", [pathCopy section]))
  {
    dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
    model = [dataSource itemIdentifierForIndexPath:pathCopy];

    [(MailboxPickerCollectionHelper *)self favoriteItemForItemID:model];
  }

  else
  {
    model = [(MailboxPickerCollectionHelper *)self model];
    [model favoriteItemAtIndexPath:pathCopy];
  }
  v7 = ;

  return v7;
}

- (id)favoriteItemForItemID:(id)d inSection:(id)section
{
  dCopy = d;
  sectionCopy = section;
  model = [(MailboxPickerCollectionHelper *)self model];
  v9 = [model favoriteItemForItemID:dCopy inSection:sectionCopy];

  return v9;
}

- (id)indexPathForItem:(id)item
{
  itemCopy = item;
  model = [(MailboxPickerCollectionHelper *)self model];
  favoritesSection = [model favoritesSection];
  items = [favoritesSection items];
  v8 = [items containsObject:itemCopy];

  if (v8)
  {
    v9 = [model indexPathForItem:itemCopy];
  }

  else
  {
    dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
    itemID = [itemCopy itemID];
    v9 = [dataSource indexPathForItemIdentifier:itemID];
  }

  return v9;
}

- (id)_nextVisibleFavoriteItemInDirection:(int64_t)direction fromItem:(id)item
{
  itemCopy = item;
  v7 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
  visibleMailboxCollections = [favoritesManager visibleMailboxCollections];

  v10 = [visibleMailboxCollections countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(visibleMailboxCollections);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 isMailboxesCollection])
        {
          [v13 selectedItems];
        }

        else
        {
          [v13 itemsIncludingSubItems];
        }
        v14 = ;
        [v7 addObjectsFromArray:v14];
      }

      v10 = [visibleMailboxCollections countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v15 = [v7 indexOfObject:itemCopy];
  v16 = 0;
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = -1;
  }

  else
  {
    v17 = v15;
  }

  do
  {
    v17 += direction;
    if (v17 < 0)
    {
      v17 = [v7 count] - 1;
    }

    else if (v17 >= [v7 count])
    {
      v17 = 0;
    }

    v18 = [v7 objectAtIndexedSubscript:v17];

    v16 = v18;
    if ([v18 isSelectable])
    {
      dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
      itemID = [v16 itemID];
      v21 = [dataSource indexPathForItemIdentifier:itemID];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v16 isEqual:itemCopy];
    if (v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }
  }

  while (v23 != 1);

  return v16;
}

- (id)favoriteItemBeforeItem:(id)item
{
  v3 = [(MailboxPickerCollectionHelper *)self _nextVisibleFavoriteItemInDirection:-1 fromItem:item];

  return v3;
}

- (id)favoriteItemAfterItem:(id)item
{
  v3 = [(MailboxPickerCollectionHelper *)self _nextVisibleFavoriteItemInDirection:1 fromItem:item];

  return v3;
}

- (id)snapshotFromFavoriteItems:(id)items
{
  itemsCopy = items;
  v5 = [itemsCopy ef_compactMap:&stru_1006502C0];
  v6 = [NSOrderedSet orderedSetWithArray:v5];
  v7 = [v6 count];
  if (v7 != [itemsCopy count])
  {
    logClient = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 count];
      v13 = 134217984;
      v14 = v12 - [v6 count];
      _os_log_error_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_ERROR, "#Favorites Found %ld duplicated itemIDs. Those items will be skipped.", &v13, 0xCu);
    }
  }

  v9 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  array = [v6 array];
  [v9 appendItems:array];

  return v9;
}

- (void)_favoritesDidChange:(id)change
{
  changeCopy = change;
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:810 description:@"Current thread must be main"];
  }

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  window = [collectionView window];

  if (window)
  {
    favoritesDidChangedDebouncer = [(MailboxPickerCollectionHelper *)self favoritesDidChangedDebouncer];
    [favoritesDidChangedDebouncer debounceResult:changeCopy];
  }

  else
  {
    favoritesDidChangedDebouncer = [(MailboxPickerCollectionHelper *)self delegate];
    [favoritesDidChangedDebouncer mailboxCollectionHelperNeedsReloadOnAppearance:self];
  }
}

- (void)_favoritesFocusDidChange:(id)change
{
  changeCopy = change;
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites _favoritesFocusDidChange", buf, 2u);
  }

  v6 = changeCopy;
  v9 = v6;
  selfCopy = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (id)createMailboxesFromUids:(id)uids
{
  uidsCopy = uids;
  v4 = +[UIApplication sharedApplication];
  mailboxProvider = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7274;
  v9[3] = &unk_10064FEA8;
  v10 = mailboxProvider;
  v6 = mailboxProvider;
  v7 = [uidsCopy ef_compactMap:v9];

  return v7;
}

- (BOOL)isAddButtonAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  v6 = [dataSource indexPathForItemIdentifier:@"kAddButtonItemIdentifier"];

  if (v6)
  {
    v7 = [pathCopy isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCellSelectable:(id)selectable atIndexPath:(id)path
{
  selectableCopy = selectable;
  pathCopy = path;
  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:pathCopy])
  {
    isCellEnabled = 1;
  }

  else
  {
    v9 = [selectableCopy cellForItemAtIndexPath:pathCopy];
    isCellEnabled = [v9 isCellEnabled];
  }

  return isCellEnabled;
}

- (BOOL)canBeginMultiSelectAtIndexPath:(id)path
{
  pathCopy = path;
  model = [(MailboxPickerCollectionHelper *)self model];
  v6 = [model sectionForIndexPath:pathCopy];
  if ([v6 isFavorites])
  {
    v7 = ![(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:pathCopy];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)canReorderItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:pathCopy])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:pathCopy];
    model = [(MailboxPickerCollectionHelper *)self model];
    v8 = [model sectionForIndexPath:pathCopy];
    isAccounts = [v8 isAccounts];

    if (isAccounts)
    {
      if ([v6 type] == 1)
      {
        v5 = [v6 isExpanded] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = [v6 isMovable];
    }
  }

  return v5;
}

- (BOOL)isSplitViewCollapsed
{
  selfCopy = self;
  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  LOBYTE(selfCopy) = [delegate mailboxCollectionHelperSplitViewControllerIsCollapsed:selfCopy];

  return selfCopy;
}

- (void)updateCellForSourceType:(unint64_t)type
{
  if (pthread_main_np() != 1)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:907 description:@"Current thread must be main"];
  }

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  isEditing = [collectionView isEditing];

  if ((isEditing & 1) == 0)
  {
    v8 = [FavoriteItem itemForSharedMailboxWithType:type selected:0];
    v9 = [(MailboxPickerCollectionHelper *)self indexPathForItem:v8];
    if (v9)
    {
      logClient = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138543874;
        v16 = v12;
        v17 = 2048;
        typeCopy = type;
        v19 = 2114;
        v20 = v9;
        _os_log_debug_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEBUG, "%{public}@ %lu, indexPath: %{public}@", buf, 0x20u);
      }

      v14 = v9;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      [(MailboxPickerCollectionHelper *)self reloadDataForIndexPaths:v11];
    }
  }
}

- (void)updateCheckmarkColor:(id)color
{
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
    mailboxesCollection = [favoritesManager mailboxesCollection];
    visibleItems = [mailboxesCollection visibleItems];

    if ([visibleItems ef_countObjectsPassingTest:&stru_100650308] == 1)
    {
      v9 = +[UIColor lightGrayColor];
    }

    else
    {
      v9 = 0;
    }

    multiSelectCheckmarkColor = [(MailboxPickerCollectionHelper *)self multiSelectCheckmarkColor];

    if (v9 != multiSelectCheckmarkColor)
    {
      [(MailboxPickerCollectionHelper *)self setMultiSelectCheckmarkColor:v9];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      collectionView2 = [(MailboxPickerCollectionHelper *)self collectionView];
      visibleCells = [collectionView2 visibleCells];

      v13 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(visibleCells);
            }

            v16 = *(*(&v17 + 1) + 8 * i);
            [v16 setMultiselectCheckmarkColor:v9];
            [v16 setNeedsUpdateConfiguration];
          }

          v13 = [visibleCells countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)updateMailboxSelectionAnimated:(BOOL)animated scrollToSelected:(BOOL)selected
{
  selectedCopy = selected;
  animatedCopy = animated;
  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
  lastSelectedItem = [favoritesManager lastSelectedItem];

  if (!lastSelectedItem)
  {
    v7 = [delegate displayedAccountsForMailboxCollectionHelper:self];
    v8 = [v7 count];

    if (v8 < 2)
    {
      scene = [(MailboxPickerCollectionHelper *)self scene];
      selectedAccounts = [scene selectedAccounts];
      anyObject = [selectedAccounts anyObject];

      lastSelectedItem = [FavoriteItem itemForInboxWithAccount:anyObject selected:1];
    }

    else
    {
      lastSelectedItem = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:1];
    }

    favoritesManager2 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [favoritesManager2 setLastSelectedItem:lastSelectedItem];
  }

  dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
  snapshot = [dataSource snapshot];
  numberOfItems = [snapshot numberOfItems];

  if (numberOfItems)
  {
    collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    if ([indexPathsForSelectedItems count] == 1 && (objc_msgSend(indexPathsForSelectedItems, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), -[MailboxPickerCollectionHelper favoriteItemAtIndexPath:](self, "favoriteItemAtIndexPath:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v18, v18 == lastSelectedItem))
    {
      v19 = 0;
      v20 = 1;
    }

    else
    {
      v19 = [(MailboxPickerCollectionHelper *)self indexPathForItem:lastSelectedItem];
      v20 = 0;
    }

    if (((v20 | _os_feature_enabled_impl() ^ 1) & 1) == 0 && !v19)
    {
      v21 = objc_opt_new();
      representingMailbox = [lastSelectedItem representingMailbox];
      parent = [representingMailbox parent];

      if (parent)
      {
        do
        {
          favoritesManager3 = [(MailboxPickerCollectionHelper *)self favoritesManager];
          displayName = [parent displayName];
          v26 = [favoritesManager3 itemsMatchingName:displayName];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v27 = v26;
          v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v28)
          {
            v29 = *v50;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v50 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v49 + 1) + 8 * i);
                if ([v31 isExpandable] && (objc_msgSend(v31, "isExpanded") & 1) == 0)
                {
                  itemID = [v31 itemID];
                  [v21 addObject:itemID];
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v28);
          }

          v23Parent = [parent parent];

          parent = v23Parent;
        }

        while (v23Parent);
      }

      dataSource2 = [(MailboxPickerCollectionHelper *)self dataSource];
      lastObject = [v21 lastObject];
      if (!lastObject || ([dataSource2 snapshot], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "sectionIdentifierForSectionContainingItemIdentifier:", lastObject), v37 = objc_claimAutoreleasedReturnValue(), v36, !v37) || (v47[0] = _NSConcreteStackBlock, v47[1] = 3221225472, v47[2] = sub_1000F82A8, v47[3] = &unk_100650180, v48 = v21, -[MailboxPickerCollectionHelper _performDataSourceUpdateAnimated:forceReload:update:toSection:](self, "_performDataSourceUpdateAnimated:forceReload:update:toSection:", 1, 0, v47, v37), -[MailboxPickerCollectionHelper indexPathForItem:](self, "indexPathForItem:", lastSelectedItem), v19 = objc_claimAutoreleasedReturnValue(), v48, v37, !v19))
      {
        firstObject = [indexPathsForSelectedItems firstObject];
        if (firstObject)
        {
          [collectionView deselectItemAtIndexPath:firstObject animated:animatedCopy];
        }

        v19 = 0;
      }
    }

    if (!v19 || ![delegate mailboxCollectionHelperShouldUpdateMailboxSelection:self])
    {
      goto LABEL_48;
    }

    if ([collectionView mf_isIndexPathValid:v19])
    {
      if (selectedCopy)
      {
        [collectionView scrollToItemAtIndexPath:v19 atScrollPosition:0 animated:animatedCopy];
      }

      if ([indexPathsForSelectedItems containsObject:v19])
      {
        goto LABEL_48;
      }

      [collectionView selectItemAtIndexPath:v19 animated:0 scrollPosition:0];
      logClient = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription = [v19 ef_publicDescription];
        *buf = 138543618;
        v54 = ef_publicDescription;
        v55 = 2114;
        v56 = collectionView;
        _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "updateMailboxSelectionAnimated did select item at indexPath:%{public}@ for collectionView:%{public}@", buf, 0x16u);
      }

      if (![(MailboxPickerCollectionHelper *)self isSplitViewCollapsed])
      {
        goto LABEL_48;
      }

      [collectionView deselectItemAtIndexPath:v19 animated:animatedCopy];
      logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(logClient2, OS_LOG_TYPE_DEFAULT))
      {
        ef_publicDescription2 = [v19 ef_publicDescription];
        *buf = 138543618;
        v54 = ef_publicDescription2;
        v55 = 2114;
        v56 = collectionView;
        _os_log_impl(&_mh_execute_header, logClient2, OS_LOG_TYPE_DEFAULT, "updateMailboxSelectionAnimated did deselect item at indexPath:%{public}@ for collectionView:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(logClient2, OS_LOG_TYPE_ERROR))
      {
        sub_1004885C8(v19, collectionView, logClient2);
      }
    }

LABEL_48:
    goto LABEL_49;
  }

  collectionView = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(collectionView, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, collectionView, OS_LOG_TYPE_DEFAULT, "Skip selection as data source is empty", buf, 2u);
  }

LABEL_49:
}

- (void)updatedSelectedState:(id)state
{
  stateCopy = state;
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  isEditing = [collectionView isEditing];

  if (isEditing)
  {
    indexPathsForSelectedItems = [stateCopy indexPathsForSelectedItems];
    for (i = 0; [stateCopy numberOfItemsInSection:0] - 1 > i; ++i)
    {
      v8 = [NSIndexPath indexPathForItem:i inSection:0];
      v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v8];
      if ([v9 isSelected])
      {
        [stateCopy selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
      }

      else if ([indexPathsForSelectedItems containsObject:v8])
      {
        [stateCopy deselectItemAtIndexPath:v8 animated:0];
      }
    }

    [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:stateCopy];
  }
}

- (void)_configureCell:(id)cell forItemID:(id)d indexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  model = [(MailboxPickerCollectionHelper *)self model];
  sections = [model sections];
  v10 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  v11 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:pathCopy];
  [v11 configureOutlineCell:cellCopy];
  representingMailbox = [v11 representingMailbox];
  if ([v10 isAccounts])
  {
    if ([v11 type] == 1)
    {
      [(MailboxPickerCollectionHelper *)self _configureAccountsCell:cellCopy forItem:v11];
    }

    else
    {
      [(MailboxPickerCollectionHelper *)self _configureMailboxCell:cellCopy mailbox:representingMailbox indexPath:pathCopy];
    }
  }

  else
  {
    if ([v10 isFavorites])
    {
      if ([representingMailbox type] != 7)
      {
        collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
        isEditing = [collectionView isEditing];

        if (isEditing)
        {
          delegate = [(MailboxPickerCollectionHelper *)self delegate];
          v16 = [delegate mailboxCollectionHelper:self shouldDisableForEditingCellForMailbox:representingMailbox];

          [cellCopy setDisabledForEditing:v16];
        }
      }
    }

    if (!representingMailbox && [v11 type] == 2)
    {
      displayName = [v11 displayName];
      [cellCopy setTitle:displayName];
    }

    currentFocus = [(MailboxPickerCollectionHelper *)self currentFocus];
    if (representingMailbox && ([v11 type] == 2 || objc_msgSend(v11, "type") == 3))
    {
      if (currentFocus)
      {
        account = [representingMailbox account];
        identifier = [account identifier];
        v21 = [currentFocus isFocusedIdentifier:identifier];

        if ((v21 & 1) == 0)
        {
          [cellCopy setShowFocusIcon:1];
          [cellCopy setShouldShowBadgeCountIfNecessary:0];
        }
      }
    }

    [(MailboxPickerCollectionHelper *)self _configureFlattenedCell:cellCopy forItem:v11];
  }

  [cellCopy setNeedsUpdateConfiguration];
}

- (void)_configureAddMailboxCell:(id)cell
{
  cellCopy = cell;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADD_MAILBOX_BUTTON" value:&stru_100662A88 table:@"Main"];
  [cellCopy setTitle:v4];

  [cellCopy setUseTintColor:1];
  v5 = +[UIColor clearColor];
  v6 = [UIImage mf_imageWithColor:v5 size:1.0, 1.0];
  [cellCopy setIcon:v6];

  [cellCopy setBadgeCount:0];
  [cellCopy setNeedsUpdateConfiguration];
}

- (void)_configureMailboxCell:(id)cell mailbox:(id)mailbox indexPath:(id)path
{
  cellCopy = cell;
  mailboxCopy = mailbox;
  [cellCopy setSubtitle:0];
  [cellCopy setDisabledForEditing:{objc_msgSend(mailboxCopy, "mv_isEditable") ^ 1}];
  children = [mailboxCopy children];
  v8 = [children count] != 0;

  [cellCopy setDisclosureType:2 * v8];
}

- (void)_configureFlattenedCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  [cellCopy setFlattenHierarchy:1];
  [cellCopy setHideBadgeCountForEditing:1];
  [cellCopy setCanMoveItem:{objc_msgSend(itemCopy, "isMovable")}];
  [cellCopy setShowsSelectionCheckmarkForEditing:1];
  [cellCopy setDisclosureType:0];
  if ([itemCopy wantsDisclosureButton])
  {
    [cellCopy setShowsDetailDisclosureButton:1];
    objc_initWeak(&location, self);
    objc_initWeak(&from, cellCopy);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F8AFC;
    v8[3] = &unk_100650330;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    [cellCopy addDetailDisclosureActionHandler:v8];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [cellCopy setShowsDetailDisclosureButton:0];
  }
}

- (void)_configureAccountsCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  itemCopy = item;
  currentFocus = [(MailboxPickerCollectionHelper *)self currentFocus];
  if (currentFocus)
  {
    account = [itemCopy account];
    identifier = [account identifier];
    v10 = [currentFocus isFocusedIdentifier:identifier];

    if ((v10 & 1) == 0)
    {
      [cellCopy setShowFocusIcon:1];
    }
  }

  if ([itemCopy isExpandable])
  {
    [cellCopy setExpandable:1];
    [cellCopy setExpanded:{objc_msgSend(itemCopy, "isExpanded")}];
    [cellCopy setHideBadgeCountForEditing:1];
    [cellCopy setDisclosureType:1];
    collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
    backgroundColor = [collectionView backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor];

    [cellCopy setCanMoveItem:{objc_msgSend(itemCopy, "isMovable")}];
  }

  else
  {
    [(MailboxPickerCollectionHelper *)self _configureFlattenedCell:cellCopy forItem:itemCopy];
  }
}

- (void)_detailsDisclosureButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  [delegate mailboxCollectionHelperDidTapDetailsDisclosure:self sender:tappedCopy];
}

- (void)_reloadDataForCellsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v6 = [NSSet setWithArray:indexPathsForVisibleItems];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = pathsCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v6 containsObject:v11])
        {
          collectionView2 = [(MailboxPickerCollectionHelper *)self collectionView];
          v13 = [collectionView2 cellForItemAtIndexPath:v11];

          dataSource = [(MailboxPickerCollectionHelper *)self dataSource];
          v15 = [dataSource itemIdentifierForIndexPath:v11];

          [(MailboxPickerCollectionHelper *)self _configureCell:v13 forItemID:v15 indexPath:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
  mailboxesCollection = [favoritesManager mailboxesCollection];

  favoritesManager2 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  accountsCollection = [favoritesManager2 accountsCollection];

  collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
  [mailboxesCollection setEditing:editingCopy];
  visibleItems = [mailboxesCollection visibleItems];
  mui_sortedIndexPathsForVisibleItems = [collectionView mui_sortedIndexPathsForVisibleItems];
  [collectionView visibleBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000F9474;
  v36[3] = &unk_100650358;
  v36[4] = self;
  v20 = accountsCollection;
  v37 = v20;
  v21 = visibleItems;
  v38 = v21;
  v22 = collectionView;
  v39 = v22;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  [mui_sortedIndexPathsForVisibleItems enumerateObjectsUsingBlock:v36];
  [v20 setEditing:editingCopy];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F95F0;
  v33[3] = &unk_100650380;
  v23 = v21;
  v34 = v23;
  v35 = editingCopy;
  uniqueId = [mailboxesCollection uniqueId];
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:animatedCopy forceReload:1 update:v33 toSection:uniqueId];

  [v22 setEditing:editingCopy];
  if (editingCopy)
  {
    v25 = +[UIColor mailInteractiveColor];
    [(MailboxPickerCollectionHelper *)self setMultiSelectCheckmarkColor:v25];

    [(MailboxPickerCollectionHelper *)self updatedSelectedState:v22];
  }

  else
  {
    v45 = v23;
    v26 = [NSArray arrayWithObjects:&v45 count:1];
    favoritesManager3 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    v44 = mailboxesCollection;
    v28 = [NSArray arrayWithObjects:&v44 count:1];
    [favoritesManager3 updateCollections:v28 withItems:v26];

    model = [(MailboxPickerCollectionHelper *)self model];
    favoritesSection = [model favoritesSection];
    [favoritesSection prepareItemsForView];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:animatedCopy scrollToSelected:0];
  }

  [(MailboxPickerCollectionHelper *)self setPinnedItemIdentifier:0];
  [(MailboxPickerCollectionHelper *)self setPinnedItemOffset:0.0];
}

- (void)selectAccount:(id)account item:(id)item indexPath:(id)path animated:(BOOL)animated
{
  accountCopy = account;
  itemCopy = item;
  pathCopy = path;
  if (itemCopy && [itemCopy isExpandable])
  {
    [itemCopy setExpanded:{objc_msgSend(itemCopy, "isExpanded") ^ 1}];
    favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [favoritesManager refreshCollectionForItemExpansion:itemCopy];

    collectionView = [(MailboxPickerCollectionHelper *)self collectionView];
    [collectionView deselectItemAtIndexPath:pathCopy animated:0];

    logClient = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
    {
      favoritesManager2 = [(MailboxPickerCollectionHelper *)self favoritesManager];
      accountsCollection = [favoritesManager2 accountsCollection];
      uniqueId = [accountsCollection uniqueId];
      itemID = [itemCopy itemID];
      isExpanded = [itemCopy isExpanded];
      subItems = [itemCopy subItems];
      *buf = 138413058;
      v24 = uniqueId;
      v25 = 2112;
      v26 = itemID;
      v27 = 1024;
      v28 = isExpanded;
      v29 = 2048;
      v30 = [subItems count];
      _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites selectAccount section:%@ account:%@ expand:%{BOOL}d, subItems:%ld", buf, 0x26u);
    }
  }

  if (accountCopy)
  {
    scene = [(MailboxPickerCollectionHelper *)self scene];
    v21 = [NSSet setWithObject:accountCopy];
    [scene setSelectedAccounts:v21];
  }
}

- (void)selectCombinedMailboxWithType:(int64_t)type item:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInteger:type];
    itemID = [itemCopy itemID];
    *buf = 138412802;
    v25 = v10;
    v26 = 2114;
    v27 = itemID;
    v28 = 1024;
    v29 = animatedCopy;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites selectCombinedMailboxWith type:%@ item:%{public}@ animated:%{BOOL}d", buf, 0x1Cu);
  }

  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  v13 = [delegate displayedAccountsForMailboxCollectionHelper:self];
  scene = [(MailboxPickerCollectionHelper *)self scene];
  [scene setSelectedAccounts:v13];

  if (!itemCopy)
  {
    itemCopy = [FavoriteItem itemForUnifiedMailboxWithType:type selected:0];
  }

  favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
  lastSelectedItem = [favoritesManager lastSelectedItem];
  if (([lastSelectedItem isEqual:itemCopy] & 1) == 0)
  {

LABEL_9:
    smartMailbox = [itemCopy smartMailbox];
    v23 = smartMailbox;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    mailboxesForMessageList = self->_mailboxesForMessageList;
    self->_mailboxesForMessageList = v20;

    favoritesManager2 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [favoritesManager2 setLastSelectedItem:itemCopy];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:1];
    goto LABEL_10;
  }

  mailboxesForMessageList = [(MailboxPickerCollectionHelper *)self mailboxesForMessageList];
  v18 = mailboxesForMessageList == 0;

  if (v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  [delegate mailboxCollectionHelper:self wantsToPopToMailboxPicker:1 andPushMessageListViewControllerIfNecessaryAnimated:animatedCopy];
}

- (void)selectCombinedMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = mailboxCopy;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites selectCombinedMailbox %{public}@", &v11, 0xCu);
  }

  v6 = mailboxCopy;
  if ([v6 isEqual:MFCombinedMailboxAllInbox])
  {
    v7 = 7;
LABEL_15:

    [(MailboxPickerCollectionHelper *)self selectCombinedMailboxWithType:v7 item:0 animated:0];
    goto LABEL_16;
  }

  if ([v6 isEqual:MFCombinedMailboxAllDrafts])
  {
    v7 = 5;
    goto LABEL_15;
  }

  if ([v6 isEqual:MFCombinedMailboxAllSent])
  {
    v7 = 4;
    goto LABEL_15;
  }

  if ([v6 isEqual:MFCombinedMailboxAllArchive])
  {
    v7 = 102;
    goto LABEL_15;
  }

  if ([v6 isEqual:MFCombinedMailboxAllTrash])
  {
    v7 = 103;
    goto LABEL_15;
  }

  if ([v6 isEqual:MFCombinedMailboxAllJunk])
  {
    v7 = 101;
    goto LABEL_15;
  }

  v8 = v6;
  if ([v8 isEqual:MFCombinedMailboxFlagged])
  {
    v9 = 2;
  }

  else if ([v8 isEqual:MFCombinedMailboxUnread])
  {
    v9 = 3;
  }

  else if ([v8 isEqual:MFCombinedMailboxToday])
  {
    v9 = 7;
  }

  else if ([v8 isEqual:MFCombinedMailboxToCC])
  {
    v9 = 4;
  }

  else if ([v8 isEqual:MFCombinedMailboxAttachments])
  {
    v9 = 5;
  }

  else if ([v8 isEqual:MFCombinedMailboxThreadNotifications])
  {
    v9 = 6;
  }

  else if ([v8 isEqual:MFCombinedMailboxMutedThreads])
  {
    v9 = 8;
  }

  else
  {
    v9 = [v8 isEqual:MFCombinedMailboxVIP];
  }

  v10 = [FavoriteItem itemForSharedMailboxWithType:v9 selected:0];
  [(MailboxPickerCollectionHelper *)self selectCombinedInboxWithSourceType:v9 item:v10 animated:0];

LABEL_16:
}

- (void)selectCustomViewController:(id)controller item:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  itemCopy = item;
  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FA1B8;
  v12[3] = &unk_1006503A8;
  v12[4] = self;
  v11 = itemCopy;
  v13 = v11;
  [delegate mailboxCollectionHelper:self wantsToShowCustomViewController:controllerCopy animated:animatedCopy sourceViewBlock:v12];
}

- (void)selectMailbox:(id)mailbox item:(id)item andPopToMailboxController:(BOOL)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  mailboxCopy = mailbox;
  itemCopy = item;
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    name = [mailboxCopy name];
    ef_publicDescription = [mailboxCopy ef_publicDescription];
    itemID = [itemCopy itemID];
    *buf = 138413314;
    v34 = name;
    v35 = 2114;
    v36 = ef_publicDescription;
    v37 = 2114;
    v38 = itemID;
    v39 = 1024;
    v40 = controllerCopy;
    v41 = 1024;
    v42 = animatedCopy;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites selectMailbox mailbox:%@ %{public}@ item:%{public}@ popToMailboxController:%{BOOL}d animated:%{BOOL}d", buf, 0x2Cu);
  }

  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  if ([delegate mailboxCollectionHelperMailboxPickerIsEditing:self])
  {
    [delegate mailboxCollectionHelper:self wantsToPresentMailboxEditControllerForMailbox:mailboxCopy animated:animatedCopy];
  }

  else
  {
    if (!mailboxCopy)
    {
      v30 = +[NSAssertionHandler currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:1313 description:@"Unable to select a mailbox item without a valid mailbox to select"];
    }

    if ([mailboxCopy mailboxType] == 6)
    {
      +[MailAccount defaultMailAccountForDelivery];
    }

    else
    {
      [mailboxCopy representedAccount];
    }
    v18 = ;
    if (!v18)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:1322 description:@"Unable to select a mailbox item without a valid account for the mailbox selection"];
    }

    scene = [(MailboxPickerCollectionHelper *)self scene];
    v20 = [NSSet setWithObject:v18];
    [scene setSelectedAccounts:v20];

    v32 = mailboxCopy;
    v21 = [NSArray arrayWithObjects:&v32 count:1];
    v22 = [(MailboxPickerCollectionHelper *)self createMailboxesFromUids:v21];
    mailboxesForMessageList = self->_mailboxesForMessageList;
    self->_mailboxesForMessageList = v22;

    logClient2 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(logClient2, OS_LOG_TYPE_DEFAULT))
    {
      firstObject = [(NSArray *)self->_mailboxesForMessageList firstObject];
      ef_publicDescription2 = [firstObject ef_publicDescription];
      ef_publicDescription3 = [mailboxCopy ef_publicDescription];
      *buf = 138543618;
      v34 = ef_publicDescription2;
      v35 = 2114;
      v36 = ef_publicDescription3;
      _os_log_impl(&_mh_execute_header, logClient2, OS_LOG_TYPE_DEFAULT, "Created mailboxes %{public}@ from uids %{public}@", buf, 0x16u);
    }

    if (![(NSArray *)self->_mailboxesForMessageList count])
    {
      logClient3 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(logClient3, OS_LOG_TYPE_ERROR))
      {
        sub_100488650(logClient3);
      }
    }

    if (!itemCopy)
    {
      if ([mailboxCopy mailboxType] == 7)
      {
        [FavoriteItem itemForInboxWithAccount:v18 selected:0];
      }

      else
      {
        [FavoriteItem itemForMailbox:mailboxCopy selected:0];
      }
      itemCopy = ;
    }

    favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [favoritesManager setLastSelectedItem:itemCopy];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:1];
    [delegate mailboxCollectionHelper:self wantsToSelectMailbox:mailboxCopy account:v18 animated:animatedCopy];
  }
}

- (void)selectVIPMailboxWithItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  itemCopy = item;
  logClient = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(logClient, OS_LOG_TYPE_DEFAULT))
  {
    itemID = [itemCopy itemID];
    *buf = 138543618;
    v20 = itemID;
    v21 = 1024;
    v22 = animatedCopy;
    _os_log_impl(&_mh_execute_header, logClient, OS_LOG_TYPE_DEFAULT, "#Favorites selectVIPMailbox item:%{public}@ animated:%{BOOL}d", buf, 0x12u);
  }

  delegate = [(MailboxPickerCollectionHelper *)self delegate];
  v10 = [delegate displayedAccountsForMailboxCollectionHelper:self];
  scene = [(MailboxPickerCollectionHelper *)self scene];
  [scene setSelectedAccounts:v10];

  additionalPredicate = [itemCopy additionalPredicate];
  displayName = [itemCopy displayName];
  v14 = [EMSmartMailbox vipMailboxWithName:displayName additionalPredicate:additionalPredicate];

  v18 = v14;
  v15 = [NSArray arrayWithObjects:&v18 count:1];
  mailboxesForMessageList = self->_mailboxesForMessageList;
  self->_mailboxesForMessageList = v15;

  favoritesManager = [(MailboxPickerCollectionHelper *)self favoritesManager];
  [favoritesManager setLastSelectedItem:itemCopy];

  [delegate mailboxCollectionHelper:self wantsToPopToMailboxPicker:1 andPushMessageListViewControllerIfNecessaryAnimated:animatedCopy];
}

@end
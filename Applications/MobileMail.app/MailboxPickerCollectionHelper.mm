@interface MailboxPickerCollectionHelper
- (BOOL)_updateSnapshot:(id)a3 forSection:(id)a4;
- (BOOL)canBeginMultiSelectAtIndexPath:(id)a3;
- (BOOL)canReorderItemAtIndexPath:(id)a3;
- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)isAddButtonAtIndexPath:(id)a3;
- (BOOL)isCellSelectable:(id)a3 atIndexPath:(id)a4;
- (BOOL)isSplitViewCollapsed;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (MailboxPickerCollectionHelper)initWithCollectionView:(id)a3 favoritesManager:(id)a4 focusController:(id)a5 scene:(id)a6 logClient:(id)a7 updateCompletion:(id)a8;
- (MailboxPickerCollectionHelperDelegate)delegate;
- (id)_favoritesDidChangedBlock;
- (id)_nextVisibleFavoriteItemInDirection:(int64_t)a3 fromItem:(id)a4;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)createMailboxesFromUids:(id)a3;
- (id)favoriteItemAfterItem:(id)a3;
- (id)favoriteItemAtIndexPath:(id)a3;
- (id)favoriteItemBeforeItem:(id)a3;
- (id)favoriteItemForItemID:(id)a3;
- (id)favoriteItemForItemID:(id)a3 inSection:(id)a4;
- (id)indexPathForItem:(id)a3;
- (id)snapshotFromFavoriteItems:(id)a3;
- (int64_t)_applyInsertionsInSnapshot:(id)a3 differences:(id)a4 collection:(id)a5;
- (int64_t)_applyRemovalsInSnapshot:(id)a3 differences:(id)a4;
- (int64_t)sectionTypeForIndex:(int64_t)a3;
- (void)_configureAccountsCell:(id)a3 forItem:(id)a4;
- (void)_configureAddMailboxCell:(id)a3;
- (void)_configureCell:(id)a3 forItemID:(id)a4 indexPath:(id)a5;
- (void)_configureFlattenedCell:(id)a3 forItem:(id)a4;
- (void)_configureMailboxCell:(id)a3 mailbox:(id)a4 indexPath:(id)a5;
- (void)_detailsDisclosureButtonTapped:(id)a3;
- (void)_favoritesDidChange:(id)a3;
- (void)_favoritesFocusDidChange:(id)a3;
- (void)_performDataSourceUpdateAnimated:(BOOL)a3 forceReload:(BOOL)a4 update:(id)a5;
- (void)_performDataSourceUpdateAnimated:(BOOL)a3 forceReload:(BOOL)a4 update:(id)a5 toSection:(id)a6;
- (void)_reloadDataForCellsAtIndexPaths:(id)a3;
- (void)_setupDataSource;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)reloadDataForIndexPaths:(id)a3;
- (void)reloadDataSourceWithReason:(int64_t)a3;
- (void)reloadFavorites;
- (void)selectAccount:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)selectCombinedMailbox:(id)a3;
- (void)selectCombinedMailboxWithType:(int64_t)a3 item:(id)a4 animated:(BOOL)a5;
- (void)selectCustomViewController:(id)a3 item:(id)a4 animated:(BOOL)a5;
- (void)selectMailbox:(id)a3 item:(id)a4 andPopToMailboxController:(BOOL)a5 animated:(BOOL)a6;
- (void)selectVIPMailboxWithItem:(id)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)updateCellForSourceType:(unint64_t)a3;
- (void)updateCheckmarkColor:(id)a3;
- (void)updateMailboxSelectionAnimated:(BOOL)a3 scrollToSelected:(BOOL)a4;
- (void)updatedSelectedState:(id)a3;
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
  v12 = [(MailboxPickerCollectionHelper *)self dataSource];
  v13 = [v12 reorderingHandlers];
  [v13 setCanReorderItemHandler:v37];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000F1D00;
  v34[3] = &unk_100650010;
  objc_copyWeak(&v36, location);
  v35 = &stru_10064FFC0;
  v14 = [(MailboxPickerCollectionHelper *)self dataSource];
  v15 = [v14 reorderingHandlers];
  [v15 setWillReorderHandler:v34];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000F2118;
  v31[3] = &unk_100650010;
  objc_copyWeak(&v33, location);
  v32 = &stru_10064FFC0;
  v16 = [(MailboxPickerCollectionHelper *)self dataSource];
  v17 = [v16 reorderingHandlers];
  [v17 setDidReorderHandler:v31];

  v18 = [_UIDiffableDataSourceOutlineSectionController alloc];
  v19 = [(MailboxPickerCollectionHelper *)self dataSource];
  v20 = [v18 initWithDiffableDataSource:v19];
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
  v24 = [(MailboxPickerCollectionHelper *)self dataSource];
  [v24 setSectionSnapshotHandlers:v21];

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

- (MailboxPickerCollectionHelper)initWithCollectionView:(id)a3 favoritesManager:(id)a4 focusController:(id)a5 scene:(id)a6 logClient:(id)a7 updateCompletion:(id)a8
{
  v38 = a3;
  v15 = a4;
  v16 = a5;
  v37 = a6;
  v17 = a7;
  v18 = a8;
  v42.receiver = self;
  v42.super_class = MailboxPickerCollectionHelper;
  v19 = [(MailboxPickerCollectionHelper *)&v42 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_scene, a6);
    objc_storeStrong(&v20->_collectionView, a3);
    objc_storeStrong(&v20->_favoritesManager, a4);
    v21 = [EFDebouncer alloc];
    v22 = [EFScheduler mainThreadScheduler:v37];
    v23 = [(MailboxPickerCollectionHelper *)v20 _favoritesDidChangedBlock];
    v24 = [v21 initWithTimeInterval:v22 scheduler:0 startAfter:v23 block:0.2];
    favoritesDidChangedDebouncer = v20->_favoritesDidChangedDebouncer;
    v20->_favoritesDidChangedDebouncer = v24;

    objc_storeStrong(&v20->_logClient, a7);
    v26 = objc_retainBlock(v18);
    updateCompletion = v20->_updateCompletion;
    v20->_updateCompletion = v26;

    v28 = +[UIColor mailInteractiveColor];
    multiSelectCheckmarkColor = v20->_multiSelectCheckmarkColor;
    v20->_multiSelectCheckmarkColor = v28;

    v30 = [[MailboxPickerCollectionHelperModel alloc] initWithFavoritesManager:v15];
    model = v20->_model;
    v20->_model = v30;

    objc_initWeak(&location, v20);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000F1740;
    v39[3] = &unk_10064FF30;
    objc_copyWeak(&v40, &location);
    [v16 getCurrentFocus:v39];
    v32 = +[NSNotificationCenter defaultCenter];
    v33 = [(MailboxPickerCollectionHelper *)v20 favoritesManager];
    [v32 addObserver:v20 selector:"_favoritesDidChange:" name:@"FavoritesManagerFavoritesDidChangeNotification" object:v33];

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

  v4 = [(MailboxPickerCollectionHelper *)self favoritesDidChangedDebouncer];
  [v4 cancel];

  v5.receiver = self;
  v5.super_class = MailboxPickerCollectionHelper;
  [(MailboxPickerCollectionHelper *)&v5 dealloc];
}

- (int64_t)sectionTypeForIndex:(int64_t)a3
{
  v4 = [(MailboxPickerCollectionHelper *)self model];
  v5 = [v4 sections];

  if ([v5 count] <= a3)
  {
    v7 = 3;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
    v7 = [v6 type];
  }

  return v7;
}

- (void)reloadDataSourceWithReason:(int64_t)a3
{
  if (pthread_main_np() != 1)
  {
    v28 = +[NSAssertionHandler currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:238 description:@"Current thread must be main"];
  }

  v5 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Favorites Reloading data source...", buf, 2u);
  }

  v35 = [(MailboxPickerCollectionHelper *)self collectionView];
  [v35 contentOffset];
  v7 = v6;
  v9 = v8;
  v31 = [v35 isEditing];
  v10 = [(MailboxPickerCollectionHelper *)self model];
  [v10 invalidateSections];

  v11 = [(MailboxPickerCollectionHelper *)self model];
  v34 = [v11 sections];

  v12 = [(MailboxPickerCollectionHelper *)self currentFocus];
  v33 = sub_1000F2C2C(self, v12);

  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000F2F28;
  v56[3] = &unk_1006500E0;
  v13 = v34;
  v57 = v13;
  v58 = self;
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
        v51 = self;
        v19 = [v18 sectionIdentifier];
        [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v48 toSection:v19];
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
  v20 = [(MailboxPickerCollectionHelper *)self dataSource];
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
        v25 = [v20 snapshot];
        v26 = [v25 sectionIdentifierForSectionContainingItemIdentifier:v24];

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
          v27 = [(MailboxPickerCollectionHelper *)self logClient];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v24;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Favorites Did not find section identifier to collapse for itemID: %{public}@", buf, 0xCu);
          }
        }
      }

      v21 = [obj countByEnumeratingWithState:&v41 objects:v61 count:16];
    }

    while (v21);
  }

  if (a3 == 1)
  {
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000F3AEC;
    v38[3] = &unk_1006500E0;
    v38[4] = self;
    v39 = v20;
    [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:v38];
  }

  [(MailboxPickerCollectionHelper *)self updatedSelectedState:v35];
  if (v31)
  {
    [v35 setContentOffset:0 animated:{v7, v9}];
  }

  else
  {
    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:0];
  }
}

- (void)reloadFavorites
{
  v4 = [(MailboxPickerCollectionHelper *)self model];
  v5 = [v4 sections];
  v6 = [v5 firstObject];

  if (([v6 isFavorites] & 1) == 0)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:360 description:@"First section is not favorites"];
  }

  v7 = v6;
  v12 = v7;
  v8 = [v7 sectionIdentifier];
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:0 forceReload:0 update:&v11 toSection:v8];

  v9 = [(MailboxPickerCollectionHelper *)self collectionView];
  [(MailboxPickerCollectionHelper *)self updatedSelectedState:v9];
}

- (void)reloadDataForIndexPaths:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:370 description:@"Current thread must be main"];
  }

  v6 = [(MailboxPickerCollectionHelper *)self collectionView];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
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

        if (([v6 mf_isIndexPathValid:{*(*(&v15 + 1) + 8 * i), v15}] & 1) == 0)
        {
          v11 = [(MailboxPickerCollectionHelper *)self logClient];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths skipped because the data is out of sync with UI", buf, 2u);
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
    v12 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths %@", buf, 0xCu);
    }

    [(MailboxPickerCollectionHelper *)self _reloadDataForCellsAtIndexPaths:v7];
    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:0];
  }

  else
  {
    v13 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#Favorites reloadItemsAtIndexPaths reloadingCollectionViewData indexPaths:%@", buf, 0xCu);
    }

    [(MailboxPickerCollectionHelper *)self reloadDataSource];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)a3 forceReload:(BOOL)a4 update:(id)a5
{
  v5 = a4;
  v6 = a3;
  v9 = a5;
  if (pthread_main_np() == 1)
  {
    if (v5)
    {
LABEL_3:
      v10 = objc_alloc_init(NSDiffableDataSourceSnapshot);
      goto LABEL_6;
    }
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:395 description:@"Current thread must be main"];

    if (v5)
    {
      goto LABEL_3;
    }
  }

  v12 = [(MailboxPickerCollectionHelper *)self dataSource];
  v10 = [v12 snapshot];

LABEL_6:
  if (v9[2](v9, v10))
  {
    v13 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1004884C8(v10, v13);
    }

    v14 = [(MailboxPickerCollectionHelper *)self dataSource];
    v15 = [(MailboxPickerCollectionHelper *)self updateCompletion];
    [v14 applySnapshot:v10 animatingDifferences:v6 completion:v15];
  }
}

- (void)_performDataSourceUpdateAnimated:(BOOL)a3 forceReload:(BOOL)a4 update:(id)a5 toSection:(id)a6
{
  v7 = a4;
  v8 = a3;
  v11 = a5;
  v12 = a6;
  if (pthread_main_np() != 1)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:409 description:@"Current thread must be main"];
  }

  v13 = [(MailboxPickerCollectionHelper *)self sectionController];
  v14 = v13;
  if (v7)
  {
    v15 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  }

  else
  {
    v15 = [v13 snapshotForSection:v12];
  }

  v16 = v15;
  if (v11[2](v11, v15))
  {
    v17 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100488540(v16, v12, v17);
    }

    v18 = [(MailboxPickerCollectionHelper *)self updateCompletion];
    [v14 applySnapshot:v16 toSection:v12 animatingDifferences:v8 completion:v18];
  }
}

- (BOOL)_updateSnapshot:(id)a3 forSection:(id)a4
{
  v5 = a3;
  v59 = a4;
  v48 = [v59 items];
  v56 = [v48 ef_map:&stru_1006501F0];
  if ([v59 isFavorites])
  {
    [v59 prepareItemsForView];
  }

  if ([v59 isFavorites])
  {
    v6 = [v59 collection];
    v7 = [v6 isEditing];

    if (v7)
    {
      v8 = [v56 arrayByAddingObject:@"kAddButtonItemIdentifier"];

      v56 = v8;
    }
  }

  v58 = [NSOrderedSet orderedSetWithArray:v56];
  v9 = v5;
  v10 = [v5 items];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_1000F4D64;
  v71[3] = &unk_10064E820;
  v57 = v9;
  v72 = v57;
  v52 = [v10 ef_filter:v71];

  v11 = [NSOrderedSet orderedSetWithArray:v52];
  v53 = [v58 differenceFromOrderedSet:v11];

  v50 = [(MailboxPickerCollectionHelper *)self _applyRemovalsInSnapshot:v57 differences:v53];
  v46 = [(MailboxPickerCollectionHelper *)self _applyInsertionsInSnapshot:v57 differences:v53 collection:v58];
  v51 = (v50 | v46) != 0;
  v12 = [v59 accountFavoriteItem];
  v54 = v12;
  v13 = [v59 isAccounts];
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    v49 = [v12 itemID];
    v15 = [v12 subItems];
    v47 = [v15 ef_filter:&stru_100650210];

    v16 = +[NSMutableDictionary dictionary];
    v60 = +[NSMutableDictionary dictionary];
    [v60 setObject:v47 forKeyedSubscript:v49];
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
          v22 = [v21 itemUUID];
          [v16 setObject:v21 forKeyedSubscript:v22];
        }

        v18 = [v17 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v18);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v23 = [v54 subItems];
    v24 = [v23 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v24)
    {
      v25 = *v64;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v64 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v63 + 1) + 8 * j);
          v28 = [v27 itemUUID];
          v29 = [v16 objectForKeyedSubscript:v28];

          if (!v29)
          {
            v30 = [v27 representingMailbox];
            v31 = [v30 parent];
            v32 = [v31 uniqueId];

            v33 = [v60 objectForKeyedSubscript:v32];
            v34 = [v33 mutableCopy];

            if (!v34)
            {
              v34 = +[NSMutableArray array];
            }

            [v34 addObject:v27];
            [v60 setObject:v34 forKeyedSubscript:v32];
            v35 = [v27 itemUUID];
            [v16 setObject:v27 forKeyedSubscript:v35];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v24);
    }

    if ([v60 count])
    {
      sub_1000F4E0C(self, v54, v49, v57, v60);
      v51 = 1;
    }

    v36 = [v59 collection];
    v37 = [v36 expandedItems];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000F504C;
    v61[3] = &unk_10064EC80;
    v38 = v57;
    v62 = v38;
    v39 = [v37 ef_filter:v61];
    v40 = [v39 ef_compactMap:&stru_100650250];

    if ([v54 isExpanded])
    {
      v41 = [v40 arrayByAddingObject:v49];
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

  v43 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v59 sectionIdentifier];
    *buf = 138412802;
    v74 = v44;
    v75 = 2048;
    v76 = v46;
    v77 = 2048;
    v78 = v50;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#Favorites %@ - Added %ld, removed %ld favorite items", buf, 0x20u);
  }

  return v51;
}

- (int64_t)_applyInsertionsInSnapshot:(id)a3 differences:(id)a4 collection:(id)a5
{
  v7 = a3;
  [a4 mf_groupedInsertionsForCollection:a5];
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
          v13 = [v12 insertions];
          v14 = [v12 associatedObject];
          [v7 insertItems:v13 beforeItem:v14];
LABEL_10:

          goto LABEL_12;
        }

        if ([v12 type] == 1)
        {
          v13 = [v12 insertions];
          v14 = [v12 associatedObject];
          [v7 insertItems:v13 afterItem:v14];
          goto LABEL_10;
        }

        v13 = [v12 insertions];
        [v7 appendItems:v13];
LABEL_12:
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v8 count];
  return v15;
}

- (int64_t)_applyRemovalsInSnapshot:(id)a3 differences:(id)a4
{
  v5 = a3;
  v6 = [a4 removals];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F5470;
  v11[3] = &unk_100650278;
  v7 = v5;
  v12 = v7;
  v8 = [v6 ef_compactMap:v11];

  [v7 deleteItems:v8];
  v9 = [v8 count];

  return v9;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MailboxPickerCollectionHelper *)self isPerformingMultiSelect]&& ![(MailboxPickerCollectionHelper *)self canBeginMultiSelectAtIndexPath:v7])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(MailboxPickerCollectionHelper *)self isCellSelectable:v6 atIndexPath:v7];
  }

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[EFDevice currentDevice];
  v9 = [v8 isInternal];

  if (v9)
  {
    v10 = [v6 cellForItemAtIndexPath:v7];
    v11 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 ef_publicDescription];
      v13 = [v10 title];
      v14 = [EFPrivacy partiallyRedactedStringForString:v13];
      v23 = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Did select mailbox at indexPath:%{public}@ with cell title:%{public}@", &v23, 0x16u);
    }
  }

  else
  {
    v10 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v7 ef_publicDescription];
      v23 = 138543362;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Did select mailbox at indexPath:%{public}@", &v23, 0xCu);
    }
  }

  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:v7])
  {
    v16 = [(MailboxPickerCollectionHelper *)self delegate];
    v17 = [v6 cellForItemAtIndexPath:v7];
    [v16 mailboxCollectionHelperWantsToShowAddFavoritesController:self sourceView:v17];

    [v6 deselectItemAtIndexPath:v7 animated:1];
  }

  else
  {
    v18 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v7];
    v19 = [(MailboxPickerCollectionHelper *)self model];
    v20 = [v19 sectionForIndexPath:v7];

    v21 = [(MailboxPickerCollectionHelper *)self collectionView];
    v22 = [v21 isEditing];

    if (v22)
    {
      if ([v20 isFavorites])
      {
        [v18 setSelected:1 fromUI:1];
        [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:v6];
      }

      else if ([v20 isAccounts])
      {
        [v18 wasSelected:self indexPath:v7 accessoryTapped:0 animated:1];
        [v6 deselectItemAtIndexPath:v7 animated:1];
      }
    }

    else
    {
      sub_1000F5934(self, v18, v20);
      [v18 wasSelected:self indexPath:v7 accessoryTapped:0 animated:1];
    }
  }
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailboxPickerCollectionHelper *)self collectionView];
  if (![v8 isEditing])
  {

    goto LABEL_10;
  }

  v9 = [v7 section];

  if (v9)
  {
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  v10 = [v6 numberOfItemsInSection:0];
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = (v10 - 1);
    do
    {
      if (v11 != [v7 item])
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

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MailboxPickerCollectionHelper *)self collectionView];
  v8 = [v7 isEditing];

  if (v8)
  {
    v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v6];
    [v9 setSelected:0 fromUI:1];
    [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:v10];
  }
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v5 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:a4];
  v6 = [v5 isExpandable];

  return v6;
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(MailboxPickerCollectionHelper *)self pinnedItemIdentifier];

  if (v8)
  {
    v9 = [(MailboxPickerCollectionHelper *)self dataSource];
    v10 = [(MailboxPickerCollectionHelper *)self pinnedItemIdentifier];
    v11 = [v9 indexPathForItemIdentifier:v10];

    if (v11)
    {
      v12 = [v7 layoutAttributesForItemAtIndexPath:v11];
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

- (BOOL)collectionView:(id)a3 selectionFollowsFocusForItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailboxPickerCollectionHelper *)self collectionView];
  v7 = [v6 isEditing];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v5];
    if ([v9 sourceType] == 1)
    {
      v10 = +[VIPManager defaultInstance];
      v11 = [v10 allVIPs];
      v8 = [v11 count] != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v9 = a4;
  v10 = a6;
  if (![(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:v10])
  {
    v15 = [v10 section];
    if (v15 == [v9 section])
    {
      v12 = 0;
      v13 = 0;
      v11 = v10;
      goto LABEL_17;
    }

    v16 = [(MailboxPickerCollectionHelper *)self model];
    v14 = [v16 sections];

    v17 = [v14 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];
    if ([v17 isAccounts])
    {
      v18 = [MailboxPickerCollectionHelperModel indexOfFirstAccountSection:v14];
      v19 = [MailboxPickerCollectionHelperModel indexOfLastAccountSection:v14];
      v20 = [v10 section];
      if (v20 <= ([v9 section] - 2))
      {
        v13 = 1;
      }

      else
      {
        v21 = [v10 section];
        v13 = v21 >= ([v9 section] + 2);
      }

      if ([v10 section] < v18 - 1)
      {
        v12 = 0;
LABEL_14:
        v11 = v9;

        goto LABEL_15;
      }

      v12 = [v10 section] <= v19 + 1;
      if (!v13 || !v12)
      {
        goto LABEL_14;
      }

      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v10 section]);

      v12 = 1;
    }

    else
    {
      v11 = v9;

      v12 = 0;
      v13 = 0;
    }

LABEL_15:

    goto LABEL_16;
  }

  v11 = v9;
  v12 = 0;
  v13 = 0;
  v14 = v10;
LABEL_16:

LABEL_17:
  v22 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = NSStringFromSelector(a2);
    v25 = 138413570;
    v26 = v23;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v11;
    v33 = 1024;
    v34 = v13;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#Favorites %@  - \torgPath:%@ \tpropPath:%@, \tdestPath:%@ invalR:%d accR:%d", &v25, 0x36u);
  }

  return v11;
}

- (id)favoriteItemForItemID:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  v7 = [(MailboxPickerCollectionHelper *)self model];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  v10 = [(MailboxPickerCollectionHelper *)self favoriteItemForItemID:v4 inSection:v9];

  return v10;
}

- (id)favoriteItemAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[MailboxPickerCollectionHelper sectionTypeForIndex:](self, "sectionTypeForIndex:", [v4 section]))
  {
    v5 = [(MailboxPickerCollectionHelper *)self dataSource];
    v6 = [v5 itemIdentifierForIndexPath:v4];

    [(MailboxPickerCollectionHelper *)self favoriteItemForItemID:v6];
  }

  else
  {
    v6 = [(MailboxPickerCollectionHelper *)self model];
    [v6 favoriteItemAtIndexPath:v4];
  }
  v7 = ;

  return v7;
}

- (id)favoriteItemForItemID:(id)a3 inSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MailboxPickerCollectionHelper *)self model];
  v9 = [v8 favoriteItemForItemID:v6 inSection:v7];

  return v9;
}

- (id)indexPathForItem:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self model];
  v6 = [v5 favoritesSection];
  v7 = [v6 items];
  v8 = [v7 containsObject:v4];

  if (v8)
  {
    v9 = [v5 indexPathForItem:v4];
  }

  else
  {
    v10 = [(MailboxPickerCollectionHelper *)self dataSource];
    v11 = [v4 itemID];
    v9 = [v10 indexPathForItemIdentifier:v11];
  }

  return v9;
}

- (id)_nextVisibleFavoriteItemInDirection:(int64_t)a3 fromItem:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  v9 = [v8 visibleMailboxCollections];

  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v9);
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

      v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v15 = [v7 indexOfObject:v6];
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
    v17 += a3;
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
      v19 = [(MailboxPickerCollectionHelper *)self dataSource];
      v20 = [v16 itemID];
      v21 = [v19 indexPathForItemIdentifier:v20];
    }

    else
    {
      v21 = 0;
    }

    v22 = [v16 isEqual:v6];
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

- (id)favoriteItemBeforeItem:(id)a3
{
  v3 = [(MailboxPickerCollectionHelper *)self _nextVisibleFavoriteItemInDirection:-1 fromItem:a3];

  return v3;
}

- (id)favoriteItemAfterItem:(id)a3
{
  v3 = [(MailboxPickerCollectionHelper *)self _nextVisibleFavoriteItemInDirection:1 fromItem:a3];

  return v3;
}

- (id)snapshotFromFavoriteItems:(id)a3
{
  v4 = a3;
  v5 = [v4 ef_compactMap:&stru_1006502C0];
  v6 = [NSOrderedSet orderedSetWithArray:v5];
  v7 = [v6 count];
  if (v7 != [v4 count])
  {
    v8 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = [v5 count];
      v13 = 134217984;
      v14 = v12 - [v6 count];
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "#Favorites Found %ld duplicated itemIDs. Those items will be skipped.", &v13, 0xCu);
    }
  }

  v9 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  v10 = [v6 array];
  [v9 appendItems:v10];

  return v9;
}

- (void)_favoritesDidChange:(id)a3
{
  v9 = a3;
  if (pthread_main_np() != 1)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:810 description:@"Current thread must be main"];
  }

  v5 = [(MailboxPickerCollectionHelper *)self collectionView];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [(MailboxPickerCollectionHelper *)self favoritesDidChangedDebouncer];
    [v7 debounceResult:v9];
  }

  else
  {
    v7 = [(MailboxPickerCollectionHelper *)self delegate];
    [v7 mailboxCollectionHelperNeedsReloadOnAppearance:self];
  }
}

- (void)_favoritesFocusDidChange:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Favorites _favoritesFocusDidChange", buf, 2u);
  }

  v6 = v4;
  v9 = v6;
  v10 = self;
  v7 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v7 performBlock:&v8];
}

- (id)createMailboxesFromUids:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F7274;
  v9[3] = &unk_10064FEA8;
  v10 = v5;
  v6 = v5;
  v7 = [v3 ef_compactMap:v9];

  return v7;
}

- (BOOL)isAddButtonAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self dataSource];
  v6 = [v5 indexPathForItemIdentifier:@"kAddButtonItemIdentifier"];

  if (v6)
  {
    v7 = [v4 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isCellSelectable:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v6 cellForItemAtIndexPath:v7];
    v8 = [v9 isCellEnabled];
  }

  return v8;
}

- (BOOL)canBeginMultiSelectAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self model];
  v6 = [v5 sectionForIndexPath:v4];
  if ([v6 isFavorites])
  {
    v7 = ![(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:v4];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)canReorderItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(MailboxPickerCollectionHelper *)self isAddButtonAtIndexPath:v4])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v4];
    v7 = [(MailboxPickerCollectionHelper *)self model];
    v8 = [v7 sectionForIndexPath:v4];
    v9 = [v8 isAccounts];

    if (v9)
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
  v2 = self;
  v3 = [(MailboxPickerCollectionHelper *)self delegate];
  LOBYTE(v2) = [v3 mailboxCollectionHelperSplitViewControllerIsCollapsed:v2];

  return v2;
}

- (void)updateCellForSourceType:(unint64_t)a3
{
  if (pthread_main_np() != 1)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:907 description:@"Current thread must be main"];
  }

  v6 = [(MailboxPickerCollectionHelper *)self collectionView];
  v7 = [v6 isEditing];

  if ((v7 & 1) == 0)
  {
    v8 = [FavoriteItem itemForSharedMailboxWithType:a3 selected:0];
    v9 = [(MailboxPickerCollectionHelper *)self indexPathForItem:v8];
    if (v9)
    {
      v10 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = NSStringFromSelector(a2);
        *buf = 138543874;
        v16 = v12;
        v17 = 2048;
        v18 = a3;
        v19 = 2114;
        v20 = v9;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ %lu, indexPath: %{public}@", buf, 0x20u);
      }

      v14 = v9;
      v11 = [NSArray arrayWithObjects:&v14 count:1];
      [(MailboxPickerCollectionHelper *)self reloadDataForIndexPaths:v11];
    }
  }
}

- (void)updateCheckmarkColor:(id)a3
{
  v4 = [(MailboxPickerCollectionHelper *)self collectionView];
  v5 = [v4 isEditing];

  if (v5)
  {
    v6 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    v7 = [v6 mailboxesCollection];
    v8 = [v7 visibleItems];

    if ([v8 ef_countObjectsPassingTest:&stru_100650308] == 1)
    {
      v9 = +[UIColor lightGrayColor];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(MailboxPickerCollectionHelper *)self multiSelectCheckmarkColor];

    if (v9 != v10)
    {
      [(MailboxPickerCollectionHelper *)self setMultiSelectCheckmarkColor:v9];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v11 = [(MailboxPickerCollectionHelper *)self collectionView];
      v12 = [v11 visibleCells];

      v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v13)
      {
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v17 + 1) + 8 * i);
            [v16 setMultiselectCheckmarkColor:v9];
            [v16 setNeedsUpdateConfiguration];
          }

          v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)updateMailboxSelectionAnimated:(BOOL)a3 scrollToSelected:(BOOL)a4
{
  v43 = a4;
  v44 = a3;
  v46 = [(MailboxPickerCollectionHelper *)self delegate];
  v5 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  v6 = [v5 lastSelectedItem];

  if (!v6)
  {
    v7 = [v46 displayedAccountsForMailboxCollectionHelper:self];
    v8 = [v7 count];

    if (v8 < 2)
    {
      v9 = [(MailboxPickerCollectionHelper *)self scene];
      v10 = [v9 selectedAccounts];
      v11 = [v10 anyObject];

      v6 = [FavoriteItem itemForInboxWithAccount:v11 selected:1];
    }

    else
    {
      v6 = [FavoriteItem itemForUnifiedMailboxWithType:7 selected:1];
    }

    v12 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [v12 setLastSelectedItem:v6];
  }

  v13 = [(MailboxPickerCollectionHelper *)self dataSource];
  v14 = [v13 snapshot];
  v15 = [v14 numberOfItems];

  if (v15)
  {
    v16 = [(MailboxPickerCollectionHelper *)self collectionView];
    v45 = [v16 indexPathsForSelectedItems];
    if ([v45 count] == 1 && (objc_msgSend(v45, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), -[MailboxPickerCollectionHelper favoriteItemAtIndexPath:](self, "favoriteItemAtIndexPath:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v18, v18 == v6))
    {
      v19 = 0;
      v20 = 1;
    }

    else
    {
      v19 = [(MailboxPickerCollectionHelper *)self indexPathForItem:v6];
      v20 = 0;
    }

    if (((v20 | _os_feature_enabled_impl() ^ 1) & 1) == 0 && !v19)
    {
      v21 = objc_opt_new();
      v22 = [v6 representingMailbox];
      v23 = [v22 parent];

      if (v23)
      {
        do
        {
          v24 = [(MailboxPickerCollectionHelper *)self favoritesManager];
          v25 = [v23 displayName];
          v26 = [v24 itemsMatchingName:v25];

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
                  v32 = [v31 itemID];
                  [v21 addObject:v32];
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v28);
          }

          v33 = [v23 parent];

          v23 = v33;
        }

        while (v33);
      }

      v34 = [(MailboxPickerCollectionHelper *)self dataSource];
      v35 = [v21 lastObject];
      if (!v35 || ([v34 snapshot], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "sectionIdentifierForSectionContainingItemIdentifier:", v35), v37 = objc_claimAutoreleasedReturnValue(), v36, !v37) || (v47[0] = _NSConcreteStackBlock, v47[1] = 3221225472, v47[2] = sub_1000F82A8, v47[3] = &unk_100650180, v48 = v21, -[MailboxPickerCollectionHelper _performDataSourceUpdateAnimated:forceReload:update:toSection:](self, "_performDataSourceUpdateAnimated:forceReload:update:toSection:", 1, 0, v47, v37), -[MailboxPickerCollectionHelper indexPathForItem:](self, "indexPathForItem:", v6), v19 = objc_claimAutoreleasedReturnValue(), v48, v37, !v19))
      {
        v38 = [v45 firstObject];
        if (v38)
        {
          [v16 deselectItemAtIndexPath:v38 animated:v44];
        }

        v19 = 0;
      }
    }

    if (!v19 || ![v46 mailboxCollectionHelperShouldUpdateMailboxSelection:self])
    {
      goto LABEL_48;
    }

    if ([v16 mf_isIndexPathValid:v19])
    {
      if (v43)
      {
        [v16 scrollToItemAtIndexPath:v19 atScrollPosition:0 animated:v44];
      }

      if ([v45 containsObject:v19])
      {
        goto LABEL_48;
      }

      [v16 selectItemAtIndexPath:v19 animated:0 scrollPosition:0];
      v39 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v19 ef_publicDescription];
        *buf = 138543618;
        v54 = v40;
        v55 = 2114;
        v56 = v16;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "updateMailboxSelectionAnimated did select item at indexPath:%{public}@ for collectionView:%{public}@", buf, 0x16u);
      }

      if (![(MailboxPickerCollectionHelper *)self isSplitViewCollapsed])
      {
        goto LABEL_48;
      }

      [v16 deselectItemAtIndexPath:v19 animated:v44];
      v41 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v19 ef_publicDescription];
        *buf = 138543618;
        v54 = v42;
        v55 = 2114;
        v56 = v16;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "updateMailboxSelectionAnimated did deselect item at indexPath:%{public}@ for collectionView:%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v41 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_1004885C8(v19, v16, v41);
      }
    }

LABEL_48:
    goto LABEL_49;
  }

  v16 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skip selection as data source is empty", buf, 2u);
  }

LABEL_49:
}

- (void)updatedSelectedState:(id)a3
{
  v10 = a3;
  v4 = [(MailboxPickerCollectionHelper *)self collectionView];
  v5 = [v4 isEditing];

  if (v5)
  {
    v6 = [v10 indexPathsForSelectedItems];
    for (i = 0; [v10 numberOfItemsInSection:0] - 1 > i; ++i)
    {
      v8 = [NSIndexPath indexPathForItem:i inSection:0];
      v9 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v8];
      if ([v9 isSelected])
      {
        [v10 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];
      }

      else if ([v6 containsObject:v8])
      {
        [v10 deselectItemAtIndexPath:v8 animated:0];
      }
    }

    [(MailboxPickerCollectionHelper *)self updateCheckmarkColor:v10];
  }
}

- (void)_configureCell:(id)a3 forItemID:(id)a4 indexPath:(id)a5
{
  v22 = a3;
  v7 = a5;
  v8 = [(MailboxPickerCollectionHelper *)self model];
  v9 = [v8 sections];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

  v11 = [(MailboxPickerCollectionHelper *)self favoriteItemAtIndexPath:v7];
  [v11 configureOutlineCell:v22];
  v12 = [v11 representingMailbox];
  if ([v10 isAccounts])
  {
    if ([v11 type] == 1)
    {
      [(MailboxPickerCollectionHelper *)self _configureAccountsCell:v22 forItem:v11];
    }

    else
    {
      [(MailboxPickerCollectionHelper *)self _configureMailboxCell:v22 mailbox:v12 indexPath:v7];
    }
  }

  else
  {
    if ([v10 isFavorites])
    {
      if ([v12 type] != 7)
      {
        v13 = [(MailboxPickerCollectionHelper *)self collectionView];
        v14 = [v13 isEditing];

        if (v14)
        {
          v15 = [(MailboxPickerCollectionHelper *)self delegate];
          v16 = [v15 mailboxCollectionHelper:self shouldDisableForEditingCellForMailbox:v12];

          [v22 setDisabledForEditing:v16];
        }
      }
    }

    if (!v12 && [v11 type] == 2)
    {
      v17 = [v11 displayName];
      [v22 setTitle:v17];
    }

    v18 = [(MailboxPickerCollectionHelper *)self currentFocus];
    if (v12 && ([v11 type] == 2 || objc_msgSend(v11, "type") == 3))
    {
      if (v18)
      {
        v19 = [v12 account];
        v20 = [v19 identifier];
        v21 = [v18 isFocusedIdentifier:v20];

        if ((v21 & 1) == 0)
        {
          [v22 setShowFocusIcon:1];
          [v22 setShouldShowBadgeCountIfNecessary:0];
        }
      }
    }

    [(MailboxPickerCollectionHelper *)self _configureFlattenedCell:v22 forItem:v11];
  }

  [v22 setNeedsUpdateConfiguration];
}

- (void)_configureAddMailboxCell:(id)a3
{
  v7 = a3;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ADD_MAILBOX_BUTTON" value:&stru_100662A88 table:@"Main"];
  [v7 setTitle:v4];

  [v7 setUseTintColor:1];
  v5 = +[UIColor clearColor];
  v6 = [UIImage mf_imageWithColor:v5 size:1.0, 1.0];
  [v7 setIcon:v6];

  [v7 setBadgeCount:0];
  [v7 setNeedsUpdateConfiguration];
}

- (void)_configureMailboxCell:(id)a3 mailbox:(id)a4 indexPath:(id)a5
{
  v9 = a3;
  v6 = a4;
  [v9 setSubtitle:0];
  [v9 setDisabledForEditing:{objc_msgSend(v6, "mv_isEditable") ^ 1}];
  v7 = [v6 children];
  v8 = [v7 count] != 0;

  [v9 setDisclosureType:2 * v8];
}

- (void)_configureFlattenedCell:(id)a3 forItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setFlattenHierarchy:1];
  [v6 setHideBadgeCountForEditing:1];
  [v6 setCanMoveItem:{objc_msgSend(v7, "isMovable")}];
  [v6 setShowsSelectionCheckmarkForEditing:1];
  [v6 setDisclosureType:0];
  if ([v7 wantsDisclosureButton])
  {
    [v6 setShowsDetailDisclosureButton:1];
    objc_initWeak(&location, self);
    objc_initWeak(&from, v6);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F8AFC;
    v8[3] = &unk_100650330;
    objc_copyWeak(&v9, &location);
    objc_copyWeak(&v10, &from);
    [v6 addDetailDisclosureActionHandler:v8];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [v6 setShowsDetailDisclosureButton:0];
  }
}

- (void)_configureAccountsCell:(id)a3 forItem:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(MailboxPickerCollectionHelper *)self currentFocus];
  if (v7)
  {
    v8 = [v6 account];
    v9 = [v8 identifier];
    v10 = [v7 isFocusedIdentifier:v9];

    if ((v10 & 1) == 0)
    {
      [v13 setShowFocusIcon:1];
    }
  }

  if ([v6 isExpandable])
  {
    [v13 setExpandable:1];
    [v13 setExpanded:{objc_msgSend(v6, "isExpanded")}];
    [v13 setHideBadgeCountForEditing:1];
    [v13 setDisclosureType:1];
    v11 = [(MailboxPickerCollectionHelper *)self collectionView];
    v12 = [v11 backgroundColor];
    [v13 setBackgroundColor:v12];

    [v13 setCanMoveItem:{objc_msgSend(v6, "isMovable")}];
  }

  else
  {
    [(MailboxPickerCollectionHelper *)self _configureFlattenedCell:v13 forItem:v6];
  }
}

- (void)_detailsDisclosureButtonTapped:(id)a3
{
  v5 = a3;
  v4 = [(MailboxPickerCollectionHelper *)self delegate];
  [v4 mailboxCollectionHelperDidTapDetailsDisclosure:self sender:v5];
}

- (void)_reloadDataForCellsAtIndexPaths:(id)a3
{
  v16 = a3;
  v4 = [(MailboxPickerCollectionHelper *)self collectionView];
  v5 = [v4 indexPathsForVisibleItems];
  v6 = [NSSet setWithArray:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v16;
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
          v12 = [(MailboxPickerCollectionHelper *)self collectionView];
          v13 = [v12 cellForItemAtIndexPath:v11];

          v14 = [(MailboxPickerCollectionHelper *)self dataSource];
          v15 = [v14 itemIdentifierForIndexPath:v11];

          [(MailboxPickerCollectionHelper *)self _configureCell:v13 forItemID:v15 indexPath:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  v8 = [v7 mailboxesCollection];

  v9 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  v10 = [v9 accountsCollection];

  v11 = [(MailboxPickerCollectionHelper *)self collectionView];
  [v8 setEditing:v5];
  v31 = [v8 visibleItems];
  v32 = [v11 mui_sortedIndexPathsForVisibleItems];
  [v11 visibleBounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000F9474;
  v36[3] = &unk_100650358;
  v36[4] = self;
  v20 = v10;
  v37 = v20;
  v21 = v31;
  v38 = v21;
  v22 = v11;
  v39 = v22;
  v40 = v13;
  v41 = v15;
  v42 = v17;
  v43 = v19;
  [v32 enumerateObjectsUsingBlock:v36];
  [v20 setEditing:v5];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000F95F0;
  v33[3] = &unk_100650380;
  v23 = v21;
  v34 = v23;
  v35 = v5;
  v24 = [v8 uniqueId];
  [(MailboxPickerCollectionHelper *)self _performDataSourceUpdateAnimated:v4 forceReload:1 update:v33 toSection:v24];

  [v22 setEditing:v5];
  if (v5)
  {
    v25 = +[UIColor mailInteractiveColor];
    [(MailboxPickerCollectionHelper *)self setMultiSelectCheckmarkColor:v25];

    [(MailboxPickerCollectionHelper *)self updatedSelectedState:v22];
  }

  else
  {
    v45 = v23;
    v26 = [NSArray arrayWithObjects:&v45 count:1];
    v27 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    v44 = v8;
    v28 = [NSArray arrayWithObjects:&v44 count:1];
    [v27 updateCollections:v28 withItems:v26];

    v29 = [(MailboxPickerCollectionHelper *)self model];
    v30 = [v29 favoritesSection];
    [v30 prepareItemsForView];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:v4 scrollToSelected:0];
  }

  [(MailboxPickerCollectionHelper *)self setPinnedItemIdentifier:0];
  [(MailboxPickerCollectionHelper *)self setPinnedItemOffset:0.0];
}

- (void)selectAccount:(id)a3 item:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && [v10 isExpandable])
  {
    [v10 setExpanded:{objc_msgSend(v10, "isExpanded") ^ 1}];
    v12 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [v12 refreshCollectionForItemExpansion:v10];

    v13 = [(MailboxPickerCollectionHelper *)self collectionView];
    [v13 deselectItemAtIndexPath:v11 animated:0];

    v14 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(MailboxPickerCollectionHelper *)self favoritesManager];
      v15 = [v22 accountsCollection];
      v16 = [v15 uniqueId];
      v17 = [v10 itemID];
      v18 = [v10 isExpanded];
      v19 = [v10 subItems];
      *buf = 138413058;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      v29 = 2048;
      v30 = [v19 count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#Favorites selectAccount section:%@ account:%@ expand:%{BOOL}d, subItems:%ld", buf, 0x26u);
    }
  }

  if (v9)
  {
    v20 = [(MailboxPickerCollectionHelper *)self scene];
    v21 = [NSSet setWithObject:v9];
    [v20 setSelectedAccounts:v21];
  }
}

- (void)selectCombinedMailboxWithType:(int64_t)a3 item:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInteger:a3];
    v11 = [v8 itemID];
    *buf = 138412802;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    v28 = 1024;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Favorites selectCombinedMailboxWith type:%@ item:%{public}@ animated:%{BOOL}d", buf, 0x1Cu);
  }

  v12 = [(MailboxPickerCollectionHelper *)self delegate];
  v13 = [v12 displayedAccountsForMailboxCollectionHelper:self];
  v14 = [(MailboxPickerCollectionHelper *)self scene];
  [v14 setSelectedAccounts:v13];

  if (!v8)
  {
    v8 = [FavoriteItem itemForUnifiedMailboxWithType:a3 selected:0];
  }

  v15 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  v16 = [v15 lastSelectedItem];
  if (([v16 isEqual:v8] & 1) == 0)
  {

LABEL_9:
    v19 = [v8 smartMailbox];
    v23 = v19;
    v20 = [NSArray arrayWithObjects:&v23 count:1];
    mailboxesForMessageList = self->_mailboxesForMessageList;
    self->_mailboxesForMessageList = v20;

    v22 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [v22 setLastSelectedItem:v8];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:1];
    goto LABEL_10;
  }

  v17 = [(MailboxPickerCollectionHelper *)self mailboxesForMessageList];
  v18 = v17 == 0;

  if (v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  [v12 mailboxCollectionHelper:self wantsToPopToMailboxPicker:1 andPushMessageListViewControllerIfNecessaryAnimated:v5];
}

- (void)selectCombinedMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Favorites selectCombinedMailbox %{public}@", &v11, 0xCu);
  }

  v6 = v4;
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

- (void)selectCustomViewController:(id)a3 item:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MailboxPickerCollectionHelper *)self delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FA1B8;
  v12[3] = &unk_1006503A8;
  v12[4] = self;
  v11 = v9;
  v13 = v11;
  [v10 mailboxCollectionHelper:self wantsToShowCustomViewController:v8 animated:v5 sourceViewBlock:v12];
}

- (void)selectMailbox:(id)a3 item:(id)a4 andPopToMailboxController:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v11 name];
    v15 = [v11 ef_publicDescription];
    v16 = [v12 itemID];
    *buf = 138413314;
    v34 = v14;
    v35 = 2114;
    v36 = v15;
    v37 = 2114;
    v38 = v16;
    v39 = 1024;
    v40 = v7;
    v41 = 1024;
    v42 = v6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#Favorites selectMailbox mailbox:%@ %{public}@ item:%{public}@ popToMailboxController:%{BOOL}d animated:%{BOOL}d", buf, 0x2Cu);
  }

  v17 = [(MailboxPickerCollectionHelper *)self delegate];
  if ([v17 mailboxCollectionHelperMailboxPickerIsEditing:self])
  {
    [v17 mailboxCollectionHelper:self wantsToPresentMailboxEditControllerForMailbox:v11 animated:v6];
  }

  else
  {
    if (!v11)
    {
      v30 = +[NSAssertionHandler currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:1313 description:@"Unable to select a mailbox item without a valid mailbox to select"];
    }

    if ([v11 mailboxType] == 6)
    {
      +[MailAccount defaultMailAccountForDelivery];
    }

    else
    {
      [v11 representedAccount];
    }
    v18 = ;
    if (!v18)
    {
      v31 = +[NSAssertionHandler currentHandler];
      [v31 handleFailureInMethod:a2 object:self file:@"MailboxPickerCollectionHelper.m" lineNumber:1322 description:@"Unable to select a mailbox item without a valid account for the mailbox selection"];
    }

    v19 = [(MailboxPickerCollectionHelper *)self scene];
    v20 = [NSSet setWithObject:v18];
    [v19 setSelectedAccounts:v20];

    v32 = v11;
    v21 = [NSArray arrayWithObjects:&v32 count:1];
    v22 = [(MailboxPickerCollectionHelper *)self createMailboxesFromUids:v21];
    mailboxesForMessageList = self->_mailboxesForMessageList;
    self->_mailboxesForMessageList = v22;

    v24 = [(MailboxPickerCollectionHelper *)self logClient];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(NSArray *)self->_mailboxesForMessageList firstObject];
      v26 = [v25 ef_publicDescription];
      v27 = [v11 ef_publicDescription];
      *buf = 138543618;
      v34 = v26;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Created mailboxes %{public}@ from uids %{public}@", buf, 0x16u);
    }

    if (![(NSArray *)self->_mailboxesForMessageList count])
    {
      v28 = [(MailboxPickerCollectionHelper *)self logClient];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100488650(v28);
      }
    }

    if (!v12)
    {
      if ([v11 mailboxType] == 7)
      {
        [FavoriteItem itemForInboxWithAccount:v18 selected:0];
      }

      else
      {
        [FavoriteItem itemForMailbox:v11 selected:0];
      }
      v12 = ;
    }

    v29 = [(MailboxPickerCollectionHelper *)self favoritesManager];
    [v29 setLastSelectedItem:v12];

    [(MailboxPickerCollectionHelper *)self updateMailboxSelectionAnimated:0 scrollToSelected:1];
    [v17 mailboxCollectionHelper:self wantsToSelectMailbox:v11 account:v18 animated:v6];
  }
}

- (void)selectVIPMailboxWithItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(MailboxPickerCollectionHelper *)self logClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 itemID];
    *buf = 138543618;
    v20 = v8;
    v21 = 1024;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#Favorites selectVIPMailbox item:%{public}@ animated:%{BOOL}d", buf, 0x12u);
  }

  v9 = [(MailboxPickerCollectionHelper *)self delegate];
  v10 = [v9 displayedAccountsForMailboxCollectionHelper:self];
  v11 = [(MailboxPickerCollectionHelper *)self scene];
  [v11 setSelectedAccounts:v10];

  v12 = [v6 additionalPredicate];
  v13 = [v6 displayName];
  v14 = [EMSmartMailbox vipMailboxWithName:v13 additionalPredicate:v12];

  v18 = v14;
  v15 = [NSArray arrayWithObjects:&v18 count:1];
  mailboxesForMessageList = self->_mailboxesForMessageList;
  self->_mailboxesForMessageList = v15;

  v17 = [(MailboxPickerCollectionHelper *)self favoritesManager];
  [v17 setLastSelectedItem:v6];

  [v9 mailboxCollectionHelper:self wantsToPopToMailboxPicker:1 andPushMessageListViewControllerIfNecessaryAnimated:v4];
}

@end
@interface FavoritesManager
+ (id)defaultsKeyForAutomaticMailboxVisibilityForSourceType:(unint64_t)a3;
- (BOOL)_isDictionaryRepresentationValid:(id)a3;
- (BOOL)updateCollections:(id)a3 withItems:(id)a4;
- (FavoriteItem)lastSelectedItem;
- (FavoritesManager)initWithFavoritesPersistence:(id)a3 collections:(id)a4 conversationSubscriptionProvider:(id)a5;
- (NSArray)suggestedFavoriteItems;
- (NSMutableArray)visibleMailboxCollections;
- (id)collectionContainingItem:(id)a3;
- (id)dictionaryRepresentation;
- (id)favoriteMailboxesForAccount:(id)a3;
- (id)itemsContainingName:(id)a3;
- (id)itemsMatchingItemURLStrings:(id)a3;
- (id)itemsMatchingName:(id)a3;
- (id)itemsOfType:(int64_t)a3;
- (id)orderedFavoriteMailboxesForAccount:(id)a3 includeUnifiedMailboxes:(BOOL)a4;
- (id)visibleItemsOfType:(int64_t)a3;
- (void)_debounceReload:(id)a3;
- (void)_reload:(id)a3;
- (void)_reloadFromCollectionDictionaries:(id)a3;
- (void)_reportFollowUpFeatureSetting:(BOOL)a3;
- (void)_sharedMailboxControllerBadgeCountDidChange:(id)a3;
- (void)mf_resetMailboxVocabulary;
- (void)mf_updateMailboxVocabularyForCollections:(id)a3;
- (void)moveItemOfCollection:(id)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5;
- (void)performTransaction:(id)a3;
- (void)refreshCollectionForItemExpansion:(id)a3 notify:(BOOL)a4;
- (void)scheduleItemChangeUpdateFavoritesPersistence:(id)a3 removedItems:(id)a4 withReason:(id)a5;
- (void)scheduleOrderChangeUpdateFavoritesPersistence:(unint64_t)a3 withReason:(id)a4;
- (void)scheduleSetVisibility:(BOOL)a3 forSourceType:(unint64_t)a4;
- (void)scheduleUpdateFavoritesPersistenceForChangeType:(unint64_t)a3 withReason:(id)a4;
- (void)setLastSelectedItem:(id)a3;
@end

@implementation FavoritesManager

- (void)mf_resetMailboxVocabulary
{
  swift_getObjectType();
  _objc_retain(self);
  sub_10000BC08();
  _objc_release(self);
}

- (void)mf_updateMailboxVocabularyForCollections:(id)a3
{
  swift_getObjectType();
  _objc_retain(a3);
  _objc_retain(self);
  sub_10000D38C();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E550();

  _objc_release(a3);
  _objc_release(self);
}

- (FavoriteItem)lastSelectedItem
{
  [(NSRecursiveLock *)self->_lock lock];
  lastSelectedItem = self->_lastSelectedItem;
  if (lastSelectedItem)
  {
    v4 = lastSelectedItem;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  if (!lastSelectedItem)
  {
    v5 = [(FavoritesManager *)self favoritesPersistence];
    lastSelectedItem = [v5 lastSelectedItem];

    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(FavoritesManager *)self favoritesPersistence];
    v7 = [v6 lastSelectedItem];
    v8 = self->_lastSelectedItem;
    self->_lastSelectedItem = v7;

    [(NSRecursiveLock *)self->_lock unlock];
  }

  return lastSelectedItem;
}

- (FavoritesManager)initWithFavoritesPersistence:(id)a3 collections:(id)a4 conversationSubscriptionProvider:(id)a5
{
  v34 = a3;
  v36 = a4;
  v35 = a5;
  v47.receiver = self;
  v47.super_class = FavoritesManager;
  v9 = [(FavoritesManager *)&v47 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_favoritesPersistence, a3);
    objc_storeStrong(&v10->_conversationSubscriptionProvider, a5);
    v11 = +[NSUserDefaults em_userDefaults];
    v10->_hasLaunchedWithCollapsibleMailboxes = [v11 BOOLForKey:@"FavoritesManagerDefaultKeyHasLaunchedWithCollapsibleMailboxes"];

    if (v36 && [(FavoritesManager *)v10 _isDictionaryRepresentationValid:v36])
    {
      v12 = v36;
    }

    else
    {
      v13 = [(FavoritesPersistence *)v10->_favoritesPersistence dictionaryRepresentation];

      v12 = v13;
    }

    v33 = [v12 objectForKeyedSubscript:@"Collections"];
    v36 = v12;
    v32 = [v12 objectForKeyedSubscript:@"LastSelectedItem"];
    if (v32)
    {
      v14 = [FavoriteItem itemFromDictionary:v32];
      lastSelectedItem = v10->_lastSelectedItem;
      v10->_lastSelectedItem = v14;
    }

    [(FavoritesManager *)v10 mf_resetMailboxVocabulary];
    [(FavoritesManager *)v10 _reloadFromCollectionDictionaries:v33];
    v16 = +[NSNotificationCenter defaultCenter];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = [&off_100674F10 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v17)
    {
      v18 = *v44;
      v19 = SharedMailboxControllerBadgeCountDidChangeNotification;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(&off_100674F10);
          }

          v21 = +[SharedMailboxController sharedInstanceForSourceType:](SharedMailboxController, "sharedInstanceForSourceType:", [*(*(&v43 + 1) + 8 * i) unsignedIntegerValue]);
          [v16 addObserver:v10 selector:"_sharedMailboxControllerBadgeCountDidChange:" name:v19 object:v21];
        }

        v17 = [&off_100674F10 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v17);
    }

    objc_initWeak(&location, v10);
    v22 = [EFDebouncer alloc];
    v23 = +[EFScheduler mainThreadScheduler];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000B09C0;
    v40[3] = &unk_10064EDC8;
    objc_copyWeak(&v41, &location);
    v24 = [v22 initWithTimeInterval:v23 scheduler:1 startAfter:v40 block:0.025];
    reloadDebouncer = v10->_reloadDebouncer;
    v10->_reloadDebouncer = v24;

    [v16 addObserver:v10 selector:"_debounceReload:" name:off_1006D1330 object:0];
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  v26 = +[NSUserDefaults em_userDefaults];
  objc_initWeak(&location, v10);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000B0A34;
  v37[3] = &unk_10064CB70;
  objc_copyWeak(&v39, &location);
  v27 = EMUserDefaultDisableFollowUp;
  v38 = v26;
  v28 = v26;
  v29 = [v28 ef_observeKeyPath:v27 options:1 autoCancelToken:1 usingBlock:v37];
  userDefaultsObserver = v10->_userDefaultsObserver;
  v10->_userDefaultsObserver = v29;

  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);

  return v10;
}

- (void)_reportFollowUpFeatureSetting:(BOOL)a3
{
  v3 = a3;
  v4 = +[SGSuggestionsService serviceForMail];
  [v4 setSyncTimeout:0.1];
  if (objc_opt_respondsToSelector())
  {
    v10 = 0;
    v5 = [v4 reportValue:!v3 forFeatureSetting:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = v6;
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [v7 ef_publicDescription];
        sub_100486F90(v9, buf, v8);
      }
    }
  }
}

- (void)_reloadFromCollectionDictionaries:(id)a3
{
  v59 = a3;
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v116 = v59;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#Favorites _reloadFromCollectionDictionaries:%@", buf, 0xCu);
  }

  v4 = self;
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_mailboxCollections count])
  {
    v5 = [(FavoritesManager *)self accountsCollection];
    v6 = [v5 items];
    v65 = [v6 ef_filter:&stru_10064EE08];

    v4 = self;
  }

  else
  {
    v65 = 0;
  }

  [(NSRecursiveLock *)v4->_lock unlock];
  v7 = [(FavoritesManager *)v4 hasLaunchedWithCollapsibleMailboxes];
  if ((v7 & 1) == 0)
  {
    sub_1000B1960(self, 1);
  }

  v72 = objc_alloc_init(NSMutableArray);
  v71 = objc_alloc_init(NSMutableArray);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v59;
  v8 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
  if (v8)
  {
    v9 = *v104;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v104 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v103 + 1) + 8 * i);
        v12 = [[FavoritesCollection alloc] initWithDictionary:v11];
        [v72 addObject:v12];

        v13 = [v11 objectForKey:@"expandedItems"];
        v14 = [v13 ef_compactMap:&stru_10064EE48];
        [v71 addObjectsFromArray:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
    }

    while (v8);
  }

  v15 = [v65 ef_filter:&stru_10064EE68];
  [v71 addObjectsFromArray:v15];

  v16 = [v72 objectAtIndex:2];
  v58 = [v16 items];

  v57 = [v58 ef_filter:&stru_10064EE88];
  v73 = objc_opt_new();
  v74 = objc_opt_new();
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v69 = v71;
  v17 = [v69 countByEnumeratingWithState:&v99 objects:v113 count:16];
  if (v17)
  {
    v18 = *v100;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v100 != v18)
        {
          objc_enumerationMutation(v69);
        }

        v20 = *(*(&v99 + 1) + 8 * j);
        v21 = [v20 itemUUID];
        if (v21)
        {
          [v74 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v17 = [v69 countByEnumeratingWithState:&v99 objects:v113 count:16];
    }

    while (v17);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v60 = v57;
  v62 = [v60 countByEnumeratingWithState:&v95 objects:v112 count:16];
  if (v62)
  {
    v61 = *v96;
    do
    {
      for (k = 0; k != v62; k = k + 1)
      {
        if (*v96 != v61)
        {
          objc_enumerationMutation(v60);
        }

        v22 = *(*(&v95 + 1) + 8 * k);
        v67 = [v22 account];
        v23 = +[MailChangeManager sharedChangeManager];
        v24 = [(FavoritesManager *)self favoritesPersistence];
        v63 = v22;
        v64 = [v23 allMailboxUidsSortedWithSpecialsAtTopForAccount:v67 includingLocals:1 client:v24 outbox:0];

        v25 = +[NSMutableArray array];
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v26 = v64;
        v27 = [v26 countByEnumeratingWithState:&v91 objects:v111 count:16];
        if (v27)
        {
          v28 = *v92;
          do
          {
            for (m = 0; m != v27; m = m + 1)
            {
              if (*v92 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = [FavoriteItem itemForMailbox:*(*(&v91 + 1) + 8 * m) selected:1];
              v31 = [v30 itemUUID];
              v32 = [v74 objectForKeyedSubscript:v31];

              if (v7)
              {
                v33 = 0;
              }

              else
              {
                v33 = [v30 isExpandable];
              }

              [v30 setExpanded:{(objc_msgSend(v32, "isExpanded") | v33) & 1}];
              [v25 addObject:v30];
              if ([v30 isExpanded])
              {
                [v73 addObject:v30];
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v91 objects:v111 count:16];
          }

          while (v27);
        }

        v34 = MFLogGeneral();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v67 ef_publicDescription];
          *buf = 138543362;
          v116 = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#Favorites Settings mailbox items for account: %{public}@", buf, 0xCu);
        }

        [v63 setSubItems:v25];
      }

      v62 = [v60 countByEnumeratingWithState:&v95 objects:v112 count:16];
    }

    while (v62);
  }

  v36 = [v72 objectAtIndexedSubscript:2];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v37 = v73;
  v38 = [v37 countByEnumeratingWithState:&v87 objects:v110 count:16];
  if (v38)
  {
    v39 = *v88;
    do
    {
      for (n = 0; n != v38; n = n + 1)
      {
        if (*v88 != v39)
        {
          objc_enumerationMutation(v37);
        }

        [v36 addExpandedItem:*(*(&v87 + 1) + 8 * n)];
      }

      v38 = [v37 countByEnumeratingWithState:&v87 objects:v110 count:16];
    }

    while (v38);
  }

  v41 = objc_alloc_init(NSMutableArray);
  if (v65)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v42 = v60;
    v43 = [v42 countByEnumeratingWithState:&v83 objects:v109 count:16];
    if (!v43)
    {
      goto LABEL_65;
    }

    v44 = *v84;
    while (1)
    {
      for (ii = 0; ii != v43; ii = ii + 1)
      {
        if (*v84 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v83 + 1) + 8 * ii);
        v47 = [v65 containsObject:v46];
        if (!v47)
        {
          if (![v46 isExpanded])
          {
            continue;
          }

LABEL_62:
          [v46 setExpanded:v47];
          [v41 addObject:v46];
          continue;
        }

        if (([v46 isExpanded] & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v83 objects:v109 count:16];
      if (!v43)
      {
LABEL_65:

        break;
      }
    }
  }

  [(NSRecursiveLock *)self->_lock lock];
  objc_storeStrong(&self->_mailboxCollections, v72);
  visibleMailboxCollections = self->_visibleMailboxCollections;
  self->_visibleMailboxCollections = 0;

  [(NSRecursiveLock *)self->_lock unlock];
  if ((v7 & 1) == 0)
  {
    [v60 ef_filter:&stru_10064EEA8];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v49 = v80 = 0u;
    v50 = [v49 countByEnumeratingWithState:&v79 objects:v108 count:16];
    if (v50)
    {
      v51 = *v80;
      do
      {
        for (jj = 0; jj != v50; jj = jj + 1)
        {
          if (*v80 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [(FavoritesManager *)self refreshCollectionForItemExpansion:*(*(&v79 + 1) + 8 * jj)];
        }

        v50 = [v49 countByEnumeratingWithState:&v79 objects:v108 count:16];
      }

      while (v50);
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v53 = v41;
  v54 = [v53 countByEnumeratingWithState:&v75 objects:v107 count:16];
  if (v54)
  {
    v55 = *v76;
    do
    {
      for (kk = 0; kk != v54; kk = kk + 1)
      {
        if (*v76 != v55)
        {
          objc_enumerationMutation(v53);
        }

        [(FavoritesManager *)self refreshCollectionForItemExpansion:*(*(&v75 + 1) + 8 * kk) notify:0];
      }

      v54 = [v53 countByEnumeratingWithState:&v75 objects:v107 count:16];
    }

    while (v54);
  }

  [(FavoritesManager *)self mf_updateMailboxVocabularyForCollections:v72];
}

- (void)_debounceReload:(id)a3
{
  v4 = a3;
  if (sub_1000B1C6C(self, v4) && ([(FavoritesManager *)self reloadDebouncer], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Favorites _reload: debounced notification=%@", &v8, 0xCu);
    }

    v7 = [(FavoritesManager *)self reloadDebouncer];
    [v7 debounceResult:v4];
  }

  else
  {
    [(FavoritesManager *)self _reload:v4];
  }
}

- (void)_reload:(id)a3
{
  v5 = a3;
  if (pthread_main_np() != 1)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"FavoritesManager.m" lineNumber:297 description:@"Current thread must be main"];
  }

  if (sub_1000B1C6C(self, v5))
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Favorites _reload:%@", &v12, 0xCu);
    }

    v7 = [(FavoritesManager *)self favoritesPersistence];
    v8 = [v7 dictionaryRepresentation];
    v9 = [v8 objectForKeyedSubscript:@"Collections"];

    if (v9)
    {
      [(FavoritesManager *)self _reloadFromCollectionDictionaries:v9];
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 postNotificationName:@"FavoritesManagerFavoritesDidChangeNotification" object:self userInfo:0];
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "#Favorites Attempting to reload from empty collection", &v12, 2u);
      }
    }
  }
}

- (id)collectionContainingItem:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_mailboxCollections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 items];
        v11 = [v10 containsObject:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSMutableArray)visibleMailboxCollections
{
  [(NSRecursiveLock *)self->_lock lock];
  visibleMailboxCollections = self->_visibleMailboxCollections;
  if (!visibleMailboxCollections)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_mailboxCollections, "count")}];
    v5 = self->_visibleMailboxCollections;
    self->_visibleMailboxCollections = v4;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_mailboxCollections;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = *v19;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (![v10 isOutboxCollection])
        {
          if (![v10 isVisible])
          {
            continue;
          }

          goto LABEL_13;
        }

        v11 = [(FavoritesManager *)self favoritesPersistence];
        v12 = [v11 showingOutbox];

        if (v12)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#Favorites Adding outbox to visibleMailboxCollections", v17, 2u);
          }

LABEL_13:
          [(NSMutableArray *)self->_visibleMailboxCollections addObject:v10];
          continue;
        }

        v14 = MFLogGeneral();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#Favorites Did not add outbox to visibleMailboxCollections", v17, 2u);
        }
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (!v7)
      {
LABEL_19:

        visibleMailboxCollections = self->_visibleMailboxCollections;
        break;
      }
    }
  }

  v15 = [(NSMutableArray *)visibleMailboxCollections copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v15;
}

- (id)itemsOfType:(int64_t)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  [(NSRecursiveLock *)self->_lock lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_mailboxCollections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) itemsOfType:{a3, v12}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v5;
}

- (id)itemsMatchingName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  [(NSRecursiveLock *)self->_lock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_mailboxCollections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemsMatchingName:{v4, v13}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v11 = [v5 array];

  return v11;
}

- (id)itemsMatchingItemURLStrings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  [(NSRecursiveLock *)self->_lock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_mailboxCollections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemsMatchingItemURLStrings:{v4, v13}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v11 = [v5 array];

  return v11;
}

- (id)itemsContainingName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  [(NSRecursiveLock *)self->_lock lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_mailboxCollections;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemsContainingName:{v4, v13}];
        [v5 addObjectsFromArray:v10];
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v11 = [v5 array];

  return v11;
}

- (NSArray)suggestedFavoriteItems
{
  v3 = objc_alloc_init(NSMutableOrderedSet);
  [(NSRecursiveLock *)self->_lock lock];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_mailboxCollections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) itemsIncludingSubItems];
        [v3 addObjectsFromArray:v8];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v9 = [v3 array];

  return v9;
}

- (id)visibleItemsOfType:(int64_t)a3
{
  v3 = [(FavoritesManager *)self itemsOfType:a3];
  v4 = [v3 ef_filter:&stru_10064EEC8];

  return v4;
}

- (id)favoriteMailboxesForAccount:(id)a3
{
  v4 = a3;
  v5 = [(FavoritesManager *)self favoritesPersistence];
  v6 = [v5 favoriteMailboxesForAccount:v4];

  return v6;
}

- (id)orderedFavoriteMailboxesForAccount:(id)a3 includeUnifiedMailboxes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FavoritesManager *)self favoritesPersistence];
  v8 = [v7 orderedFavoriteMailboxesForAccount:v6 includeUnifiedMailboxes:v4];

  return v8;
}

- (void)setLastSelectedItem:(id)a3
{
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  [(FavoritesManager *)self setPreviousSelectedItem:self->_lastSelectedItem];
  objc_storeStrong(&self->_lastSelectedItem, a3);
  [(NSRecursiveLock *)self->_lock unlock];
  v5 = [(FavoritesManager *)self favoritesPersistence];
  [v5 setLastSelectedItem:v6];
}

- (void)performTransaction:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (v4)
  {
    v4[2](v4, self);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)moveItemOfCollection:(id)a3 fromIndex:(int64_t)a4 toIndex:(int64_t)a5
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v9 = [v8 visibleItems];
  v10 = [v9 objectAtIndex:a4];
  v11 = [v9 objectAtIndex:a5];
  if ([v8 isAccountsCollection] && objc_msgSend(v11, "type") != 1)
  {
    if (a5 < 1)
    {
LABEL_8:
      v12 = v11;
    }

    else
    {
      v13 = a5 + 1;
      while (1)
      {
        v12 = [v9 objectAtIndexedSubscript:v13 - 2];
        if ([v12 type] == 1)
        {
          break;
        }

        if (--v13 <= 1)
        {
          goto LABEL_8;
        }
      }
    }

    v14 = MFLogGeneral();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v12;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#Favorites visibleItems:%@ fromItem:%@ toItem:%@", buf, 0x20u);
    }
  }

  else
  {
    v12 = v11;
  }

  v15 = [v8 items];
  v16 = [v15 mutableCopy];

  v17 = [v16 indexOfObject:v10];
  v18 = [v16 indexOfObject:v12];
  [v16 ef_moveObjectAtIndex:v17 toIndex:v18];
  [v8 setItems:v16];
  v19 = [v8 isAccountsCollection];
  [(NSRecursiveLock *)self->_lock unlock];
  v20 = [NSString stringWithFormat:@"moveItemOfCollection:%@ from:%ld to:%ld", v8, v17, v18];
  [(FavoritesManager *)self scheduleOrderChangeUpdateFavoritesPersistence:v19 ^ 1 withReason:v20];
}

- (BOOL)updateCollections:(id)a3 withItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  v34 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [v8 count];
  if (v10 != [v9 count])
  {
    __assert_rtn("[FavoritesManager updateCollections:withItems:]", "FavoritesManager.m", 531, "collections.count == itemArrays.count");
  }

  v31 = self;
  v32 = v9;
  v35 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = MFLogGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v47 = v34;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#Favorites updateCollections:%@ withItems:%@", buf, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock lock];
  v13 = 0;
  v14 = 0;
  while (v13 < [v34 count])
  {
    v15 = [v34 objectAtIndex:v13];
    v16 = [v32 objectAtIndex:v13];
    v17 = [v15 items];
    v18 = [NSArray arrayWithArray:v17];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = *v41;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v40 + 1) + 8 * i);
          if (([v16 containsObject:v23] & 1) == 0 && objc_msgSend(v23, "isDeletable"))
          {
            v24 = [v15 removeItem:v23];
            [v35 addObject:v23];
            v14 = 1;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v20);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = v16;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
    v33 = v13;
    if (v26)
    {
      v27 = *v37;
      do
      {
        for (j = 0; j != v26; j = j + 1)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v36 + 1) + 8 * j);
          if (([v19 containsObject:v29] & 1) == 0)
          {
            [v15 addItem:v29 ordered:1];
            [v11 addObject:v29];
            v14 = 1;
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v26);
    }

    v13 = v33 + 1;
  }

  [(NSRecursiveLock *)v31->_lock unlock];
  [(FavoritesManager *)v31 scheduleItemChangeUpdateFavoritesPersistence:v11 removedItems:v35 withReason:@"updateCollections:withItems:"];

  return v14 & 1;
}

- (void)refreshCollectionForItemExpansion:(id)a3 notify:(BOOL)a4
{
  v17 = a4;
  v5 = a3;
  v18 = self;
  [(FavoritesManager *)self visibleMailboxCollections];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [v10 items];
      v12 = [v11 indexOfObject:v5];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL || ([v10 expandedItems], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "indexOfObject:", v5), v13, v14 != 0x7FFFFFFFFFFFFFFFLL))
      {
        if (([v10 isMailboxesCollection] & 1) == 0)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v15 = v10;

    if (!v15)
    {
      goto LABEL_15;
    }

    [(NSRecursiveLock *)v18->_lock lock];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v15 addOrUpdateExpandedItem:v5 replacedItem:0];
    }

    else
    {
      [v15 addOrUpdateItem:v5 replacedItem:0];
    }

    [(NSRecursiveLock *)v18->_lock unlock];
    if (v17)
    {
      [(FavoritesManager *)v18 scheduleUpdateFavoritesPersistenceForChangeType:2 withReason:@"refreshCollectionForItemExpansion"];
    }
  }

  else
  {
LABEL_11:

LABEL_15:
    v16 = MFLogGeneral();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100486FE8(v5, v16);
    }

    v15 = 0;
  }
}

- (void)scheduleUpdateFavoritesPersistenceForChangeType:(unint64_t)a3 withReason:(id)a4
{
  v6 = a4;
  v7 = [(FavoritesManager *)self favoritesPersistence];
  v8 = self->_mailboxCollections;
  v9 = +[EFScheduler globalAsyncScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B3984;
  v13[3] = &unk_10064EEF0;
  v10 = v7;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  v18 = a3;
  v12 = v6;
  v16 = v12;
  v17 = self;
  [v9 performBlock:v13];
}

- (void)scheduleOrderChangeUpdateFavoritesPersistence:(unint64_t)a3 withReason:(id)a4
{
  v6 = a4;
  v7 = [(FavoritesManager *)self favoritesPersistence];
  v8 = self->_mailboxCollections;
  v9 = +[EFScheduler globalAsyncScheduler];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B3AF8;
  v13[3] = &unk_10064EEF0;
  v10 = v7;
  v14 = v10;
  v11 = v8;
  v15 = v11;
  v18 = a3;
  v12 = v6;
  v16 = v12;
  v17 = self;
  [v9 performBlock:v13];
}

- (void)scheduleItemChangeUpdateFavoritesPersistence:(id)a3 removedItems:(id)a4 withReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(FavoritesManager *)self favoritesPersistence];
  v12 = self->_mailboxCollections;
  v13 = +[EFScheduler globalAsyncScheduler];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000B3CE0;
  v21[3] = &unk_10064EF18;
  v14 = v11;
  v22 = v14;
  v15 = v12;
  v23 = v15;
  v19 = v11;
  v20 = v8;
  v16 = v8;
  v24 = v16;
  v17 = v9;
  v25 = v17;
  v18 = v10;
  v26 = v18;
  v27 = self;
  [v13 performBlock:{v21, v19, v20}];
}

- (void)scheduleSetVisibility:(BOOL)a3 forSourceType:(unint64_t)a4
{
  v6 = [(FavoritesManager *)self favoritesPersistence];
  v7 = +[EFScheduler globalAsyncScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B3DE4;
  v9[3] = &unk_10064EF40;
  v8 = v6;
  v12 = a3;
  v10 = v8;
  v11 = a4;
  [v7 performBlock:v9];
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_mailboxCollections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (([v9 transient] & 1) == 0)
        {
          v10 = [v9 dictionaryRepresentation];
          [v4 addObject:v10];
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v3 setObject:v4 forKeyedSubscript:@"Collections"];
  lastSelectedItem = self->_lastSelectedItem;
  if (lastSelectedItem)
  {
    v12 = [(FavoriteItem *)lastSelectedItem dictionaryRepresentation];
    [v3 setObject:v12 forKeyedSubscript:@"LastSelectedItem"];
  }

  return v3;
}

- (BOOL)_isDictionaryRepresentationValid:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"Collections"];
    v5 = v4;
    if (v4 && ([v4 ef_all:&stru_10064EF60] & 1) != 0)
    {
      v6 = [v3 ef_objectOfClass:objc_opt_class() forKey:@"LastSelectedItem"];
      v7 = v6 != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)defaultsKeyForAutomaticMailboxVisibilityForSourceType:(unint64_t)a3
{
  v3 = @"ReadLaterMailboxWasDismissed";
  v4 = @"SendLaterMailboxWasDismissed";
  if (a3 != 25)
  {
    v4 = 0;
  }

  if (a3 != 15)
  {
    v3 = v4;
  }

  v5 = @"FlaggedMailboxWasDismissed";
  v6 = @"ThreadNotificationsMailboxWasDismissed";
  if (a3 != 6)
  {
    v6 = 0;
  }

  if (a3 != 2)
  {
    v5 = v6;
  }

  if (a3 <= 14)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (void)_sharedMailboxControllerBadgeCountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 sourceType];
  v7 = [v4 userInfo];
  v8 = [objc_opt_class() defaultsKeyForAutomaticMailboxVisibilityForSourceType:v6];
  v9 = 0;
  if (v6 > 14)
  {
    if (v6 != 15)
    {
      v10 = 0;
      if (v6 != 25)
      {
        goto LABEL_8;
      }
    }

LABEL_7:
    v9 = v6 != 2;
    v12 = [v7 objectForKeyedSubscript:SharedNetworkControllerBadgeCountKey];
    v13 = [v12 integerValue];

    v10 = v13 > 0;
    goto LABEL_8;
  }

  if (v6 == 2)
  {
    goto LABEL_7;
  }

  v10 = 0;
  if (v6 == 6)
  {
    v11 = [(FavoritesManager *)self conversationSubscriptionProvider];
    v10 = [v11 hasSubscribedConversations];

    v9 = 0;
  }

LABEL_8:
  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 BOOLForKey:v8];

  v16 = MFLogGeneral();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17[0] = 67109890;
    v17[1] = v10;
    v18 = 1024;
    v19 = v9;
    v20 = 1024;
    v21 = v15;
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#Favorites FavoritesManager _sharedMailboxControllerBadgeCountDidChange doShow:%{BOOL}d setHiddenVisibility:%{BOOL}d defaultsValue:%{BOOL}d notification:%@ ", v17, 0x1Eu);
  }

  if (v8 && !(v15 & 1 | (((v10 | v9) & 1) == 0)))
  {
    [(FavoritesManager *)self scheduleSetVisibility:v10 forSourceType:v6];
  }
}

@end
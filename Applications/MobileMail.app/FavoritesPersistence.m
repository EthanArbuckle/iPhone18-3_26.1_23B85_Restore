@interface FavoritesPersistence
- (BOOL)hasFavoriteMailboxes;
- (BOOL)showingOutbox;
- (FavoritesCollection)mailboxesCollection;
- (FavoritesPersistence)initWithConversationSubscriptionProvider:(id)a3 accountsProvider:(id)a4 mailboxPersistence:(id)a5 daemonInterface:(id)a6 analyticsCollector:(id)a7;
- (id)coreAnalyticsPeriodicEvent;
- (id)dictionaryRepresentation;
- (id)favoriteMailboxesForAccount:(id)a3;
- (id)indexPathForItem:(id)a3;
- (id)mailboxesForAutoFetch;
- (id)orderedFavoriteMailboxesForAccount:(id)a3 includeUnifiedMailboxes:(BOOL)a4;
- (void)_accountsDidChange:(id)a3;
- (void)_focusDidChange:(id)a3;
- (void)_keyValueStoreChangedExternally:(id)a3;
- (void)_mailboxListingChanged:(id)a3;
- (void)_mailboxNameChanged:(id)a3;
- (void)dealloc;
- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5;
- (void)setLastSelectedItem:(id)a3;
- (void)setVisibility:(BOOL)a3 forSourceType:(unint64_t)a4;
- (void)updateCollections:(id)a3 changeType:(unint64_t)a4 withReason:(id)a5 source:(id)a6;
- (void)updateCollections:(id)a3 forItemChangeAddedItems:(id)a4 removedItems:(id)a5 withReason:(id)a6 source:(id)a7;
- (void)updateCollections:(id)a3 forOrderChange:(unint64_t)a4 withReason:(id)a5 source:(id)a6;
- (void)userNotificationCenterSettingsDidChange:(id)a3;
@end

@implementation FavoritesPersistence

- (FavoritesCollection)mailboxesCollection
{
  [(NSRecursiveLock *)self->_lock lock];
  if ([(NSMutableArray *)self->_mailboxCollections count])
  {
    v3 = [(NSMutableArray *)self->_mailboxCollections objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_alloc_init(NSMutableArray);
  [(NSRecursiveLock *)self->_lock lock];
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

  [(NSRecursiveLock *)self->_lock unlock];
  [v3 setObject:v4 forKeyedSubscript:@"Collections"];
  lastSelectedItem = self->_lastSelectedItem;
  if (lastSelectedItem)
  {
    v12 = [(FavoriteItem *)lastSelectedItem dictionaryRepresentation];
    [v3 setObject:v12 forKeyedSubscript:@"LastSelectedItem"];
  }

  return v3;
}

- (FavoritesPersistence)initWithConversationSubscriptionProvider:(id)a3 accountsProvider:(id)a4 mailboxPersistence:(id)a5 daemonInterface:(id)a6 analyticsCollector:(id)a7
{
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v13 = a6;
  v14 = a7;
  v60.receiver = self;
  v60.super_class = FavoritesPersistence;
  v15 = [(FavoritesPersistence *)&v60 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountsProvider, a4);
    objc_storeStrong(&v16->_conversationSubscriptionProvider, a3);
    v17 = [[MFRecursiveLock alloc] initWithName:@"FavoritesManagerLock" andDelegate:0];
    lock = v16->_lock;
    v16->_lock = v17;

    v19 = MFMailDirectory();
    v20 = [v19 stringByAppendingPathComponent:@"MailboxCollections.plist"];
    storagePath = v16->_storagePath;
    v16->_storagePath = v20;

    objc_storeStrong(&v16->_mailboxPersistence, a5);
    objc_storeStrong(&v16->_daemonInterface, a6);
    v22 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.FavoritesPersistence.writeCollectionData" qualityOfService:17];
    writeCollectionScheduler = v16->_writeCollectionScheduler;
    v16->_writeCollectionScheduler = v22;

    v24 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.FavoritesPersistence.mergeExternalChanges"];
    mergeExternalChangesScheduler = v16->_mergeExternalChangesScheduler;
    v16->_mergeExternalChangesScheduler = v24;

    sub_100006E64(v16);
    v26 = +[NSNotificationCenter defaultCenter];
    v27 = MFUserAgent();
    v28 = [v27 isMaild];

    if (v28)
    {
      v29 = [EFObservable observableOnNotifyTokenWithName:@"FavoritePersistenceShouldReload"];
      v30 = +[EFScheduler mainThreadScheduler];
      v31 = [v29 debounceWithTimeInterval:v30 scheduler:0.1];
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1000B4C24;
      v57[3] = &unk_10064EFC0;
      v32 = v16;
      v58 = v32;
      v33 = v26;
      v59 = v33;
      v34 = [v31 subscribeWithResultBlock:v57];
      favoritesPersistenceUpdateToken = v32->_favoritesPersistenceUpdateToken;
      v32->_favoritesPersistenceUpdateToken = v34;

      [v33 postNotificationName:@"MailApplicationFavoritesDidChange" object:v32];
      v36 = [v14 registerForLogEventsWithPeriodicDataProvider:v32];
    }

    [v26 addObserver:v16 selector:"_mailboxListingChanged:" name:AccountMailboxListingDidChange object:0];
    [v26 addObserver:v16 selector:"_mailboxNameChanged:" name:MFMailboxUidWasRenamedNotification object:0];
    [v26 addObserver:v16 selector:"_accountsDidChange:" name:ECMailAccountsDidChangeNotification object:0];
    [v26 addObserver:v16 selector:"_focusDidChange:" name:@"MFFocusDidChangeNotification" object:0];
    v37 = MFUserAgent();
    v38 = [v37 isMaild];

    if (v38)
    {
      [v26 addObserver:v16 selector:"_keyValueStoreChangedExternally:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:0];
    }

    else
    {
      v39 = [NSUbiquitousKeyValueStore additionalStoreWithIdentifier:@"com.apple.mail.favorites"];
      kvStore = v16->_kvStore;
      v16->_kvStore = v39;

      if (v16->_kvStore)
      {
        [v26 addObserver:v16 selector:"_keyValueStoreChangedExternally:" name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:?];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000B4CB0;
        block[3] = &unk_10064C660;
        v55 = v26;
        v56 = v16;
        dispatch_async(&_dispatch_main_q, block);

        v41 = v55;
      }

      else
      {
        v41 = sub_100007718();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = @"com.apple.mail.favorites";
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "failed to create kv store for %@", buf, 0xCu);
        }
      }
    }

    v42 = +[NSUserDefaults em_userDefaults];
    v43 = EMUserDefaultDisableFollowUp;
    v16->_hideFollowUp = [v42 BOOLForKey:EMUserDefaultDisableFollowUp];
    objc_initWeak(buf, v16);
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000B4D74;
    v51[3] = &unk_10064CB70;
    objc_copyWeak(&v53, buf);
    v44 = v42;
    v52 = v44;
    v45 = [v44 ef_observeKeyPath:v43 options:1 autoCancelToken:1 usingBlock:v51];
    userDefaultsObserver = v16->_userDefaultsObserver;
    v16->_userDefaultsObserver = v45;

    objc_destroyWeak(&v53);
    objc_destroyWeak(buf);
  }

  return v16;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FavoritesPersistence;
  [(FavoritesPersistence *)&v4 dealloc];
}

- (BOOL)showingOutbox
{
  [(NSRecursiveLock *)self->_lock lock];
  showingOutbox = self->_showingOutbox;
  [(NSRecursiveLock *)self->_lock unlock];
  return showingOutbox;
}

- (void)setLastSelectedItem:(id)a3
{
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastSelectedItem != v6)
  {
    objc_storeStrong(&self->_lastSelectedItem, a3);
    v5 = [NSString stringWithFormat:@"setLastSelectedItem: %@", v6];
    sub_1000B5BC8(self, v5);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (id)mailboxesForAutoFetch
{
  v3 = [NSMutableSet alloc];
  v4 = sub_1000B5FE4(self, 7);
  v5 = [v3 initWithArray:v4];

  [(NSRecursiveLock *)self->_lock lock];
  v6 = [(FavoritesPersistence *)self mailboxesCollection];
  v7 = [v6 visibleItems];

  includeFavoriteMailboxesDuringFetch = self->_includeFavoriteMailboxesDuringFetch;
  [(NSRecursiveLock *)self->_lock unlock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 type] == 4)
        {
          v14 = v13;
          v15 = sub_1000B5FE4(self, [v14 mailboxType]);
          [v5 addObjectsFromArray:v15];

LABEL_14:
          continue;
        }

        if ([v13 type] == 2 && includeFavoriteMailboxesDuringFetch)
        {
          v14 = [v13 representingMailbox];
          if (v14)
          {
            [v5 addObject:v14];
          }

          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [v5 allObjects];

  return v17;
}

- (id)indexPathForItem:(id)a3
{
  v4 = a3;
  v5 = sub_1000085EC(self);
  for (i = 0; ; ++i)
  {
    if (i >= [v5 count])
    {
      v10 = 0;
      goto LABEL_7;
    }

    v7 = [v5 objectAtIndex:i];
    v8 = [v7 visibleItems];
    v9 = [v8 indexOfObject:v4];

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }
  }

  v10 = [NSIndexPath indexPathForRow:v9 inSection:i];

LABEL_7:

  return v10;
}

- (void)updateCollections:(id)a3 changeType:(unint64_t)a4 withReason:(id)a5 source:(id)a6
{
  v15 = a3;
  v10 = a5;
  v11 = a6;
  sub_1000B63A8(self, v15, v10);
  [(NSRecursiveLock *)self->_lock lock];
  v12 = [v15 mutableCopy];
  mailboxCollections = self->_mailboxCollections;
  self->_mailboxCollections = v12;

  visibleMailboxCollections = self->_visibleMailboxCollections;
  self->_visibleMailboxCollections = 0;

  [(NSRecursiveLock *)self->_lock unlock];
  if (a4 != 2)
  {
    sub_100487060(self, v11);
  }
}

- (void)updateCollections:(id)a3 forItemChangeAddedItems:(id)a4 removedItems:(id)a5 withReason:(id)a6 source:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [(FavoritesPersistence *)self updateCollections:v16 changeType:0 withReason:v14 source:v15];
  [(NSRecursiveLock *)self->_lock lock];
  sub_1000B6DC8(&self->super.isa, v12, v13);
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)updateCollections:(id)a3 forOrderChange:(unint64_t)a4 withReason:(id)a5 source:(id)a6
{
  v13 = a3;
  v10 = a5;
  v11 = a6;
  [(FavoritesPersistence *)self updateCollections:v13 changeType:1 withReason:v10 source:v11];
  +[NSNotificationCenter defaultCenter];
  if (a4)
    v12 = {;
    [v12 postNotificationName:@"MailApplicationFavoritesOrderDidChange" object:0];
  }

  else
    v12 = {;
    [v12 postNotificationName:@"MailApplicationAccountsOrderDidChange" object:0];
  }
}

- (void)_keyValueStoreChangedExternally:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NSUbiquitousKeyValueStoreChangeReasonKey];
  v6 = [v5 integerValue];

  if (v6 == 2)
  {
    v7 = sub_100007718();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100487E1C(v7);
    }
  }

  else
  {
    v8 = [v4 objectForKey:NSUbiquitousKeyValueStoreChangedKeysKey];
    sub_1000B7380(self, v6, v8);
  }
}

- (void)_accountsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:ECMailAccountsDidChangeNotificationKeyAccountIdentifiers];

  v16 = [v6 isEqualToSet:v8] ^ 1;
  v9 = v6;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  v15 = self;
  v11 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v11 performBlock:&v12];
}

- (void)_focusDidChange:(id)a3
{
  v6 = self;
  v3 = a3;
  v7 = v3;
  v4 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v4 performBlock:&v5];
}

- (void)_mailboxListingChanged:(id)a3
{
  v5 = a3;
  v6 = sub_100007718();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000B8588;
  v9[3] = &unk_10064C660;
  v10 = v5;
  v11 = self;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)_mailboxNameChanged:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v5 = [v4 object];
  v6 = [(FavoritesPersistence *)self mailboxesCollection];
  [v6 itemsOfType:2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v16 + 1) + 8 * v10);
      v12 = [v11 representingMailbox];
      if ([v12 isEqual:v5])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v11;

    if (!v8)
    {
      goto LABEL_14;
    }

    v13 = [v8 syncKey];
    if ([v8 shouldSync])
    {
      [v8 wasChangedExternally];
      v14 = sub_1000B71FC(self, v8);
      [(NSUbiquitousKeyValueStore *)self->_kvStore setObject:v14 forKey:v13];
      [(NSUbiquitousKeyValueStore *)self->_kvStore synchronize];
      v15 = [NSString stringWithFormat:@"_mailboxNameChanged: changedItem: %@", v8];
      sub_1000B5BC8(self, v15);
    }
  }

  else
  {
LABEL_9:
    v13 = v7;
  }

LABEL_14:
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setVisibility:(BOOL)a3 forSourceType:(unint64_t)a4
{
  v5 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  v14 = [(FavoritesPersistence *)self mailboxesCollection];
  v7 = [v14 items];
  v8 = [FavoriteItem itemForSharedMailboxWithType:a4 selected:0];
  v9 = [v7 indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 objectAtIndex:v9];
    v12 = v11;
    if (!v11 || [v11 isSelected] == v5)
    {
      v10 = 0;
    }

    else
    {
      [v12 setSelected:v5];
      v13 = [(FavoritesPersistence *)self mailboxCollections];
      sub_1000B63A8(self, v13, @"_sharedMailboxControllerBadgeCountDidChange");

      [v14 invalidateVisibleItems];
      v10 = 1;
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
  if (v10)
  {
    sub_100487060(self, 0);
  }
}

- (void)userNotificationCenterSettingsDidChange:(id)a3
{
  v6 = a3;
  v4 = [v6 objectForKeyedSubscript:MSUserNotificationCenterTopicFavoriteMailboxes];
  v5 = [v4 alertSetting] == 2 || objc_msgSend(v4, "notificationCenterSetting") == 2 || objc_msgSend(v4, "lockScreenSetting") == 2;
  [(NSRecursiveLock *)self->_lock lock];
  self->_includeFavoriteMailboxesDuringFetch = v5;
  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)messageRepository:(id)a3 query:(id)a4 countDidChange:(int64_t)a5
{
  v7 = a5 > 0;
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a5;
    v13 = 2048;
    v14 = a5 > 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Favorites Outbox countDidChange to: %lld shouldShow: %lld", &v11, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (self->_showingOutbox == v7)
  {
    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    self->_showingOutbox = v7;
    [(NSRecursiveLock *)self->_lock unlock];
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#Favorites Posting notifications for outbox visibility change", &v11, 2u);
    }

    visibleMailboxCollections = self->_visibleMailboxCollections;
    self->_visibleMailboxCollections = 0;

    sub_100487060(self, 0);
  }
}

- (BOOL)hasFavoriteMailboxes
{
  v2 = [(FavoritesPersistence *)self mailboxesCollection];
  v3 = [v2 visibleItems];
  v4 = [v3 ef_any:&stru_10064F190];

  return v4;
}

- (id)favoriteMailboxesForAccount:(id)a3
{
  v3 = [(FavoritesPersistence *)self orderedFavoriteMailboxesForAccount:a3 includeUnifiedMailboxes:0];
  v4 = [v3 set];

  return v4;
}

- (id)orderedFavoriteMailboxesForAccount:(id)a3 includeUnifiedMailboxes:(BOOL)a4
{
  v6 = a3;
  v21 = objc_alloc_init(NSMutableOrderedSet);
  if (a4)
  {
    v7 = [(FavoritesPersistence *)self mailboxesCollection];
    v8 = [v7 visibleItems];
  }

  else
  {
    v8 = sub_1000B5E4C(self, 2);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 type] != 2)
        {
          if ([v13 type] != 4)
          {
            continue;
          }

          v18 = [v13 representingMailboxes];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1000B9770;
          v22[3] = &unk_10064F1B8;
          v23 = v6;
          v19 = [v18 ef_filter:v22];

          [v21 addObjectsFromArray:v19];
          v17 = v23;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [v14 account];
        v16 = v15 == v6;

        if (v16)
        {
          v17 = [v14 representingMailbox];
          if (v17)
          {
            [v21 addObject:v17];
          }

LABEL_15:
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  return v21;
}

- (id)coreAnalyticsPeriodicEvent
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(FavoritesPersistence *)self mailboxesCollection];
  v5 = [v4 selectedItems];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) analyticsKey];
        if (v9)
        {
          v10 = [v3 objectForKeyedSubscript:v9];
          v11 = [v10 integerValue];

          if (v11 >= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          v13 = [NSNumber numberWithInteger:v12 + 1];
          [v3 setObject:v13 forKeyedSubscript:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [[EMCoreAnalyticsEvent alloc] initWithEventName:@"com.apple.mail.mailboxes.favorites.configuration" collectionData:v3];

  return v14;
}

@end
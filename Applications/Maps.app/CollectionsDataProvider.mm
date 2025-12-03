@interface CollectionsDataProvider
- (CollectionsDataProvider)initWithContext:(int64_t)context observeInfo:(BOOL)info observeContents:(BOOL)contents;
- (GEOObserverHashTable)observers;
- (void)_startObservingCollection:(id)collection;
- (void)_stopObservingCollection:(id)collection;
- (void)_updateCollectionsAndNotifyObservers:(BOOL)observers;
- (void)_updateContentsOfCollection:(id)collection notifyObservers:(BOOL)observers;
- (void)_updateInfoOfCollection:(id)collection notifyObservers:(BOOL)observers;
- (void)_updateObservedCollectionsWithCollections:(id)collections;
- (void)collectionHandlerContentUpdated:(id)updated;
- (void)collectionHandlerInfoUpdated:(id)updated;
- (void)collectionManager:(id)manager contentDidChange:(id)change;
- (void)setActive:(BOOL)active;
@end

@implementation CollectionsDataProvider

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_stopObservingCollection:(id)collection
{
  collectionCopy = collection;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@: %@", &v10, 0x20u);
  }

  [collectionCopy removeObserver:self];
}

- (void)_startObservingCollection:(id)collection
{
  collectionCopy = collection;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = collectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@: %@", &v10, 0x20u);
  }

  [collectionCopy addObserver:self];
}

- (void)_updateObservedCollectionsWithCollections:(id)collections
{
  collectionsCopy = collections;
  v5 = collectionsCopy;
  if (self->_observeInfo || self->_observeContents)
  {
    allKeys = [collectionsCopy allKeys];
    v7 = [NSSet setWithArray:allKeys];

    allKeys2 = [(NSDictionary *)self->_observedCollectionsByIdentifier allKeys];
    v9 = [NSSet setWithArray:allKeys2];

    v10 = [NSMutableSet setWithSet:v7];
    [v10 minusSet:v9];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v5 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * v15)];
          [(CollectionsDataProvider *)self _startObservingCollection:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v13);
    }

    v17 = [NSMutableSet setWithSet:v9];
    [v17 minusSet:v7];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(NSDictionary *)self->_observedCollectionsByIdentifier objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v22), v26];
          [(CollectionsDataProvider *)self _stopObservingCollection:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    v24 = [v5 copy];
    observedCollectionsByIdentifier = self->_observedCollectionsByIdentifier;
    self->_observedCollectionsByIdentifier = v24;
  }
}

- (void)collectionHandlerContentUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@: %@", &v10, 0x20u);
  }

  [(CollectionsDataProvider *)self _updateContentsOfCollection:updatedCopy notifyObservers:1];
}

- (void)collectionHandlerInfoUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = sub_1000410AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@: %@", &v10, 0x20u);
  }

  [(CollectionsDataProvider *)self _updateInfoOfCollection:updatedCopy notifyObservers:1];
}

- (void)collectionManager:(id)manager contentDidChange:(id)change
{
  changeCopy = change;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = 138412802;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = changeCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@ %@", &v11, 0x20u);
  }

  [(CollectionsDataProvider *)self _updateCollectionsAndNotifyObservers:1];
}

- (void)_updateContentsOfCollection:(id)collection notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  collectionCopy = collection;
  v8 = collectionCopy;
  if (self->_active && self->_observeContents)
  {
    contentsByIdentifier = self->_contentsByIdentifier;
    identifier = [collectionCopy identifier];
    v11 = [(NSDictionary *)contentsByIdentifier objectForKeyedSubscript:identifier];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    v14 = v13;

    content = [v8 content];
    v16 = content;
    if (content)
    {
      v17 = content;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    v18 = v17;

    v19 = [v14 isEqualToArray:v18];
    if ((v19 & 1) == 0)
    {
      v20 = [NSMutableDictionary dictionaryWithDictionary:self->_contentsByIdentifier];
      identifier2 = [v8 identifier];
      [v20 setObject:v18 forKeyedSubscript:identifier2];

      v22 = [v20 copy];
      v23 = self->_contentsByIdentifier;
      self->_contentsByIdentifier = v22;
    }

    v24 = sub_1000410AC();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      v32 = v18;
      if (v19)
      {
        v28 = @"NO";
      }

      else
      {
        v28 = @"YES";
      }

      v33 = v14;
      v29 = v28;
      if (observersCopy)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v31 = v30;
      *buf = 138413314;
      v35 = v26;
      v36 = 2112;
      v37 = v27;
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v29;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%@ %@, collection = %@, contentsChanged = %@, notifyObservers = %@", buf, 0x34u);

      v18 = v32;
      v14 = v33;
    }

    if (((v19 | !observersCopy) & 1) == 0)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)_updateInfoOfCollection:(id)collection notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  collectionCopy = collection;
  if (self->_active && self->_observeInfo)
  {
    v8 = sub_1000410AC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = @"NO";
      if (observersCopy)
      {
        v12 = @"YES";
      }

      v13 = v12;
      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = collectionCopy;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@ %@, collection = %@, notifyObservers = %@", &v14, 0x2Au);
    }

    if (observersCopy)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)_updateCollectionsAndNotifyObservers:(BOOL)observers
{
  if (!self->_active)
  {
    return;
  }

  observersCopy = observers;
  v5 = +[CollectionManager sharedManager];
  if ([v5 hasInitialCollections])
  {
    hasInitialData = self->_hasInitialData;

    if (!hasInitialData)
    {
      v61 = 1;
      self->_hasInitialData = 1;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v61 = 0;
LABEL_7:
  v7 = 0;
  context = self->_context;
  v59 = observersCopy;
  if (context > 2)
  {
    switch(context)
    {
      case 3:
        v9 = +[CollectionManager sharedManager];
        currentCollectionsForWatchHome = [v9 currentCollectionsForWatchHome];
        break;
      case 4:
        v9 = +[CollectionManager sharedManager];
        currentCollectionsForWatchHome = [v9 currentCollectionsForCarPlay];
        break;
      case 5:
        v9 = +[CollectionManager sharedManager];
        currentCollectionsForWatchHome = [v9 currentCollectionsForPicker];
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (context)
  {
    if (context == 1)
    {
      v9 = +[CollectionManager sharedManager];
      currentCollectionsForWatchHome = [v9 currentCollectionsForMacHome];
    }

    else
    {
      if (context != 2)
      {
        goto LABEL_21;
      }

      v9 = +[CollectionManager sharedManager];
      currentCollectionsForWatchHome = [v9 currentCollectionsForiOSHome];
    }
  }

  else
  {
    v9 = +[CollectionManager sharedManager];
    currentCollectionsForWatchHome = [v9 currentCollections];
  }

  v7 = currentCollectionsForWatchHome;

LABEL_21:
  collections = self->_collections;
  v12 = v7;
  v13 = collections;
  v14 = [v12 count];
  if (v14 != [(NSArray *)v13 count])
  {
LABEL_27:

    v22 = +[NSMutableDictionary dictionary];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v23 = v12;
    v24 = [v23 countByEnumeratingWithState:&v66 objects:v83 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v67;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v67 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v66 + 1) + 8 * i);
          identifier = [v28 identifier];
          [v22 setObject:v28 forKeyedSubscript:identifier];
        }

        v25 = [v23 countByEnumeratingWithState:&v66 objects:v83 count:16];
      }

      while (v25);
    }

    v30 = [v23 copy];
    v31 = self->_collections;
    self->_collections = v30;

    v32 = [v22 copy];
    collectionsByIdentifier = self->_collectionsByIdentifier;
    self->_collectionsByIdentifier = v32;

    [(CollectionsDataProvider *)self _updateObservedCollectionsWithCollections:self->_collectionsByIdentifier];
    v21 = 1;
    goto LABEL_35;
  }

  if ([v12 count])
  {
    v15 = 0;
    do
    {
      v16 = [v12 objectAtIndexedSubscript:v15];
      identifier2 = [v16 identifier];
      v18 = [(NSArray *)v13 objectAtIndexedSubscript:v15];
      identifier3 = [v18 identifier];
      v20 = [identifier2 isEqualToString:identifier3];

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    while (++v15 < [v12 count]);
  }

  v21 = 0;
LABEL_35:
  v60 = v21;
  if (self->_observeContents)
  {
    v34 = +[NSMutableDictionary dictionary];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v35 = v12;
    v36 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v63;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v63 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v62 + 1) + 8 * j);
          content = [v40 content];
          identifier4 = [v40 identifier];
          [v34 setObject:content forKeyedSubscript:identifier4];
        }

        v37 = [v35 countByEnumeratingWithState:&v62 objects:v82 count:16];
      }

      while (v37);
    }

    v43 = [v34 isEqualToDictionary:self->_contentsByIdentifier];
    v44 = v43 ^ 1;
    if ((v43 & 1) == 0)
    {
      v45 = [v34 copy];
      contentsByIdentifier = self->_contentsByIdentifier;
      self->_contentsByIdentifier = v45;
    }

    v21 = v60;
  }

  else
  {
    v44 = 0;
  }

  v47 = sub_1000410AC();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = NSStringFromSelector(a2);
    aSelectora = [(NSArray *)self->_collections count];
    if (v61)
    {
      v51 = @"YES";
    }

    else
    {
      v51 = @"NO";
    }

    v52 = v51;
    if (v21)
    {
      v53 = @"YES";
    }

    else
    {
      v53 = @"NO";
    }

    v54 = v53;
    if (v44)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    v56 = v55;
    *buf = 138413570;
    v71 = v49;
    v72 = 2112;
    v73 = v50;
    v74 = 1024;
    v75 = aSelectora;
    v76 = 2112;
    v77 = v52;
    v78 = 2112;
    v79 = v54;
    v80 = 2112;
    v81 = v56;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%@ %@, # collections = %d, hasInitialDataChanged = %@, collectionsChanged = %@, contentsChanged = %@", buf, 0x3Au);

    v21 = v60;
  }

  if ((v61 | v21 | v44) == 1 && v59)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    v5 = +[CollectionManager sharedManager];
    v6 = v5;
    if (activeCopy)
    {
      [v5 addObserver:self];

      [(CollectionsDataProvider *)self _updateObservedCollectionsWithCollections:self->_collectionsByIdentifier];

      [(CollectionsDataProvider *)self _updateCollectionsAndNotifyObservers:1];
    }

    else
    {
      [v5 removeObserver:self];

      [(CollectionsDataProvider *)self _updateObservedCollectionsWithCollections:&__NSDictionary0__struct];
    }
  }
}

- (CollectionsDataProvider)initWithContext:(int64_t)context observeInfo:(BOOL)info observeContents:(BOOL)contents
{
  v12.receiver = self;
  v12.super_class = CollectionsDataProvider;
  v8 = [(CollectionsDataProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_observeInfo = info;
    v8->_observeContents = contents;
    collections = v8->_collections;
    v8->_context = context;
    v8->_collections = &__NSArray0__struct;
  }

  return v9;
}

@end
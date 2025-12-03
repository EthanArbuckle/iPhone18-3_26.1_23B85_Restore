@interface FavoritesCollectionState
+ (OS_os_log)log;
+ (id)displayOrder;
- (BOOL)addExpandedItem:(id)item;
- (BOOL)addItem:(id)item ordered:(BOOL)ordered;
- (FavoritesCollectionState)initWithType:(unint64_t)type;
- (NSArray)selectedItems;
- (NSArray)visibleItems;
- (id)addOrUpdateExpandedItem:(id)item didAdd:(BOOL *)add didReplace:(BOOL *)replace;
- (id)addOrUpdateItem:(id)item didAdd:(BOOL *)add didReplace:(BOOL *)replace;
- (id)dictionaryRepresentations;
- (id)expandedItemWithSyncKey:(id)key;
- (id)itemWithSyncKey:(id)key;
- (id)orderedAccountIds;
- (id)removeExpandedItem:(id)item;
- (id)removeItem:(id)item;
- (id)removeItemWithSyncKey:(id)key;
- (int64_t)_indexForNewItem:(id)item;
- (unint64_t)countOfVisibleItems;
- (void)_addAccountsCollectionVisibleItemsToArray:(id)array;
- (void)_addMailboxCollectionVisibleItemsToArray:(id)array;
- (void)_addSubitems:(id)subitems toArray:(id)array;
- (void)_addVisibleItem:(id)item toArray:(id)array;
- (void)invalidateVisibleItems;
- (void)setExpandedItems:(id)items;
- (void)setItems:(id)items;
@end

@implementation FavoritesCollectionState

- (void)invalidateVisibleItems
{
  v3 = +[FavoritesCollectionState log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100486F18(self, v3);
  }

  visibleItems = self->_visibleItems;
  self->_visibleItems = 0;

  selectedItems = self->_selectedItems;
  self->_selectedItems = 0;
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007B64;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCEE0 != -1)
  {
    dispatch_once(&qword_1006DCEE0, block);
  }

  v2 = qword_1006DCED8;

  return v2;
}

- (NSArray)visibleItems
{
  visibleItems = self->_visibleItems;
  if (!visibleItems)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if ([(FavoritesCollectionState *)self isMailboxesCollection])
    {
      [(FavoritesCollectionState *)self _addMailboxCollectionVisibleItemsToArray:v4];
    }

    else if ([(FavoritesCollectionState *)self isAccountsCollection])
    {
      [(FavoritesCollectionState *)self _addAccountsCollectionVisibleItemsToArray:v4];
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      items = [(FavoritesCollectionState *)self items];
      v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(items);
            }

            [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v13 + 1) + 8 * v8) toArray:v4];
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [items countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v6);
      }
    }

    v9 = [v4 copy];
    v11 = self->_visibleItems;
    p_visibleItems = &self->_visibleItems;
    *p_visibleItems = v9;

    visibleItems = *p_visibleItems;
  }

  return visibleItems;
}

- (id)dictionaryRepresentations
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  items = [(FavoritesCollectionState *)self items];
  expandedItems = [(FavoritesCollectionState *)self expandedItems];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = items;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
        if (dictionaryRepresentation)
        {
          [v3 addObject:dictionaryRepresentation];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = expandedItems;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        dictionaryRepresentationRemovingSyncKeys = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentationRemovingSyncKeys];
        if (dictionaryRepresentationRemovingSyncKeys)
        {
          [v4 addObject:dictionaryRepresentationRemovingSyncKeys];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v13);
  }

  v27[0] = @"items";
  v27[1] = @"expandedItems";
  v28[0] = v3;
  v28[1] = v4;
  v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];

  return v17;
}

- (id)orderedAccountIds
{
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  items = [(FavoritesCollectionState *)self items];
  v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(items);
        }

        account = [*(*(&v11 + 1) + 8 * i) account];
        uniqueID = [account uniqueID];

        if (uniqueID)
        {
          [v3 addObject:uniqueID];
        }
      }

      v5 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v3;
}

- (FavoritesCollectionState)initWithType:(unint64_t)type
{
  v12.receiver = self;
  v12.super_class = FavoritesCollectionState;
  v4 = [(FavoritesCollectionState *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    items = v4->_items;
    v4->_items = v5;

    v7 = objc_alloc_init(NSMutableArray);
    expandedItems = v4->_expandedItems;
    v4->_expandedItems = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    expandedItemBySyncKey = v4->_expandedItemBySyncKey;
    v4->_expandedItemBySyncKey = v9;

    v4->_type = type;
  }

  return v4;
}

- (BOOL)addItem:(id)item ordered:(BOOL)ordered
{
  orderedCopy = ordered;
  itemCopy = item;
  mutableItems = [(FavoritesCollectionState *)self mutableItems];
  v8 = [mutableItems containsObject:itemCopy];
  if ((v8 & 1) == 0)
  {
    if (orderedCopy && (v9 = [(FavoritesCollectionState *)self _indexForNewItem:itemCopy], v9 != 0x7FFFFFFFFFFFFFFFLL))
    {
      [mutableItems insertObject:itemCopy atIndex:v9];
    }

    else
    {
      [mutableItems addObject:itemCopy];
    }
  }

  return v8 ^ 1;
}

- (BOOL)addExpandedItem:(id)item
{
  itemCopy = item;
  syncKey = [itemCopy syncKey];

  if (syncKey)
  {
    mutableExpandedItems = [(FavoritesCollectionState *)self mutableExpandedItems];
    mutableExpandedItemBySyncKey = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    syncKey2 = [itemCopy syncKey];
    v9 = [mutableExpandedItemBySyncKey objectForKeyedSubscript:syncKey2];
    v10 = v9 == 0;

    if (!v9)
    {
      [mutableExpandedItems addObject:itemCopy];
      syncKey3 = [itemCopy syncKey];
      [mutableExpandedItemBySyncKey setObject:itemCopy forKeyedSubscript:syncKey3];
    }
  }

  else
  {
    v12 = +[FavoritesCollectionState log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      ef_publicDescription = [itemCopy ef_publicDescription];
      v16 = 138412802;
      v17 = v14;
      v18 = 2048;
      selfCopy = self;
      v20 = 2114;
      v21 = ef_publicDescription;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to add an expanded item without a sync key: %{public}@", &v16, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)addOrUpdateItem:(id)item didAdd:(BOOL *)add didReplace:(BOOL *)replace
{
  itemCopy = item;
  mutableItems = [(FavoritesCollectionState *)self mutableItems];
  syncKey = [itemCopy syncKey];
  v11 = [(FavoritesCollectionState *)self itemWithSyncKey:syncKey];

  if (v11)
  {
    v12 = [mutableItems indexOfObject:v11];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = 0;
LABEL_8:
      if (([itemCopy isEqual:v11] & 1) == 0)
      {
        [mutableItems replaceObjectAtIndex:v12 withObject:itemCopy];
        if (replace)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = [mutableItems indexOfObject:itemCopy];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [mutableItems objectAtIndexedSubscript:v12];
      goto LABEL_8;
    }
  }

  [(FavoritesCollectionState *)self addItem:itemCopy ordered:1];
  v13 = 0;
  replace = add;
  if (add)
  {
LABEL_10:
    *replace = 1;
  }

LABEL_11:

  return v13;
}

- (id)addOrUpdateExpandedItem:(id)item didAdd:(BOOL *)add didReplace:(BOOL *)replace
{
  itemCopy = item;
  syncKey = [itemCopy syncKey];

  if (syncKey)
  {
    mutableExpandedItems = [(FavoritesCollectionState *)self mutableExpandedItems];
    mutableExpandedItemBySyncKey = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    syncKey2 = [itemCopy syncKey];
    v13 = [(FavoritesCollectionState *)self expandedItemWithSyncKey:syncKey2];

    if (v13)
    {
      v14 = [mutableExpandedItems indexOfObject:v13];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
LABEL_12:
        v17 = [mutableExpandedItems objectAtIndex:v14];
        syncKey3 = [v17 syncKey];

        [mutableExpandedItems replaceObjectAtIndex:v14 withObject:itemCopy];
        [mutableExpandedItemBySyncKey setObject:0 forKeyedSubscript:syncKey3];
        syncKey4 = [itemCopy syncKey];
        [mutableExpandedItemBySyncKey setObject:itemCopy forKeyedSubscript:syncKey4];

        if (replace)
        {
          *replace = 1;
        }

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
      v14 = [mutableExpandedItems indexOfObject:itemCopy];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [mutableExpandedItems objectAtIndexedSubscript:v14];
        goto LABEL_12;
      }
    }

    [(FavoritesCollectionState *)self addExpandedItem:itemCopy];
    v15 = 0;
    if (add)
    {
      *add = 1;
    }

    goto LABEL_15;
  }

  v16 = +[FavoritesCollectionState log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    ef_publicDescription = [itemCopy ef_publicDescription];
    v23 = 138412802;
    v24 = v21;
    v25 = 2048;
    selfCopy = self;
    v27 = 2114;
    v28 = ef_publicDescription;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to add/update an expanded item without a sync key: %{public}@", &v23, 0x20u);
  }

  v15 = 0;
LABEL_16:

  return v15;
}

+ (id)displayOrder
{
  if (qword_1006DCEF0 != -1)
  {
    sub_100486EF0();
  }

  v3 = qword_1006DCEE8;

  return v3;
}

- (int64_t)_indexForNewItem:(id)item
{
  itemCopy = item;
  if (qword_1006DCF00 != -1)
  {
    sub_100486F04();
  }

  items = [(FavoritesCollectionState *)self items];
  if ([items count])
  {
    v6 = +[FavoritesCollectionState displayOrder];
    v7 = [v6 indexOfObject:objc_opt_class()];
    for (i = 0; ; ++i)
    {
      if (i >= [items count])
      {
        i = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_12;
      }

      v9 = [items objectAtIndexedSubscript:i];
      if (([v9 isEqual:qword_1006DCEF8] & 1) == 0 && v7 < objc_msgSend(v6, "indexOfObject:", objc_opt_class()))
      {
        break;
      }
    }

LABEL_12:
  }

  else
  {
    i = 0x7FFFFFFFFFFFFFFFLL;
  }

  return i;
}

- (id)itemWithSyncKey:(id)key
{
  keyCopy = key;
  items = [(FavoritesCollectionState *)self items];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AF6BC;
  v10[3] = &unk_10064ED38;
  v6 = keyCopy;
  v11 = v6;
  v7 = [items indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [items objectAtIndex:v7];
  }

  return v8;
}

- (id)expandedItemWithSyncKey:(id)key
{
  keyCopy = key;
  expandedItemBySyncKey = [(FavoritesCollectionState *)self expandedItemBySyncKey];
  v6 = [expandedItemBySyncKey objectForKeyedSubscript:keyCopy];

  return v6;
}

- (id)removeItemWithSyncKey:(id)key
{
  keyCopy = key;
  mutableItems = [(FavoritesCollectionState *)self mutableItems];
  v6 = [(FavoritesCollectionState *)self itemWithSyncKey:keyCopy];
  if (v6)
  {
    [mutableItems removeObject:v6];
  }

  return v6;
}

- (void)_addSubitems:(id)subitems toArray:(id)array
{
  subitemsCopy = subitems;
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = subitemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v12 + 1) + 8 * v11) toArray:arrayCopy, v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_addVisibleItem:(id)item toArray:(id)array
{
  itemCopy = item;
  arrayCopy = array;
  if ([itemCopy isVisible])
  {
    [arrayCopy addObject:itemCopy];
    subItems = [itemCopy subItems];
    v8 = [subItems count];

    if (-[FavoritesCollectionState isEditing](self, "isEditing") || ([itemCopy isExpandable] & 1) == 0)
    {
      if (![(FavoritesCollectionState *)self isEditing])
      {
        goto LABEL_11;
      }

      isExpandableInEditMode = [itemCopy isExpandableInEditMode];
    }

    else
    {
      isExpandableInEditMode = 1;
    }

    if (v8 && isExpandableInEditMode && [itemCopy isExpanded])
    {
      subItems2 = [itemCopy subItems];
      [(FavoritesCollectionState *)self _addSubitems:subItems2 toArray:arrayCopy];
    }
  }

LABEL_11:
}

- (void)_addMailboxCollectionVisibleItemsToArray:(id)array
{
  arrayCopy = array;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  items = [(FavoritesCollectionState *)self items];
  v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(items);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (-[FavoritesCollectionState isEditing](self, "isEditing") || [v9 isSelected])
        {
          [(FavoritesCollectionState *)self _addVisibleItem:v9 toArray:arrayCopy];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_addAccountsCollectionVisibleItemsToArray:(id)array
{
  arrayCopy = array;
  [(FavoritesCollectionState *)self items];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 isVisible])
        {
          v12 = v11;

          ++v7;
          v8 = v12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
    LODWORD(v6) = v7 == 1;
  }

  else
  {
    v8 = 0;
  }

  if (([(FavoritesCollectionState *)self isEditing]& v6) == 1)
  {
    [v8 setExpanded:1];
LABEL_15:
    subItems = [v8 subItems];
    [(FavoritesCollectionState *)self _addSubitems:subItems toArray:arrayCopy];
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_15;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  subItems = v5;
  v14 = [subItems countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v14)
  {
    v15 = *v18;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(subItems);
        }

        [(FavoritesCollectionState *)self _addVisibleItem:*(*(&v17 + 1) + 8 * j) toArray:arrayCopy, v17];
      }

      v14 = [subItems countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }

LABEL_16:
}

- (id)removeItem:(id)item
{
  itemCopy = item;
  mutableItems = [(FavoritesCollectionState *)self mutableItems];
  if ([mutableItems containsObject:itemCopy])
  {
    [mutableItems removeObject:itemCopy];
    v6 = itemCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)removeExpandedItem:(id)item
{
  itemCopy = item;
  syncKey = [itemCopy syncKey];

  if (syncKey)
  {
    mutableExpandedItems = [(FavoritesCollectionState *)self mutableExpandedItems];
    mutableExpandedItemBySyncKey = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
    syncKey2 = [itemCopy syncKey];
    v9 = [mutableExpandedItemBySyncKey objectForKeyedSubscript:syncKey2];

    if (v9)
    {
      [mutableExpandedItems removeObject:itemCopy];
      syncKey3 = [itemCopy syncKey];
      [mutableExpandedItemBySyncKey setObject:0 forKeyedSubscript:syncKey3];

      v9 = itemCopy;
    }
  }

  else
  {
    v11 = +[FavoritesCollectionState log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      ef_publicDescription = [itemCopy ef_publicDescription];
      v15 = 138412802;
      v16 = v13;
      v17 = 2048;
      selfCopy = self;
      v19 = 2114;
      v20 = ef_publicDescription;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<%@: %p> Attempting to remove an expanded item without a sync key: %{public}@", &v15, 0x20u);
    }

    v9 = 0;
  }

  return v9;
}

- (NSArray)selectedItems
{
  selectedItems = self->_selectedItems;
  if (!selectedItems)
  {
    items = [(FavoritesCollectionState *)self items];
    v5 = [items ef_filter:&stru_10064ED78];
    v6 = self->_selectedItems;
    self->_selectedItems = v5;

    selectedItems = self->_selectedItems;
  }

  v7 = [(NSArray *)selectedItems copy];

  return v7;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  mutableItems = [(FavoritesCollectionState *)self mutableItems];
  [mutableItems setArray:itemsCopy];
}

- (void)setExpandedItems:(id)items
{
  itemsCopy = items;
  mutableExpandedItems = [(FavoritesCollectionState *)self mutableExpandedItems];
  [mutableExpandedItems setArray:itemsCopy];

  mutableExpandedItemBySyncKey = [(FavoritesCollectionState *)self mutableExpandedItemBySyncKey];
  v6 = [itemsCopy valueForKey:@"syncKey"];
  v7 = [NSDictionary dictionaryWithObjects:itemsCopy forKeys:v6];
  [mutableExpandedItemBySyncKey setDictionary:v7];
}

- (unint64_t)countOfVisibleItems
{
  items = [(FavoritesCollectionState *)self items];
  v3 = [items ef_countObjectsPassingTest:&stru_10064ED98];

  return v3;
}

@end
@interface FREditorialItemEntryManager
- (FREditorialItemEntryManager)initWithLocalStore:(id)store;
- (id)cachedArticleIDs;
- (void)addEditorialItem:(id)item;
- (void)addOrderedEditorialItemIDs:(id)ds;
- (void)loadLocalCachesFromStore;
- (void)removeItemWithIdentifier:(id)identifier;
@end

@implementation FREditorialItemEntryManager

- (void)loadLocalCachesFromStore
{
  v3 = +[NSMutableDictionary dictionary];
  [(FREditorialItemEntryManager *)self setEditorialItemsByID:v3];

  v4 = +[NSMutableArray array];
  [(FREditorialItemEntryManager *)self setOrderedEditorialItemIDs:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  localStore = [(FREditorialItemEntryManager *)self localStore];
  allKeys = [localStore allKeys];

  obj = allKeys;
  v7 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        localStore2 = [(FREditorialItemEntryManager *)self localStore];
        v13 = [localStore2 objectForKey:v11];
        v14 = FCDynamicCast();

        if (!v14)
        {
          objc_opt_class();
          localStore3 = [(FREditorialItemEntryManager *)self localStore];
          v19 = [localStore3 objectForKey:v11];
          v15 = FCDynamicCast();

          if (!v15 || ![v11 isEqualToString:@"editorialOrderedItems"])
          {
            goto LABEL_14;
          }

          editorialItemsByID = [(FREditorialItemEntry *)v15 copy];
          [(FREditorialItemEntryManager *)self setOrderedEditorialItemIDs:editorialItemsByID];
          goto LABEL_13;
        }

        if (![v11 hasPrefix:@"ed-"])
        {
          goto LABEL_15;
        }

        v15 = [[FREditorialItemEntry alloc] initWithEntryID:v11 dictionaryRepresentation:v14];
        if (v15)
        {
          editorialItemsByID = [(FREditorialItemEntryManager *)self editorialItemsByID];
          editorialItemID = [(FREditorialItemEntry *)v15 editorialItemID];
          [editorialItemsByID setObject:v15 forKey:editorialItemID];

LABEL_13:
        }

LABEL_14:

LABEL_15:
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (FREditorialItemEntryManager)initWithLocalStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = FREditorialItemEntryManager;
  v6 = [(FREditorialItemEntryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localStore, store);
  }

  return v7;
}

- (void)addEditorialItem:(id)item
{
  itemCopy = item;
  +[NSThread isMainThread];
  editorialItemsByID = [(FREditorialItemEntryManager *)self editorialItemsByID];
  editorialItemID = [itemCopy editorialItemID];
  [editorialItemsByID setObject:itemCopy forKey:editorialItemID];

  localStore = [(FREditorialItemEntryManager *)self localStore];
  dictionaryRepresentation = [itemCopy dictionaryRepresentation];
  entryID = [itemCopy entryID];

  [localStore setObject:dictionaryRepresentation forKey:entryID];
}

- (void)removeItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  +[NSThread isMainThread];
  if (identifierCopy)
  {
    editorialItemsByID = [(FREditorialItemEntryManager *)self editorialItemsByID];
    [editorialItemsByID removeObjectForKey:identifierCopy];

    localStore = [(FREditorialItemEntryManager *)self localStore];
    v6 = [(FREditorialItemEntryManager *)self _editorialEntryIDForIdentifier:identifierCopy];
    [localStore removeObjectForKey:v6];
  }
}

- (void)addOrderedEditorialItemIDs:(id)ds
{
  dsCopy = ds;
  +[NSThread isMainThread];
  v5 = [dsCopy copy];
  [(FREditorialItemEntryManager *)self setOrderedEditorialItemIDs:v5];

  localStore = [(FREditorialItemEntryManager *)self localStore];
  [localStore setObject:dsCopy forKey:@"editorialOrderedItems"];
}

- (id)cachedArticleIDs
{
  +[NSThread isMainThread];
  v3 = +[NSMutableArray array];
  editorialItemsByID = [(FREditorialItemEntryManager *)self editorialItemsByID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000629E0;
  v7[3] = &unk_1000C4380;
  v5 = v3;
  v8 = v5;
  [editorialItemsByID enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

@end
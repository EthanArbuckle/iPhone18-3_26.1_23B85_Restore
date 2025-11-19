@interface FREditorialItemEntryManager
- (FREditorialItemEntryManager)initWithLocalStore:(id)a3;
- (id)cachedArticleIDs;
- (void)addEditorialItem:(id)a3;
- (void)addOrderedEditorialItemIDs:(id)a3;
- (void)loadLocalCachesFromStore;
- (void)removeItemWithIdentifier:(id)a3;
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
  v5 = [(FREditorialItemEntryManager *)self localStore];
  v6 = [v5 allKeys];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        v12 = [(FREditorialItemEntryManager *)self localStore];
        v13 = [v12 objectForKey:v11];
        v14 = FCDynamicCast();

        if (!v14)
        {
          objc_opt_class();
          v18 = [(FREditorialItemEntryManager *)self localStore];
          v19 = [v18 objectForKey:v11];
          v15 = FCDynamicCast();

          if (!v15 || ![v11 isEqualToString:@"editorialOrderedItems"])
          {
            goto LABEL_14;
          }

          v16 = [(FREditorialItemEntry *)v15 copy];
          [(FREditorialItemEntryManager *)self setOrderedEditorialItemIDs:v16];
          goto LABEL_13;
        }

        if (![v11 hasPrefix:@"ed-"])
        {
          goto LABEL_15;
        }

        v15 = [[FREditorialItemEntry alloc] initWithEntryID:v11 dictionaryRepresentation:v14];
        if (v15)
        {
          v16 = [(FREditorialItemEntryManager *)self editorialItemsByID];
          v17 = [(FREditorialItemEntry *)v15 editorialItemID];
          [v16 setObject:v15 forKey:v17];

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

- (FREditorialItemEntryManager)initWithLocalStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FREditorialItemEntryManager;
  v6 = [(FREditorialItemEntryManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localStore, a3);
  }

  return v7;
}

- (void)addEditorialItem:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [(FREditorialItemEntryManager *)self editorialItemsByID];
  v6 = [v4 editorialItemID];
  [v5 setObject:v4 forKey:v6];

  v9 = [(FREditorialItemEntryManager *)self localStore];
  v7 = [v4 dictionaryRepresentation];
  v8 = [v4 entryID];

  [v9 setObject:v7 forKey:v8];
}

- (void)removeItemWithIdentifier:(id)a3
{
  v7 = a3;
  +[NSThread isMainThread];
  if (v7)
  {
    v4 = [(FREditorialItemEntryManager *)self editorialItemsByID];
    [v4 removeObjectForKey:v7];

    v5 = [(FREditorialItemEntryManager *)self localStore];
    v6 = [(FREditorialItemEntryManager *)self _editorialEntryIDForIdentifier:v7];
    [v5 removeObjectForKey:v6];
  }
}

- (void)addOrderedEditorialItemIDs:(id)a3
{
  v4 = a3;
  +[NSThread isMainThread];
  v5 = [v4 copy];
  [(FREditorialItemEntryManager *)self setOrderedEditorialItemIDs:v5];

  v6 = [(FREditorialItemEntryManager *)self localStore];
  [v6 setObject:v4 forKey:@"editorialOrderedItems"];
}

- (id)cachedArticleIDs
{
  +[NSThread isMainThread];
  v3 = +[NSMutableArray array];
  v4 = [(FREditorialItemEntryManager *)self editorialItemsByID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000629E0;
  v7[3] = &unk_1000C4380;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

@end
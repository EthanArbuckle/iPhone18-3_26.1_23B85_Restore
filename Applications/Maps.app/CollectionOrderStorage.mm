@interface CollectionOrderStorage
- (CollectionOrderStorage)init;
- (id)orderCollections:(id)a3;
- (void)_loadOrder;
- (void)_saveOrder;
- (void)editCollection:(id)a3;
- (void)removeCollections:(id)a3;
@end

@implementation CollectionOrderStorage

- (CollectionOrderStorage)init
{
  v5.receiver = self;
  v5.super_class = CollectionOrderStorage;
  v2 = [(CollectionOrderStorage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CollectionOrderStorage *)v2 _loadOrder];
  }

  return v3;
}

- (void)_loadOrder
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"__internal_CollectionOrderStorage"];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [NSMutableOrderedSet orderedSetWithArray:v7];

  orderedIdentifiers = self->_orderedIdentifiers;
  self->_orderedIdentifiers = v8;
}

- (id)orderCollections:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v27 = [v4 mutableCopy];
    v25 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v6 = [v5 indexOfObjectPassingTest:&stru_101654438];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v6;
        v8 = [v27 objectAtIndexedSubscript:v6];
        [v27 removeObjectAtIndex:v7];
        [v25 addObject:v8];
      }
    }

    v23 = v5;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_orderedIdentifiers;
    v9 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v26 = *v33;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * i);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v13 = v27;
          v14 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v29;
            while (2)
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v29 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v28 + 1) + 8 * j);
                v19 = [v18 identifier];
                v20 = [v19 isEqualToString:v12];

                if (v20)
                {
                  [v25 addObject:v18];
                  [v13 removeObject:v18];
                  goto LABEL_20;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }

        v10 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v10);
    }

    [v25 addObjectsFromArray:v27];
    v21 = [v25 copy];

    v5 = v23;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)editCollection:(id)a3
{
  v8 = a3;
  v4 = [v8 identifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    if (([v5 isEqualToString:@"__internal_CollectionSavedLinesIdentifier"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"__internal_CollectionSavedPlacesIdentifier") & 1) == 0)
    {
      v6 = [v8 isLegacyFavoritesCollection];
      orderedIdentifiers = self->_orderedIdentifiers;
      if (v6)
      {
        [(NSMutableOrderedSet *)orderedIdentifiers addObject:v5];
      }

      else
      {
        [(NSMutableOrderedSet *)orderedIdentifiers removeObject:v5];
        [(NSMutableOrderedSet *)self->_orderedIdentifiers insertObject:v5 atIndex:0];
      }
    }

    [(CollectionOrderStorage *)self _saveOrder];
  }
}

- (void)removeCollections:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        orderedIdentifiers = self->_orderedIdentifiers;
        v10 = [*(*(&v12 + 1) + 8 * v8) identifier];
        v11 = [v10 UUIDString];
        [(NSMutableOrderedSet *)orderedIdentifiers removeObject:v11];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_saveOrder
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v3 = [(NSMutableOrderedSet *)self->_orderedIdentifiers array];
  [v4 setObject:v3 forKey:@"__internal_CollectionOrderStorage"];
}

@end
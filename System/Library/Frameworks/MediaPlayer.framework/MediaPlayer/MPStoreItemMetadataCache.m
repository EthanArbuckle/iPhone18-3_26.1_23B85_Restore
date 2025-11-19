@interface MPStoreItemMetadataCache
- (MPStoreItemMetadataCache)initWithCacheSize:(int64_t)a3;
- (id)addMetadata:(id)a3 forItemIdentifier:(id)a4;
- (id)metadataForItemIdentifier:(id)a3 ignoreExpiration:(BOOL)a4;
- (int64_t)count;
- (void)removeExpiredMetadata;
@end

@implementation MPStoreItemMetadataCache

- (void)removeExpiredMetadata
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary allKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary objectForKey:v8];
        if ([v9 isExpired])
        {
          [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary removeObjectForKey:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v10 = self->_itemIdentifierToCompositeStoreItemMetadataMapTable;
  v11 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:{-[NSMapTable count](v10, "count")}];
  itemIdentifierToCompositeStoreItemMetadataMapTable = self->_itemIdentifierToCompositeStoreItemMetadataMapTable;
  self->_itemIdentifierToCompositeStoreItemMetadataMapTable = v11;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [(NSMapTable *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        v19 = [(NSMapTable *)v13 objectForKey:v18, v20];
        if (([v19 isExpired] & 1) == 0)
        {
          [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable setObject:v19 forKey:v18];
        }
      }

      v15 = [(NSMapTable *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }
}

- (id)metadataForItemIdentifier:(id)a3 ignoreExpiration:(BOOL)a4
{
  v6 = a3;
  v7 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary objectForKey:v6];
  v8 = v7;
  if (v7 && (a4 || ([v7 isExpired] & 1) == 0))
  {
    v11 = v8;
  }

  else
  {
    v9 = [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable objectForKey:v6];
    v10 = v9;
    if (v9 && (a4 || ([v9 isExpired] & 1) == 0))
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (int64_t)count
{
  v3 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary count];
  result = [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable count];
  if (v3 < result)
  {
    return v3;
  }

  return result;
}

- (id)addMetadata:(id)a3 forItemIdentifier:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(MPStoreItemMetadataCache *)self metadataForItemIdentifier:v7];
  v10 = v9;
  v11 = v8;
  if (v9)
  {
    v11 = v8;
    if (([v9 isExpired] & 1) == 0)
    {
      v11 = [v10 metadataByAppendingMetadata:v8];
    }
  }

  v21 = v8;
  v12 = [v11 childStoreItemMetadatas];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = [v17 cacheableItemIdentifier];
        if ([v18 length])
        {
          v19 = [(MPStoreItemMetadataCache *)self addMetadata:v17 forItemIdentifier:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary setObject:v11 forKey:v7];
  [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable setObject:v11 forKey:v7];

  return v11;
}

- (MPStoreItemMetadataCache)initWithCacheSize:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = MPStoreItemMetadataCache;
  v4 = [(MPStoreItemMetadataCache *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:a3];
    itemIdentifierToCompositeStoreItemMetadataLRUDictionary = v4->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary;
    v4->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    itemIdentifierToCompositeStoreItemMetadataMapTable = v4->_itemIdentifierToCompositeStoreItemMetadataMapTable;
    v4->_itemIdentifierToCompositeStoreItemMetadataMapTable = v7;
  }

  return v4;
}

@end
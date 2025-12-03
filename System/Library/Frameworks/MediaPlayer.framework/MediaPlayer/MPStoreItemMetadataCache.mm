@interface MPStoreItemMetadataCache
- (MPStoreItemMetadataCache)initWithCacheSize:(int64_t)size;
- (id)addMetadata:(id)metadata forItemIdentifier:(id)identifier;
- (id)metadataForItemIdentifier:(id)identifier ignoreExpiration:(BOOL)expiration;
- (int64_t)count;
- (void)removeExpiredMetadata;
@end

@implementation MPStoreItemMetadataCache

- (void)removeExpiredMetadata
{
  v30 = *MEMORY[0x1E69E9840];
  allKeys = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary allKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary objectForKey:v8];
        if ([v9 isExpired])
        {
          [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary removeObjectForKey:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v24 objects:v29 count:16];
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

- (id)metadataForItemIdentifier:(id)identifier ignoreExpiration:(BOOL)expiration
{
  identifierCopy = identifier;
  v7 = [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary objectForKey:identifierCopy];
  v8 = v7;
  if (v7 && (expiration || ([v7 isExpired] & 1) == 0))
  {
    v11 = v8;
  }

  else
  {
    v9 = [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable objectForKey:identifierCopy];
    v10 = v9;
    if (v9 && (expiration || ([v9 isExpired] & 1) == 0))
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

- (id)addMetadata:(id)metadata forItemIdentifier:(id)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  identifierCopy = identifier;
  v8 = metadataCopy;
  v9 = [(MPStoreItemMetadataCache *)self metadataForItemIdentifier:identifierCopy];
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
  childStoreItemMetadatas = [v11 childStoreItemMetadatas];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [childStoreItemMetadatas countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(childStoreItemMetadatas);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        cacheableItemIdentifier = [v17 cacheableItemIdentifier];
        if ([cacheableItemIdentifier length])
        {
          v19 = [(MPStoreItemMetadataCache *)self addMetadata:v17 forItemIdentifier:cacheableItemIdentifier];
        }
      }

      v14 = [childStoreItemMetadatas countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  [(MSVLRUDictionary *)self->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary setObject:v11 forKey:identifierCopy];
  [(NSMapTable *)self->_itemIdentifierToCompositeStoreItemMetadataMapTable setObject:v11 forKey:identifierCopy];

  return v11;
}

- (MPStoreItemMetadataCache)initWithCacheSize:(int64_t)size
{
  v10.receiver = self;
  v10.super_class = MPStoreItemMetadataCache;
  v4 = [(MPStoreItemMetadataCache *)&v10 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69B1430]) initWithMaximumCapacity:size];
    itemIdentifierToCompositeStoreItemMetadataLRUDictionary = v4->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary;
    v4->_itemIdentifierToCompositeStoreItemMetadataLRUDictionary = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    itemIdentifierToCompositeStoreItemMetadataMapTable = v4->_itemIdentifierToCompositeStoreItemMetadataMapTable;
    v4->_itemIdentifierToCompositeStoreItemMetadataMapTable = v7;
  }

  return v4;
}

@end
@interface MPStoreItemMetadataResponse
- (BOOL)isExpired;
- (MPStoreItemMetadataResponse)init;
- (NSArray)cacheMissItemIdentifiers;
- (NSArray)itemIdentifiers;
- (NSArray)lastBatchStoreItemDictionaries;
- (NSDate)earliestExpirationDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)storeItemMetadataForItemIdentifier:(id)identifier returningIsFinalMetadata:(BOOL *)metadata;
- (void)setStoreItemMetadata:(id)metadata forItemIdentifier:(id)identifier;
@end

@implementation MPStoreItemMetadataResponse

- (void)setStoreItemMetadata:(id)metadata forItemIdentifier:(id)identifier
{
  if (metadata)
  {
    if (identifier)
    {
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }
  }
}

- (id)storeItemMetadataForItemIdentifier:(id)identifier returningIsFinalMetadata:(BOOL *)metadata
{
  if (identifier)
  {
    metadata = [(NSMutableDictionary *)self->_itemIdentifierToStoreItemMetadata objectForKey:identifier, metadata];
  }

  else
  {
    metadata = 0;
  }

  return metadata;
}

- (BOOL)isExpired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  itemIdentifierToStoreItemMetadata = self->_itemIdentifierToStoreItemMetadata;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__MPStoreItemMetadataResponse_isExpired__block_invoke;
  v5[3] = &unk_1E767D770;
  v5[4] = &v6;
  [(NSMutableDictionary *)itemIdentifierToStoreItemMetadata enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__MPStoreItemMetadataResponse_isExpired__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isExpired];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (NSDate)earliestExpirationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__41761;
  v10 = __Block_byref_object_dispose__41762;
  v11 = 0;
  itemIdentifierToStoreItemMetadata = self->_itemIdentifierToStoreItemMetadata;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__MPStoreItemMetadataResponse_earliestExpirationDate__block_invoke;
  v5[3] = &unk_1E767D770;
  v5[4] = &v6;
  [(NSMutableDictionary *)itemIdentifierToStoreItemMetadata enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __53__MPStoreItemMetadataResponse_earliestExpirationDate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 expirationDate];
  if (v4)
  {
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    v11 = v4;
    if (v6)
    {
      v7 = [v6 earlierDate:v4];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = v4;
      v9 = *(v5 + 40);
      *(v5 + 40) = v10;
    }

    v4 = v11;
  }
}

- (NSArray)itemIdentifiers
{
  allKeys = [(NSMutableDictionary *)self->_itemIdentifierToStoreItemMetadata allKeys];
  v3 = allKeys;
  if (allKeys)
  {
    v4 = allKeys;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (NSArray)cacheMissItemIdentifiers
{
  if (self->_cacheMissItemIdentifiers)
  {
    return self->_cacheMissItemIdentifiers;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (NSArray)lastBatchStoreItemDictionaries
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  lastBatchItemIdentifiers = [(MPStoreItemMetadataResponse *)self lastBatchItemIdentifiers];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(lastBatchItemIdentifiers, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  lastBatchItemIdentifiers2 = [(MPStoreItemMetadataResponse *)self lastBatchItemIdentifiers];
  v7 = [lastBatchItemIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(lastBatchItemIdentifiers2);
        }

        v11 = [(NSMutableDictionary *)self->_itemIdentifierToStoreItemMetadata objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
        effectiveStorePlatformDictionary = [v11 effectiveStorePlatformDictionary];

        if (effectiveStorePlatformDictionary)
        {
          [v5 addObject:effectiveStorePlatformDictionary];
        }
      }

      v8 = [lastBatchItemIdentifiers2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(NSArray *)self->_cacheMissItemIdentifiers copy];
    v6 = *(v4 + 8);
    *(v4 + 8) = v5;

    v7 = [(NSArray *)self->_requestItemIdentifiers copy];
    v8 = *(v4 + 40);
    *(v4 + 40) = v7;

    *(v4 + 24) = self->_finalResponse;
    v9 = [(NSMutableDictionary *)self->_itemIdentifierToStoreItemMetadata mutableCopy];
    v10 = *(v4 + 16);
    *(v4 + 16) = v9;

    v11 = [(NSArray *)self->_lastBatchItemIdentifiers copy];
    v12 = *(v4 + 32);
    *(v4 + 32) = v11;

    objc_storeStrong((v4 + 48), self->_performanceMetrics);
  }

  return v4;
}

- (MPStoreItemMetadataResponse)init
{
  v6.receiver = self;
  v6.super_class = MPStoreItemMetadataResponse;
  v2 = [(MPStoreItemMetadataResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    itemIdentifierToStoreItemMetadata = v2->_itemIdentifierToStoreItemMetadata;
    v2->_itemIdentifierToStoreItemMetadata = dictionary;
  }

  return v2;
}

@end
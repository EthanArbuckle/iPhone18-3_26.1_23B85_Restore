@interface FPStitchingSession
- (BOOL)cleanStitchedItemForItemID:(id)d;
- (BOOL)isActive;
- (FPStitchingSession)init;
- (NSArray)deletedIDs;
- (NSArray)placeholderItems;
- (NSArray)placeholderReplacementsIDs;
- (NSDictionary)stitchedFieldsAndItemsByItemIDs;
- (NSDictionary)stitchedItemsByParentID;
- (id)createArchivePlaceholderForItem:(id)item underParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format;
- (id)createGenericArchivePlaceholderUnderParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format;
- (id)createPlaceholderWithCopyOfExistingItem:(id)item lastUsageUpdatePolicy:(unint64_t)policy underParent:(id)parent inProviderDomainID:(id)d;
- (id)createPlaceholderWithName:(id)name contentType:(id)type contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
- (id)createPlaceholderWithName:(id)name isFolder:(BOOL)folder contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
- (id)createPlaceholderWithName:(id)name typeIdentifier:(id)identifier contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d;
- (id)itemWithPlaceholderID:(id)d;
- (void)associateItem:(id)item withPlaceholderID:(id)d;
- (void)dealloc;
- (void)deleteItems:(id)items;
- (void)finish;
- (void)finishWithItem:(id)item error:(id)error;
- (void)finishWithItems:(id)items error:(id)error;
- (void)flush;
- (void)replacePlaceholderWithID:(id)d withItem:(id)item;
- (void)start;
- (void)transformItems:(id)items handler:(id)handler;
- (void)trashItems:(id)items;
@end

@implementation FPStitchingSession

- (FPStitchingSession)init
{
  v17.receiver = self;
  v17.super_class = FPStitchingSession;
  v2 = [(FPStitchingSession *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    originalItems = v2->_originalItems;
    v2->_originalItems = v3;

    v5 = objc_opt_new();
    stitchedItems = v2->_stitchedItems;
    v2->_stitchedItems = v5;

    v7 = objc_opt_new();
    stitchedPlaceholders = v2->_stitchedPlaceholders;
    v2->_stitchedPlaceholders = v7;

    v9 = objc_opt_new();
    placeholderReplacements = v2->_placeholderReplacements;
    v2->_placeholderReplacements = v9;

    v11 = objc_opt_new();
    deletedItems = v2->_deletedItems;
    v2->_deletedItems = v11;

    v13 = objc_opt_new();
    stitchedFields = v2->_stitchedFields;
    v2->_stitchedFields = v13;

    v15 = +[FPStitchingManager sharedInstance];
    [v15 registerStitchingSession:v2];
  }

  return v2;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (NSArray)placeholderItems
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  objc_sync_exit(v3);

  return allValues;
}

- (NSArray)placeholderReplacementsIDs
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  allKeys = [(NSMutableDictionary *)self->_placeholderReplacements allKeys];
  objc_sync_exit(v3);

  return allKeys;
}

- (BOOL)cleanStitchedItemForItemID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_stitchedItems objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5 && [v5 isTrashed])
  {
    [(NSMutableDictionary *)self->_stitchedItems removeObjectForKey:dCopy];
    [(NSMutableDictionary *)self->_stitchedFields removeObjectForKey:dCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSDictionary)stitchedFieldsAndItemsByItemIDs
{
  v24 = *MEMORY[0x1E69E9840];
  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [(NSMutableDictionary *)self->_stitchedFields allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_stitchedItems objectForKeyedSubscript:v8];
        v10 = [(NSMutableDictionary *)self->_stitchedFields objectForKeyedSubscript:v8];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v21[0] = @"FPStitchingSessionItemKey";
          v21[1] = @"FPStitchingSessionFields";
          v22[0] = v9;
          v22[1] = v10;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
          [v3 setObject:v13 forKeyedSubscript:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)stitchedItemsByParentID
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = objc_opt_new();
  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_stitchedFields allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = [(NSMutableDictionary *)self->_stitchedItems objectForKeyedSubscript:v7, obj];
        v9 = [(NSMutableDictionary *)self->_stitchedFields objectForKeyedSubscript:v7];
        v10 = v9;
        if (v8)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11 && [v9 containsObject:@"parentItemIdentifier"])
        {
          parentItemID = [v8 parentItemID];
          v13 = [v20 objectForKeyedSubscript:parentItemID];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = objc_opt_new();
          }

          v16 = v15;

          [v16 addObject:v8];
          [v20 setObject:v16 forKeyedSubscript:parentItemID];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  v17 = *MEMORY[0x1E69E9840];

  return v20;
}

- (NSArray)deletedIDs
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableDictionary count](self->_deletedItems, "count")}];
  deletedItems = self->_deletedItems;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __32__FPStitchingSession_deletedIDs__block_invoke;
  v8[3] = &unk_1E793D660;
  v6 = v4;
  v9 = v6;
  [(NSMutableDictionary *)deletedItems enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v3);

  return v6;
}

void __32__FPStitchingSession_deletedIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  [*(a1 + 32) addObject:v12];
  v6 = [v5 formerItemID];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 formerItemID];
    v9 = [v12 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = *(a1 + 32);
      v11 = [v5 formerItemID];
      [v10 addObject:v11];
    }
  }
}

- (void)start
{
  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  if (self->_started)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPStitchingSession.m" lineNumber:293 description:@"already started"];
  }

  self->_started = 1;
  objc_sync_exit(obj);
}

- (void)finish
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  if (self->_started && !self->_finished)
  {
    [(NSMutableDictionary *)self->_originalItems removeAllObjects];
    allKeys = [(NSMutableDictionary *)self->_stitchedItems allKeys];
    [(NSMutableDictionary *)self->_stitchedItems removeAllObjects];
    [(NSMutableDictionary *)self->_stitchedPlaceholders removeAllObjects];
    [(NSMutableDictionary *)self->_placeholderReplacements removeAllObjects];
    [(NSMutableDictionary *)self->_deletedItems removeAllObjects];
    [(NSMutableDictionary *)self->_stitchedFields removeAllObjects];
    *&self->_started = 256;
  }

  else
  {
    allKeys = 0;
  }

  objc_sync_exit(v3);

  v4 = +[FPStitchingManager sharedInstance];
  [v4 removeBouncedItemsWithIDs:allKeys];
}

- (BOOL)isActive
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  v4 = self->_started && !self->_finished;
  objc_sync_exit(v3);

  return v4;
}

- (void)flush
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_stitchedItems allValues];
  allValues2 = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  v16 = [allValues arrayByAddingObjectsFromArray:allValues2];
  deletedIDs = [(FPStitchingSession *)self deletedIDs];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allKeys = [(NSMutableDictionary *)self->_stitchedItems allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_originalItems objectForKeyedSubscript:v8];
        v10 = [(NSMutableDictionary *)self->_stitchedItems objectForKeyedSubscript:v8];
        if (v10)
        {
          v11 = v9 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [v9 fieldDifferencesWithItem:v10];
          [(NSMutableDictionary *)self->_stitchedFields setObject:v12 forKeyedSubscript:v8];
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = _Block_copy(self->_placeholdersCreationBlock);
  objc_sync_exit(v3);

  if (v13)
  {
    v13[2](v13, allValues2);
  }

  [FPItemCollection consumeUpdates:v16 deletes:deletedIDs];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)transformItems:(id)items handler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  handlerCopy = handler;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = itemsCopy;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v27 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        copyAsPending = [v10 copyAsPending];
        handlerCopy[2](handlerCopy, copyAsPending);
        providerDomainID = [copyAsPending providerDomainID];
        providerDomainID2 = [v10 providerDomainID];
        v14 = [providerDomainID isEqualToString:providerDomainID2];

        if ((v14 & 1) == 0)
        {
          providerDomainID3 = [copyAsPending providerDomainID];
          providerDomainID4 = [v10 providerDomainID];
          v17 = [providerDomainID3 isEqualToString:providerDomainID4];

          if ((v17 & 1) == 0)
          {
            [(FPStitchingSession *)a2 transformItems:v10 handler:copyAsPending];
          }
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        originalItems = self->_originalItems;
        itemID = [v10 itemID];
        [(NSMutableDictionary *)originalItems setObject:v10 forKeyedSubscript:itemID];

        stitchedItems = self->_stitchedItems;
        itemID2 = [copyAsPending itemID];
        [(NSMutableDictionary *)stitchedItems setObject:copyAsPending forKeyedSubscript:itemID2];

        objc_sync_exit(selfCopy);
        v23 = fp_current_or_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = copyAsPending;
          _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] FPStitchingSession: stitched item %@", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)deleteItems:(id)items
{
  v21 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        originalItems = self->_originalItems;
        itemID = [v10 itemID];
        [(NSMutableDictionary *)originalItems setObject:v10 forKeyedSubscript:itemID];

        deletedItems = self->_deletedItems;
        itemID2 = [v10 itemID];
        [(NSMutableDictionary *)deletedItems setObject:v10 forKeyedSubscript:itemID2];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)trashItems:(id)items
{
  v25 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = itemsCopy;
  v5 = [v19 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v19);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        providerDomainID = [v8 providerDomainID];
        v10 = [FPItem placeholderWithCopyOfExistingItem:v8 lastUsageUpdatePolicy:1 underParent:@"NSFileProviderTrashContainerItemIdentifier" inProviderDomainID:providerDomainID];

        originalItems = self->_originalItems;
        itemID = [v8 itemID];
        [(NSMutableDictionary *)originalItems setObject:v8 forKeyedSubscript:itemID];

        deletedItems = self->_deletedItems;
        itemID2 = [v8 itemID];
        [(NSMutableDictionary *)deletedItems setObject:v8 forKeyedSubscript:itemID2];

        stitchedPlaceholders = self->_stitchedPlaceholders;
        itemID3 = [v10 itemID];
        [(NSMutableDictionary *)stitchedPlaceholders setObject:v10 forKeyedSubscript:itemID3];
      }

      v5 = [v19 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)finishWithItems:(id)items error:(id)error
{
  v61 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  errorCopy = error;
  v6 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v8)
  {
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v51 + 1) + 8 * i);
        itemID = [v11 itemID];
        [v6 setObject:v11 forKeyedSubscript:itemID];
      }

      v8 = [v7 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v8);
  }

  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  if (errorCopy)
  {
    section = __fp_create_section();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      fp_prettyDescription = [errorCopy fp_prettyDescription];
      [(FPStitchingSession *)fp_prettyDescription finishWithItems:v59 error:section, v13];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    allValues = [(NSMutableDictionary *)self->_originalItems allValues];
    v16 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v16)
    {
      v17 = *v47;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(allValues);
          }

          v19 = *(*(&v46 + 1) + 8 * j);
          itemID2 = [v19 itemID];
          v21 = [v6 objectForKeyedSubscript:itemID2];
          v22 = v21 == 0;

          if (v22)
          {
            v23 = fp_current_or_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v19;
              _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] reverting to %@", buf, 0xCu);
            }

            itemID3 = [v19 itemID];
            [v6 setObject:v19 forKeyedSubscript:itemID3];
          }
        }

        v16 = [allValues countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v16);
    }

    __fp_leave_section_Debug(&section);
  }

  v41 = objc_opt_new();
  if (!errorCopy && [v7 count])
  {
    allKeys = [v6 allKeys];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    allValues2 = [(NSMutableDictionary *)self->_stitchedItems allValues];
    v27 = [allValues2 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v27)
    {
      v28 = *v43;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(allValues2);
          }

          v30 = *(*(&v42 + 1) + 8 * k);
          itemID4 = [v30 itemID];
          v32 = [allKeys containsObject:itemID4];

          if ((v32 & 1) == 0)
          {
            itemID5 = [v30 itemID];
            [v41 addObject:itemID5];
          }
        }

        v27 = [allValues2 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v27);
    }
  }

  allValues3 = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  fp_itemIDs = [allValues3 fp_itemIDs];

  [(FPStitchingSession *)self finish];
  objc_sync_exit(obj);

  allValues4 = [v6 allValues];
  [FPItemCollection replacePlaceholders:fp_itemIDs withActualItems:allValues4 deletedIDs:v41];

  v37 = *MEMORY[0x1E69E9840];
}

- (void)finishWithItem:(id)item error:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (item)
  {
    itemCopy = item;
    v7 = MEMORY[0x1E695DEC8];
    itemCopy2 = item;
    item = [v7 arrayWithObjects:&itemCopy count:1];
  }

  [(FPStitchingSession *)self finishWithItems:item error:errorCopy, itemCopy, v11];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)associateItem:(id)item withPlaceholderID:(id)d
{
  itemCopy = item;
  identifier = [d identifier];
  [itemCopy setFormerIdentifier:identifier];

  v8 = +[FPStitchingManager sharedInstance];
  itemID = [itemCopy itemID];
  LODWORD(self) = [v8 cleanStitchedForItemID:itemID ignoreSession:self];

  if (self)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [FPStitchingSession associateItem:itemCopy withPlaceholderID:?];
    }
  }
}

- (id)itemWithPlaceholderID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = +[FPStitchingManager sharedInstance];
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)self->_stitchedPlaceholders objectForKeyedSubscript:dCopy];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)replacePlaceholderWithID:(id)d withItem:(id)item
{
  v23[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  itemCopy = item;
  v8 = itemCopy;
  if (dCopy && itemCopy)
  {
    v9 = +[FPStitchingManager sharedInstance];
    objc_sync_enter(v9);
    [(FPStitchingSession *)self associateItem:v8 withPlaceholderID:dCopy];
    formerItemID = [v8 formerItemID];

    if (formerItemID)
    {
      placeholderReplacements = self->_placeholderReplacements;
      itemID = [v8 itemID];
      [(NSMutableDictionary *)placeholderReplacements setObject:v8 forKeyedSubscript:itemID];

      v13 = +[FPStitchingManager sharedInstance];
      v23[0] = dCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [v13 removeBouncedItemsWithIDs:v14];

      stitchedPlaceholders = self->_stitchedPlaceholders;
      formerItemID2 = [v8 formerItemID];
      [(NSMutableDictionary *)stitchedPlaceholders setObject:0 forKeyedSubscript:formerItemID2];
    }

    objc_sync_exit(v9);

    formerItemID3 = [v8 formerItemID];
    v22 = formerItemID3;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v21 = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [FPItemCollection replacePlaceholders:v18 withActualItems:v19 deletedIDs:MEMORY[0x1E695E0F0]];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)createPlaceholderWithCopyOfExistingItem:(id)item lastUsageUpdatePolicy:(unint64_t)policy underParent:(id)parent inProviderDomainID:(id)d
{
  itemCopy = item;
  parentCopy = parent;
  dCopy = d;
  v13 = [FPItem placeholderWithCopyOfExistingItem:itemCopy lastUsageUpdatePolicy:policy underParent:parentCopy inProviderDomainID:dCopy];
  v14 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v14);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  itemID = [v13 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v13 forKeyedSubscript:itemID];

  objc_sync_exit(v14);
  itemID2 = [v13 itemID];

  return itemID2;
}

- (id)createGenericArchivePlaceholderUnderParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format
{
  parentCopy = parent;
  dCopy = d;
  v10 = [FPItem genericArchivePlaceholderUnderParent:parentCopy inProviderDomainID:dCopy withArchiveFormat:format];
  v11 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v11);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  itemID = [v10 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v10 forKeyedSubscript:itemID];

  objc_sync_exit(v11);
  itemID2 = [v10 itemID];

  return itemID2;
}

- (id)createArchivePlaceholderForItem:(id)item underParent:(id)parent inProviderDomainID:(id)d withArchiveFormat:(unint64_t)format
{
  itemCopy = item;
  parentCopy = parent;
  dCopy = d;
  v13 = [FPItem archivePlaceholderForItem:itemCopy underParent:parentCopy inProviderDomainID:dCopy withArchiveFormat:format];
  v14 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v14);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  itemID = [v13 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v13 forKeyedSubscript:itemID];

  objc_sync_exit(v14);
  itemID2 = [v13 itemID];

  return itemID2;
}

- (id)createPlaceholderWithName:(id)name isFolder:(BOOL)folder contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  v7 = MEMORY[0x1E6982DC8];
  if (!folder)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [(FPStitchingSession *)self createPlaceholderWithName:name contentType:*v7 contentAccessDate:date underParent:parent inProviderDomainID:d];
}

- (id)createPlaceholderWithName:(id)name typeIdentifier:(id)identifier contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  v12 = MEMORY[0x1E6982C40];
  dCopy = d;
  parentCopy = parent;
  dateCopy = date;
  nameCopy = name;
  v17 = [v12 fp_cachedTypeWithIdentifier:identifier];
  v18 = [(FPStitchingSession *)self createPlaceholderWithName:nameCopy contentType:v17 contentAccessDate:dateCopy underParent:parentCopy inProviderDomainID:dCopy];

  return v18;
}

- (id)createPlaceholderWithName:(id)name contentType:(id)type contentAccessDate:(id)date underParent:(id)parent inProviderDomainID:(id)d
{
  nameCopy = name;
  typeCopy = type;
  dateCopy = date;
  parentCopy = parent;
  dCopy = d;
  v17 = [FPItem placeholderWithName:nameCopy contentType:typeCopy contentAccessDate:dateCopy underParent:parentCopy inProviderDomainID:dCopy];
  v18 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v18);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  itemID = [v17 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v17 forKeyedSubscript:itemID];

  objc_sync_exit(v18);
  itemID2 = [v17 itemID];

  return itemID2;
}

- (void)transformItems:(uint64_t)a3 handler:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"FPStitchingSession.m" lineNumber:368 description:{@"stitch for item %@ changed provider identifier (new item is %@) in transform; this cannot work.", a3, a4}];
}

- (void)finishWithItems:(uint64_t)a3 error:(os_log_t)log .cold.1(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx reverting items to their original state after failure: %@", buf, 0x16u);
}

- (void)associateItem:(void *)a1 withPlaceholderID:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 itemID];
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

@end
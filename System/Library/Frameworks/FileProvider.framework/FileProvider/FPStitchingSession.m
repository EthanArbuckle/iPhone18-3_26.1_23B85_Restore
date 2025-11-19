@interface FPStitchingSession
- (BOOL)cleanStitchedItemForItemID:(id)a3;
- (BOOL)isActive;
- (FPStitchingSession)init;
- (NSArray)deletedIDs;
- (NSArray)placeholderItems;
- (NSArray)placeholderReplacementsIDs;
- (NSDictionary)stitchedFieldsAndItemsByItemIDs;
- (NSDictionary)stitchedItemsByParentID;
- (id)createArchivePlaceholderForItem:(id)a3 underParent:(id)a4 inProviderDomainID:(id)a5 withArchiveFormat:(unint64_t)a6;
- (id)createGenericArchivePlaceholderUnderParent:(id)a3 inProviderDomainID:(id)a4 withArchiveFormat:(unint64_t)a5;
- (id)createPlaceholderWithCopyOfExistingItem:(id)a3 lastUsageUpdatePolicy:(unint64_t)a4 underParent:(id)a5 inProviderDomainID:(id)a6;
- (id)createPlaceholderWithName:(id)a3 contentType:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
- (id)createPlaceholderWithName:(id)a3 isFolder:(BOOL)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
- (id)createPlaceholderWithName:(id)a3 typeIdentifier:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7;
- (id)itemWithPlaceholderID:(id)a3;
- (void)associateItem:(id)a3 withPlaceholderID:(id)a4;
- (void)dealloc;
- (void)deleteItems:(id)a3;
- (void)finish;
- (void)finishWithItem:(id)a3 error:(id)a4;
- (void)finishWithItems:(id)a3 error:(id)a4;
- (void)flush;
- (void)replacePlaceholderWithID:(id)a3 withItem:(id)a4;
- (void)start;
- (void)transformItems:(id)a3 handler:(id)a4;
- (void)trashItems:(id)a3;
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
  v4 = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  objc_sync_exit(v3);

  return v4;
}

- (NSArray)placeholderReplacementsIDs
{
  v3 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_placeholderReplacements allKeys];
  objc_sync_exit(v3);

  return v4;
}

- (BOOL)cleanStitchedItemForItemID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_stitchedItems objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5 && [v5 isTrashed])
  {
    [(NSMutableDictionary *)self->_stitchedItems removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_stitchedFields removeObjectForKey:v4];
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
  v4 = [(NSMutableDictionary *)self->_stitchedFields allKeys];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
  v3 = [(NSMutableDictionary *)self->_stitchedFields allKeys];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v3);
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
          v12 = [v8 parentItemID];
          v13 = [v20 objectForKeyedSubscript:v12];
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
          [v20 setObject:v16 forKeyedSubscript:v12];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"FPStitchingSession.m" lineNumber:293 description:@"already started"];
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
    v5 = [(NSMutableDictionary *)self->_stitchedItems allKeys];
    [(NSMutableDictionary *)self->_stitchedItems removeAllObjects];
    [(NSMutableDictionary *)self->_stitchedPlaceholders removeAllObjects];
    [(NSMutableDictionary *)self->_placeholderReplacements removeAllObjects];
    [(NSMutableDictionary *)self->_deletedItems removeAllObjects];
    [(NSMutableDictionary *)self->_stitchedFields removeAllObjects];
    *&self->_started = 256;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v3);

  v4 = +[FPStitchingManager sharedInstance];
  [v4 removeBouncedItemsWithIDs:v5];
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
  v17 = [(NSMutableDictionary *)self->_stitchedItems allValues];
  v18 = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  v16 = [v17 arrayByAddingObjectsFromArray:v18];
  v15 = [(FPStitchingSession *)self deletedIDs];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(NSMutableDictionary *)self->_stitchedItems allKeys];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v4);
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

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v13 = _Block_copy(self->_placeholdersCreationBlock);
  objc_sync_exit(v3);

  if (v13)
  {
    v13[2](v13, v18);
  }

  [FPItemCollection consumeUpdates:v16 deletes:v15];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)transformItems:(id)a3 handler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
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
        v11 = [v10 copyAsPending];
        v7[2](v7, v11);
        v12 = [v11 providerDomainID];
        v13 = [v10 providerDomainID];
        v14 = [v12 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 providerDomainID];
          v16 = [v10 providerDomainID];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            [(FPStitchingSession *)a2 transformItems:v10 handler:v11];
          }
        }

        v18 = self;
        objc_sync_enter(v18);
        originalItems = self->_originalItems;
        v20 = [v10 itemID];
        [(NSMutableDictionary *)originalItems setObject:v10 forKeyedSubscript:v20];

        stitchedItems = self->_stitchedItems;
        v22 = [v11 itemID];
        [(NSMutableDictionary *)stitchedItems setObject:v11 forKeyedSubscript:v22];

        objc_sync_exit(v18);
        v23 = fp_current_or_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v33 = v11;
          _os_log_debug_impl(&dword_1AAAE1000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] FPStitchingSession: stitched item %@", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)deleteItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
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
        v12 = [v10 itemID];
        [(NSMutableDictionary *)originalItems setObject:v10 forKeyedSubscript:v12];

        deletedItems = self->_deletedItems;
        v14 = [v10 itemID];
        [(NSMutableDictionary *)deletedItems setObject:v10 forKeyedSubscript:v14];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)trashItems:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v4;
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
        v9 = [v8 providerDomainID];
        v10 = [FPItem placeholderWithCopyOfExistingItem:v8 lastUsageUpdatePolicy:1 underParent:@"NSFileProviderTrashContainerItemIdentifier" inProviderDomainID:v9];

        originalItems = self->_originalItems;
        v12 = [v8 itemID];
        [(NSMutableDictionary *)originalItems setObject:v8 forKeyedSubscript:v12];

        deletedItems = self->_deletedItems;
        v14 = [v8 itemID];
        [(NSMutableDictionary *)deletedItems setObject:v8 forKeyedSubscript:v14];

        stitchedPlaceholders = self->_stitchedPlaceholders;
        v16 = [v10 itemID];
        [(NSMutableDictionary *)stitchedPlaceholders setObject:v10 forKeyedSubscript:v16];
      }

      v5 = [v19 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  objc_sync_exit(obj);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)finishWithItems:(id)a3 error:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v40 = a4;
  v6 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v7 = v5;
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
        v12 = [v11 itemID];
        [v6 setObject:v11 forKeyedSubscript:v12];
      }

      v8 = [v7 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v8);
  }

  obj = +[FPStitchingManager sharedInstance];
  objc_sync_enter(obj);
  if (v40)
  {
    section = __fp_create_section();
    v13 = fp_current_or_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v40 fp_prettyDescription];
      [(FPStitchingSession *)v14 finishWithItems:v59 error:section, v13];
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v15 = [(NSMutableDictionary *)self->_originalItems allValues];
    v16 = [v15 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v16)
    {
      v17 = *v47;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v46 + 1) + 8 * j);
          v20 = [v19 itemID];
          v21 = [v6 objectForKeyedSubscript:v20];
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

            v24 = [v19 itemID];
            [v6 setObject:v19 forKeyedSubscript:v24];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v16);
    }

    __fp_leave_section_Debug(&section);
  }

  v41 = objc_opt_new();
  if (!v40 && [v7 count])
  {
    v25 = [v6 allKeys];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = [(NSMutableDictionary *)self->_stitchedItems allValues];
    v27 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v27)
    {
      v28 = *v43;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v42 + 1) + 8 * k);
          v31 = [v30 itemID];
          v32 = [v25 containsObject:v31];

          if ((v32 & 1) == 0)
          {
            v33 = [v30 itemID];
            [v41 addObject:v33];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v27);
    }
  }

  v34 = [(NSMutableDictionary *)self->_stitchedPlaceholders allValues];
  v35 = [v34 fp_itemIDs];

  [(FPStitchingSession *)self finish];
  objc_sync_exit(obj);

  v36 = [v6 allValues];
  [FPItemCollection replacePlaceholders:v35 withActualItems:v36 deletedIDs:v41];

  v37 = *MEMORY[0x1E69E9840];
}

- (void)finishWithItem:(id)a3 error:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    v10 = a3;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a3;
    a3 = [v7 arrayWithObjects:&v10 count:1];
  }

  [(FPStitchingSession *)self finishWithItems:a3 error:v6, v10, v11];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)associateItem:(id)a3 withPlaceholderID:(id)a4
{
  v6 = a3;
  v7 = [a4 identifier];
  [v6 setFormerIdentifier:v7];

  v8 = +[FPStitchingManager sharedInstance];
  v9 = [v6 itemID];
  LODWORD(self) = [v8 cleanStitchedForItemID:v9 ignoreSession:self];

  if (self)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [FPStitchingSession associateItem:v6 withPlaceholderID:?];
    }
  }
}

- (id)itemWithPlaceholderID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[FPStitchingManager sharedInstance];
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)self->_stitchedPlaceholders objectForKeyedSubscript:v4];
    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)replacePlaceholderWithID:(id)a3 withItem:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = +[FPStitchingManager sharedInstance];
    objc_sync_enter(v9);
    [(FPStitchingSession *)self associateItem:v8 withPlaceholderID:v6];
    v10 = [v8 formerItemID];

    if (v10)
    {
      placeholderReplacements = self->_placeholderReplacements;
      v12 = [v8 itemID];
      [(NSMutableDictionary *)placeholderReplacements setObject:v8 forKeyedSubscript:v12];

      v13 = +[FPStitchingManager sharedInstance];
      v23[0] = v6;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [v13 removeBouncedItemsWithIDs:v14];

      stitchedPlaceholders = self->_stitchedPlaceholders;
      v16 = [v8 formerItemID];
      [(NSMutableDictionary *)stitchedPlaceholders setObject:0 forKeyedSubscript:v16];
    }

    objc_sync_exit(v9);

    v17 = [v8 formerItemID];
    v22 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v21 = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [FPItemCollection replacePlaceholders:v18 withActualItems:v19 deletedIDs:MEMORY[0x1E695E0F0]];
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)createPlaceholderWithCopyOfExistingItem:(id)a3 lastUsageUpdatePolicy:(unint64_t)a4 underParent:(id)a5 inProviderDomainID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [FPItem placeholderWithCopyOfExistingItem:v10 lastUsageUpdatePolicy:a4 underParent:v11 inProviderDomainID:v12];
  v14 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v14);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  v16 = [v13 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v13 forKeyedSubscript:v16];

  objc_sync_exit(v14);
  v17 = [v13 itemID];

  return v17;
}

- (id)createGenericArchivePlaceholderUnderParent:(id)a3 inProviderDomainID:(id)a4 withArchiveFormat:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [FPItem genericArchivePlaceholderUnderParent:v8 inProviderDomainID:v9 withArchiveFormat:a5];
  v11 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v11);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  v13 = [v10 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v10 forKeyedSubscript:v13];

  objc_sync_exit(v11);
  v14 = [v10 itemID];

  return v14;
}

- (id)createArchivePlaceholderForItem:(id)a3 underParent:(id)a4 inProviderDomainID:(id)a5 withArchiveFormat:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [FPItem archivePlaceholderForItem:v10 underParent:v11 inProviderDomainID:v12 withArchiveFormat:a6];
  v14 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v14);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  v16 = [v13 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v13 forKeyedSubscript:v16];

  objc_sync_exit(v14);
  v17 = [v13 itemID];

  return v17;
}

- (id)createPlaceholderWithName:(id)a3 isFolder:(BOOL)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v7 = MEMORY[0x1E6982DC8];
  if (!a4)
  {
    v7 = MEMORY[0x1E6982E48];
  }

  return [(FPStitchingSession *)self createPlaceholderWithName:a3 contentType:*v7 contentAccessDate:a5 underParent:a6 inProviderDomainID:a7];
}

- (id)createPlaceholderWithName:(id)a3 typeIdentifier:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v12 = MEMORY[0x1E6982C40];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a3;
  v17 = [v12 fp_cachedTypeWithIdentifier:a4];
  v18 = [(FPStitchingSession *)self createPlaceholderWithName:v16 contentType:v17 contentAccessDate:v15 underParent:v14 inProviderDomainID:v13];

  return v18;
}

- (id)createPlaceholderWithName:(id)a3 contentType:(id)a4 contentAccessDate:(id)a5 underParent:(id)a6 inProviderDomainID:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [FPItem placeholderWithName:v12 contentType:v13 contentAccessDate:v14 underParent:v15 inProviderDomainID:v16];
  v18 = +[FPStitchingManager sharedInstance];
  objc_sync_enter(v18);
  stitchedPlaceholders = self->_stitchedPlaceholders;
  v20 = [v17 itemID];
  [(NSMutableDictionary *)stitchedPlaceholders setObject:v17 forKeyedSubscript:v20];

  objc_sync_exit(v18);
  v21 = [v17 itemID];

  return v21;
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
@interface FPStitchingManager
+ (id)parentIdNameKeyForItem:(id)item;
+ (id)sharedInstance;
- (BOOL)cleanStitchedForItemID:(id)d ignoreSession:(id)session;
- (FPStitchingManager)init;
- (NSArray)allPlaceholderReplacementsIDs;
- (NSDictionary)allPlaceholderItemsByParentIdentifierAndName;
- (NSDictionary)stitchedFieldsAndItemsByItemIDs;
- (NSMutableArray)allDeletedIDs;
- (id)stitchedItemsForParentID:(id)d;
- (void)addBouncedItem:(id)item;
- (void)registerStitchingSession:(id)session;
- (void)removeBouncedItemsWithIDs:(id)ds;
@end

@implementation FPStitchingManager

+ (id)sharedInstance
{
  if (sharedInstance_once_0 != -1)
  {
    +[FPStitchingManager sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __36__FPStitchingManager_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (FPStitchingManager)init
{
  v8.receiver = self;
  v8.super_class = FPStitchingManager;
  v2 = [(FPStitchingManager *)&v8 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    stitchingSessions = v2->_stitchingSessions;
    v2->_stitchingSessions = weakObjectsHashTable;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    bouncedItems = v2->_bouncedItems;
    v2->_bouncedItems = strongToStrongObjectsMapTable;
  }

  return v2;
}

- (NSDictionary)allPlaceholderItemsByParentIdentifierAndName
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = selfCopy->_stitchingSessions;
  v21 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        placeholderItems = [v5 placeholderItems];
        v7 = [placeholderItems countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = *v24;
          do
          {
            for (j = 0; j != v7; ++j)
            {
              if (*v24 != v8)
              {
                objc_enumerationMutation(placeholderItems);
              }

              v10 = *(*(&v23 + 1) + 8 * j);
              bouncedItems = selfCopy->_bouncedItems;
              itemID = [v10 itemID];
              v13 = [(NSMapTable *)bouncedItems objectForKey:itemID];

              if (v13)
              {
                v14 = v13;
              }

              else
              {
                v14 = v10;
              }

              v15 = v14;
              v16 = [FPStitchingManager parentIdNameKeyForItem:v15];
              [v3 setObject:v15 forKey:v16];
            }

            v7 = [placeholderItems countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v7);
        }
      }

      v21 = [(NSHashTable *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSMutableArray)allDeletedIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = selfCopy->_stitchingSessions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        deletedIDs = [*(*(&v12 + 1) + 8 * i) deletedIDs];
        [v3 addObjectsFromArray:deletedIDs];
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)allPlaceholderReplacementsIDs
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = selfCopy->_stitchingSessions;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        placeholderReplacementsIDs = [*(*(&v12 + 1) + 8 * i) placeholderReplacementsIDs];
        [v3 addObjectsFromArray:placeholderReplacementsIDs];
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSDictionary)stitchedFieldsAndItemsByItemIDs
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = selfCopy;
  obj = selfCopy->_stitchingSessions;
  v22 = [(NSHashTable *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        if ([v5 isActive])
        {
          stitchedFieldsAndItemsByItemIDs = [v5 stitchedFieldsAndItemsByItemIDs];
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          allKeys = [stitchedFieldsAndItemsByItemIDs allKeys];
          v8 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v8)
          {
            v9 = *v25;
            do
            {
              for (j = 0; j != v8; ++j)
              {
                if (*v25 != v9)
                {
                  objc_enumerationMutation(allKeys);
                }

                v11 = *(*(&v24 + 1) + 8 * j);
                v12 = [v3 objectForKeyedSubscript:v11];
                v13 = v12;
                if (v12)
                {
                  v14 = v12;
                }

                else
                {
                  v14 = objc_opt_new();
                }

                v15 = v14;

                v16 = [stitchedFieldsAndItemsByItemIDs objectForKeyedSubscript:v11];
                [v15 addObject:v16];

                [v3 setObject:v15 forKeyedSubscript:v11];
              }

              v8 = [allKeys countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v8);
          }
        }
      }

      v22 = [(NSHashTable *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  objc_sync_exit(v19);
  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)registerStitchingSession:(id)session
{
  sessionCopy = session;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [FPStitchingManager registerStitchingSession:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_stitchingSessions addObject:sessionCopy];
  objc_sync_exit(selfCopy);
}

- (void)addBouncedItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bouncedItems = selfCopy->_bouncedItems;
  itemID = [itemCopy itemID];
  [(NSMapTable *)bouncedItems setObject:itemCopy forKey:itemID];

  objc_sync_exit(selfCopy);
}

- (void)removeBouncedItemsWithIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(NSMapTable *)selfCopy->_bouncedItems removeObjectForKey:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69E9840];
}

+ (id)parentIdNameKeyForItem:(id)item
{
  v3 = MEMORY[0x1E696AEC0];
  itemCopy = item;
  parentItemIdentifier = [itemCopy parentItemIdentifier];
  filename = [itemCopy filename];

  uppercaseString = [filename uppercaseString];
  v8 = [v3 stringWithFormat:@"%@/%@", parentItemIdentifier, uppercaseString];

  return v8;
}

- (BOOL)cleanStitchedForItemID:(id)d ignoreSession:(id)session
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  sessionCopy = session;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = selfCopy->_stitchingSessions;
  v10 = 0;
  v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (v14 != sessionCopy)
        {
          v10 |= [v14 cleanStitchedItemForItemID:{dCopy, v17}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSHashTable *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  objc_sync_exit(selfCopy);
  v15 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

- (id)stitchedItemsForParentID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    v5 = objc_opt_new();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = selfCopy->_stitchingSessions;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([v11 isActive])
          {
            stitchedItemsByParentID = [v11 stitchedItemsByParentID];
            v13 = [stitchedItemsByParentID objectForKeyedSubscript:dCopy];

            if (v13)
            {
              [v5 addObjectsFromArray:v13];
            }
          }
        }

        v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)registerStitchingSession:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
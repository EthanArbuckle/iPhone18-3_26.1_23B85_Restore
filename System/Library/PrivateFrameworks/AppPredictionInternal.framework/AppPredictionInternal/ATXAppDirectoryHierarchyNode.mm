@interface ATXAppDirectoryHierarchyNode
+ (id)dynamicCategoriesForAppBundleIDs:(id)ds screenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings;
+ (id)initializeHierarchyForAppBundleIDs:(id)ds screenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings;
+ (id)lazyGetNodeForCategoryID:(id)d inDictionary:(id)dictionary;
+ (unint64_t)effectiveCategoryIDForBundleID:(id)d withScreenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings;
- (ATXAppDirectoryHierarchyNode)initWithCategoryID:(unint64_t)d;
- (ATXAppDirectoryHierarchyNode)parent;
- (BOOL)_isRoot;
- (id)_allAppBundleIDs;
- (id)_allNodes;
- (id)_categoryDictionary;
- (unint64_t)_enabledNodeCount;
- (void)_addChild:(id)child;
- (void)_computeSize;
- (void)_displayTree;
- (void)_displayTreeWithCurrString:(id)string;
- (void)_preorderTraverseWithBlock:(id)block;
@end

@implementation ATXAppDirectoryHierarchyNode

- (ATXAppDirectoryHierarchyNode)initWithCategoryID:(unint64_t)d
{
  v11.receiver = self;
  v11.super_class = ATXAppDirectoryHierarchyNode;
  v4 = [(ATXAppDirectoryHierarchyNode *)&v11 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_parent, 0);
    v6 = objc_opt_new();
    children = v5->_children;
    v5->_children = v6;

    v5->_size = 0;
    v5->_enabled = 0;
    v8 = objc_opt_new();
    appBundleIDs = v5->_appBundleIDs;
    v5->_appBundleIDs = v8;

    v5->_categoryID = d;
  }

  return v5;
}

- (void)_computeSize
{
  v15 = *MEMORY[0x277D85DE8];
  self->_size = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_children;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 _computeSize];
        if (([v8 enabled] & 1) == 0)
        {
          self->_size += [v8 size];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  self->_size += [(NSMutableArray *)self->_appBundleIDs count];
  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v3 = WeakRetained == 0;

  return v3;
}

- (void)_addChild:(id)child
{
  childCopy = child;
  [childCopy setParent:self];
  [(NSMutableArray *)self->_children addObject:childCopy];
}

- (void)_displayTree
{
  v3 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_DEFAULT, "------------------------------------", buf, 2u);
  }

  [(ATXAppDirectoryHierarchyNode *)self _displayTreeWithCurrString:&stru_2839A6058];
  v4 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "------------------------------------", v5, 2u);
  }
}

- (void)_displayTreeWithCurrString:(id)string
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_enabled)
    {
      v6 = @"xx";
    }

    else
    {
      v6 = @"--";
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_categoryID];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_appBundleIDs, "count")}];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_size];
    *buf = 138413314;
    v24 = v6;
    v25 = 2112;
    v26 = stringCopy;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@%@%@:%@:%@", buf, 0x34u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_children;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@--", stringCopy];
        [v15 _displayTreeWithCurrString:stringCopy];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_preorderTraverseWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  blockCopy[2](blockCopy, self);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [(ATXAppDirectoryHierarchyNode *)self children];
  v6 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v11 + 1) + 8 * v9++) _preorderTraverseWithBlock:blockCopy];
      }

      while (v7 != v9);
      v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_allNodes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__63;
  v10 = __Block_byref_object_dispose__63;
  v11 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__ATXAppDirectoryHierarchyNode__allNodes__block_invoke;
  v5[3] = &unk_27859E4A0;
  v5[4] = &v6;
  [(ATXAppDirectoryHierarchyNode *)self _preorderTraverseWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)_enabledNodeCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__ATXAppDirectoryHierarchyNode__enabledNodeCount__block_invoke;
  v4[3] = &unk_27859E4A0;
  v4[4] = &v5;
  [(ATXAppDirectoryHierarchyNode *)self _preorderTraverseWithBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __49__ATXAppDirectoryHierarchyNode__enabledNodeCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 enabled];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)_allAppBundleIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_appBundleIDs mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_children;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 enabled] & 1) == 0)
        {
          _allAppBundleIDs = [v9 _allAppBundleIDs];
          [v3 addObjectsFromArray:_allAppBundleIDs];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_categoryDictionary
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__63;
  v13 = __Block_byref_object_dispose__63;
  v14 = objc_opt_new();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ATXAppDirectoryHierarchyNode__categoryDictionary__block_invoke;
  v8[3] = &unk_27859E4A0;
  v8[4] = &v9;
  [(ATXAppDirectoryHierarchyNode *)self _preorderTraverseWithBlock:v8];
  v3 = [v10[5] objectForKeyedSubscript:&unk_283A56A98];
  if (v3)
  {
    v4 = [v10[5] objectForKeyedSubscript:&unk_283A56AB0];

    if (v4)
    {
      v5 = [v10[5] objectForKeyedSubscript:&unk_283A56A98];
      [v10[5] setObject:v5 forKeyedSubscript:&unk_283A56AC8];

      [v10[5] removeObjectForKey:&unk_283A56A98];
    }
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __51__ATXAppDirectoryHierarchyNode__categoryDictionary__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 enabled])
  {
    v3 = [v6 _allAppBundleIDs];
    v4 = *(*(*(a1 + 32) + 8) + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "categoryID")}];
    [v4 setObject:v3 forKeyedSubscript:v5];
  }
}

+ (id)lazyGetNodeForCategoryID:(id)d inDictionary:(id)dictionary
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    v8 = -[ATXAppDirectoryHierarchyNode initWithCategoryID:]([ATXAppDirectoryHierarchyNode alloc], "initWithCategoryID:", [dCopy unsignedIntegerValue]);
    [dictionaryCopy setObject:v8 forKeyedSubscript:dCopy];
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:dCopy];

  return v9;
}

+ (unint64_t)effectiveCategoryIDForBundleID:(id)d withScreenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings
{
  dCopy = d;
  mappingsCopy = mappings;
  v9 = [tunesMappings objectForKeyedSubscript:dCopy];
  v10 = [mappingsCopy objectForKeyedSubscript:dCopy];

  if (v10)
  {
    if (!v9 || ([MEMORY[0x277CEB350] isCategory:objc_msgSend(v9 descendantOfCategory:{"integerValue"), objc_msgSend(v10, "integerValue")}] & 1) == 0)
    {
      v11 = v10;
LABEL_9:
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      goto LABEL_10;
    }

LABEL_8:
    v11 = v9;
    goto LABEL_9;
  }

  v12 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ATXAppDirectoryHierarchyNode effectiveCategoryIDForBundleID:dCopy withScreenTimeMappings:v12 iTunesMappings:?];
  }

  if (v9)
  {
    goto LABEL_8;
  }

  v15 = __atxlog_handle_app_library();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [ATXAppDirectoryHierarchyNode effectiveCategoryIDForBundleID:dCopy withScreenTimeMappings:v15 iTunesMappings:?];
  }

  unsignedIntegerValue = 1008;
LABEL_10:

  return unsignedIntegerValue;
}

+ (id)initializeHierarchyForAppBundleIDs:(id)ds screenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings
{
  v38 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mappingsCopy = mappings;
  tunesMappingsCopy = tunesMappings;
  v11 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = dsCopy;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [self effectiveCategoryIDForBundleID:v16 withScreenTimeMappings:mappingsCopy iTunesMappings:tunesMappingsCopy];
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
        v19 = [self lazyGetNodeForCategoryID:v18 inDictionary:v11];

        [v19 _addAppBundleID:v16];
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  allKeys = [v11 allKeys];
  v21 = [allKeys mutableCopy];
  while (1)
  {

    if (![v21 count])
    {
      break;
    }

    allKeys = [v21 lastObject];
    [v21 removeLastObject];
    if ([allKeys unsignedIntegerValue] != 1008)
    {
      v22 = [v11 objectForKeyedSubscript:allKeys];
      parent = [v22 parent];

      if (!parent)
      {
        v24 = [MEMORY[0x277CEB350] parentCategoryForCategory:{objc_msgSend(allKeys, "integerValue")}];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        v26 = [self lazyGetNodeForCategoryID:v25 inDictionary:v11];

        v27 = [v11 objectForKeyedSubscript:allKeys];
        [v26 _addChild:v27];

        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
        [v21 addObject:v28];
      }
    }
  }

  v29 = [v11 objectForKeyedSubscript:&unk_283A56AE0];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)dynamicCategoriesForAppBundleIDs:(id)ds screenTimeMappings:(id)mappings iTunesMappings:(id)tunesMappings
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = [self initializeHierarchyForAppBundleIDs:ds screenTimeMappings:mappings iTunesMappings:tunesMappings];
  [v5 setEnabled:1];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  children = [v5 children];
  v7 = [children countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v65;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v65 != v9)
        {
          objc_enumerationMutation(children);
        }

        [*(*(&v64 + 1) + 8 * i) setEnabled:1];
      }

      v8 = [children countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v8);
  }

  _enabledNodeCount = [v5 _enabledNodeCount];
  v12 = [v5 size];
  if ((((__PAIR128__(_enabledNodeCount, v12) - 1) >> 64) + 2) >= 0xE)
  {
    v13 = 14;
  }

  else
  {
    v13 = ((__PAIR128__(_enabledNodeCount, v12) - 1) >> 64) + 2;
  }

  [v5 _computeSize];
  [v5 _displayTree];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke;
  v62[3] = &unk_27859E4C8;
  v14 = v5;
  v63 = v14;
  [v14 _preorderTraverseWithBlock:v62];
  [v14 _computeSize];
  [v14 setEnabled:{objc_msgSend(v14, "size") != 0}];
  [v14 _displayTree];
  v44 = v14;
  v45 = v13;
  do
  {
    if ([v14 _enabledNodeCount] >= v13)
    {
      break;
    }

    _allNodes = [v14 _allNodes];
    v16 = [_allNodes sortedArrayUsingComparator:&__block_literal_global_139];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (!v17)
    {

      break;
    }

    v18 = v17;
    v19 = *v59;
    v43 = 1;
    v46 = *v59;
LABEL_15:
    v20 = 0;
    while (1)
    {
      if (*v59 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v58 + 1) + 8 * v20);
      if ([v14 _enabledNodeCount] > v13)
      {
        break;
      }

      if ([v21 enabled])
      {
        if ([v21 size] > 0xB)
        {
          goto LABEL_29;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        children2 = [v21 children];
        v23 = [children2 countByEnumeratingWithState:&v54 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = 0;
          v26 = *v55;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v55 != v26)
              {
                objc_enumerationMutation(children2);
              }

              v28 = [*(*(&v54 + 1) + 8 * j) size];
              v25 |= v28 == [v21 size];
            }

            v24 = [children2 countByEnumeratingWithState:&v54 objects:v69 count:16];
          }

          while (v24);

          v14 = v44;
          v13 = v45;
          v19 = v46;
          if ((v25 & 1) == 0)
          {
            goto LABEL_49;
          }

LABEL_29:
          children3 = [v21 children];
          v30 = [children3 sortedArrayUsingComparator:&__block_literal_global_25_2];

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          children2 = v30;
          v31 = [children2 countByEnumeratingWithState:&v50 objects:v68 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v51;
            while (2)
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v51 != v33)
                {
                  objc_enumerationMutation(children2);
                }

                v35 = *(*(&v50 + 1) + 8 * k);
                if (([v35 enabled] & 1) == 0)
                {
                  if (![MEMORY[0x277CEB350] shouldCategoryAlwaysMergeWithParent:{objc_msgSend(v35, "categoryID")}] || (v36 = objc_msgSend(v35, "size"), v36 == objc_msgSend(v21, "size")))
                  {
                    if ([v35 size] >= 6 && (v37 = objc_msgSend(v21, "size"), (v37 - objc_msgSend(v35, "size")) > 5) || (v38 = objc_msgSend(v35, "size"), v38 == objc_msgSend(v21, "size")))
                    {
                      [v35 setEnabled:1];
                      [v21 _computeSize];
                      if (![v21 size])
                      {
                        [v21 setEnabled:0];
                      }

                      v43 = 0;
                      goto LABEL_46;
                    }
                  }
                }
              }

              v32 = [children2 countByEnumeratingWithState:&v50 objects:v68 count:16];
              if (v32)
              {
                continue;
              }

              break;
            }

LABEL_46:
            v14 = v44;
            v13 = v45;
            v19 = v46;
          }
        }
      }

LABEL_49:
      if (++v20 == v18)
      {
        v18 = [obj countByEnumeratingWithState:&v58 objects:v70 count:16];
        if (v18)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  while ((v43 & 1) == 0);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke_4;
  v48[3] = &unk_27859E4C8;
  v49 = v14;
  v39 = v14;
  [v39 _preorderTraverseWithBlock:v48];
  [v39 _computeSize];
  [v39 _displayTree];
  _categoryDictionary = [v39 _categoryDictionary];

  v41 = *MEMORY[0x277D85DE8];

  return _categoryDictionary;
}

uint64_t __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v6 = v3;
    v3 = [v3 enabled];
    v4 = v6;
    if (v3)
    {
      v3 = [MEMORY[0x277CEB350] shouldCategoryNeverMergeWithParent:{objc_msgSend(v6, "categoryID")}];
      v4 = v6;
      if ((v3 & 1) == 0)
      {
        v3 = [v6 size];
        v4 = v6;
        if (v3 <= 3)
        {
          v3 = [v6 setEnabled:0];
          v4 = v6;
        }
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 size];
  if (v6 <= [v5 size])
  {
    v8 = [v4 size];
    if (v8 < [v5 size])
    {
      v7 = 1;
      goto LABEL_7;
    }

    v9 = [v4 categoryID];
    if (v9 >= [v5 categoryID])
    {
      v10 = [v4 categoryID];
      v7 = v10 > [v5 categoryID];
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

uint64_t __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 size];
  if (v6 <= [v5 size])
  {
    v8 = [v4 size];
    if (v8 < [v5 size])
    {
      v7 = 1;
      goto LABEL_7;
    }

    v9 = [v4 categoryID];
    if (v9 >= [v5 categoryID])
    {
      v10 = [v4 categoryID];
      v7 = v10 > [v5 categoryID];
      goto LABEL_7;
    }
  }

  v7 = -1;
LABEL_7:

  return v7;
}

void __99__ATXAppDirectoryHierarchyNode_dynamicCategoriesForAppBundleIDs_screenTimeMappings_iTunesMappings___block_invoke_4(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3 && [v3 enabled])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 children];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (([v10 enabled] & 1) == 0)
          {
            v11 = [v10 size];
            if (v11 == [v4 size])
            {
              [v4 setEnabled:0];
              [v10 setEnabled:1];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (ATXAppDirectoryHierarchyNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

+ (void)effectiveCategoryIDForBundleID:(uint64_t)a1 withScreenTimeMappings:(NSObject *)a2 iTunesMappings:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Screentime category missing for %@, solely relying on iTunes category", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)effectiveCategoryIDForBundleID:(uint64_t)a1 withScreenTimeMappings:(NSObject *)a2 iTunesMappings:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "iTunes category missing as well for %@, defaulting to Other", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
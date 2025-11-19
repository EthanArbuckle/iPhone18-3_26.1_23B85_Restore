@interface MPSSILImplementation
@end

@implementation MPSSILImplementation

id __50___MPSSILImplementation_orderedSectionIdentifiers__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 96) copy];

  return v1;
}

uint64_t __34___MPSSILImplementation_itemCount__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  result = [*(v2 + 112) count];
  *(*(*(a1 + 40) + 8) + 24) = result + v3;
  return result;
}

void __57___MPSSILImplementation_dataSourceReloadItems_inSection___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = a2;
  v3 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:?];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
  v5 = [v4 dataSource];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 48);
  v24 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v24)
  {
    v23 = *v27;
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v5 section:*(a1 + 40) shouldShuffleExcludeItem:v8];
        }

        else
        {
          v9 = 0;
        }

        v10 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:{v25, v21}];
        v11 = [v10 objectForKeyedSubscript:*(a1 + 40)];
        v12 = [v11 identifiersItemEntryMap];
        v13 = [v12 objectForKeyedSubscript:v8];

        if (v13)
        {
          if (v9)
          {
            v14 = [v13 previousEntry];

            if (v14)
            {
              v15 = [v13 latestUserClone];
              v16 = [v15 isRemoved];

              if ((v16 & 1) == 0)
              {
                --*(*(a1 + 32) + 8);
              }

              [v13 setUserRemoved];
              v17 = os_log_create("com.apple.amp.mediaplayer", "SIL");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v13 sectionIdentifier];
                v19 = [v13 itemIdentifier];
                *buf = v21;
                v31 = v18;
                v32 = 2114;
                v33 = v19;
                _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[SPROX:%{public}@] dataSourceReloadItem:%{public}@ inSection:… | setUserRemoved [applying exclude from shuffle]", buf, 0x16u);
              }
            }

            else
            {
              [*(*(a1 + 32) + 112) removeObject:v13];
            }
          }
        }

        else if ((v9 & 1) == 0)
        {
          v20 = [*(a1 + 32) _createShuffleCloneForItem:v8 inSection:*(a1 + 40) withExclusiveAccessToken:v25];
          [*(*(a1 + 32) + 112) addObject:v20];
        }

        ++v7;
      }

      while (v24 != v7);
      v24 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v24);
  }
}

void __59___MPSSILImplementation_dataSourceRemoveItems_fromSection___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [*(a1 + 40) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
        v10 = [v9 objectForKeyedSubscript:*(a1 + 48)];
        v11 = [v10 identifiersItemEntryMap];
        v12 = [v11 objectForKeyedSubscript:v8];

        v13 = [v12 previousEntry];

        if (v13)
        {
          [*(a1 + 56) addObject:v8];
        }

        else
        {
          v14 = [v12 latestUserClone];
          v15 = [v14 isRemoved];

          if ((v15 & 1) == 0)
          {
            --*(*(a1 + 40) + 8);
          }

          [v12 setDataSourceRemoved];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }
}

uint64_t __63___MPSSILImplementation_dataSourceInsertItemsAtTail_inSection___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:v3];
  if ((v4 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) _createShuffleCloneForItem:*(*(&v12 + 1) + 8 * v9) inSection:*(a1 + 40) withExclusiveAccessToken:{v3, v12}];
          if (v10)
          {
            [*(*(a1 + 32) + 112) addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

uint64_t __67___MPSSILImplementation_dataSourceInsertItems_afterItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:v3];
  if ((v4 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) _createShuffleCloneForItem:*(*(&v12 + 1) + 8 * v9) inSection:*(a1 + 40) withExclusiveAccessToken:{v3, v12}];
          if (v10)
          {
            [*(*(a1 + 32) + 112) addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

uint64_t __63___MPSSILImplementation_dataSourceInsertItemsAtHead_inSection___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:v3];
  if ((v4 & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = *(a1 + 48);
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 32) _createShuffleCloneForItem:*(*(&v12 + 1) + 8 * v9) inSection:*(a1 + 40) withExclusiveAccessToken:{v3, v12}];
          if (v10)
          {
            [*(*(a1 + 32) + 112) addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

void __65___MPSSILImplementation_addDataSourceAtEnd_section_sequentially___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = a2;
    v7 = [v3 _endEntryWithExclusiveAccessToken:v6];
    [v3 _insertDataSource:v4 forSection:v5 afterEntry:v7 withExclusiveAccessToken:v6];

    [*(a1 + 32) _updateOrderedSectionIDsWithExclusiveAccessToken:v6];
  }

  else
  {
    [v3 _addShuffleSection:*(a1 + 48) dataSource:*(a1 + 40) withExclusiveAccessToken:a2];
  }
}

void __80___MPSSILImplementation_addDataSource_section_sequentially_beforeTailOfSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = v3;
  if (*(a1 + 64) == 1 && (v4 = [*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:v3], v3 = v12, v4))
  {
    v5 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v12];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [v6 tailEntry];
    v11 = [v10 previousEntry];
    [v7 _insertDataSource:v8 forSection:v9 afterEntry:v11 withExclusiveAccessToken:v12];

    [*(a1 + 32) _updateOrderedSectionIDsWithExclusiveAccessToken:v12];
  }

  else
  {
    [*(a1 + 32) _addShuffleSection:*(a1 + 56) dataSource:*(a1 + 48) withExclusiveAccessToken:v3];
  }
}

void __79___MPSSILImplementation_addDataSource_section_sequentially_afterTailOfSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (*(a1 + 64) == 1 && (v4 = [*(a1 + 32) _isSequentialSection:*(a1 + 40) withExclusiveAccessToken:v3], v3 = v11, v4))
  {
    v5 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v11];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = [v6 tailEntry];
    [v7 _insertDataSource:v8 forSection:v9 afterEntry:v10 withExclusiveAccessToken:v11];

    [*(a1 + 32) _updateOrderedSectionIDsWithExclusiveAccessToken:v11];
  }

  else
  {
    [*(a1 + 32) _addShuffleSection:*(a1 + 56) dataSource:*(a1 + 48) withExclusiveAccessToken:v3];
  }
}

void __80___MPSSILImplementation_addDataSource_section_sequentially_afterItem_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 72) == 1)
  {
    v4 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:v3];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v6 = [v5 identifiersItemEntryMap];
    v7 = [v6 objectForKeyedSubscript:*(a1 + 48)];
    v8 = [v7 latestUserClone];

    v9 = [v8 previousEntry];

    if (v9)
    {
      [*(a1 + 32) _insertDataSource:*(a1 + 56) forSection:*(a1 + 64) afterEntry:v8 withExclusiveAccessToken:v10];
      [*(a1 + 32) _updateOrderedSectionIDsWithExclusiveAccessToken:v10];

      goto LABEL_6;
    }

    v3 = v10;
  }

  [*(a1 + 32) _addShuffleSection:*(a1 + 64) dataSource:*(a1 + 56) withExclusiveAccessToken:v3];
LABEL_6:
}

void __67___MPSSILImplementation_addDataSourceAtStart_section_sequentially___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = a2;
    [v3 _insertDataSource:v4 forSection:v5 afterEntry:0 withExclusiveAccessToken:v6];
    [*(a1 + 32) _updateOrderedSectionIDsWithExclusiveAccessToken:v6];
  }

  else
  {
    [v3 _addShuffleSection:*(a1 + 48) dataSource:*(a1 + 40) withExclusiveAccessToken:a2];
  }
}

void __60___MPSSILImplementation_safelyReshuffleAfterItem_inSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) _sectionHeadEntryMapWithExclusiveAccessToken:a2];
  v4 = [v3 objectForKeyedSubscript:@"🔀"];

  v5 = [v4 lastItemEntry];
  if (v5)
  {
    v6 = v5;
    v24 = v4;
    v7 = &OBJC_IVAR___MPAVRoute__batteryLevel;
    v8 = "com.apple.amp.mediaplayer";
    v9 = "SIL";
    do
    {
      v10 = [v6 sectionIdentifier];
      if ([v10 isEqual:*(a1 + 40)])
      {
        v11 = [v6 itemIdentifier];
        v12 = [v11 isEqual:*(a1 + 48)] ^ 1;
      }

      else
      {
        v12 = 1;
      }

      v13 = [v6 nextEntries];
      v14 = [v13 count];

      if (v14 > 1 || !v12)
      {
        break;
      }

      if (([v6 isRemoved] & 1) == 0)
      {
        v15 = [v6 newClonedEntry];
        [*(*(a1 + 32) + v7[261]) addObject:v15];
        --*(*(a1 + 32) + 8);
        [v6 setUserRemoved];
        v16 = os_log_create(v8, v9);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 32) identifier];
          v18 = [v6 sectionIdentifier];
          [v6 itemIdentifier];
          v19 = v9;
          v20 = v8;
          v22 = v21 = v7;
          *buf = 138543874;
          v26 = v17;
          v27 = 2114;
          v28 = v18;
          v29 = 2114;
          v30 = v22;
          _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_DEFAULT, "[SIL:%{public}@] safelyReshuffleAfterItem:%{public}@ inSection:%{public}@ | setUserRemoved [applying exclude from shuffle]", buf, 0x20u);

          v7 = v21;
          v8 = v20;
          v9 = v19;
        }
      }

      v23 = [v6 previousEntry];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        break;
      }

      v6 = v23;
    }

    while (v23);

    v4 = v24;
  }
}

void __66___MPSSILImplementation_encodeWithCoder_withExclusiveAccessToken___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (([*(a1 + 32) _isSequentialSection:a2 withExclusiveAccessToken:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 48) addObject:v5];
  }
}

void __113___MPSSILImplementation_initWithSectionedIdentifierList_randomSource_startingItemEntry_withExclusiveAccessToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 dataSource];
  [v5 _addShuffleSection:v6 dataSource:v7 withExclusiveAccessToken:*(a1 + 40)];
}

@end
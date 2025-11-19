@interface ATXSuggestedPagesUtils
+ (id)_createStackOfSize:(unint64_t)a3;
+ (id)filterWidgets:(id)a3 bySize:(unint64_t)a4 usedPersonalities:(id)a5;
+ (id)semanticTypeForSuggestedPageType:(int64_t)a3;
+ (id)sortWidgetsByDescendingScore:(id)a3 limit:(unint64_t)a4;
+ (unint64_t)modeForSuggestedPageType:(int64_t)a3;
+ (void)evenlyDistributeWidgets:(id)a3 inRange:(_NSRange)a4 amongStacks:(id)a5 usedPersonalities:(id)a6 maxWidgetsInStack:(unint64_t)a7;
@end

@implementation ATXSuggestedPagesUtils

+ (unint64_t)modeForSuggestedPageType:(int64_t)a3
{
  if (a3 < 0xD)
  {
    return qword_226872718[a3];
  }

  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(ATXSuggestedPagesUtils *)a3 modeForSuggestedPageType:v5];
  }

  return 16;
}

+ (id)semanticTypeForSuggestedPageType:(int64_t)a3
{
  if (a3 > 6)
  {
    v7 = 7;
    v8 = 8;
    v9 = 9;
    if (a3 != 12)
    {
      v9 = 0;
    }

    if (a3 != 11)
    {
      v8 = v9;
    }

    if (a3 != 10)
    {
      v7 = v8;
    }

    v10 = 4;
    v11 = 5;
    v12 = 6;
    if (a3 != 9)
    {
      v12 = 0;
    }

    if (a3 != 8)
    {
      v11 = v12;
    }

    if (a3 != 7)
    {
      v10 = v11;
    }

    if (a3 <= 9)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }
  }

  else if (a3 > 3)
  {
    v14 = 2;
    v15 = 3;
    if (a3 != 6)
    {
      v15 = 0;
    }

    if (a3 != 5)
    {
      v14 = v15;
    }

    if (a3 == 4)
    {
      v13 = 1;
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    v5 = 0;
    if (a3 < 2)
    {

      return v5;
    }

    if (a3 == 2)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{v13, v3}];

  return v5;
}

+ (id)_createStackOfSize:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CEB598]);
  [v4 setStackLayoutSize:a3];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  [v4 setIdentifier:v6];

  return v4;
}

+ (id)filterWidgets:(id)a3 bySize:(unint64_t)a4 usedPersonalities:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CEB9B0]);
        v15 = [v13 extensionBundleId];
        v16 = [v13 widgetKind];
        v17 = [v14 initWithExtensionBundleId:v15 kind:v16];

        if (([v7 containsObject:v17] & 1) == 0 && objc_msgSend(v13, "size") == a4)
        {
          [v20 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (void)evenlyDistributeWidgets:(id)a3 inRange:(_NSRange)a4 amongStacks:(id)a5 usedPersonalities:(id)a6 maxWidgetsInStack:(unint64_t)a7
{
  length = a4.length;
  location = a4.location;
  v12 = a5;
  v13 = a6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__ATXSuggestedPagesUtils_evenlyDistributeWidgets_inRange_amongStacks_usedPersonalities_maxWidgetsInStack___block_invoke;
  v16[3] = &unk_27859F910;
  v19 = location;
  v20 = length;
  v21 = a7;
  v17 = v12;
  v18 = v13;
  v14 = v13;
  v15 = v12;
  [a3 enumerateObjectsUsingBlock:v16];
}

void __106__ATXSuggestedPagesUtils_evenlyDistributeWidgets_inRange_amongStacks_usedPersonalities_maxWidgetsInStack___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v8 = a3 >= v6;
  v7 = a3 - v6;
  v8 = !v8 || v7 >= *(a1 + 56);
  if (!v8)
  {
    v23 = v5;
    v9 = [*(a1 + 32) objectAtIndexedSubscript:{a3 % objc_msgSend(*(a1 + 32), "count")}];
    v10 = [v9 widgets];
    v11 = [v10 count];
    v12 = *(a1 + 64);

    if (v11 != v12)
    {
      v13 = [v9 widgets];
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

      v17 = [v16 arrayByAddingObject:v23];
      [v9 setWidgets:v17];

      v18 = *(a1 + 40);
      v19 = objc_alloc(MEMORY[0x277CEB9B0]);
      v20 = [v23 extensionBundleId];
      v21 = [v23 widgetKind];
      v22 = [v19 initWithExtensionBundleId:v20 kind:v21];
      [v18 addObject:v22];
    }

    v5 = v23;
  }
}

+ (id)sortWidgetsByDescendingScore:(id)a3 limit:(unint64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  if (a4)
  {
    v9 = [v5 count];
    if (v9 >= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = v9;
    }

    v11 = [v8 subarrayWithRange:{0, v10}];
  }

  else
  {
    v11 = v8;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)modeForSuggestedPageType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ATXSuggestedPagesUtils: unhandled page type: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
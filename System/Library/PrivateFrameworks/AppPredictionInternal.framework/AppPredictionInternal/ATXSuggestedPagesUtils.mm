@interface ATXSuggestedPagesUtils
+ (id)_createStackOfSize:(unint64_t)size;
+ (id)filterWidgets:(id)widgets bySize:(unint64_t)size usedPersonalities:(id)personalities;
+ (id)semanticTypeForSuggestedPageType:(int64_t)type;
+ (id)sortWidgetsByDescendingScore:(id)score limit:(unint64_t)limit;
+ (unint64_t)modeForSuggestedPageType:(int64_t)type;
+ (void)evenlyDistributeWidgets:(id)widgets inRange:(_NSRange)range amongStacks:(id)stacks usedPersonalities:(id)personalities maxWidgetsInStack:(unint64_t)stack;
@end

@implementation ATXSuggestedPagesUtils

+ (unint64_t)modeForSuggestedPageType:(int64_t)type
{
  if (type < 0xD)
  {
    return qword_226872718[type];
  }

  v5 = __atxlog_handle_modes();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(ATXSuggestedPagesUtils *)type modeForSuggestedPageType:v5];
  }

  return 16;
}

+ (id)semanticTypeForSuggestedPageType:(int64_t)type
{
  if (type > 6)
  {
    v7 = 7;
    v8 = 8;
    v9 = 9;
    if (type != 12)
    {
      v9 = 0;
    }

    if (type != 11)
    {
      v8 = v9;
    }

    if (type != 10)
    {
      v7 = v8;
    }

    v10 = 4;
    v11 = 5;
    v12 = 6;
    if (type != 9)
    {
      v12 = 0;
    }

    if (type != 8)
    {
      v11 = v12;
    }

    if (type != 7)
    {
      v10 = v11;
    }

    if (type <= 9)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }
  }

  else if (type > 3)
  {
    v14 = 2;
    v15 = 3;
    if (type != 6)
    {
      v15 = 0;
    }

    if (type != 5)
    {
      v14 = v15;
    }

    if (type == 4)
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
    if (type < 2)
    {

      return v5;
    }

    if (type == 2)
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

+ (id)_createStackOfSize:(unint64_t)size
{
  v4 = objc_alloc_init(MEMORY[0x277CEB598]);
  [v4 setStackLayoutSize:size];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v4 setIdentifier:uUIDString];

  return v4;
}

+ (id)filterWidgets:(id)widgets bySize:(unint64_t)size usedPersonalities:(id)personalities
{
  v27 = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  personalitiesCopy = personalities;
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = widgetsCopy;
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
        extensionBundleId = [v13 extensionBundleId];
        widgetKind = [v13 widgetKind];
        v17 = [v14 initWithExtensionBundleId:extensionBundleId kind:widgetKind];

        if (([personalitiesCopy containsObject:v17] & 1) == 0 && objc_msgSend(v13, "size") == size)
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

+ (void)evenlyDistributeWidgets:(id)widgets inRange:(_NSRange)range amongStacks:(id)stacks usedPersonalities:(id)personalities maxWidgetsInStack:(unint64_t)stack
{
  length = range.length;
  location = range.location;
  stacksCopy = stacks;
  personalitiesCopy = personalities;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__ATXSuggestedPagesUtils_evenlyDistributeWidgets_inRange_amongStacks_usedPersonalities_maxWidgetsInStack___block_invoke;
  v16[3] = &unk_27859F910;
  v19 = location;
  v20 = length;
  stackCopy = stack;
  v17 = stacksCopy;
  v18 = personalitiesCopy;
  v14 = personalitiesCopy;
  v15 = stacksCopy;
  [widgets enumerateObjectsUsingBlock:v16];
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

+ (id)sortWidgetsByDescendingScore:(id)score limit:(unint64_t)limit
{
  v15[1] = *MEMORY[0x277D85DE8];
  scoreCopy = score;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
  v15[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [scoreCopy sortedArrayUsingDescriptors:v7];

  if (limit)
  {
    v9 = [scoreCopy count];
    if (v9 >= limit)
    {
      limitCopy = limit;
    }

    else
    {
      limitCopy = v9;
    }

    v11 = [v8 subarrayWithRange:{0, limitCopy}];
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
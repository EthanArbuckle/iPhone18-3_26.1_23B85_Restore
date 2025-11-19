@interface ATXHomeScreenStackSuggestion
+ (id)_widgetAndSuggestionsFromSuggestionLayout:(id)a3;
+ (id)_widgetProactiveSuggestionFromLayout:(id)a3;
+ (id)_widgetsFromSuggestionLayouts:(id)a3;
+ (id)stackSuggestionsFromCachedSuggestions:(id)a3;
+ (id)widgetFromSuggestionLayout:(id)a3;
+ (unint64_t)_stackLayoutSizeFromUILayoutType:(int64_t)a3;
- (ATXHomeScreenStackSuggestion)initWithStackIdentifier:(id)a3 layoutOfTopWidget:(id)a4 layoutOfSuggestedWidgets:(id)a5;
- (ATXInfoSuggestion)topWidgetInfoSuggestion;
- (ATXProactiveSuggestion)topWidgetProactiveSuggestion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTopWidgetSuggestionsWidget;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initForDebuggingWithStackIdentifier:(id)a3 topWidget:(id)a4 suggestedWidgets:(id)a5;
- (unint64_t)hash;
@end

@implementation ATXHomeScreenStackSuggestion

- (ATXHomeScreenStackSuggestion)initWithStackIdentifier:(id)a3 layoutOfTopWidget:(id)a4 layoutOfSuggestedWidgets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [ATXHomeScreenStackSuggestion _widgetAndSuggestionsFromSuggestionLayout:v10];
  v13 = [ATXHomeScreenStackSuggestion _widgetsFromSuggestionLayouts:v11];

  if ([v10 isNPlusOne])
  {
    v14 = [v12 first];
    if (v14)
    {
      v15 = v14;
      v16 = [v12 first];
      v17 = [v13 containsObject:v16];

      if ((v17 & 1) == 0)
      {
        v18 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [ATXHomeScreenStackSuggestion initWithStackIdentifier:v12 layoutOfTopWidget:v18 layoutOfSuggestedWidgets:?];
        }
      }
    }
  }

  v28.receiver = self;
  v28.super_class = ATXHomeScreenStackSuggestion;
  v19 = [(ATXHomeScreenStackSuggestion *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_stackId, a3);
    v21 = [v12 first];
    topWidget = v20->_topWidget;
    v20->_topWidget = v21;

    v23 = [v12 second];
    topWidgetSuggestions = v20->_topWidgetSuggestions;
    v20->_topWidgetSuggestions = v23;

    v25 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    suggestedWidgets = v20->_suggestedWidgets;
    v20->_suggestedWidgets = v25;

    v20->_isLowConfidenceStackRotationForStaleStack = [v10 isLowConfidenceStackRotationForStaleStack];
  }

  return v20;
}

- (id)initForDebuggingWithStackIdentifier:(id)a3 topWidget:(id)a4 suggestedWidgets:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ATXHomeScreenStackSuggestion;
  v12 = [(ATXHomeScreenStackSuggestion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stackId, a3);
    objc_storeStrong(&v13->_topWidget, a4);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = objc_opt_new();
    }

    suggestedWidgets = v13->_suggestedWidgets;
    v13->_suggestedWidgets = v14;
  }

  return v13;
}

- (BOOL)isTopWidgetSuggestionsWidget
{
  v2 = [(ATXHomeScreenStackSuggestion *)self topWidget];
  v3 = [v2 extensionBundleId];
  v4 = [v3 isEqualToString:*MEMORY[0x1E698AFC0]];

  return v4;
}

- (ATXInfoSuggestion)topWidgetInfoSuggestion
{
  v2 = [(ATXHomeScreenStackSuggestion *)self topWidgetProactiveSuggestion];
  v3 = [v2 executableSpecification];
  v4 = [v3 executableObject];

  return v4;
}

- (ATXProactiveSuggestion)topWidgetProactiveSuggestion
{
  if ([(ATXHomeScreenStackSuggestion *)self isTopWidgetSuggestionsWidget])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(NSArray *)self->_topWidgetSuggestions firstObject];
  }

  return v3;
}

- (id)description
{
  v2 = [(ATXHomeScreenStackSuggestion *)self dictionaryRepresentation];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 descriptionWithLocale:v3];

  return v4;
}

- (id)dictionaryRepresentation
{
  v9[3] = *MEMORY[0x1E69E9840];
  topWidget = self->_topWidget;
  v9[0] = self->_stackId;
  v8[0] = @"stackId";
  v8[1] = @"topWidget";
  if (topWidget)
  {
    v4 = [(ATXHomeScreenWidgetIdentifiable *)topWidget dictionaryRepresentation];
  }

  else
  {
    v4 = @"nil";
  }

  v9[1] = v4;
  v8[2] = @"suggestedWidgets";
  v5 = [(NSSet *)self->_suggestedWidgets description];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  if (topWidget)
  {
  }

  return v6;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_stackId hash];
  v4 = [(ATXHomeScreenWidgetIdentifiable *)self->_topWidget hash]- v3 + 32 * v3;
  v5 = [(NSSet *)self->_suggestedWidgets hash]- v4 + 32 * v4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_topWidgetSuggestions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) executableSpecification];
        v12 = [v11 executableIdentifier];
        v5 = [v12 hash] - v5 + 32 * v5;

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_stackId;
      v7 = v6;
      if (v6 == v5->_stackId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v10 = [(NSArray *)self->_topWidgetSuggestions count];
      if (v10 != [(NSArray *)v5->_topWidgetSuggestions count])
      {
LABEL_14:
        v9 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 1;
      topWidgetSuggestions = self->_topWidgetSuggestions;
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __40__ATXHomeScreenStackSuggestion_isEqual___block_invoke;
      v23 = &unk_1E80C3930;
      v12 = v5;
      v24 = v12;
      v25 = &v26;
      [(NSArray *)topWidgetSuggestions enumerateObjectsUsingBlock:&v20];
      if ((v27[3] & 1) == 0)
      {
        goto LABEL_13;
      }

      v13 = self->_topWidget;
      v14 = v12[4];
      v15 = v14;
      if (v13 == v14)
      {
      }

      else
      {
        v16 = [(ATXHomeScreenWidgetIdentifiable *)v13 isEqual:v14, v20, v21, v22, v23];

        if (!v16)
        {
LABEL_13:
          v9 = 0;
LABEL_20:

          _Block_object_dispose(&v26, 8);
          goto LABEL_21;
        }
      }

      v17 = self->_suggestedWidgets;
      v18 = v12[5];
      if (v17 == v18)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSSet *)v17 isEqual:v18];
      }

      goto LABEL_20;
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

void __40__ATXHomeScreenStackSuggestion_isEqual___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 8);
  v8 = a2;
  v14 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 executableSpecification];

  v10 = [v9 executableIdentifier];
  v11 = [v14 executableSpecification];
  v12 = [v11 executableIdentifier];
  v13 = [v10 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (id)stackSuggestionsFromCachedSuggestions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 cachedTopOfStackLayouts];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke;
  v17[3] = &unk_1E80C5600;
  v20 = a1;
  v18 = v4;
  v7 = v5;
  v19 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v17];

  v9 = [v8 cachedSuggestedWidgetsLayouts];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke_2;
  v14[3] = &unk_1E80C5628;
  v10 = v7;
  v15 = v10;
  v16 = a1;
  [v9 enumerateKeysAndObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v10;

  return v10;
}

void __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 48);
  v6 = a3;
  v7 = [v5 alloc];
  v8 = [*(a1 + 32) cachedSuggestedWidgetsLayouts];
  v9 = [v8 objectForKeyedSubscript:v11];
  v10 = [v7 initWithStackIdentifier:v11 layoutOfTopWidget:v6 layoutOfSuggestedWidgets:v9];

  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

void __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (!v6)
  {
    v7 = [objc_alloc(*(a1 + 40)) initWithStackIdentifier:v8 layoutOfTopWidget:0 layoutOfSuggestedWidgets:v5];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

+ (id)widgetFromSuggestionLayout:(id)a3
{
  v3 = [a1 _widgetAndSuggestionsFromSuggestionLayout:a3];
  v4 = [v3 first];

  return v4;
}

+ (id)_widgetAndSuggestionsFromSuggestionLayout:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if ([v4 isValidForSuggestionsWidget])
  {
    v6 = objc_opt_new();
    v7 = *MEMORY[0x1E698AFC0];
    [v6 setAppBundleId:*MEMORY[0x1E698AFC0]];
    [v6 setExtensionBundleId:v7];
    v8 = ATXSpecialWidgetKindSiriSuggestions();
    [v6 setWidgetKind:v8];

    v9 = [v5 minSuggestionListInLayout];
  }

  else
  {
    v6 = [a1 _widgetProactiveSuggestionFromLayout:v5];
    v11 = [MEMORY[0x1E69C5B88] infoSuggestionFromProactiveSuggestion:v6];
    if (!v11)
    {
      v9 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenStackSuggestion *)v9 _widgetAndSuggestionsFromSuggestionLayout:v20, v21, v22, v23, v24, v25, v26];
      }

      v10 = 0;
      goto LABEL_8;
    }

    v12 = v11;
    v13 = objc_opt_new();
    v14 = [v12 appBundleIdentifier];
    [v13 setAppBundleId:v14];

    v15 = [v12 widgetBundleIdentifier];
    [v13 setExtensionBundleId:v15];

    v16 = [v12 widgetKind];
    [v13 setWidgetKind:v16];

    v17 = [v12 intent];
    [v13 setIntent:v17];

    v27[0] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

    v6 = v13;
  }

  v18 = [v5 widgetUniqueId];
  [v6 setWidgetUniqueId:v18];

  [v6 setSize:{objc_msgSend(a1, "_stackLayoutSizeFromUILayoutType:", objc_msgSend(v5, "layoutType"))}];
  [v6 setSuggestedWidget:{objc_msgSend(v5, "isNPlusOne")}];
  v10 = [MEMORY[0x1E69C5D98] tupleWithFirst:v6 second:v9];
LABEL_8:

LABEL_9:

  return v10;
}

+ (id)_widgetProactiveSuggestionFromLayout:(id)a3
{
  v3 = a3;
  if ([v3 layoutType] == 5)
  {
    v4 = [v3 twoByTwoSuggestions];
  }

  else if ([v3 layoutType] == 3)
  {
    v4 = [v3 twoByFourSuggestions];
  }

  else if ([v3 layoutType] == 10)
  {
    v4 = [v3 fourByFourSuggestions];
  }

  else
  {
    if ([v3 layoutType] != 16)
    {
      goto LABEL_14;
    }

    v4 = [v3 fourByEightSuggestions];
  }

  v5 = v4;
  v6 = [v4 firstObject];

  if (!v6)
  {
LABEL_14:
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenStackSuggestion *)v6 _widgetProactiveSuggestionFromLayout:v17, v18, v19, v20, v21, v22, v23];
    }

    goto LABEL_16;
  }

  v7 = [v6 executableSpecification];
  v8 = [v7 executableType];

  if (v8 == 3)
  {
    goto LABEL_17;
  }

  v9 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ATXHomeScreenStackSuggestion *)v9 _widgetProactiveSuggestionFromLayout:v10, v11, v12, v13, v14, v15, v16];
  }

LABEL_16:
  v6 = 0;
LABEL_17:

  return v6;
}

+ (id)_widgetsFromSuggestionLayouts:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [a1 _widgetAndSuggestionsFromSuggestionLayout:{v11, v17}];
          v14 = [v13 first];

          if (v14)
          {
            v15 = [v13 first];
            [v5 addObject:v15];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (unint64_t)_stackLayoutSizeFromUILayoutType:(int64_t)a3
{
  if (a3 == 3)
  {
    return 1;
  }

  if (a3 != 5)
  {
    if (a3 == 9)
    {
      return 1;
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {
      return 2;
    }

    if (a3 == 16)
    {
      return 4;
    }

    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenStackSuggestion *)a3 _stackLayoutSizeFromUILayoutType:v5];
    }
  }

  return 0;
}

- (void)initWithStackIdentifier:(void *)a1 layoutOfTopWidget:(NSObject *)a2 layoutOfSuggestedWidgets:.cold.1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a1 first];
  v5 = [v4 compactDescription];
  v6 = [a1 first];
  v7 = [v6 widgetUniqueId];
  v8 = 138412546;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXHomeScreenStackSuggestion: TopWidget %@ (uniqueID %{public}@) is a suggested widget but it does not exist in the suggestedWidgets list. Aborting init.", &v8, 0x16u);
}

+ (void)_stackLayoutSizeFromUILayoutType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "+[ATXHomeScreenStackSuggestion _stackLayoutSizeFromUILayoutType:]";
  v4 = 2048;
  v5 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%s: Could not convert ATXUILayoutType %lu to ATXStackLayoutSize", &v2, 0x16u);
}

@end
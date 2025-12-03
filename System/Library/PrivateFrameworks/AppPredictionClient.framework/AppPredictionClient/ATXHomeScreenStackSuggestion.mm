@interface ATXHomeScreenStackSuggestion
+ (id)_widgetAndSuggestionsFromSuggestionLayout:(id)layout;
+ (id)_widgetProactiveSuggestionFromLayout:(id)layout;
+ (id)_widgetsFromSuggestionLayouts:(id)layouts;
+ (id)stackSuggestionsFromCachedSuggestions:(id)suggestions;
+ (id)widgetFromSuggestionLayout:(id)layout;
+ (unint64_t)_stackLayoutSizeFromUILayoutType:(int64_t)type;
- (ATXHomeScreenStackSuggestion)initWithStackIdentifier:(id)identifier layoutOfTopWidget:(id)widget layoutOfSuggestedWidgets:(id)widgets;
- (ATXInfoSuggestion)topWidgetInfoSuggestion;
- (ATXProactiveSuggestion)topWidgetProactiveSuggestion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTopWidgetSuggestionsWidget;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initForDebuggingWithStackIdentifier:(id)identifier topWidget:(id)widget suggestedWidgets:(id)widgets;
- (unint64_t)hash;
@end

@implementation ATXHomeScreenStackSuggestion

- (ATXHomeScreenStackSuggestion)initWithStackIdentifier:(id)identifier layoutOfTopWidget:(id)widget layoutOfSuggestedWidgets:(id)widgets
{
  identifierCopy = identifier;
  widgetCopy = widget;
  widgetsCopy = widgets;
  v12 = [ATXHomeScreenStackSuggestion _widgetAndSuggestionsFromSuggestionLayout:widgetCopy];
  v13 = [ATXHomeScreenStackSuggestion _widgetsFromSuggestionLayouts:widgetsCopy];

  if ([widgetCopy isNPlusOne])
  {
    first = [v12 first];
    if (first)
    {
      v15 = first;
      first2 = [v12 first];
      v17 = [v13 containsObject:first2];

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
    objc_storeStrong(&v19->_stackId, identifier);
    first3 = [v12 first];
    topWidget = v20->_topWidget;
    v20->_topWidget = first3;

    second = [v12 second];
    topWidgetSuggestions = v20->_topWidgetSuggestions;
    v20->_topWidgetSuggestions = second;

    v25 = [MEMORY[0x1E695DFD8] setWithArray:v13];
    suggestedWidgets = v20->_suggestedWidgets;
    v20->_suggestedWidgets = v25;

    v20->_isLowConfidenceStackRotationForStaleStack = [widgetCopy isLowConfidenceStackRotationForStaleStack];
  }

  return v20;
}

- (id)initForDebuggingWithStackIdentifier:(id)identifier topWidget:(id)widget suggestedWidgets:(id)widgets
{
  identifierCopy = identifier;
  widgetCopy = widget;
  widgetsCopy = widgets;
  v17.receiver = self;
  v17.super_class = ATXHomeScreenStackSuggestion;
  v12 = [(ATXHomeScreenStackSuggestion *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stackId, identifier);
    objc_storeStrong(&v13->_topWidget, widget);
    if (widgetsCopy)
    {
      v14 = widgetsCopy;
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
  topWidget = [(ATXHomeScreenStackSuggestion *)self topWidget];
  extensionBundleId = [topWidget extensionBundleId];
  v4 = [extensionBundleId isEqualToString:*MEMORY[0x1E698AFC0]];

  return v4;
}

- (ATXInfoSuggestion)topWidgetInfoSuggestion
{
  topWidgetProactiveSuggestion = [(ATXHomeScreenStackSuggestion *)self topWidgetProactiveSuggestion];
  executableSpecification = [topWidgetProactiveSuggestion executableSpecification];
  executableObject = [executableSpecification executableObject];

  return executableObject;
}

- (ATXProactiveSuggestion)topWidgetProactiveSuggestion
{
  if ([(ATXHomeScreenStackSuggestion *)self isTopWidgetSuggestionsWidget])
  {
    firstObject = 0;
  }

  else
  {
    firstObject = [(NSArray *)self->_topWidgetSuggestions firstObject];
  }

  return firstObject;
}

- (id)description
{
  dictionaryRepresentation = [(ATXHomeScreenStackSuggestion *)self dictionaryRepresentation];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [dictionaryRepresentation descriptionWithLocale:currentLocale];

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
    dictionaryRepresentation = [(ATXHomeScreenWidgetIdentifiable *)topWidget dictionaryRepresentation];
  }

  else
  {
    dictionaryRepresentation = @"nil";
  }

  v9[1] = dictionaryRepresentation;
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

        executableSpecification = [*(*(&v14 + 1) + 8 * v10) executableSpecification];
        executableIdentifier = [executableSpecification executableIdentifier];
        v5 = [executableIdentifier hash] - v5 + 32 * v5;

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)stackSuggestionsFromCachedSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = objc_opt_new();
  cachedTopOfStackLayouts = [suggestionsCopy cachedTopOfStackLayouts];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke;
  v17[3] = &unk_1E80C5600;
  selfCopy = self;
  v18 = suggestionsCopy;
  v7 = v5;
  v19 = v7;
  v8 = suggestionsCopy;
  [cachedTopOfStackLayouts enumerateKeysAndObjectsUsingBlock:v17];

  cachedSuggestedWidgetsLayouts = [v8 cachedSuggestedWidgetsLayouts];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__ATXHomeScreenStackSuggestion_stackSuggestionsFromCachedSuggestions___block_invoke_2;
  v14[3] = &unk_1E80C5628;
  v10 = v7;
  v15 = v10;
  selfCopy2 = self;
  [cachedSuggestedWidgetsLayouts enumerateKeysAndObjectsUsingBlock:v14];

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

+ (id)widgetFromSuggestionLayout:(id)layout
{
  v3 = [self _widgetAndSuggestionsFromSuggestionLayout:layout];
  first = [v3 first];

  return first;
}

+ (id)_widgetAndSuggestionsFromSuggestionLayout:(id)layout
{
  v27[1] = *MEMORY[0x1E69E9840];
  layoutCopy = layout;
  v5 = layoutCopy;
  if (!layoutCopy)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if ([layoutCopy isValidForSuggestionsWidget])
  {
    v6 = objc_opt_new();
    v7 = *MEMORY[0x1E698AFC0];
    [v6 setAppBundleId:*MEMORY[0x1E698AFC0]];
    [v6 setExtensionBundleId:v7];
    v8 = ATXSpecialWidgetKindSiriSuggestions();
    [v6 setWidgetKind:v8];

    minSuggestionListInLayout = [v5 minSuggestionListInLayout];
  }

  else
  {
    v6 = [self _widgetProactiveSuggestionFromLayout:v5];
    v11 = [MEMORY[0x1E69C5B88] infoSuggestionFromProactiveSuggestion:v6];
    if (!v11)
    {
      minSuggestionListInLayout = __atxlog_handle_home_screen();
      if (os_log_type_enabled(minSuggestionListInLayout, OS_LOG_TYPE_ERROR))
      {
        [(ATXHomeScreenStackSuggestion *)minSuggestionListInLayout _widgetAndSuggestionsFromSuggestionLayout:v20, v21, v22, v23, v24, v25, v26];
      }

      v10 = 0;
      goto LABEL_8;
    }

    v12 = v11;
    v13 = objc_opt_new();
    appBundleIdentifier = [v12 appBundleIdentifier];
    [v13 setAppBundleId:appBundleIdentifier];

    widgetBundleIdentifier = [v12 widgetBundleIdentifier];
    [v13 setExtensionBundleId:widgetBundleIdentifier];

    widgetKind = [v12 widgetKind];
    [v13 setWidgetKind:widgetKind];

    intent = [v12 intent];
    [v13 setIntent:intent];

    v27[0] = v6;
    minSuggestionListInLayout = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];

    v6 = v13;
  }

  widgetUniqueId = [v5 widgetUniqueId];
  [v6 setWidgetUniqueId:widgetUniqueId];

  [v6 setSize:{objc_msgSend(self, "_stackLayoutSizeFromUILayoutType:", objc_msgSend(v5, "layoutType"))}];
  [v6 setSuggestedWidget:{objc_msgSend(v5, "isNPlusOne")}];
  v10 = [MEMORY[0x1E69C5D98] tupleWithFirst:v6 second:minSuggestionListInLayout];
LABEL_8:

LABEL_9:

  return v10;
}

+ (id)_widgetProactiveSuggestionFromLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy layoutType] == 5)
  {
    twoByTwoSuggestions = [layoutCopy twoByTwoSuggestions];
  }

  else if ([layoutCopy layoutType] == 3)
  {
    twoByTwoSuggestions = [layoutCopy twoByFourSuggestions];
  }

  else if ([layoutCopy layoutType] == 10)
  {
    twoByTwoSuggestions = [layoutCopy fourByFourSuggestions];
  }

  else
  {
    if ([layoutCopy layoutType] != 16)
    {
      goto LABEL_14;
    }

    twoByTwoSuggestions = [layoutCopy fourByEightSuggestions];
  }

  v5 = twoByTwoSuggestions;
  firstObject = [twoByTwoSuggestions firstObject];

  if (!firstObject)
  {
LABEL_14:
    firstObject = __atxlog_handle_home_screen();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenStackSuggestion *)firstObject _widgetProactiveSuggestionFromLayout:v17, v18, v19, v20, v21, v22, v23];
    }

    goto LABEL_16;
  }

  executableSpecification = [firstObject executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 3)
  {
    goto LABEL_17;
  }

  v9 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ATXHomeScreenStackSuggestion *)v9 _widgetProactiveSuggestionFromLayout:v10, v11, v12, v13, v14, v15, v16];
  }

LABEL_16:
  firstObject = 0;
LABEL_17:

  return firstObject;
}

+ (id)_widgetsFromSuggestionLayouts:(id)layouts
{
  v22 = *MEMORY[0x1E69E9840];
  layoutsCopy = layouts;
  if ([layoutsCopy count])
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = layoutsCopy;
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
          v13 = [self _widgetAndSuggestionsFromSuggestionLayout:{v11, v17}];
          first = [v13 first];

          if (first)
          {
            first2 = [v13 first];
            [v5 addObject:first2];
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

+ (unint64_t)_stackLayoutSizeFromUILayoutType:(int64_t)type
{
  if (type == 3)
  {
    return 1;
  }

  if (type != 5)
  {
    if (type == 9)
    {
      return 1;
    }

    if ((type & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {
      return 2;
    }

    if (type == 16)
    {
      return 4;
    }

    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXHomeScreenStackSuggestion *)type _stackLayoutSizeFromUILayoutType:v5];
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
@interface _ATXSuggestionsWidgetSuggestion
- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion;
- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (id)initForPreviewOfSize:(unint64_t)size hyperParameters:(id)parameters;
@end

@implementation _ATXSuggestionsWidgetSuggestion

- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  widgetCopy = widget;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  extensionBundleId = [widgetCopy extensionBundleId];
  v16 = [extensionBundleId isEqualToString:*MEMORY[0x277CEBBA0]];

  if (v16)
  {
    v38.receiver = self;
    v38.super_class = _ATXSuggestionsWidgetSuggestion;
    v17 = [(_ATXSuggestionsWidgetSuggestion *)&v38 init];
    self = v17;
    if (!v17)
    {
LABEL_13:
      self = self;
      selfCopy = self;
      goto LABEL_14;
    }

    objc_storeWeak(&v17->super._stack, stackCopy);
    objc_storeStrong(&self->super._widget, widget);
    objc_storeStrong(&self->super._suggestionDeduplicator, deduplicator);
    objc_storeStrong(&self->super._hyperParameters, parameters);
    if (![(ATXHomeScreenWidgetIdentifiable *)self->super._widget size])
    {
      v18 = 5;
      goto LABEL_12;
    }

    if ([(ATXHomeScreenWidgetIdentifiable *)self->super._widget size]== 1)
    {
      v18 = 9;
LABEL_12:
      self->super._layoutType = v18;
      v28 = objc_opt_new();
      suggestionsBySuggestionLayoutTypes = self->super._suggestionsBySuggestionLayoutTypes;
      self->super._suggestionsBySuggestionLayoutTypes = v28;

      goto LABEL_13;
    }

    if ([(ATXHomeScreenWidgetIdentifiable *)self->super._widget size]== 2)
    {
      v18 = 11;
      goto LABEL_12;
    }

    v19 = __atxlog_handle_blending();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSuggestionsWidgetSuggestion *)v19 initWithSuggestionsWidget:v31 containingStack:v32 suggestionDeduplicator:v33 hyperParameters:v34, v35, v36, v37];
    }
  }

  else
  {
    v19 = __atxlog_handle_blending();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSuggestionsWidgetSuggestion *)v19 initWithSuggestionsWidget:v20 containingStack:v21 suggestionDeduplicator:v22 hyperParameters:v23, v24, v25, v26];
    }
  }

  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (_ATXSuggestionsWidgetSuggestion)initWithSuggestionsWidget:(id)widget containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  layoutCopy = layout;
  v14 = [(_ATXSuggestionsWidgetSuggestion *)self initWithSuggestionsWidget:widget containingStack:stack suggestionDeduplicator:deduplicator hyperParameters:parameters];
  if (!v14)
  {
    goto LABEL_4;
  }

  if ([layoutCopy layoutType] == v14->super._layoutType)
  {
    objc_storeStrong(&v14->super._suggestionLayout, layout);
LABEL_4:
    v15 = v14;
    goto LABEL_8;
  }

  v16 = __atxlog_handle_blending();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [(_ATXSuggestionsWidgetSuggestion *)v16 initWithSuggestionsWidget:v17 containingStack:v18 suggestionLayout:v19 suggestionDeduplicator:v20 hyperParameters:v21, v22, v23];
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)initForPreviewOfSize:(unint64_t)size hyperParameters:(id)parameters
{
  parametersCopy = parameters;
  v28.receiver = self;
  v28.super_class = _ATXSuggestionsWidgetSuggestion;
  v8 = [(_ATXSuggestionsWidgetSuggestion *)&v28 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&v8->super._hyperParameters, parameters);
  v10 = objc_opt_new();
  widget = v9->super._widget;
  v9->super._widget = v10;

  v12 = *MEMORY[0x277CEBBA0];
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setAppBundleId:*MEMORY[0x277CEBBA0]];
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setExtensionBundleId:v12];
  v13 = ATXSpecialWidgetKindSiriSuggestions();
  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setWidgetKind:v13];

  [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setSize:size];
  if (![(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size])
  {
    v14 = MEMORY[0x277CEBBA8];
    v15 = 5;
    goto LABEL_8;
  }

  if ([(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size]== 1)
  {
    v14 = MEMORY[0x277CEBBB0];
    v15 = 9;
LABEL_8:
    [(ATXHomeScreenWidgetIdentifiable *)v9->super._widget setWidgetUniqueId:*v14];
    v9->super._layoutType = v15;
    v16 = objc_opt_new();
    suggestionsBySuggestionLayoutTypes = v9->super._suggestionsBySuggestionLayoutTypes;
    v9->super._suggestionsBySuggestionLayoutTypes = v16;

LABEL_9:
    v18 = v9;
    goto LABEL_10;
  }

  if ([(ATXHomeScreenWidgetIdentifiable *)v9->super._widget size]== 2)
  {
    v14 = MEMORY[0x277CEBBB8];
    v15 = 11;
    goto LABEL_8;
  }

  v20 = __atxlog_handle_blending();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    [(_ATXSuggestionsWidgetSuggestion *)v20 initForPreviewOfSize:v21 hyperParameters:v22, v23, v24, v25, v26, v27];
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion
{
  suggestionDeduplicator = self->super._suggestionDeduplicator;
  suggestionCopy = suggestion;
  _existingSuggestionsInLayout = [(_ATXCompositeLayoutWidgetSuggestionBase *)self _existingSuggestionsInLayout];
  LOBYTE(suggestionDeduplicator) = [(ATXSuggestionDeduplicatorProtocol *)suggestionDeduplicator suggestionIsDuplicate:suggestionCopy existingSuggestions:_existingSuggestionsInLayout shouldCompareAcrossTypes:1];

  return suggestionDeduplicator;
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Widget is not a SuggestionsWidget.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithSuggestionsWidget:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionLayout:(uint64_t)a5 suggestionDeduplicator:(uint64_t)a6 hyperParameters:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: SuggestionLayout is incompatible with stack size.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initForPreviewOfSize:(uint64_t)a3 hyperParameters:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
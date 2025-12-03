@interface _ATXAppPredictionPanelSuggestion
- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion;
- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
- (id)initForPreviewWithHyperParameters:(id)parameters;
@end

@implementation _ATXAppPredictionPanelSuggestion

- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  panelCopy = panel;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  extensionBundleId = [panelCopy extensionBundleId];
  v16 = [extensionBundleId isEqualToString:*MEMORY[0x277CEB1C0]];

  if ((v16 & 1) == 0)
  {
    v21 = __atxlog_handle_blending();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppPredictionPanelSuggestion *)v21 initWithAppPredictionPanel:v22 containingStack:v23 suggestionDeduplicator:v24 hyperParameters:v25, v26, v27, v28];
    }

    goto LABEL_10;
  }

  v37.receiver = self;
  v37.super_class = _ATXAppPredictionPanelSuggestion;
  v17 = [(_ATXAppPredictionPanelSuggestion *)&v37 init];
  self = v17;
  if (v17)
  {
    objc_storeWeak(&v17->super._stack, stackCopy);
    objc_storeStrong(&self->super._widget, panel);
    objc_storeStrong(&self->super._suggestionDeduplicator, deduplicator);
    objc_storeStrong(&self->super._hyperParameters, parameters);
    if ([(ATXHomeScreenWidgetIdentifiable *)self->super._widget size]== 1)
    {
      self->super._layoutType = 0;
      v18 = objc_opt_new();
      suggestionsBySuggestionLayoutTypes = self->super._suggestionsBySuggestionLayoutTypes;
      self->super._suggestionsBySuggestionLayoutTypes = v18;

      goto LABEL_5;
    }

    v21 = __atxlog_handle_blending();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      [(_ATXAppPredictionPanelSuggestion *)v21 initWithAppPredictionPanel:v29 containingStack:v30 suggestionDeduplicator:v31 hyperParameters:v32, v33, v34, v35];
    }

LABEL_10:

    selfCopy = 0;
    goto LABEL_11;
  }

LABEL_5:
  self = self;
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (_ATXAppPredictionPanelSuggestion)initWithAppPredictionPanel:(id)panel containingStack:(id)stack suggestionLayout:(id)layout suggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  layoutCopy = layout;
  v14 = [(_ATXAppPredictionPanelSuggestion *)self initWithAppPredictionPanel:panel containingStack:stack suggestionDeduplicator:deduplicator hyperParameters:parameters];
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
    [(_ATXAppPredictionPanelSuggestion *)v16 initWithAppPredictionPanel:v17 containingStack:v18 suggestionLayout:v19 suggestionDeduplicator:v20 hyperParameters:v21, v22, v23];
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (id)initForPreviewWithHyperParameters:(id)parameters
{
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = _ATXAppPredictionPanelSuggestion;
  v6 = [(_ATXAppPredictionPanelSuggestion *)&v14 init];
  if (v6)
  {
    v7 = objc_opt_new();
    widget = v6->super._widget;
    v6->super._widget = v7;

    v9 = *MEMORY[0x277CEB1C0];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setAppBundleId:*MEMORY[0x277CEB1C0]];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setExtensionBundleId:v9];
    v10 = ATXSpecialWidgetKindAppPredictions();
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setWidgetKind:v10];

    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setSize:1];
    [(ATXHomeScreenWidgetIdentifiable *)v6->super._widget setWidgetUniqueId:*MEMORY[0x277CEBB40]];
    objc_storeStrong(&v6->super._hyperParameters, parameters);
    v6->super._layoutType = 0;
    v11 = objc_opt_new();
    suggestionsBySuggestionLayoutTypes = v6->super._suggestionsBySuggestionLayoutTypes;
    v6->super._suggestionsBySuggestionLayoutTypes = v11;
  }

  return v6;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1)
  {
    suggestionDeduplicator = self->super._suggestionDeduplicator;
    _existingSuggestionsInLayout = [(_ATXCompositeLayoutWidgetSuggestionBase *)self _existingSuggestionsInLayout];
    v9 = [(ATXSuggestionDeduplicatorProtocol *)suggestionDeduplicator suggestionIsDuplicate:suggestionCopy existingSuggestions:_existingSuggestionsInLayout shouldCompareAcrossTypes:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Widget is not an AppPredictionPanel.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionDeduplicator:(uint64_t)a5 hyperParameters:(uint64_t)a6 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: Incompatible stack size.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithAppPredictionPanel:(uint64_t)a3 containingStack:(uint64_t)a4 suggestionLayout:(uint64_t)a5 suggestionDeduplicator:(uint64_t)a6 hyperParameters:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, a1, a3, "%s: SuggestionLayout is incompatible with stack size.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
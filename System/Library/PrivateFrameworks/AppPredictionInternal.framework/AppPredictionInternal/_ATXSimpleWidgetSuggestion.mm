@interface _ATXSimpleWidgetSuggestion
+ (BOOL)_isSuggestion:(id)suggestion compatibleWithStack:(id)stack;
- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion;
- (_ATXHomeScreenStackState)stack;
- (_ATXSimpleWidgetSuggestion)initWithSuggestion:(id)suggestion stack:(id)stack suggestionDeduplicator:(id)deduplicator;
- (_ATXSimpleWidgetSuggestion)initWithWidget:(id)widget suggestion:(id)suggestion stack:(id)stack suggestionDeduplicator:(id)deduplicator;
- (void)_setSuggestion:(id)suggestion;
@end

@implementation _ATXSimpleWidgetSuggestion

- (_ATXSimpleWidgetSuggestion)initWithWidget:(id)widget suggestion:(id)suggestion stack:(id)stack suggestionDeduplicator:(id)deduplicator
{
  widgetCopy = widget;
  suggestionCopy = suggestion;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  v18.receiver = self;
  v18.super_class = _ATXSimpleWidgetSuggestion;
  v15 = [(_ATXSimpleWidgetSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_stack, stackCopy);
    objc_storeStrong(&v16->_widget, widget);
    objc_storeStrong(&v16->_suggestionDeduplicator, deduplicator);
    if (suggestionCopy)
    {
      [(_ATXSimpleWidgetSuggestion *)v16 _setSuggestion:suggestionCopy];
    }
  }

  return v16;
}

- (_ATXSimpleWidgetSuggestion)initWithSuggestion:(id)suggestion stack:(id)stack suggestionDeduplicator:(id)deduplicator
{
  suggestionCopy = suggestion;
  stackCopy = stack;
  deduplicatorCopy = deduplicator;
  if (![_ATXSimpleWidgetSuggestion _isSuggestion:suggestionCopy compatibleWithStack:stackCopy])
  {
    goto LABEL_6;
  }

  v11 = [stackCopy widgetForSuggestion:suggestionCopy considerSuggestedWidgets:1];
  if (!v11)
  {
    v12 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:suggestionCopy];
    if (v12)
    {
      v13 = v12;
      v11 = objc_opt_new();
      appBundleIdentifier = [v13 appBundleIdentifier];
      [v11 setAppBundleId:appBundleIdentifier];

      widgetBundleIdentifier = [v13 widgetBundleIdentifier];
      [v11 setExtensionBundleId:widgetBundleIdentifier];

      widgetKind = [v13 widgetKind];
      [v11 setWidgetKind:widgetKind];

      config = [stackCopy config];
      [v11 setSize:{objc_msgSend(config, "stackLayoutSize")}];

      intent = [v13 intent];
      [v11 setIntent:intent];

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      [v11 setWidgetUniqueId:uUIDString];

      [v11 setSuggestedWidget:1];
      goto LABEL_5;
    }

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

LABEL_5:
  self = [(_ATXSimpleWidgetSuggestion *)self initWithWidget:v11 suggestion:suggestionCopy stack:stackCopy suggestionDeduplicator:deduplicatorCopy];

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ATXSuggestionDeduplicatorProtocol *)self->_suggestionDeduplicator isWidget:self->_widget showingIdenticalContentOfSuggestion:suggestionCopy];
  }

  return v7;
}

- (void)_setSuggestion:(id)suggestion
{
  v33[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_stack);
  v7 = [_ATXSimpleWidgetSuggestion _isSuggestion:suggestionCopy compatibleWithStack:WeakRetained];

  if (v7)
  {
    objc_storeStrong(&self->_suggestion, suggestion);
    objc_storeStrong(&self->_mainSuggestionInLayout, suggestion);
    v8 = [(ATXHomeScreenWidgetIdentifiable *)self->_widget size];
    if (v8 <= 1)
    {
      if (!v8)
      {
        v25 = objc_alloc(MEMORY[0x277D420E8]);
        v33[0] = suggestionCopy;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
        v28 = 0;
        v29 = 0;
        v11 = v25;
        v12 = 5;
        v16 = v10;
        goto LABEL_15;
      }

      if (v8 == 1)
      {
        v13 = objc_alloc(MEMORY[0x277D420E8]);
        v32 = suggestionCopy;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
        v14 = [v13 initWithLayoutType:3 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:0 oneByFourSuggestions:0 twoByFourSuggestions:v10 fourByFourSuggestions:0 fourByEightSuggestions:0];
LABEL_16:
        suggestionLayout = self->_suggestionLayout;
        self->_suggestionLayout = v14;
      }
    }

    else
    {
      switch(v8)
      {
        case 2:
          v15 = objc_alloc(MEMORY[0x277D420E8]);
          v31 = suggestionCopy;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v28 = v10;
          v29 = 0;
          v11 = v15;
          v12 = 10;
          goto LABEL_11;
        case 3:
          uuid = __atxlog_handle_blending();
          if (os_log_type_enabled(uuid, OS_LOG_TYPE_FAULT))
          {
            [(_ATXSimpleWidgetSuggestion *)uuid _setSuggestion:v18, v19, v20, v21, v22, v23, v24];
          }

          goto LABEL_18;
        case 4:
          v9 = objc_alloc(MEMORY[0x277D420E8]);
          v30 = suggestionCopy;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
          v28 = 0;
          v29 = v10;
          v11 = v9;
          v12 = 16;
LABEL_11:
          v16 = 0;
LABEL_15:
          v14 = [v11 initWithLayoutType:v12 oneByOneSuggestions:0 oneByTwoSuggestions:0 twoByTwoSuggestions:v16 oneByFourSuggestions:0 twoByFourSuggestions:0 fourByFourSuggestions:v28 fourByEightSuggestions:v29];
          goto LABEL_16;
      }
    }

    uuid = [(ATXProactiveSuggestion *)self->_mainSuggestionInLayout uuid];
    [(ATXSuggestionLayout *)self->_suggestionLayout setUuidOfHighestConfidenceSuggestion:uuid];
LABEL_18:
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isSuggestion:(id)suggestion compatibleWithStack:(id)stack
{
  suggestionCopy = suggestion;
  stackCopy = stack;
  executableSpecification = [suggestionCopy executableSpecification];
  executableType = [executableSpecification executableType];

  if (executableType != 3)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSimpleWidgetSuggestion *)v10 _isSuggestion:v11 compatibleWithStack:v12, v13, v14, v15, v16, v17];
    }

    goto LABEL_8;
  }

  if (([stackCopy sizeIsCompatibleWithWidgetSuggestion:suggestionCopy] & 1) == 0)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSimpleWidgetSuggestion *)v10 _isSuggestion:v18 compatibleWithStack:v19, v20, v21, v22, v23, v24];
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  v9 = 1;
LABEL_9:

  return v9;
}

- (_ATXHomeScreenStackState)stack
{
  WeakRetained = objc_loadWeakRetained(&self->_stack);

  return WeakRetained;
}

@end
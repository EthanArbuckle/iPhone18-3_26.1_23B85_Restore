@interface _ATXSimpleWidgetSuggestion
+ (BOOL)_isSuggestion:(id)a3 compatibleWithStack:(id)a4;
- (BOOL)containsIdenticalContentOfSuggestion:(id)a3;
- (_ATXHomeScreenStackState)stack;
- (_ATXSimpleWidgetSuggestion)initWithSuggestion:(id)a3 stack:(id)a4 suggestionDeduplicator:(id)a5;
- (_ATXSimpleWidgetSuggestion)initWithWidget:(id)a3 suggestion:(id)a4 stack:(id)a5 suggestionDeduplicator:(id)a6;
- (void)_setSuggestion:(id)a3;
@end

@implementation _ATXSimpleWidgetSuggestion

- (_ATXSimpleWidgetSuggestion)initWithWidget:(id)a3 suggestion:(id)a4 stack:(id)a5 suggestionDeduplicator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _ATXSimpleWidgetSuggestion;
  v15 = [(_ATXSimpleWidgetSuggestion *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_stack, v13);
    objc_storeStrong(&v16->_widget, a3);
    objc_storeStrong(&v16->_suggestionDeduplicator, a6);
    if (v12)
    {
      [(_ATXSimpleWidgetSuggestion *)v16 _setSuggestion:v12];
    }
  }

  return v16;
}

- (_ATXSimpleWidgetSuggestion)initWithSuggestion:(id)a3 stack:(id)a4 suggestionDeduplicator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![_ATXSimpleWidgetSuggestion _isSuggestion:v8 compatibleWithStack:v9])
  {
    goto LABEL_6;
  }

  v11 = [v9 widgetForSuggestion:v8 considerSuggestedWidgets:1];
  if (!v11)
  {
    v12 = [MEMORY[0x277D42040] infoSuggestionFromProactiveSuggestion:v8];
    if (v12)
    {
      v13 = v12;
      v11 = objc_opt_new();
      v14 = [v13 appBundleIdentifier];
      [v11 setAppBundleId:v14];

      v15 = [v13 widgetBundleIdentifier];
      [v11 setExtensionBundleId:v15];

      v16 = [v13 widgetKind];
      [v11 setWidgetKind:v16];

      v17 = [v9 config];
      [v11 setSize:{objc_msgSend(v17, "stackLayoutSize")}];

      v18 = [v13 intent];
      [v11 setIntent:v18];

      v19 = [MEMORY[0x277CCAD78] UUID];
      v20 = [v19 UUIDString];
      [v11 setWidgetUniqueId:v20];

      [v11 setSuggestedWidget:1];
      goto LABEL_5;
    }

LABEL_6:
    v21 = 0;
    goto LABEL_7;
  }

LABEL_5:
  self = [(_ATXSimpleWidgetSuggestion *)self initWithWidget:v11 suggestion:v8 stack:v9 suggestionDeduplicator:v10];

  v21 = self;
LABEL_7:

  return v21;
}

- (BOOL)containsIdenticalContentOfSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableType];

  if (v6 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(ATXSuggestionDeduplicatorProtocol *)self->_suggestionDeduplicator isWidget:self->_widget showingIdenticalContentOfSuggestion:v4];
  }

  return v7;
}

- (void)_setSuggestion:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_stack);
  v7 = [_ATXSimpleWidgetSuggestion _isSuggestion:v5 compatibleWithStack:WeakRetained];

  if (v7)
  {
    objc_storeStrong(&self->_suggestion, a3);
    objc_storeStrong(&self->_mainSuggestionInLayout, a3);
    v8 = [(ATXHomeScreenWidgetIdentifiable *)self->_widget size];
    if (v8 <= 1)
    {
      if (!v8)
      {
        v25 = objc_alloc(MEMORY[0x277D420E8]);
        v33[0] = v5;
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
        v32 = v5;
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
          v31 = v5;
          v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
          v28 = v10;
          v29 = 0;
          v11 = v15;
          v12 = 10;
          goto LABEL_11;
        case 3:
          v17 = __atxlog_handle_blending();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            [(_ATXSimpleWidgetSuggestion *)v17 _setSuggestion:v18, v19, v20, v21, v22, v23, v24];
          }

          goto LABEL_18;
        case 4:
          v9 = objc_alloc(MEMORY[0x277D420E8]);
          v30 = v5;
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

    v17 = [(ATXProactiveSuggestion *)self->_mainSuggestionInLayout uuid];
    [(ATXSuggestionLayout *)self->_suggestionLayout setUuidOfHighestConfidenceSuggestion:v17];
LABEL_18:
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_isSuggestion:(id)a3 compatibleWithStack:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 executableSpecification];
  v8 = [v7 executableType];

  if (v8 != 3)
  {
    v10 = __atxlog_handle_blending();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(_ATXSimpleWidgetSuggestion *)v10 _isSuggestion:v11 compatibleWithStack:v12, v13, v14, v15, v16, v17];
    }

    goto LABEL_8;
  }

  if (([v6 sizeIsCompatibleWithWidgetSuggestion:v5] & 1) == 0)
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
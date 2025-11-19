@interface AMUIProactiveUsageObserver
- (AMUIProactiveUsageObserver)initWithListModel:(id)a3 iconManager:(id)a4 proactiveClient:(id)a5;
- (id)_proactiveWidgetForIconDataSource:(id)a3 ofIcon:(id)a4;
- (id)_proactiveWidgetForWidget:(id)a3 ofIcon:(id)a4;
- (id)_proactiveWidgetStackForWidgetIcon:(id)a3;
- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidAppear:(id)a4 forWidgetIcon:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidDisappear:(id)a4 forWidgetIcon:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5;
- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4;
- (void)pushStackConfigurationsToProactive;
@end

@implementation AMUIProactiveUsageObserver

- (AMUIProactiveUsageObserver)initWithListModel:(id)a3 iconManager:(id)a4 proactiveClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AMUIProactiveUsageObserver;
  v12 = [(AMUIProactiveUsageObserver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listModel, a3);
    objc_storeStrong(&v13->_iconManager, a4);
    objc_storeStrong(&v13->_proactiveClient, a5);
  }

  return v13;
}

- (void)pushStackConfigurationsToProactive
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  listModel = self->_listModel;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__AMUIProactiveUsageObserver_pushStackConfigurationsToProactive__block_invoke;
  v9 = &unk_278C75FD0;
  v10 = self;
  v11 = v3;
  v5 = v3;
  [(SBIconListModel *)listModel enumerateIconsUsingBlock:&v6];
  [(ATXAmbientSuggestionProvider *)self->_proactiveClient writeStacks:v5 completion:&__block_literal_global_3, v6, v7, v8, v9, v10];
}

void __64__AMUIProactiveUsageObserver_pushStackConfigurationsToProactive__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isWidgetIcon])
  {
    v3 = [*(a1 + 32) _proactiveWidgetStackForWidgetIcon:v4];
    [*(a1 + 40) addObject:v3];
  }
}

void __64__AMUIProactiveUsageObserver_pushStackConfigurationsToProactive__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AMUILogProactive();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__AMUIProactiveUsageObserver_pushStackConfigurationsToProactive__block_invoke_2_cold_1(v2, v3);
    }
  }
}

- (id)_proactiveWidgetStackForWidgetIcon:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v4 widgets];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:*(*(&v19 + 1) + 8 * i) ofIcon:v4];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277CFC810]);
  v13 = [v4 uniqueIdentifier];
  v14 = [v4 activeWidget];
  v15 = [v14 uniqueIdentifier];
  v16 = [v12 initWithIdentifier:v13 widgets:v5 topWidgetIdentifier:v15 family:1 allowsNewWidget:objc_msgSend(v4 allowsSmartRotate:{"allowsExternalSuggestions"), objc_msgSend(v4, "allowsSuggestions")}];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_proactiveWidgetForWidget:(id)a3 ofIcon:(id)a4
{
  iconManager = self->_iconManager;
  v6 = a3;
  v7 = [(SBHIconManager *)iconManager intentForWidget:v6 ofIcon:a4];
  v8 = objc_alloc(MEMORY[0x277CFA258]);
  v9 = [v6 extensionBundleIdentifier];
  v10 = [v6 containerBundleIdentifier];
  v11 = [v8 initWithExtensionBundleIdentifier:v9 containerBundleIdentifier:v10 deviceIdentifier:0];

  v12 = objc_alloc(MEMORY[0x277CFA358]);
  v13 = [v6 kind];
  v14 = [v12 initWithExtensionIdentity:v11 kind:v13 family:1 intent:v7 activityIdentifier:0];

  v15 = objc_alloc(MEMORY[0x277CFC800]);
  v16 = [v6 uniqueIdentifier];
  v17 = [v6 suggestionSource];

  v18 = [v15 initWithIdentifier:v16 chsWidget:v14 suggestedWidget:v17 == 1];

  return v18;
}

- (id)_proactiveWidgetForIconDataSource:(id)a3 ofIcon:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:v11 ofIcon:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidAppear:(id)a4 forWidgetIcon:(id)a5
{
  v6 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:a4 ofIcon:a5];
  if (v6)
  {
    [(ATXAmbientSuggestionProvider *)self->_proactiveClient logWidgetDidAppear:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteDataSourceDidDisappear:(id)a4 forWidgetIcon:(id)a5
{
  v6 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:a4 ofIcon:a5];
  if (v6)
  {
    [(ATXAmbientSuggestionProvider *)self->_proactiveClient logWidgetDidDisappear:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteUserTappedWidgetIcon:(id)a4 withURL:(id)a5
{
  v6 = a4;
  v8 = [v6 activeWidget];
  v7 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:v8 ofIcon:v6];

  [(ATXAmbientSuggestionProvider *)self->_proactiveClient logUserDidTapWidget:v7];
}

- (void)homeScreenUsageAggregator:(id)a3 didNoteWidgetIconStackChangedActiveWidget:(id)a4
{
  v11 = a4;
  v5 = [v11 activeDataSource];
  v6 = [v11 stackChangeReason] - 1;
  if (v6 > 5)
  {
    v7 = 0;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = qword_23F3C1060[v6];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  v8 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:v5 ofIcon:v11];
  if (v8)
  {
    v9 = v8;
    v10 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetStackForWidgetIcon:v11];
    [(ATXAmbientSuggestionProvider *)self->_proactiveClient logWidgetStack:v10 didChangeToWidget:v9 reason:v7];
  }

LABEL_7:
  [(AMUIProactiveUsageObserver *)self pushStackConfigurationsToProactive];
}

void __64__AMUIProactiveUsageObserver_pushStackConfigurationsToProactive__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Could not write stack configurations: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
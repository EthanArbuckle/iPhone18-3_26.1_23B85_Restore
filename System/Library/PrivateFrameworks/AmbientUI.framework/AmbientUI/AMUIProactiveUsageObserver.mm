@interface AMUIProactiveUsageObserver
- (AMUIProactiveUsageObserver)initWithListModel:(id)model iconManager:(id)manager proactiveClient:(id)client;
- (id)_proactiveWidgetForIconDataSource:(id)source ofIcon:(id)icon;
- (id)_proactiveWidgetForWidget:(id)widget ofIcon:(id)icon;
- (id)_proactiveWidgetStackForWidgetIcon:(id)icon;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidAppear:(id)appear forWidgetIcon:(id)icon;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidDisappear:(id)disappear forWidgetIcon:(id)icon;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget;
- (void)pushStackConfigurationsToProactive;
@end

@implementation AMUIProactiveUsageObserver

- (AMUIProactiveUsageObserver)initWithListModel:(id)model iconManager:(id)manager proactiveClient:(id)client
{
  modelCopy = model;
  managerCopy = manager;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = AMUIProactiveUsageObserver;
  v12 = [(AMUIProactiveUsageObserver *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listModel, model);
    objc_storeStrong(&v13->_iconManager, manager);
    objc_storeStrong(&v13->_proactiveClient, client);
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
  selfCopy = self;
  v11 = v3;
  v5 = v3;
  [(SBIconListModel *)listModel enumerateIconsUsingBlock:&v6];
  [(ATXAmbientSuggestionProvider *)self->_proactiveClient writeStacks:v5 completion:&__block_literal_global_3, v6, v7, v8, v9, selfCopy];
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

- (id)_proactiveWidgetStackForWidgetIcon:(id)icon
{
  v24 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  widgets = [iconCopy widgets];
  v7 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(widgets);
        }

        v11 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:*(*(&v19 + 1) + 8 * i) ofIcon:iconCopy];
        [v5 addObject:v11];
      }

      v8 = [widgets countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v12 = objc_alloc(MEMORY[0x277CFC810]);
  uniqueIdentifier = [iconCopy uniqueIdentifier];
  activeWidget = [iconCopy activeWidget];
  uniqueIdentifier2 = [activeWidget uniqueIdentifier];
  v16 = [v12 initWithIdentifier:uniqueIdentifier widgets:v5 topWidgetIdentifier:uniqueIdentifier2 family:1 allowsNewWidget:objc_msgSend(iconCopy allowsSmartRotate:{"allowsExternalSuggestions"), objc_msgSend(iconCopy, "allowsSuggestions")}];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_proactiveWidgetForWidget:(id)widget ofIcon:(id)icon
{
  iconManager = self->_iconManager;
  widgetCopy = widget;
  v7 = [(SBHIconManager *)iconManager intentForWidget:widgetCopy ofIcon:icon];
  v8 = objc_alloc(MEMORY[0x277CFA258]);
  extensionBundleIdentifier = [widgetCopy extensionBundleIdentifier];
  containerBundleIdentifier = [widgetCopy containerBundleIdentifier];
  v11 = [v8 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier deviceIdentifier:0];

  v12 = objc_alloc(MEMORY[0x277CFA358]);
  kind = [widgetCopy kind];
  v14 = [v12 initWithExtensionIdentity:v11 kind:kind family:1 intent:v7 activityIdentifier:0];

  v15 = objc_alloc(MEMORY[0x277CFC800]);
  uniqueIdentifier = [widgetCopy uniqueIdentifier];
  suggestionSource = [widgetCopy suggestionSource];

  v18 = [v15 initWithIdentifier:uniqueIdentifier chsWidget:v14 suggestedWidget:suggestionSource == 1];

  return v18;
}

- (id)_proactiveWidgetForIconDataSource:(id)source ofIcon:(id)icon
{
  sourceCopy = source;
  iconCopy = icon;
  v8 = objc_opt_class();
  v9 = sourceCopy;
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
    v12 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:v11 ofIcon:iconCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidAppear:(id)appear forWidgetIcon:(id)icon
{
  v6 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:appear ofIcon:icon];
  if (v6)
  {
    [(ATXAmbientSuggestionProvider *)self->_proactiveClient logWidgetDidAppear:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteDataSourceDidDisappear:(id)disappear forWidgetIcon:(id)icon
{
  v6 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:disappear ofIcon:icon];
  if (v6)
  {
    [(ATXAmbientSuggestionProvider *)self->_proactiveClient logWidgetDidDisappear:v6];
  }

  MEMORY[0x2821F96F8]();
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  iconCopy = icon;
  activeWidget = [iconCopy activeWidget];
  v7 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForWidget:activeWidget ofIcon:iconCopy];

  [(ATXAmbientSuggestionProvider *)self->_proactiveClient logUserDidTapWidget:v7];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget
{
  widgetCopy = widget;
  activeDataSource = [widgetCopy activeDataSource];
  v6 = [widgetCopy stackChangeReason] - 1;
  if (v6 > 5)
  {
    v7 = 0;
    if (!activeDataSource)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = qword_23F3C1060[v6];
    if (!activeDataSource)
    {
      goto LABEL_7;
    }
  }

  v8 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetForIconDataSource:activeDataSource ofIcon:widgetCopy];
  if (v8)
  {
    v9 = v8;
    v10 = [(AMUIProactiveUsageObserver *)self _proactiveWidgetStackForWidgetIcon:widgetCopy];
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
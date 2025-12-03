@interface AMUIWidgetHostManager
- (AMUIWidgetHostManager)init;
- (AMUIWidgetHostManagerDelegate)delegate;
- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page;
- (id)_descriptionForArray:(id)array name:(id)name;
- (id)_rateLimitPolicies;
- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data;
- (void)dealloc;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed;
- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget;
- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present;
@end

@implementation AMUIWidgetHostManager

- (AMUIWidgetHostManager)init
{
  v11.receiver = self;
  v11.super_class = AMUIWidgetHostManager;
  v2 = [(AMUIWidgetHostManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D661E8]);
    v4 = objc_alloc_init(AMUIInfographListLayoutProvider);
    [v3 setListLayoutProvider:v4];
    [v3 setUsageMonitoringEnabled:1];
    usageMonitor = [v3 usageMonitor];
    [usageMonitor addObserver:v2];

    iconManager = v2->_iconManager;
    v2->_iconManager = v3;
    v7 = v3;

    v8 = [objc_alloc(MEMORY[0x277CFA3D0]) initWithIdentifier:@"Ambient-Infograph"];
    widgetHost = v2->_widgetHost;
    v2->_widgetHost = v8;

    [(AMUIWidgetHostManager *)v2 _rebuildAndTransmitConfiguredWidgetData:v7];
  }

  return v2;
}

- (void)dealloc
{
  [(CHSWidgetHost *)self->_widgetHost deactivate];
  [(CHSWidgetHost *)self->_widgetHost invalidate];
  v3.receiver = self;
  v3.super_class = AMUIWidgetHostManager;
  [(AMUIWidgetHostManager *)&v3 dealloc];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconAdded:(id)added
{
  v14 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [addedCopy widgets];
    v12 = 138412290;
    v13 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon added: %@", &v12, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconRemoved:(id)removed
{
  v14 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [removedCopy widgets];
    v12 = 138412290;
    v13 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon removed: %@", &v12, 0xCu);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteWidgetIconStackChangedActiveWidget:(id)widget
{
  v18 = *MEMORY[0x277D85DE8];
  widgetCopy = widget;
  aggregatorCopy = aggregator;
  v8 = AMUILogWidgets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeDataSource = [widgetCopy activeDataSource];
    widgets = [widgetCopy widgets];
    v14 = 138412546;
    v15 = activeDataSource;
    v16 = 2112;
    v17 = widgets;
    _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Widget icon stack changed active widget: %@ all widgets: %@", &v14, 0x16u);
  }

  iconManager = [aggregatorCopy iconManager];

  [(AMUIWidgetHostManager *)self _rebuildAndTransmitConfiguredWidgetData:iconManager];
  delegate = [(AMUIWidgetHostManager *)self delegate];
  [delegate widgetHostManager:self didNoteStackChangedActiveWidget:widgetCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserAddedWidgetIconStackSuggestion:(id)suggestion
{
  v10 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v8 = 138412290;
    v9 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user added suggestion: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedWidgetIconStackSuggestion:(id)suggestion
{
  v10 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v8 = 138412290;
    v9 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted user dislike of suggestion: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserDislikedSiriSuggestionOnWidgetIconStackSuggestion:(id)suggestion
{
  v10 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v5 = AMUILogWidgets();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [suggestionCopy widgets];
    v8 = 138412290;
    v9 = widgets;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Widget icon stack noted dislike of Siri Suggestion on suggestion: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregator:(id)aggregator didNoteUserTappedWidgetIcon:(id)icon withURL:(id)l
{
  v11 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  v6 = AMUILogWidgets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    widgets = [iconCopy widgets];
    v9 = 138412290;
    v10 = widgets;
    _os_log_impl(&dword_23F38B000, v6, OS_LOG_TYPE_DEFAULT, "Widget icon tapped: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)homeScreenUsageAggregatorAddWidgetSheetWillPresent:(id)present
{
  v4 = AMUILogWidgets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Add Widget sheet will present", v8, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CFA280]);
  widgetHost = [(AMUIWidgetHostManager *)self widgetHost];
  identifier = [widgetHost identifier];
  [v5 userEnteredAddGalleryForHost:identifier];
}

- (void)_rebuildAndTransmitConfiguredWidgetData:(id)data
{
  dataCopy = data;
  v5 = [(AMUIWidgetHostManager *)self widgetDataGeneration]+ 1;
  [(AMUIWidgetHostManager *)self setWidgetDataGeneration:v5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke;
  v7[3] = &unk_278C76270;
  v8 = dataCopy;
  v9 = v5;
  v7[4] = self;
  v6 = dataCopy;
  [v6 performAfterCachingWidgetIntentsUsingBlock:v7];
}

void __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 == [*(a1 + 32) widgetDataGeneration])
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [*(a1 + 40) rootFolder];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke_2;
    v16[3] = &unk_278C76248;
    v5 = v4;
    v6 = *(a1 + 32);
    v17 = v5;
    v18 = v6;
    v7 = v3;
    v19 = v7;
    [v5 enumerateAllIconsWithOptions:2 usingBlock:v16];
    v8 = AMUILogWidgets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) _descriptionForArray:v7 name:@"containers"];
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&dword_23F38B000, v8, OS_LOG_TYPE_DEFAULT, "Configured widgets changed: %@", buf, 0xCu);
    }

    v10 = [*(a1 + 32) iconManager];
    v11 = [v10 widgetMetricsProvider];

    if (objc_opt_respondsToSelector())
    {
      [v11 systemDefaultMetricsSpecificationForFamilies:2];
    }

    else
    {
      [v11 systemDefaultMetricsSpecification];
    }
    v12 = ;
    v13 = [objc_alloc(MEMORY[0x277CFA2B0]) initWithContainerDescriptors:v7 metricsSpecification:v12];
    v14 = [*(a1 + 32) _rateLimitPolicies];
    [v13 setRateLimitPolicies:v14];

    [*(*(a1 + 32) + 16) setConfiguration:v13];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__AMUIWidgetHostManager__rebuildAndTransmitConfiguredWidgetData___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_class();
  v11 = v5;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [a1[5] _containerDescriptorForWidgetIcon:v9 atLocation:5 page:{objc_msgSend(a1[4], "visibleIndexForIndex:", objc_msgSend(v6, "indexAtPosition:", 0))}];
    if (v10)
    {
      [a1[6] addObject:v10];
    }
  }
}

- (id)_rateLimitPolicies
{
  v2 = [objc_alloc(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:600.0];
  v3 = objc_alloc(MEMORY[0x277CFA408]);
  v4 = [MEMORY[0x277CBEB98] setWithObject:v2];
  v5 = [v3 initWithIdentifier:@"AMUIActiveWidgetRateLimitPolicyIdentifier" rateLimits:v4];

  v6 = [objc_alloc(MEMORY[0x277CFA400]) initWithMaximumRefreshes:1 perWindow:1200.0];
  v7 = objc_alloc(MEMORY[0x277CFA408]);
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v9 = [v7 initWithIdentifier:@"AMUIInactiveWidgetRateLimitPolicyIdentifier" rateLimits:v8];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{v5, v9, 0}];

  return v10;
}

- (id)_containerDescriptorForWidgetIcon:(id)icon atLocation:(int64_t)location page:(unint64_t)page
{
  v53 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  array = [MEMORY[0x277CBEB18] array];
  gridSizeClass = [iconCopy gridSizeClass];
  v42 = CHSWidgetFamilyForSBHIconGridSizeClass();
  widgets = [iconCopy widgets];
  activeWidget = [iconCopy activeWidget];
  uniqueIdentifier = [activeWidget uniqueIdentifier];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = widgets;
  v44 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v44)
  {
    v40 = *v46;
    v41 = iconCopy;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * i);
        iconManager = [(AMUIWidgetHostManager *)self iconManager];
        v12 = [iconManager intentForWidget:v10 ofIcon:iconCopy];

        v13 = objc_alloc(MEMORY[0x277CFA358]);
        extensionBundleIdentifier = [v10 extensionBundleIdentifier];
        containerBundleIdentifier = [v10 containerBundleIdentifier];
        kind = [v10 kind];
        v17 = [v13 initWithExtensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier kind:kind family:v42 intent:v12];

        iconManager2 = [(AMUIWidgetHostManager *)self iconManager];
        widgetMetricsProvider = [iconManager2 widgetMetricsProvider];
        v20 = [widgetMetricsProvider systemMetricsForWidget:v17];

        v21 = objc_alloc(MEMORY[0x277CFA288]);
        uniqueIdentifier2 = [v10 uniqueIdentifier];
        v23 = [v21 initWithUniqueIdentifier:uniqueIdentifier2 widget:v17 metrics:v20];

        [v23 setSuggestion:{objc_msgSend(v10, "suggestionSource") == 1}];
        [v23 setSystemConfigured:{objc_msgSend(v10, "suggestionSource") == 2}];
        [v23 setSupportedColorSchemes:2];
        v24 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:1 backgroundViewPolicy:1];
        v25 = [objc_alloc(MEMORY[0x277CFA430]) initWithRenderingMode:0 backgroundViewPolicy:1];
        v51[0] = v24;
        v51[1] = v25;
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
        [v23 setSupportedRenderSchemes:v26];

        uniqueIdentifier3 = [v10 uniqueIdentifier];
        LODWORD(v10) = [uniqueIdentifier3 isEqualToString:uniqueIdentifier];

        if (v10)
        {
          v28 = @"AMUIActiveWidgetRateLimitPolicyIdentifier";
        }

        else
        {
          v28 = @"AMUIInactiveWidgetRateLimitPolicyIdentifier";
        }

        v29 = [(AMUIWidgetHostManager *)self _refreshStrategyForIdentifier:v28];
        [v23 setRefreshStrategy:v29];
        if (v23)
        {
          [array addObject:v23];
          v30 = AMUILogWidgets();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v50 = v23;
            _os_log_impl(&dword_23F38B000, v30, OS_LOG_TYPE_DEFAULT, "Found configured widget: %@", buf, 0xCu);
          }
        }

        iconCopy = v41;
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v44);
  }

  if ([array count])
  {
    v31 = objc_alloc(MEMORY[0x277CFA1E0]);
    uniqueIdentifier4 = [iconCopy uniqueIdentifier];
    v33 = uniqueIdentifier;
    v34 = [v31 initWithUniqueIdentifier:uniqueIdentifier4 location:uniqueIdentifier canAppearInSecureEnvironment:? page:? family:? widgets:? activeWidget:?];
  }

  else
  {
    v34 = 0;
    v33 = uniqueIdentifier;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_descriptionForArray:(id)array name:(id)name
{
  v5 = MEMORY[0x277CF0C00];
  nameCopy = name;
  arrayCopy = array;
  v8 = [v5 builderWithObject:0];
  [v8 appendArraySection:arrayCopy withName:nameCopy skipIfEmpty:0];

  build = [v8 build];

  return build;
}

- (AMUIWidgetHostManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface AMUIProactiveSuggestionsProvider
- (AMUIProactiveSuggestionsProvider)initWithIconListModel:(id)a3 iconManager:(id)a4 proactiveClient:(id)a5;
- (AMUIProactiveSuggestionsProviderDelegate)delegate;
- (id)_iconDataSourceInIcon:(id)a3 withUniqueIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 widgetKind:(id)a6 suggestionSource:(int64_t)a7;
- (id)_makeDataSourceForAtxWidget:(id)a3;
- (id)suggestionForStackIdentifier:(id)a3 amongSuggestions:(id)a4;
- (void)processUpdatedPredictions:(id)a3;
- (void)suggestionProvider:(id)a3 didUpdateStackSuggestions:(id)a4;
@end

@implementation AMUIProactiveSuggestionsProvider

- (AMUIProactiveSuggestionsProvider)initWithIconListModel:(id)a3 iconManager:(id)a4 proactiveClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = AMUIProactiveSuggestionsProvider;
  v12 = [(AMUIProactiveSuggestionsProvider *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_proactiveClient, a5);
    [(ATXAmbientSuggestionProvider *)v13->_proactiveClient setDelegate:v13];
    objc_storeStrong(&v13->_iconListModel, a3);
    objc_storeStrong(&v13->_iconManager, a4);
    v14 = [(ATXAmbientSuggestionProvider *)v13->_proactiveClient stackSuggestions];
    [(AMUIProactiveSuggestionsProvider *)v13 processUpdatedPredictions:v14];
  }

  return v13;
}

- (void)suggestionProvider:(id)a3 didUpdateStackSuggestions:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__AMUIProactiveSuggestionsProvider_suggestionProvider_didUpdateStackSuggestions___block_invoke;
  v7[3] = &unk_278C75DD8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (id)suggestionForStackIdentifier:(id)a3 amongSuggestions:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 stackIdentifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)processUpdatedPredictions:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v22 = a3;
  v4 = AMUILogProactive();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Updating stack predictions", buf, 2u);
  }

  v21 = [(AMUIProactiveSuggestionsProvider *)self currentPredictions];
  [(AMUIProactiveSuggestionsProvider *)self setCurrentPredictions:v22];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(SBIconListModel *)self->_iconListModel iconsOfClass:objc_opt_class()];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v30;
    *&v6 = 138412546;
    v19 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v10 uniqueIdentifier];
        v12 = [(AMUIProactiveSuggestionsProvider *)self suggestionForStackIdentifier:v11 amongSuggestions:v22];
        v13 = [(AMUIProactiveSuggestionsProvider *)self suggestionForStackIdentifier:v11 amongSuggestions:v21];
        v14 = AMUILogProactive();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v19;
          v34 = v12;
          v35 = 2112;
          v36 = v11;
          _os_log_impl(&dword_23F38B000, v14, OS_LOG_TYPE_DEFAULT, "Suggestion %@ for stack with identifier: %@", buf, 0x16u);
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke;
        v23[3] = &unk_278C76040;
        v24 = v12;
        v25 = self;
        v26 = v10;
        v27 = v11;
        v28 = v13;
        v15 = v13;
        v16 = v11;
        v17 = v12;
        [v10 performCoalescedDataSourceUpdate:v23];
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v37 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [*(a1 + 32) suggestedWidgets];
  v39 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v39)
  {
    v38 = *v43;
    *&v2 = 138412290;
    v35 = v2;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v42 + 1) + 8 * i);
        v5 = *(a1 + 40);
        v6 = *(a1 + 48);
        v7 = [v4 identifier];
        v8 = [v4 chsWidget];
        v9 = [v8 extensionBundleIdentifier];
        v10 = [v4 chsWidget];
        v11 = [v10 kind];
        v12 = [v5 _iconDataSourceInIcon:v6 withUniqueIdentifier:v7 extensionBundleIdentifier:v9 widgetKind:v11 suggestionSource:1];

        if (v12)
        {
          v13 = AMUILogProactive();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v35;
            v47 = v12;
            _os_log_impl(&dword_23F38B000, v13, OS_LOG_TYPE_DEFAULT, "Skipping adding data source because the suggested widget %@ is already suggested in stack", buf, 0xCu);
          }

          [v37 addObject:v12];
        }

        else
        {
          v14 = [*(a1 + 40) _makeDataSourceForAtxWidget:v4];
          if (v14)
          {
            v15 = AMUILogProactive();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v35;
              v47 = v14;
              _os_log_impl(&dword_23F38B000, v15, OS_LOG_TYPE_DEFAULT, "Adding new suggested widget data source %@", buf, 0xCu);
            }

            v16 = [*(a1 + 40) delegate];
            v17 = *(a1 + 40);
            v18 = [v4 chsWidget];
            v19 = [v18 intent];
            v20 = *(a1 + 56);
            v21 = [v4 identifier];
            [v16 proactiveSuggestionsProvider:v17 willUseIntent:v19 forIconWithIdentifier:v20 widgetUniqueIdentifier:v21];

            v22 = [*(a1 + 48) allowsSuggestions];
            v23 = *(a1 + 48);
            if (v22)
            {
              [v23 addIconDataSource:v14];
            }

            else
            {
              v24 = [v23 activeDataSource];
              [*(a1 + 48) insertIconDataSource:v14 beforeIconDataSource:v24];
            }

            [v37 addObject:v14];
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v39);
  }

  v25 = *(a1 + 48);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke_15;
  v40[3] = &unk_278C76018;
  v26 = v37;
  v41 = v26;
  [v25 removeIconDataSourcesPassingTest:v40];
  if ([*(*(a1 + 40) + 24) isShowingModalInteraction])
  {
    v27 = AMUILogProactive();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke_cold_2(v27);
    }
  }

  else
  {
    v28 = [*(a1 + 32) topWidgetIdentifier];

    if (v28)
    {
      v27 = [*(a1 + 32) topWidgetIdentifier];
      v29 = [*(a1 + 64) topWidgetIdentifier];
      if ([v27 isEqual:v29])
      {
        v30 = AMUILogProactive();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v47 = v29;
          v48 = 2112;
          v49 = v27;
          _os_log_impl(&dword_23F38B000, v30, OS_LOG_TYPE_DEFAULT, "Skipping active data source update because the old top widget (%@) we had was the same as the new one (%@)", buf, 0x16u);
        }
      }

      else
      {
        v30 = [*(a1 + 48) firstIconDataSourceWithUniqueIdentifier:v27];
        v31 = AMUILogProactive();
        v32 = v31;
        if (v30)
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [*(a1 + 48) activeDataSource];
            *buf = 138412546;
            v47 = v30;
            v48 = 2112;
            v49 = v33;
            _os_log_impl(&dword_23F38B000, v32, OS_LOG_TYPE_DEFAULT, "Setting active data source to widget %@ (previously: %@)", buf, 0x16u);
          }

          [*(a1 + 48) setStackChangeReason:2];
          [*(a1 + 48) setActiveDataSource:v30];
        }

        else
        {
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke_cold_1(v27, v32);
          }
        }
      }
    }

    else
    {
      v27 = AMUILogProactive();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23F38B000, v27, OS_LOG_TYPE_DEFAULT, "Skipping active data source update because suggested top widget is nil", buf, 2u);
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke_15(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 suggestionSource] == 1 && (objc_msgSend(*(a1 + 32), "containsObject:", v3) & 1) == 0)
  {
    v7 = AMUILogProactive();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_23F38B000, v7, OS_LOG_TYPE_DEFAULT, "Removing suggested widget data source %@ because it's no longer suggested", &v8, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_iconDataSourceInIcon:(id)a3 withUniqueIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 widgetKind:(id)a6 suggestionSource:(int64_t)a7
{
  v11 = a5;
  v12 = a6;
  if (a4)
  {
    v13 = [a3 firstIconDataSourceWithUniqueIdentifier:a4];
  }

  else
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __133__AMUIProactiveSuggestionsProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke;
    v15[3] = &unk_278C76068;
    v18 = a7;
    v16 = v11;
    v17 = v12;
    v13 = [a3 firstWidgetPassingTest:v15];
  }

  return v13;
}

uint64_t __133__AMUIProactiveSuggestionsProvider__iconDataSourceInIcon_withUniqueIdentifier_extensionBundleIdentifier_widgetKind_suggestionSource___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1[6] && [v3 suggestionSource] != a1[6])
  {
    v9 = 0;
  }

  else
  {
    v5 = [v4 extensionBundleIdentifier];
    if ([v5 isEqualToString:a1[4]])
    {
      v7 = a1[5];
      v6 = a1 + 5;
      if (v7)
      {
        v8 = [v4 kind];
        v9 = [v8 isEqualToString:*v6];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_makeDataSourceForAtxWidget:(id)a3
{
  v3 = MEMORY[0x277D66320];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 identifier];
  v7 = [v4 chsWidget];
  v8 = [v7 kind];
  v9 = [v4 chsWidget];
  v10 = [v9 extensionBundleIdentifier];
  v11 = [v4 chsWidget];

  v12 = [v11 containerBundleIdentifier];
  v13 = [v5 initWithUniqueIdentifier:v6 kind:v8 extensionBundleIdentifier:v10 containerBundleIdentifier:v12];

  v14 = [v13 copyWithSuggestionSource:1];

  return v14;
}

- (AMUIProactiveSuggestionsProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__AMUIProactiveSuggestionsProvider_processUpdatedPredictions___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Suggested top widget not found in stack for widget identifier: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface CPSearchTemplate
- (CPSearchTemplate)searchTemplateWithIdentifier:(id)a3 selectedResultWithIdentifier:(id)a4 completionHandler:(id)a5;
- (CPSearchTemplate)searchTemplateWithIdentifier:(id)a3 updateSearchResultsForSearchText:(id)a4 completionResults:(id)a5;
- (id)delegate;
- (void)searchTemplateSearchButtonPressedWithIdentifier:(id)a3;
@end

@implementation CPSearchTemplate

- (CPSearchTemplate)searchTemplateWithIdentifier:(id)a3 updateSearchResultsForSearchText:(id)a4 completionResults:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__CPSearchTemplate_searchTemplateWithIdentifier_updateSearchResultsForSearchText_completionResults___block_invoke;
  block[3] = &unk_278A11768;
  block[4] = self;
  v13 = v7;
  v9 = v7;
  objc_copyWeak(&v15, &location);
  v14 = v8;
  v10 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  return result;
}

void __100__CPSearchTemplate_searchTemplateWithIdentifier_updateSearchResultsForSearchText_completionResults___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __100__CPSearchTemplate_searchTemplateWithIdentifier_updateSearchResultsForSearchText_completionResults___block_invoke_2;
    v7[3] = &unk_278A11740;
    objc_copyWeak(&v9, (a1 + 56));
    v8 = *(a1 + 48);
    [v4 searchTemplate:v5 updatedSearchText:v6 completionHandler:v7];

    objc_destroyWeak(&v9);
  }
}

void __100__CPSearchTemplate_searchTemplateWithIdentifier_updateSearchResultsForSearchText_completionResults___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setListItems:v3];
  (*(*(a1 + 32) + 16))();
}

- (CPSearchTemplate)searchTemplateWithIdentifier:(id)a3 selectedResultWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CPSearchTemplate_searchTemplateWithIdentifier_selectedResultWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278A112F8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return result;
}

void __96__CPSearchTemplate_searchTemplateWithIdentifier_selectedResultWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [*(a1 + 32) listItems];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if ([v9 conformsToProtocol:&unk_284A1A6E0])
        {
          v10 = [v9 identifier];
        }

        else
        {
          v10 = 0;
        }

        if ([*(a1 + 40) isEqual:v10])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v11 = v9;

      if (!v11)
      {
        goto LABEL_16;
      }

      v12 = [*(a1 + 32) delegate];
      [v12 searchTemplate:*(a1 + 32) selectedResult:v11 completionHandler:*(a1 + 48)];
    }

    else
    {
LABEL_13:

LABEL_16:
      v11 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __96__CPSearchTemplate_searchTemplateWithIdentifier_selectedResultWithIdentifier_completionHandler___block_invoke_cold_1(a1, v11);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)searchTemplateSearchButtonPressedWithIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "Search template search button pressed: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CPSearchTemplate_searchTemplateSearchButtonPressedWithIdentifier___block_invoke;
  block[3] = &unk_278A105A0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v5 = *MEMORY[0x277D85DE8];
}

void __68__CPSearchTemplate_searchTemplateSearchButtonPressedWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = CarPlayFrameworkGeneralLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Search Template Delegate will handle search button pressed", v6, 2u);
    }

    v5 = [*(a1 + 32) delegate];
    [v5 searchTemplateSearchButtonPressed:*(a1 + 32)];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__CPSearchTemplate_searchTemplateSearchButtonPressedWithIdentifier___block_invoke_cold_1(v5);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __96__CPSearchTemplate_searchTemplateWithIdentifier_selectedResultWithIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_236ED4000, a2, OS_LOG_TYPE_ERROR, "Failed to find a local item for %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end
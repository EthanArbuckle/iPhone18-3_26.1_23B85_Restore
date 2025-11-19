@interface SFAccountTableViewController
@end

@implementation SFAccountTableViewController

void __80___SFAccountTableViewController__shareSavedAccount_modalPresentationSourceView___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    [*(a1 + 32) _shareSavedAccount:*(a1 + 40) authenticationContext:*(a1 + 48) modalPresentationSourceView:*(a1 + 56)];
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80___SFAccountTableViewController__shareSavedAccount_modalPresentationSourceView___block_invoke_cold_1(v7, v6);
    }

    *(*(a1 + 32) + 1056) = 0;
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"_SFShowAccountManagerLockedViewIfNeededNotification" object:0];
  }
}

void __102___SFAccountTableViewController__shareSavedAccount_authenticationContext_modalPresentationSourceView___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4 = [MEMORY[0x1E69C8A38] sharedStore];
    [v4 _updateLastOneTimeShareDateforSavedAccountIfNeeded:*(a1 + 32)];
  }

  *(*(a1 + 40) + 1056) = 0;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"_SFShowAccountManagerLockedViewIfNeededNotification" object:0];
}

void __79___SFAccountTableViewController__allSharedCredentialGroupsMenuForSavedAccount___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (*(a1 + 48) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained presentConfirmationAlertToShareSavedAccount:*(a1 + 32) toGroup:0];
    WeakRetained = v3;
  }
}

void __79___SFAccountTableViewController__allSharedCredentialGroupsMenuForSavedAccount___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (*(a1 + 56) & 1) == 0)
  {
    v3 = WeakRetained;
    [WeakRetained presentConfirmationAlertToShareSavedAccount:*(a1 + 32) toGroup:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_5(uint64_t a1, void (**a2)(void, void))
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _allSharedCredentialGroupsMenuForSavedAccount:*(a1 + 32)];
  (a2)[2](v4, v5);
}

void __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentSharedAccountGroupCreationFlowWithSavedAccountToAddToNewlyCreatedGroup:*(a1 + 32)];
}

void __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _shareSavedAccount:*(a1 + 32) modalPresentationSourceView:*(a1 + 40)];
}

void __72___SFAccountTableViewController__contextMenuForSavedAccountAtIndexPath___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleContextMenuDeleteForIndexPath:*(a1 + 32)];
}

id __91___SFAccountTableViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _contextMenuForSavedAccountAtIndexPath:*(a1 + 32)];

  return v3;
}

void __71___SFAccountTableViewController_iconDidUpdateForDomain_iconController___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) handleIconDidUpdateForDomain:*(a1 + 40)];
  if ([*(*(a1 + 32) + 1040) containsObject:*(a1 + 40)])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v2 = [*(a1 + 32) tableView];
    v3 = [v2 visibleCells];

    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 conformsToProtocol:&unk_1F50920F8])
          {
            v9 = v8;
            v10 = [v9 savedAccount];
            v11 = [v10 highLevelDomain];
            v12 = [v11 isEqualToString:*(a1 + 40)];

            if (v12)
            {
              [*(a1 + 32) _updateIconForDomain:*(a1 + 40) forCell:v9];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }
}

void __62___SFAccountTableViewController__updateIconForDomain_forCell___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 size];
    v6 = v5;
    v8 = v7;
    [MEMORY[0x1E695A9A8] tableViewIconSize];
    if (v6 != v10 || v8 != v9)
    {
      v12 = MEMORY[0x1E69C97E0];
      [MEMORY[0x1E695A9A8] tableViewIconSize];
      v13 = [v12 resizedImage:v4 withSize:?];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __62___SFAccountTableViewController__updateIconForDomain_forCell___block_invoke_2;
      v17[3] = &unk_1E848F570;
      v18 = v13;
      v19 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v20 = v14;
      v21 = v15;
      v16 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v17);
    }
  }
}

void __62___SFAccountTableViewController__updateIconForDomain_forCell___block_invoke_2(void *a1)
{
  v1 = a1[5];
  if (a1[4])
  {
    v2 = a1[5];

    [v2 setIcon:?];
  }

  else
  {
    v3 = a1[6];
    v4 = [*(a1[7] + 1080) backgroundColorForDomain:v3];
    [v1 showPlaceholderImageForDomain:v3 backgroundColor:v4];
  }
}

void __80___SFAccountTableViewController__shareSavedAccount_modalPresentationSourceView___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D4644000, v3, OS_LOG_TYPE_ERROR, "Failed to authenticate for one time account sharing: %@", &v5, 0xCu);
}

@end
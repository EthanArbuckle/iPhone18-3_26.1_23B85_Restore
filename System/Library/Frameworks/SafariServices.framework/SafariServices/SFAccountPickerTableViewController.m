@interface SFAccountPickerTableViewController
@end

@implementation SFAccountPickerTableViewController

void __50___SFAccountPickerTableViewController_reloadTable__block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1248) serviceNameHintStrings];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __50___SFAccountPickerTableViewController_reloadTable__block_invoke_2;
  v47[3] = &unk_1E8495678;
  v47[4] = *(a1 + 32);
  v3 = __50___SFAccountPickerTableViewController_reloadTable__block_invoke_2(v47);
  v4 = [v2 count];
  if (v4 + [v3 count])
  {
    v5 = [*(*(a1 + 32) + 1096) count];
    if (v5 > [*(*(a1 + 32) + 1248) minimumNumberOfCredentialsToShowLikelyMatchesSection])
    {
      v6 = *(*(a1 + 32) + 1096);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __50___SFAccountPickerTableViewController_reloadTable__block_invoke_3;
      v44[3] = &unk_1E84956C0;
      v45 = v3;
      v46 = v2;
      v7 = [v6 safari_filterObjectsUsingBlock:v44];
      v8 = [v7 mutableCopy];
      v9 = *(a1 + 32);
      v10 = *(v9 + 1088);
      *(v9 + 1088) = v8;
    }

    v11 = [MEMORY[0x1E695DF70] array];
    v12 = *(a1 + 32);
    v13 = *(v12 + 1120);
    *(v12 + 1120) = v11;

    v14 = MEMORY[0x1E695DFD8];
    v15 = [*(*(a1 + 32) + 1112) safari_mapObjectsUsingBlock:&__block_literal_global_60];
    v16 = [v14 setWithArray:v15];

    if ([v16 count])
    {
      v39 = v3;
      v17 = [*(*(a1 + 32) + 1112) objectAtIndexedSubscript:0];
      v18 = [v17 relyingPartyIdentifier];
      v19 = [v18 isEqualToString:@"apple.com"];

      if (v19)
      {
        v20 = [*(*(a1 + 32) + 1112) safari_mapObjectsUsingBlock:&__block_literal_global_66];
        v21 = [v20 mutableCopy];
        v22 = *(a1 + 32);
        v23 = *(v22 + 1120);
        *(v22 + 1120) = v21;
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v20 = *(*(a1 + 32) + 1096);
        v24 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v24)
        {
          v25 = v24;
          v38 = v2;
          v26 = *v41;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v41 != v26)
              {
                objc_enumerationMutation(v20);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              v29 = [v28 passkeyCredentialID];
              v30 = [v16 containsObject:v29];

              if (v30)
              {
                [*(*(a1 + 32) + 1120) addObject:v28];
              }
            }

            v25 = [v20 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v25);
          v2 = v38;
        }
      }

      v3 = v39;
    }
  }

  [*(a1 + 32) _updateMatchingGeneratedPasswordsState];
  [*(a1 + 32) _updateMatchingPasswords];
  [*(a1 + 32) _updateNavigationItemTitleAndPrompt];
  v31 = [*(a1 + 32) tableView];
  [v31 reloadData];

  v32 = [*(*(a1 + 32) + 1248) initialSearchQuery];
  v33 = [v32 length];

  if (v33)
  {
    v34 = [*(*(a1 + 32) + 1248) initialSearchQuery];
    [*(a1 + 32) setSearchQuery:v34];

    [*(*(a1 + 32) + 1248) setInitialSearchQuery:0];
  }

  v35 = [*(*(a1 + 32) + 1248) savedAccountToInitiallyShowDetailsFor];

  if (v35)
  {
    v36 = *(a1 + 32);
    v37 = [v36[156] savedAccountToInitiallyShowDetailsFor];
    [v36 _showAccountDetailsForSavedAccount:v37];

    [*(*(a1 + 32) + 1248) setSavedAccountToInitiallyShowDetailsFor:0];
  }
}

id __50___SFAccountPickerTableViewController_reloadTable__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[_SFFormDataController sharedController];
  v3 = [v2 autoFillQuirksManager];
  v4 = [v3 associatedDomainsManager];

  v5 = [*(*(a1 + 32) + 1248) domainHintStrings];
  v6 = [v5 mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [*(*(a1 + 32) + 1248) domainHintStrings];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v4 domainsWithAssociatedCredentialsForDomain:*(*(&v15 + 1) + 8 * i)];
        v13 = [v12 allObjects];
        [v6 addObjectsFromArray:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

uint64_t __50___SFAccountPickerTableViewController_reloadTable__block_invoke_3(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 credentialTypes])
  {
    v5 = [v3 highLevelDomain];
    v28[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];

    v7 = [v3 additionalSites];
    v8 = [v7 safari_mapObjectsUsingBlock:&__block_literal_global_57];
    v9 = [v6 arrayByAddingObjectsFromArray:v8];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = *(a1 + 32);
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([v9 containsObject:*(*(&v22 + 1) + 8 * v14)])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = *(a1 + 40);
      v4 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (!v4)
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = *v19;
LABEL_13:
      v16 = 0;
      while (1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v10);
        }

        if ([v3 matchesServiceNameHintString:{*(*(&v18 + 1) + 8 * v16), v18}])
        {
          break;
        }

        if (v4 == ++v16)
        {
          v4 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v4)
          {
            goto LABEL_13;
          }

          goto LABEL_21;
        }
      }
    }

    v4 = 1;
    goto LABEL_21;
  }

  v4 = 0;
LABEL_22:

  return v4;
}

id __50___SFAccountPickerTableViewController_reloadTable__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 credentialID];

  return v3;
}

id __50___SFAccountPickerTableViewController_reloadTable__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C8A10];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 relyingPartyIdentifier];
  v6 = [v3 username];
  v7 = [v3 identifier];

  v8 = [v7 credentialID];
  v9 = [v4 _initWithPasskeyRelyingPartyID:v5 user:v6 passkeyUserHandle:&stru_1F4FE9E38 passkeyCredentialID:v8];

  return v9;
}

uint64_t __72___SFAccountPickerTableViewController_newAutoFillablePasskeysAvailable___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_INFO, "Received new passkeys available notification. Refreshing account picker.", v4, 2u);
  }

  return [*(a1 + 32) reloadTable];
}

BOOL __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 userIsNeverSaveMarker])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 user];
    v4 = ([v5 length] || (objc_msgSend(*(*(a1 + 32) + 1248), "forUserNamesOnly") & 1) == 0) && (objc_msgSend(v3, "credentialTypes") & 4) == 0;
  }

  return v4;
}

void __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke_3;
  v10[3] = &unk_1E84939B8;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __81___SFAccountPickerTableViewController__reloadSavedAccountsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 1112), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 1128), *(a1 + 48));
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __61___SFAccountPickerTableViewController__accountStoreDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateMatchingPasswords];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

uint64_t __117___SFAccountPickerTableViewController__didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x1E69C8A38] sharedStore];
  [v2 addAdditionalSite:a1[4] toSavedAccount:a1[5] completionHandler:&__block_literal_global_142_0];

  v4 = a1[5];
  v3 = a1[6];

  return [v3 _didPickSavedAccountForPassword:v4];
}

void __117___SFAccountPickerTableViewController__didPickSavedAccountForPasswordButPresentAlertToAddAdditionalSiteIfApplicable___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v1 = [v2 indexPathForSelectedRow];
  if (v1)
  {
    [v2 deselectRowAtIndexPath:v1 animated:1];
  }
}

void __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, char a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Finished caBLE transaction. Dismissing picker.", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_245;
    block[3] = &unk_1E848F810;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "caBLE transaction did not succeed. Leaving picker up.", buf, 2u);
  }
}

void __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_245(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 accountPickerTableViewControllerDidCancel:*(a1 + 32)];
}

uint64_t __73___SFAccountPickerTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_247(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 credentialID];
  v5 = [*(a1 + 32) passkeyCredentialID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void __100___SFAccountPickerTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a4;
  [v4 _presentAlertToConfirmDeletingAccountsAtIndexPath:v5];
  v6[2](v6, 1);
}

void __89___SFAccountPickerTableViewController__presentAlertToConfirmDeletingAccountsAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _deleteSavedAccountAtIndexPath:*(a1 + 32)];
}

void __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64) != 1 || (*(*(*(a1 + 56) + 8) + 24) & 1) != 0)
  {
    if (*(a1 + 65) == 1)
    {
      v2 = [*(a1 + 32) tableView];
      [v2 reloadData];
    }

    else
    {
      if (![*(a1 + 40) count])
      {
LABEL_8:
        [*(*(a1 + 32) + 1096) removeObject:*(a1 + 48)];
        v6 = objc_alloc_init(MEMORY[0x1E69E2100]);
        [v6 schedulePasswordIconsCleanup];

        return;
      }

      v2 = [*(a1 + 32) tableView];
      [v2 deleteRowsAtIndexPaths:*(a1 + 40) withRowAnimation:100];
    }

    goto LABEL_8;
  }

  v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __95___SFAccountPickerTableViewController__removeSavedAccount_shouldPerformDeletionInAccountStore___block_invoke_2_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = _WBSLocalizedString();
  [v4 _presentErrorAlertWithString:v5];
}

uint64_t __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1088);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke_2;
  v8[3] = &unk_1E8495728;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_noObjectsPassTest:v8];

  return v6;
}

uint64_t __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 highLevelDomain];
  v5 = [v3 highLevelDomain];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

uint64_t __63___SFAccountPickerTableViewController__updateMatchingPasswords__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[_SFFormDataController sharedController];
  v5 = [v4 autoFillQuirksManager];
  v6 = [v5 associatedDomainsManager];
  v7 = [v3 highLevelDomain];
  v8 = [v6 domainsWithAssociatedCredentialsForDomain:v7];

  v9 = [*(a1 + 32) searchPattern];
  v10 = [v3 matchesUserTypedSearchPattern:v9 associatedDomains:v8];

  return v10;
}

@end
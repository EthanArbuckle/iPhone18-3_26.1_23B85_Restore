@interface ASPasswordManagerIconController
@end

@implementation ASPasswordManagerIconController

void __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = WeakRetained[15];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __65___ASPasswordManagerIconController__privacyProxyStateInitialized__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(v1 + 64);
  v2 = (v1 + 64);
  v3 = v4;
  if (v4)
  {
    [v3 addObjectsFromArray:v2[7]];
  }

  else
  {
    objc_storeStrong(v2, v2[7]);
  }
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49___ASPasswordManagerIconController__fetchHistory__block_invoke_2;
  v2[3] = &unk_1E7AF7658;
  v1 = *(a1 + 32);
  v2[4] = *(a1 + 40);
  objc_copyWeak(&v3, (a1 + 48));
  [v1 getAllItemsWithCompletionHandler:v2];
  objc_destroyWeak(&v3);
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49___ASPasswordManagerIconController__fetchHistory__block_invoke_3;
  v6[3] = &unk_1E7AF7630;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v8);
}

void __49___ASPasswordManagerIconController__fetchHistory__block_invoke_3(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(WeakRetained + 6);
    *(WeakRetained + 6) = v3;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = *(a1 + 32);
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 url];
          v12 = [v11 host];
          v13 = [v12 safari_highLevelDomainFromHost];

          if (![v13 length])
          {

            goto LABEL_21;
          }

          v14 = [*(WeakRetained + 6) objectForKeyedSubscript:v13];
          if (!v14)
          {
            v14 = [MEMORY[0x1E695DFA8] set];
            [*(WeakRetained + 6) setObject:v14 forKeyedSubscript:v13];
          }

          [v14 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = *(WeakRetained + 8);
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          (*(*(*(&v22 + 1) + 8 * j) + 16))(*(*(&v22 + 1) + 8 * j));
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    v20 = *(WeakRetained + 8);
    *(WeakRetained + 8) = 0;

    *(WeakRetained + 4) = 257;
  }

LABEL_21:

  v21 = *MEMORY[0x1E69E9840];
}

void __58___ASPasswordManagerIconController_clearIconFetchingState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  v4 = [*(v2 + 40) copy];
  [v3 cancelRequestsWithTokens:v4];

  if (*(*(a1 + 32) + 104) == 1)
  {
    WBSHistoryClass = getWBSHistoryClass();

    [WBSHistoryClass clearExistingSharedHistory];
  }
}

void __50___ASPasswordManagerIconController_cancelRequest___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [*(*(a1 + 32) + 80) cancelRequestWithToken:v2];
    [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
    [*(*(a1 + 32) + 40) removeObject:v2];
  }

  else
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswordManager();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __50___ASPasswordManagerIconController_cancelRequest___block_invoke_cold_1();
    }
  }
}

void __76___ASPasswordManagerIconController_iconForDomain_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 56) containsObject:*(a1 + 40)];
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  if (v2)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v8 = 141558275;
      v9 = 1752392040;
      v10 = 2117;
      v11 = v4;
      _os_log_impl(&dword_1B1C8D000, v3, OS_LOG_TYPE_DEFAULT, "Touch icon already requested; domain=%{sensitive, mask.hash}@", &v8, 0x16u);
    }
  }

  [*(a1 + 32) _fetchTouchIconForDomain:*(a1 + 40) requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
  v5 = *(a1 + 56);
  v6 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  (*(v5 + 16))(v5, v6);

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __61___ASPasswordManagerIconController_backgroundColorForDomain___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __62___ASPasswordManagerIconController__mobileSafariContainerPath__block_invoke()
{
  container_query_create();
  container_query_set_class();
  objects = xpc_string_create("com.apple.mobilesafari");
  v0 = xpc_array_create(&objects, 1uLL);
  container_query_set_identifiers();
  container_query_operation_set_flags();
  v1 = *MEMORY[0x1E69E9980];
  container_query_set_persona_unique_string();
  if (container_query_get_single_result())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_path()];
    v3 = _mobileSafariContainerPath_mobileSafariContainerPath;
    _mobileSafariContainerPath_mobileSafariContainerPath = v2;

    v4 = container_copy_sandbox_token();
    if ((sandbox_extension_consume() & 0x8000000000000000) == 0)
    {
      free(v4);
    }

    container_query_free();
  }

  else
  {
    container_query_get_last_error();
    v5 = container_error_copy_unlocalized_description();
    v6 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __62___ASPasswordManagerIconController__mobileSafariContainerPath__block_invoke_cold_1();
    }

    free(v5);
    container_query_free();
    v7 = _mobileSafariContainerPath_mobileSafariContainerPath;
    _mobileSafariContainerPath_mobileSafariContainerPath = 0;
  }
}

void __43___ASPasswordManagerIconController_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 cancelRequestsWithTokens:v2];
}

void __58___ASPasswordManagerIconController_performMaintenanceWork__block_invoke(uint64_t a1, int a2)
{
  v4 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_DEFAULT, "Background activity for performMaintenanceWork expired", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&dword_1B1C8D000, v4, OS_LOG_TYPE_DEFAULT, "Starting maintenance work with background task assertion", v6, 2u);
    }

    [*(*(a1 + 32) + 80) performMaintenanceWork];
  }
}

void __68___ASPasswordManagerIconController_prepareForApplicationTermination__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v2, OS_LOG_TYPE_DEFAULT, "Background activity for savePendingProviderChangesBeforeTermination expired", buf, 2u);
    }
  }

  else
  {
    v4 = dispatch_group_create();
    v5 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v5, OS_LOG_TYPE_DEFAULT, "Starting to save pending changes with background task assertion", buf, 2u);
    }

    dispatch_group_enter(v4);
    v6 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68___ASPasswordManagerIconController_prepareForApplicationTermination__block_invoke_31;
    v9[3] = &unk_1E7AF7608;
    v7 = v4;
    v10 = v7;
    [v6 savePendingProviderChangesWithCompletion:v9];
    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v8 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B1C8D000, v8, OS_LOG_TYPE_DEFAULT, "Saved pending changes to database", buf, 2u);
    }
  }
}

void __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke_2;
  v3[3] = &unk_1E7AF7790;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _populateDomainToAppIDWithCompletion:v3];
}

void __72___ASPasswordManagerIconController_bundleIDForDomain_completionHandler___block_invoke_2(void *a1)
{
  v4 = [*(a1[4] + 88) objectForKeyedSubscript:a1[5]];
  v2 = a1[6];
  v3 = [v4 safari_bundleIdentifierFromApplicationIdentifier:0];
  (*(v2 + 16))(v2, v3);
}

void __79___ASPasswordManagerIconController__checkForLocalVisitToDomain_withCompletion___block_invoke(void *a1)
{
  v3 = [*(a1[4] + 48) objectForKeyedSubscript:a1[5]];
  if ([v3 count])
  {
    v2 = [getWBSHistoryClass() existingSharedHistory];
    [v2 checkIfLocalVisitExistsInAnyOfItems:v3 withCompletion:a1[6]];
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

void __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_2;
  v7[3] = &unk_1E7AF77B8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v6 _checkForLocalVisitToDomain:v2 withCompletion:v7];
}

uint64_t __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_2(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  return [*(a1 + 32) _requestTouchIconForDomain:*(a1 + 40) options:v3 requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
}

uint64_t __87___ASPasswordManagerIconController__fetchTouchIconForDomain_requestID_responseHandler___block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 112) initialized] && objc_msgSend(*(*(a1 + 32) + 112), "shouldFetchPasswordManagerWebsiteDataUsingPrivacyProxy"))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *MEMORY[0x1E69E9840];

    return [v2 _requestTouchIconForDomain:v3 options:14 requestID:v4 responseHandler:v5];
  }

  else
  {
    v8 = *(a1 + 32);
    if ((v8[9] & 1) == 0)
    {
      [v8 _requestTouchIconForDomain:*(a1 + 40) options:0 requestID:*(a1 + 48) responseHandler:*(a1 + 56)];
    }

    v9 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v12 = 141558275;
      v13 = 1752392040;
      v14 = 2117;
      v15 = v10;
      _os_log_impl(&dword_1B1C8D000, v9, OS_LOG_TYPE_DEFAULT, "Fetching touch icon in history; domain=%{sensitive, mask.hash}@", &v12, 0x16u);
    }

    result = [*(a1 + 32) _fetchIconInHistoryWithBlock:*(a1 + 64)];
    v11 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[16] objectForKeyedSubscript:*(a1 + 32)];
    if (v4)
    {
      v5 = [MEMORY[0x1E695DF00] now];
      v6 = [v5 safari_isEarlierThanDate:v4];

      if (v6)
      {
        [v3 _handleIconFetchFailureWithDomain:*(a1 + 32) options:*(a1 + 64) requestID:*(a1 + 40) response:0 responseHandler:*(a1 + 48)];
LABEL_14:

        goto LABEL_15;
      }

      [v3[16] removeObjectForKey:*(a1 + 32)];
    }

    getSFScreenScale();
    +[_ASPasswordManagerIconController _preferredIconSize];
    v7 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = (*(a1 + 64) >> 3) & 1;
      *buf = 141558531;
      *&buf[4] = 1752392040;
      *&buf[12] = 2117;
      *&buf[14] = v8;
      *&buf[22] = 1024;
      LODWORD(v33) = v9;
      _os_log_impl(&dword_1B1C8D000, v7, OS_LOG_TYPE_DEFAULT, "Fetching touch icon; domain=%{sensitive, mask.hash}@; enablePrivateRelay=%{BOOL}d", buf, 0x1Cu);
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x2050000000;
    v10 = get_SFSavedAccountTouchIconRequestClass_softClass;
    v31 = get_SFSavedAccountTouchIconRequestClass_softClass;
    if (!get_SFSavedAccountTouchIconRequestClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __get_SFSavedAccountTouchIconRequestClass_block_invoke;
      v33 = &unk_1E7AF7948;
      v34 = &v28;
      __get_SFSavedAccountTouchIconRequestClass_block_invoke(buf);
      v10 = v29[3];
    }

    v11 = v10;
    _Block_object_dispose(&v28, 8);
    v12 = [*(a1 + 32) safari_bestURLForUserTypedString];
    +[_ASPasswordManagerIconController _minimumIconSize];
    v13 = [v10 requestWithTitle:0 url:v12 minimumIconSize:*(a1 + 64) maximumIconSize:? options:?];

    v14 = v3[10];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_36;
    v22 = &unk_1E7AF7880;
    v23 = v3;
    objc_copyWeak(v27, (a1 + 56));
    v15 = *(a1 + 32);
    v16 = *(a1 + 64);
    v24 = v15;
    v27[1] = v16;
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v17 = [v14 registerRequest:v13 priority:2 responseHandler:&v19];
    if (v17)
    {
      [v3[5] addObject:{v17, v19, v20, v21, v22, v23, v24, v25}];
      if (*(a1 + 40))
      {
        [v3[4] setObject:v17 forKeyedSubscript:?];
      }
    }

    objc_destroyWeak(v27);
    goto LABEL_14;
  }

LABEL_15:

  v18 = *MEMORY[0x1E69E9840];
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2;
  v8[3] = &unk_1E7AF7858;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(v13, (a1 + 64));
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v10 = v6;
  v13[1] = v7;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  dispatch_async(v4, v8);

  objc_destroyWeak(v13);
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v3 = getWBSTouchIconResponseClass_softClass;
  v29 = getWBSTouchIconResponseClass_softClass;
  if (!getWBSTouchIconResponseClass_softClass)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __getWBSTouchIconResponseClass_block_invoke;
    v25[3] = &unk_1E7AF7948;
    v25[4] = &v26;
    __getWBSTouchIconResponseClass_block_invoke(v25);
    v3 = v27[3];
  }

  v4 = v3;
  _Block_object_dispose(&v26, 8);
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    if (WeakRetained)
    {
      v6 = *(a1 + 32);
      v7 = [v6 touchIcon];
      v8 = v7;
      if (!v7 || ([v7 size], v9 == 0.0) || (objc_msgSend(v8, "size"), v10 == 0.0))
      {
        v13 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1(a1);
        }

        v14 = WeakRetained[9];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_37;
        block[3] = &unk_1E7AF7808;
        objc_copyWeak(&v24, (a1 + 64));
        v15 = v6;
        v22 = v15;
        v23 = *(a1 + 40);
        dispatch_async(v14, block);
        [WeakRetained _handleIconFetchFailureWithDomain:*(a1 + 40) options:*(a1 + 72) requestID:*(a1 + 48) response:v15 responseHandler:*(a1 + 56)];

        objc_destroyWeak(&v24);
      }

      else
      {
        v11 = WeakRetained[9];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_38;
        v16[3] = &unk_1E7AF7830;
        v17 = v8;
        v18 = *(a1 + 40);
        v12 = *(a1 + 56);
        v19 = WeakRetained;
        v20 = v12;
        dispatch_async(v11, v16);
      }
    }
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_37(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) nextIconDownloadRetryDate];

    if (v2)
    {
      v3 = [*(a1 + 32) nextIconDownloadRetryDate];
      [WeakRetained[16] setObject:v3 forKeyedSubscript:*(a1 + 40)];
    }
  }
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_38(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WBSImageUtilitiesClass = getWBSImageUtilitiesClass();
  v3 = *(a1 + 32);
  +[_ASPasswordManagerIconController _preferredIconSize];
  v4 = [WBSImageUtilitiesClass resizedImage:v3 withSize:?];
  v5 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v9 = 141558275;
      v10 = 1752392040;
      v11 = 2117;
      v12 = v7;
      _os_log_impl(&dword_1B1C8D000, v6, OS_LOG_TYPE_DEFAULT, "Finished fetching touch icon; domain=%{sensitive, mask.hash}@", &v9, 0x16u);
    }

    [*(*(a1 + 48) + 16) setObject:v4 forKey:*(a1 + 40)];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 48) _iconDidUpdateForDomain:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1(a1);
    }

    (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __113___ASPasswordManagerIconController__handleIconFetchFailureWithDomain_options_requestID_response_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) extractedBackgroundColor];
  [v2 setObject:v3 forKey:*(a1 + 48)];
}

void __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7AF76A8;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __73___ASPasswordManagerIconController__populateDomainToAppIDWithCompletion___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = MEMORY[0x1E69C8DE8];
        v12 = [v10 domain];
        v13 = [v11 domainByStrippingSubdomainWildcardPrefixIfNecessary:v12];

        if (([MEMORY[0x1E69C8DE8] domainIsProhibitedForSavingCredentials:v13] & 1) == 0)
        {
          v14 = [v13 safari_highLevelDomainFromHost];
          if (v14 && ([MEMORY[0x1E69C8DE8] highLevelDomainHasSuiteOfAssociatedApps:v14] & 1) == 0)
          {
            v15 = [v10 appID];
            [*(*(a1 + 32) + 88) setObject:v15 forKeyedSubscript:v14];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = *(*(a1 + 32) + 96);
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v24 + 1) + 8 * j) + 16))(*(*(&v24 + 1) + 8 * j));
      }

      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v21 = *(a1 + 32);
  v22 = *(v21 + 96);
  *(v21 + 96) = 0;

  v23 = *MEMORY[0x1E69E9840];
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2;
  v3[3] = &unk_1E7AF78F8;
  objc_copyWeak(&v6, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _populateDomainToAppIDWithCompletion:v3];

  objc_destroyWeak(&v6);
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[11] objectForKeyedSubscript:*(a1 + 32)];
    v5 = [v4 safari_bundleIdentifierFromApplicationIdentifier:0];
    if (v5)
    {
      v6 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:v5];
      v7 = [v6 appState];
      v8 = [v7 isValid];

      if (v8)
      {
        WBSImageUtilitiesClass = getWBSImageUtilitiesClass();
        v10 = iconForApplicationProxy(v6);
        +[_ASPasswordManagerIconController _preferredIconSize];
        v11 = [WBSImageUtilitiesClass resizedImage:v10 withSize:?];

        if (v11)
        {
          [v3[2] setObject:v11 forKey:*(a1 + 32)];
          (*(*(a1 + 40) + 16))();
          [v3 _iconDidUpdateForDomain:*(a1 + 32)];
        }

        else
        {
          v13 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_2((a1 + 32));
          }

          (*(*(a1 + 40) + 16))();
        }
      }

      else
      {
        v12 = WBS_LOG_CHANNEL_PREFIXPasswordsIcons();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_1((a1 + 32));
        }
      }
    }
  }
}

void __62___ASPasswordManagerIconController__mobileSafariContainerPath__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __97___ASPasswordManagerIconController__requestTouchIconForDomain_options_requestID_responseHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __74___ASPasswordManagerIconController_fetchAppIconForDomain_responseHandler___block_invoke_2_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end
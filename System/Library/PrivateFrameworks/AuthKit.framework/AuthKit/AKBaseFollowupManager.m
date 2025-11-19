@interface AKBaseFollowupManager
- (AKBaseFollowupManager)initWithFollowUpFactory:(id)a3 provider:(id)a4;
- (BOOL)synchronizeFollowUpsWithServerPayload:(id)a3 altDSID:(id)a4 error:(id *)a5;
- (id)_alignedInsertionCandidates:(id)a3 withExistingItems:(id)a4;
- (void)teardownFollowUpWithContext:(id)a3 completion:(id)a4;
@end

@implementation AKBaseFollowupManager

- (AKBaseFollowupManager)initWithFollowUpFactory:(id)a3 provider:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = AKBaseFollowupManager;
  v8 = [(AKBaseFollowupManager *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_factory, location[0]);
    objc_storeStrong(&v12->_provider, v10);
  }

  v6 = MEMORY[0x1E69E5928](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (BOOL)synchronizeFollowUpsWithServerPayload:(id)a3 altDSID:(id)a4 error:(id *)a5
{
  v84 = *MEMORY[0x1E69E9840];
  v77 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v75 = 0;
  objc_storeStrong(&v75, a4);
  v74 = a5;
  v73 = [location[0] objectForKeyedSubscript:@"items"];
  if (v73)
  {
    v68 = _AKLogSystem();
    v67 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v68;
      v26 = v67;
      __os_log_helper_16_0_0(v66);
      _os_log_impl(&dword_193225000, v25, v26, "Synchronizing local follow up state.", v66, 2u);
    }

    objc_storeStrong(&v68, 0);
    v65 = [(AKFollowUpProvider *)v77->_provider pendingFollowUpItems:0];
    v64 = [(AKFollowUpItemFactory *)v77->_factory itemsForAltDSID:v75 pushMessageInfo:0 fromIDMSPayload:v73];
    if (v65)
    {
      v22 = MEMORY[0x1E695DFD8];
      v23 = [v73 aaf_map:&__block_literal_global_46];
      v63 = [v22 setWithArray:?];
      MEMORY[0x1E69E5920](v23);
      v24 = v65;
      v56 = MEMORY[0x1E69E9820];
      v57 = -1073741824;
      v58 = 0;
      v59 = __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_2;
      v60 = &unk_1E73D87C8;
      v61 = MEMORY[0x1E69E5928](v63);
      v62 = [v24 aaf_filter:&v56];
      if ([v62 count])
      {
        v55 = _AKLogSystem();
        v54 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v83, v62);
          _os_log_impl(&dword_193225000, v55, v54, "Deleting: %@", v83, 0xCu);
        }

        objc_storeStrong(&v55, 0);
        v53 = 0;
        provider = v77->_provider;
        v52 = 0;
        v21 = [(AKFollowUpProvider *)provider removeFollowUpItems:v62 error:&v52];
        objc_storeStrong(&v53, v52);
        if (!v21)
        {
          v51 = _AKLogSystem();
          v50 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_64(v82, v53);
            _os_log_error_impl(&dword_193225000, v51, v50, "Failed to clear existing follow ups: %@", v82, 0xCu);
          }

          objc_storeStrong(&v51, 0);
        }

        objc_storeStrong(&v53, 0);
      }

      v18 = MEMORY[0x1E695DFD8];
      v19 = [(AKFollowUpItemFactory *)v77->_factory itemIdentifiersRequiringNotificationClearFromPayload:v73];
      v49 = [v18 setWithArray:?];
      MEMORY[0x1E69E5920](v19);
      v20 = v65;
      v42 = MEMORY[0x1E69E9820];
      v43 = -1073741824;
      v44 = 0;
      v45 = __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_18;
      v46 = &unk_1E73D87C8;
      v47 = MEMORY[0x1E69E5928](v49);
      v48 = [v20 aaf_filter:&v42];
      if ([v48 count])
      {
        v41 = _AKLogSystem();
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v81, v48);
          _os_log_impl(&dword_193225000, v41, v40, "Clearing Notifications: %@", v81, 0xCu);
        }

        objc_storeStrong(&v41, 0);
        memset(__b, 0, sizeof(__b));
        v16 = MEMORY[0x1E69E5928](v48);
        v17 = [v16 countByEnumeratingWithState:__b objects:v80 count:16];
        if (v17)
        {
          v13 = *__b[2];
          v14 = 0;
          v15 = v17;
          while (1)
          {
            v12 = v14;
            if (*__b[2] != v13)
            {
              objc_enumerationMutation(v16);
            }

            v39 = *(__b[1] + 8 * v14);
            [(AKFollowUpProvider *)v77->_provider clearNotificationsForItem:v39 error:0];
            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [v16 countByEnumeratingWithState:__b objects:v80 count:16];
              if (!v15)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x1E69E5920](v16);
      }

      v11 = v64;
      v32 = MEMORY[0x1E69E9820];
      v33 = -1073741824;
      v34 = 0;
      v35 = __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_19;
      v36 = &unk_1E73D87C8;
      v37 = MEMORY[0x1E69E5928](v49);
      v6 = [v11 aaf_filter:&v32];
      v7 = v64;
      v64 = v6;
      MEMORY[0x1E69E5920](v7);
      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v63, 0);
    }

    v8 = [(AKBaseFollowupManager *)v77 _alignedInsertionCandidates:v64 withExistingItems:v65];
    v9 = v64;
    v64 = v8;
    MEMORY[0x1E69E5920](v9);
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v79, v64);
      _os_log_impl(&dword_193225000, oslog, OS_LOG_TYPE_DEFAULT, "Inserting: %@", v79, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v78 = [(AKFollowUpProvider *)v77->_provider addFollowUpItems:v64 error:v74]& 1;
    v69 = 1;
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  else
  {
    v72 = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      log = v72;
      v28 = type;
      __os_log_helper_16_0_0(v70);
      _os_log_impl(&dword_193225000, log, v28, "No followup items found in payload.", v70, 2u);
    }

    objc_storeStrong(&v72, 0);
    v78 = 0;
    v69 = 1;
  }

  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v78 & 1;
}

id __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] objectForKeyedSubscript:@"id"];
  objc_storeStrong(location, 0);

  return v3;
}

BOOL __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = a1[4];
  v5 = [location[0] uniqueIdentifier];
  v6 = [v4 containsObject:?] == 0;
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

BOOL __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_18(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = a1[4];
  v5 = [location[0] uniqueIdentifier];
  v6 = [v4 containsObject:?] == 1;
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

BOOL __77__AKBaseFollowupManager_synchronizeFollowUpsWithServerPayload_altDSID_error___block_invoke_19(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = a1[4];
  v5 = [location[0] uniqueIdentifier];
  v6 = [v4 containsObject:?] == 0;
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)teardownFollowUpWithContext:(id)a3 completion:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v17 = [location[0] itemIdentifier];
  v25 = 0;
  v18 = 1;
  if (v17)
  {
    v26 = [location[0] altDSID];
    v25 = 1;
    v18 = v26 == 0;
  }

  if (v25)
  {
    MEMORY[0x1E69E5920](v26);
  }

  MEMORY[0x1E69E5920](v17);
  if (v18)
  {
    v14 = v27;
    v15 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7044];
    v14[2](v14, 0);
    MEMORY[0x1E69E5920](v15);
    v24 = 1;
  }

  else
  {
    v10 = [location[0] akAction];
    v11 = [v10 isEqualToString:@"delete"];
    MEMORY[0x1E69E5920](v10);
    v23 = v11;
    v12 = [location[0] akAction];
    v13 = [v12 isEqualToString:@"teardown"];
    MEMORY[0x1E69E5920](v12);
    v22 = v13;
    if (v11 & 1) != 0 || (v22)
    {
      provider = v29->_provider;
      v9 = [location[0] itemIdentifier];
      v30[0] = v9;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v7 = [location[0] telemetryFlowID];
      [AKFollowUpProvider removeFollowUpItemsWithIdentifiers:"removeFollowUpItemsWithIdentifiers:telemetryFlowID:error:" telemetryFlowID:v8 error:?];
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v9);
    }

    else
    {
      v21 = _AKLogSystem();
      v20 = 16;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        log = v21;
        type = v20;
        __os_log_helper_16_0_0(v19);
        _os_log_error_impl(&dword_193225000, log, type, "Unknown action, ignoring...", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
    }

    (*(v27 + 2))(v27, 1, 0);
    v24 = 0;
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

- (id)_alignedInsertionCandidates:(id)a3 withExistingItems:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = [MEMORY[0x1E695DF90] dictionary];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v9 = location[0];
  v22 = MEMORY[0x1E69E9820];
  v23 = -1073741824;
  v24 = 0;
  v25 = __71__AKBaseFollowupManager__alignedInsertionCandidates_withExistingItems___block_invoke;
  v26 = &unk_1E73D87F0;
  v27 = MEMORY[0x1E69E5928](v29);
  v28 = MEMORY[0x1E69E5928](v30);
  [v9 enumerateObjectsUsingBlock:&v22];
  v10 = v31;
  v14 = MEMORY[0x1E69E9820];
  v15 = -1073741824;
  v16 = 0;
  v17 = __71__AKBaseFollowupManager__alignedInsertionCandidates_withExistingItems___block_invoke_24;
  v18 = &unk_1E73D8818;
  v19 = MEMORY[0x1E69E5928](v29);
  v20 = MEMORY[0x1E69E5928](v30);
  v21 = MEMORY[0x1E69E5928](v33);
  [v10 enumerateObjectsUsingBlock:&v14];
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v35, v29);
    _os_log_impl(&dword_193225000, oslog, type, "Found incoming sparse followups: %@", v35, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  v11 = _AKLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v34, v30);
    _os_log_impl(&dword_193225000, v11, OS_LOG_TYPE_DEFAULT, "Found incoming full followups: %@", v34, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  v7 = [v29 allValues];
  v5 = [v30 allValues];
  v6 = [v7 arrayByAddingObjectsFromArray:?];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v7);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v6;
}

void __71__AKBaseFollowupManager__alignedInsertionCandidates_withExistingItems___block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v26 = a3;
  v25 = a4;
  v24 = a1;
  v17 = [location[0] uniqueIdentifier];
  MEMORY[0x1E69E5920](v17);
  if (v17)
  {
    v12 = [location[0] actions];
    v21 = 0;
    v13 = 1;
    if ([v12 count])
    {
      v22 = [location[0] informativeText];
      v21 = 1;
      v13 = v22 == 0;
    }

    if (v21)
    {
      MEMORY[0x1E69E5920](v22);
    }

    MEMORY[0x1E69E5920](v12);
    v23 = v13;
    if (v13)
    {
      v9 = location[0];
      v10 = a1[4];
      v11 = [location[0] uniqueIdentifier];
      [v10 setObject:v9 forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v11);
    }

    else
    {
      v6 = location[0];
      v7 = a1[5];
      v8 = [location[0] uniqueIdentifier];
      [v7 setObject:v6 forKeyedSubscript:?];
      MEMORY[0x1E69E5920](v8);
    }
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_error_impl(&dword_193225000, log, type, "Detected an item without an identifier, invalid payload", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(location, 0);
}

void __71__AKBaseFollowupManager__alignedInsertionCandidates_withExistingItems___block_invoke_24(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v39[3] = a3;
  v39[2] = a4;
  v39[1] = a1;
  v39[0] = [location[0] uniqueIdentifier];
  if (v39[0])
  {
    v38 = [*(a1 + 32) objectForKeyedSubscript:v39[0]];
    v36 = 0;
    v23 = 0;
    if (v38)
    {
      v37 = [location[0] notification];
      v36 = 1;
      v23 = v37 != 0;
    }

    if (v36)
    {
      MEMORY[0x1E69E5920](v37);
    }

    if (v23)
    {
      v22 = [v38 notification];
      MEMORY[0x1E69E5920](v22);
      if (v22)
      {
        v12 = [v38 notification];
        v11 = [v12 informativeText];
        v10 = [location[0] notification];
        [v10 setInformativeText:v11];
        MEMORY[0x1E69E5920](v10);
        MEMORY[0x1E69E5920](v11);
        MEMORY[0x1E69E5920](v12);
        v15 = [v38 notification];
        v14 = [v15 title];
        v13 = [location[0] notification];
        [v13 setTitle:v14];
        MEMORY[0x1E69E5920](v13);
        MEMORY[0x1E69E5920](v14);
        MEMORY[0x1E69E5920](v15);
        v18 = [v38 notification];
        [v18 frequency];
        v16 = v4;
        v17 = [location[0] notification];
        [v17 setFrequency:v16];
        MEMORY[0x1E69E5920](v17);
        MEMORY[0x1E69E5920](v18);
        v21 = [v38 notification];
        v20 = [v21 options];
        v19 = [location[0] notification];
        [v19 setOptions:v20];
        MEMORY[0x1E69E5920](v19);
        MEMORY[0x1E69E5920](v20);
        MEMORY[0x1E69E5920](v21);
      }

      else
      {
        [location[0] setNotification:0];
      }

      v35 = _AKLogSystem();
      v34 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v41, v39[0]);
        _os_log_debug_impl(&dword_193225000, v35, v34, "Updating existing item with identifier: %@", v41, 0xCu);
      }

      objc_storeStrong(&v35, 0);
      [*(a1 + 32) setObject:location[0] forKeyedSubscript:v39[0]];
    }

    else
    {
      v9 = [location[0] notification];
      MEMORY[0x1E69E5920](v9);
      if (!v9)
      {
        v33 = [*(a1 + 40) objectForKeyedSubscript:v39[0]];
        if (v33)
        {
          if ([*(*(a1 + 48) + 8) IsFollowUpItemNotificationForced:v33])
          {
            v29 = _AKLogSystem();
            v28 = 2;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v5 = v29;
              v6 = v28;
              __os_log_helper_16_0_0(v27);
              _os_log_debug_impl(&dword_193225000, v5, v6, "Incoming notification was forced, keeping it!", v27, 2u);
            }

            objc_storeStrong(&v29, 0);
          }

          else
          {
            [v33 setNotification:0];
            v32 = _AKLogSystem();
            v31 = 2;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              v7 = v32;
              v8 = v31;
              __os_log_helper_16_0_0(v30);
              _os_log_debug_impl(&dword_193225000, v7, v8, "Existing item notification was previously dismissed, ignoring incoming notification", v30, 2u);
            }

            objc_storeStrong(&v32, 0);
          }
        }

        objc_storeStrong(&v33, 0);
      }
    }

    objc_storeStrong(&v38, 0);
  }

  objc_storeStrong(v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

@end
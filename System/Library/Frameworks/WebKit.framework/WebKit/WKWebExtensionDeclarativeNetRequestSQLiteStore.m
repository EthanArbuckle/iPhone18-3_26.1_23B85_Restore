@interface WKWebExtensionDeclarativeNetRequestSQLiteStore
@end

@implementation WKWebExtensionDeclarativeNetRequestSQLiteStore

void __103___WKWebExtensionDeclarativeNetRequestSQLiteStore_updateRulesByRemovingIDs_addRules_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 length])
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __103___WKWebExtensionDeclarativeNetRequestSQLiteStore_updateRulesByRemovingIDs_addRules_completionHandler___block_invoke_2;
      v6[3] = &unk_1E762FD60;
      v5 = *(a1 + 32);
      v7 = *(a1 + 40);
      [WeakRetained addRules:v5 completionHandler:v6];
    }
  }
}

void __78___WKWebExtensionDeclarativeNetRequestSQLiteStore_addRules_completionHandler___block_invoke(id *a1)
{
  v67 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v40 = WeakRetained;
    v63 = 0;
    v39 = WeakRetained;
    v2 = [v39 _openDatabaseIfNecessaryReturningErrorMessage:&v63];
    v44 = v63;

    if ((v2 & 1) == 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __78___WKWebExtensionDeclarativeNetRequestSQLiteStore_addRules_completionHandler___block_invoke_2;
      block[3] = &unk_1E762FD88;
      v62 = a1[5];
      v26 = v44;
      v61 = v26;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v3 = v62;
LABEL_35:

      WeakRetained = v40;
      goto LABEL_36;
    }

    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[4], "count")}];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v4 = a1[4];
    v5 = [v4 countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (v5)
    {
      v6 = *v57;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v57 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = WebKit::objectForKey<NSNumber>(*(*(&v56 + 1) + 8 * i), @"id");
          [v3 addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v56 objects:v66 count:16];
      }

      while (v5);
    }

    v9 = v39;
    v10 = v9[3];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v43 = v9;
    v12 = v43[7];
    v13 = [v3 componentsJoinedByString:{@", "}];
    v14 = [v11 initWithFormat:@"SELECT id FROM %@ WHERE id in (%@)", v12, v13];
    v38 = WebKit::SQLiteDatabaseFetch<>(v10, v14);

    v15 = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v16 = v38;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v17)
    {
      v18 = *v53;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v52 + 1) + 8 * j), "int64AtIndex:", 0)}];
          [v15 addObject:v20];
        }

        v17 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v17);
    }

    v21 = v44;
    if ([v15 count] == 1)
    {
      v22 = MEMORY[0x1E696AEC0];
      v23 = v43[6];
      v24 = [v15 firstObject];
      v25 = [v22 stringWithFormat:@"Failed to add %@ rules. Rule %@ does not have a unique ID.", v23, v24];
    }

    else
    {
      if ([v15 count] < 2)
      {
LABEL_23:
        if ([v21 length])
        {
          v30 = v51;
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v31 = __78___WKWebExtensionDeclarativeNetRequestSQLiteStore_addRules_completionHandler___block_invoke_3;
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          obj = a1[4];
          v45 = v21;
          v32 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
          if (v32)
          {
            v33 = *v48;
LABEL_27:
            v34 = 0;
            v35 = v45;
            while (1)
            {
              if (*v48 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v36 = *(*(&v47 + 1) + 8 * v34);
              v37 = v43;
              v45 = [v37 _insertRule:v36 inDatabase:v9[3]];

              if ([v45 length])
              {
                break;
              }

              ++v34;
              v35 = v45;
              if (v32 == v34)
              {
                v32 = [obj countByEnumeratingWithState:&v47 objects:v64 count:16];
                if (v32)
                {
                  goto LABEL_27;
                }

                break;
              }
            }
          }

          v30 = v46;
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v31 = __78___WKWebExtensionDeclarativeNetRequestSQLiteStore_addRules_completionHandler___block_invoke_4;
          v21 = v45;
        }

        v30[2] = v31;
        v30[3] = &unk_1E762FD88;
        v30[5] = a1[5];
        v26 = v21;
        v30[4] = v26;
        dispatch_async(MEMORY[0x1E69E96A0], v30);

        goto LABEL_35;
      }

      v27 = MEMORY[0x1E696AEC0];
      v28 = v43[6];
      v24 = [v15 componentsJoinedByString:{@", "}];
      v25 = [v27 stringWithFormat:@"Failed to add %@ rules. Some rules do not have unique IDs (%@).", v28, v24];
    }

    v29 = v25;

    v21 = v29;
    goto LABEL_23;
  }

LABEL_36:
}

void __81___WKWebExtensionDeclarativeNetRequestSQLiteStore_deleteRules_completionHandler___block_invoke(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v30 = 0;
    v5 = [v4 _openDatabaseIfNecessaryReturningErrorMessage:&v30 createIfNecessary:0];
    v6 = v30;

    if (v5)
    {
      v7 = v4;
      v8 = v7[3];
      v9 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = v7;
      v11 = v10[7];
      v12 = [a1[4] componentsJoinedByString:{@", "}];
      v13 = [v9 initWithFormat:@"DELETE FROM %@ WHERE id in (%@)", v11, v12];
      LODWORD(v8) = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(v8, 0, v13);

      if (v8 != 101)
      {
        v14 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          v21 = v10[1];
          *buf = 138477827;
          v32 = v21;
          v22 = v14;
          _os_log_error_impl(&dword_19D52D000, v22, OS_LOG_TYPE_ERROR, "Failed to delete rules for extension %{private}@.", buf, 0xCu);
        }

        v15 = MEMORY[0x1E696AEC0];
        v16 = v10;
        v17 = [v15 stringWithFormat:@"Failed to delete rules from %@ rules storage.", v16[6]];

        v6 = v17;
      }

      v18 = [v10 _deleteDatabaseIfEmpty];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __81___WKWebExtensionDeclarativeNetRequestSQLiteStore_deleteRules_completionHandler___block_invoke_34;
      block[3] = &unk_1E762FDB0;
      v26 = a1[5];
      v19 = v6;
      v24 = v19;
      v25 = v18;
      v20 = v18;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __81___WKWebExtensionDeclarativeNetRequestSQLiteStore_deleteRules_completionHandler___block_invoke_2;
      v27[3] = &unk_1E762FD88;
      v29 = a1[5];
      v19 = v6;
      v28 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], v27);

      v20 = v29;
    }
  }
}

uint64_t __81___WKWebExtensionDeclarativeNetRequestSQLiteStore_deleteRules_completionHandler___block_invoke_34(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) length];
  v4 = 32;
  if (!v3)
  {
    v4 = 40;
  }

  v5 = *(a1 + v4);
  v6 = *(v2 + 16);

  return v6(v2, v5);
}

void __89___WKWebExtensionDeclarativeNetRequestSQLiteStore_getRulesWithRuleIDs_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = *(a1 + 32);
    v15 = 0;
    v6 = [v4 _getRulesWithRuleIDs:v5 errorMessage:&v15];
    v7 = v15;

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89___WKWebExtensionDeclarativeNetRequestSQLiteStore_getRulesWithRuleIDs_completionHandler___block_invoke_2;
    v11[3] = &unk_1E762FDB0;
    v8 = *(a1 + 40);
    v13 = v7;
    v14 = v8;
    v12 = v6;
    v9 = v7;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

@end
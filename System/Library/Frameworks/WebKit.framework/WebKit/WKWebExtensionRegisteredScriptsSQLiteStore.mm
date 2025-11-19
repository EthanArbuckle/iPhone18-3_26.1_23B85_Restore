@interface WKWebExtensionRegisteredScriptsSQLiteStore
@end

@implementation WKWebExtensionRegisteredScriptsSQLiteStore

id __79___WKWebExtensionRegisteredScriptsSQLiteStore_updateScripts_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:@"id"];

  return v3;
}

void __79___WKWebExtensionRegisteredScriptsSQLiteStore_updateScripts_completionHandler___block_invoke_2(uint64_t a1, void *a2)
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
      v6[2] = __79___WKWebExtensionRegisteredScriptsSQLiteStore_updateScripts_completionHandler___block_invoke_3;
      v6[3] = &unk_1E762FD60;
      v5 = *(a1 + 32);
      v7 = *(a1 + 40);
      [WeakRetained addScripts:v5 completionHandler:v6];
    }
  }
}

void __86___WKWebExtensionRegisteredScriptsSQLiteStore_deleteScriptsWithIDs_completionHandler___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v27 = a1;
    v25 = WeakRetained;
    v36 = 0;
    v23 = WeakRetained;
    v3 = [v23 _openDatabaseIfNecessaryReturningErrorMessage:&v36 createIfNecessary:0];
    v26 = v36;

    if (v3)
    {
      v24 = v23;
      v20 = v24[3];
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = *(v27 + 32);
      v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obj = v22;
      v5 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
      if (v5)
      {
        v6 = *v38;
        do
        {
          v7 = 0;
          do
          {
            if (*v38 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = [*(*(&v37 + 1) + 8 * v7) stringByReplacingOccurrencesOfString:@"'" withString:@"''"];
            v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"'%@'", v8, v20];
            [v4 addObject:v9];

            ++v7;
          }

          while (v5 != v7);
          v5 = [obj countByEnumeratingWithState:&v37 objects:buf count:16];
        }

        while (v5);
      }

      v10 = [v4 componentsJoinedByString:{@", "}];

      v11 = [v21 initWithFormat:@"DELETE FROM registered_scripts WHERE key in (%@)", v10];
      v12 = WebKit::_SQLiteDatabaseExecuteAndReturnError<>(v20, 0, v11);

      if (v12 == 101)
      {
        v13 = v26;
      }

      else
      {
        v16 = qword_1ED640AB8;
        if (os_log_type_enabled(qword_1ED640AB8, OS_LOG_TYPE_ERROR))
        {
          v18 = v24[1];
          *buf = 138477827;
          v42 = v18;
          v19 = v16;
          _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "Failed to delete scripts for extension %{private}@.", buf, 0xCu);
        }

        v13 = @"Failed to delete scripts from registered content scripts storage.";
      }

      v17 = [v24 _deleteDatabaseIfEmpty];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __86___WKWebExtensionRegisteredScriptsSQLiteStore_deleteScriptsWithIDs_completionHandler___block_invoke_13;
      v29[3] = &unk_1E762FDB0;
      v32 = *(v27 + 40);
      v14 = v13;
      v30 = v14;
      v31 = v17;
      v15 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], v29);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86___WKWebExtensionRegisteredScriptsSQLiteStore_deleteScriptsWithIDs_completionHandler___block_invoke_2;
      block[3] = &unk_1E762FD88;
      v35 = *(v27 + 40);
      v14 = v26;
      v34 = v14;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v15 = v35;
    }

    WeakRetained = v25;
  }
}

uint64_t __86___WKWebExtensionRegisteredScriptsSQLiteStore_deleteScriptsWithIDs_completionHandler___block_invoke_13(uint64_t a1)
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

uint64_t __76___WKWebExtensionRegisteredScriptsSQLiteStore_addScripts_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 objectForKeyedSubscript:@"persistAcrossSessions"];
  v4 = WTF::dynamic_objc_cast<NSNumber>(v3);

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __76___WKWebExtensionRegisteredScriptsSQLiteStore_addScripts_completionHandler___block_invoke_2(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v23 = 0;
    v4 = [WeakRetained _openDatabaseIfNecessaryReturningErrorMessage:&v23];
    v5 = v23;
    if (v4)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = a1[4];
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v7)
      {
        v8 = *v19;
        do
        {
          v9 = 0;
          v10 = v5;
          do
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * v9);
            v12 = v3[3];
            v17 = v10;
            [v3 _insertScript:v11 inDatabase:v12 errorMessage:&v17];
            v5 = v17;

            ++v9;
            v10 = v5;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
        }

        while (v7);
      }

      v13 = v16;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v14 = __76___WKWebExtensionRegisteredScriptsSQLiteStore_addScripts_completionHandler___block_invoke_4;
    }

    else
    {
      v13 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v14 = __76___WKWebExtensionRegisteredScriptsSQLiteStore_addScripts_completionHandler___block_invoke_3;
    }

    v13[2] = v14;
    v13[3] = &unk_1E762FD88;
    v13[5] = a1[5];
    v15 = v5;
    v13[4] = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v13);
  }
}

void __79___WKWebExtensionRegisteredScriptsSQLiteStore_getScriptsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v3 = [v2 _getScriptsWithOutErrorMessage:&v12];
  v4 = v12;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79___WKWebExtensionRegisteredScriptsSQLiteStore_getScriptsWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_1E762FDB0;
  v5 = *(a1 + 32);
  v10 = v4;
  v11 = v5;
  v9 = v3;
  v6 = v4;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

@end
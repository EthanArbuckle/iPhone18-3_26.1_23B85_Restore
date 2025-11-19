@interface LSSystemExtensionPointRefreshRegistrant
- (LSSystemExtensionPointRefreshRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4;
- (void)runWithCompletion:(id)a3;
@end

@implementation LSSystemExtensionPointRefreshRegistrant

- (LSSystemExtensionPointRefreshRegistrant)initWithStrategy:(id)a3 operationUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LSSystemExtensionPointRefreshRegistrant;
  v9 = [(LSSystemExtensionPointRefreshRegistrant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strategy, a3);
    objc_storeStrong(&v10->_uuid, a4);
  }

  return v10;
}

- (void)runWithCompletion:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__49;
  v17 = __Block_byref_object_dispose__49;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__49;
  v11 = __Block_byref_object_dispose__49;
  v12 = 0;
  [(LSRegistrantStrategy *)self->_strategy beginModificationOperation];
  strategy = self->_strategy;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke;
  v6[3] = &unk_1E6A1E4B8;
  v6[4] = self;
  v6[5] = &v13;
  v6[6] = &v7;
  [(LSRegistrantStrategy *)strategy runSyncBlockInWriteContext:v6];
  v4[2](v4, v8[5], v14[5]);
  [(LSRegistrantStrategy *)self->_strategy endModificationOperation];
  if (!v8[5])
  {
    [(LSRegistrantStrategy *)self->_strategy flushModificationState];
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke(void *a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 1;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v31 = a1;
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v29 = v3;
  v30 = [v3 databaseContextWithError:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v30)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_2;
    v49[3] = &unk_1E6A1E440;
    v28 = v5;
    v50 = v28;
    [v30 enumerateExtensionPointRecords:v49];
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v7 = *(v31[4] + 8);
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_3;
    v38[3] = &unk_1E6A1E468;
    v8 = v6;
    v39 = v8;
    v9 = v30;
    v10 = v31[5];
    v40 = v9;
    v41 = v10;
    v42 = &v45;
    v43 = &v52;
    v44 = &v56;
    [v7 enumerateSystemEXExtensionPoints:v38];
    v26 = [v8 mutableCopy];
    [v26 minusSet:v28];
    v27 = [v28 mutableCopy];
    [v27 minusSet:v8];
    v11 = _LSInstallLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v46[3];
      *buf = 134218498;
      v62 = v12;
      v63 = 2112;
      v64 = v26;
      v65 = 2112;
      v66 = v27;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Registered %zu EPs, new: %@ obsolete: %@", buf, 0x20u);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = v27;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v60 count:16];
    if (v14)
    {
      v15 = *v35;
      do
      {
        v16 = 0;
        do
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v34 + 1) + 8 * v16);
          v33 = 0;
          v18 = [v9 unregisterNonBundledExtensionPointWithIdentifier:v17 error:&v33];
          v19 = v33;
          if ((v18 & 1) == 0)
          {
            v20 = _LSInstallLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              v21 = *(*(v31[5] + 8) + 40);
              *buf = 138412546;
              v62 = v17;
              v63 = 2112;
              v64 = v21;
              _os_log_error_impl(&dword_18162D000, v20, OS_LOG_TYPE_ERROR, "Unable to unregister obsolete EP %@: %@", buf, 0x16u);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v34 objects:v60 count:16];
      }

      while (v14);
    }

    if (*(v57 + 24) == 1 && (v22 = [[_LSDModificationPendingSaveToken alloc] initWithUUID:*(v31[4] + 16)], v23 = *(v31[6] + 8), v24 = *(v23 + 40), *(v23 + 40) = v22, v24, (v57[3] & 1) != 0) || *(v53 + 24) == 1)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_217;
      v32[3] = &unk_1E6A1E490;
      v32[4] = v31[6];
      [v29 armSaveTimerIfNecessary:v32];
    }

    _Block_object_dispose(&v45, 8);
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  v25 = *MEMORY[0x1E69E9840];
}

void __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 parentAppRecord];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifier];
    [v4 addObject:v5];
  }
}

void __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_3(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 identifier];
  [v4 addObject:v5];

  v6 = a1[5];
  v7 = [v3 identifier];
  v8 = [v3 platform];
  v9 = [v3 SDKDictionary];
  v10 = [v3 url];
  v11 = *(a1[6] + 8);
  obj = *(v11 + 40);
  LODWORD(v6) = [v6 registerNonBundledExtensionPointWithIdentifier:v7 platform:v8 SDKDict:v9 url:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (v6)
  {
    ++*(*(a1[7] + 8) + 24);
    v12 = 1;
    v13 = 8;
  }

  else
  {
    v14 = _LSInstallLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 identifier];
      v17 = [v3 url];
      v18 = *(*(a1[6] + 8) + 40);
      *buf = 138412802;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "could not register EP %@ at %@: %@", buf, 0x20u);
    }

    v12 = 0;
    v13 = 9;
  }

  *(*(a1[v13] + 8) + 24) = v12;

  v15 = *MEMORY[0x1E69E9840];
}

void __61__LSSystemExtensionPointRefreshRegistrant_runWithCompletion___block_invoke_217(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = a2;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Save after registration for refresh extension points, save attempted %d error %@", v12, 0x12u);
  }

  v8 = v6;
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 89, 0, "[LSSystemExtensionPointRefreshRegistrant runWithCompletion:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistrants.mm", 749);

    v9 = v10;
  }

  [*(*(*(a1 + 32) + 8) + 40) saveDidHappen:v9 == 0 error:v9];

  v11 = *MEMORY[0x1E69E9840];
}

@end
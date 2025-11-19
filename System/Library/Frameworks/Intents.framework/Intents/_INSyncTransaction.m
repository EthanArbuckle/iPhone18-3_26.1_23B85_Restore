@interface _INSyncTransaction
+ (id)beginTransactionForBundleID:(id)a3 bundlePath:(id)a4 syncSlot:(id)a5;
- (BOOL)_isMissingLatestFileError:(id)a3;
- (id)_emptySentDocument;
- (id)_initWithVocabularyManager:(id)a3 syncSlot:(id)a4 deleteExistingVocabulary:(BOOL)a5;
- (id)calculateDiff;
- (void)_beginTransaction;
- (void)_deleteInvalidSavedData;
- (void)_saveAndCleanup;
- (void)endTransactionWithFinalAnchor:(id)a3;
@end

@implementation _INSyncTransaction

- (void)_beginTransaction
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_deleteExistingVocabulary)
  {
    [(_INSyncTransaction *)self _deleteInvalidSavedData];
    v3 = 0;
LABEL_17:
    v14 = [(_INSyncTransaction *)self _emptySentDocument];
    v15 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = "[_INSyncTransaction _beginTransaction]";
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s No sent vocabulary at all, forcing a sync up once.", buf, 0xCu);
    }

    [(_INVocabularyGenerationDocument *)v14 setResetOnNextSync:1];
    goto LABEL_20;
  }

  v4 = 24;
  if (self->_vocabularyUpdatesEnabled)
  {
    v4 = 16;
  }

  v5 = *(&self->super.isa + v4);
  v6 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[_INSyncTransaction _beginTransaction]";
    v23 = 2112;
    v24 = v5;
    _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s staging at %@", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_pathToLatestVocabularyDocument];
  v20 = 0;
  v10 = [v7 replaceItemAtURL:v8 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:&v20];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    v12 = [(_INSyncTransaction *)self _isMissingLatestFileError:v11];
    v13 = INSiriLogContextIntents;
    if (v12)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "[_INSyncTransaction _beginTransaction]";
        _os_log_impl(&dword_18E991000, v13, OS_LOG_TYPE_INFO, "%s No latest vocabulary file", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[_INSyncTransaction _beginTransaction]";
      v23 = 2114;
      v24 = v11;
      _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error reading latest vocabulary file: %{public}@", buf, 0x16u);
    }
  }

  if (self->_vocabularyUpdatesEnabled)
  {
    v14 = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:self->_pathToSentVocabularyDocument];
    v3 = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:self->_pathToStagedVocabularyDocument];
  }

  else
  {
    v14 = [(_INSyncTransaction *)self _emptySentDocument];
    v3 = 0;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_20:
  if (!v3)
  {
    v3 = [(_INVocabularyGenerationDocument *)v14 copy];
  }

  latest = self->_latest;
  self->_latest = v3;
  v17 = v3;

  sent = self->_sent;
  self->_sent = v14;

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_isMissingLatestFileError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqual:*MEMORY[0x1E696A250]];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v4 code];
  v8 = 1;
  if (v7 != 4 && v7 != 260)
  {
    if (v7 == 512)
    {
      v9 = [v4 userInfo];
      v10 = [v9 objectForKey:*MEMORY[0x1E696AA08]];

      v8 = [(_INSyncTransaction *)self _isMissingLatestFileError:v10];
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (void)_deleteInvalidSavedData
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    syncSlot = self->_syncSlot;
    storeManager = self->_storeManager;
    v6 = v3;
    v7 = [(_INVocabularyStoreManager *)storeManager appBundleID];
    v12 = 136315650;
    v13 = "[_INSyncTransaction _deleteInvalidSavedData]";
    v14 = 2112;
    v15 = syncSlot;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s Removing all vocabulary of type %@ for %@", &v12, 0x20u);
  }

  v8 = [(_INVocabularyStoreManager *)self->_storeManager deleteIntentSlot:self->_syncSlot];
  if (v8)
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v11 = self->_syncSlot;
      v12 = 136315650;
      v13 = "[_INSyncTransaction _deleteInvalidSavedData]";
      v14 = 2114;
      v15 = v11;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Error cleaning up %{public}@ %{public}@", &v12, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_emptySentDocument
{
  v3 = objc_alloc_init(_INVocabularyGenerationDocument);
  v4 = [(_INVocabularyStoreManager *)self->_storeManager appBundleID];
  [(_INVocabularyGenerationDocument *)v3 setAppBundleID:v4];

  [(_INVocabularyGenerationDocument *)v3 setVocabularyItems:MEMORY[0x1E695E0F0]];
  [(_INVocabularyGenerationDocument *)v3 setIntentSlot:self->_syncSlot];

  return v3;
}

- (id)calculateDiff
{
  if ([(_INSyncTransaction *)self fullResetRequired])
  {
    [(_INVocabularyGenerationDocument *)self->_latest setResetOnNextSync:1];
  }

  [(_INVocabularyGenerationDocument *)self->_latest assignMissingSiriIDsForOptimalDiffFromPreviousDocument:self->_sent];
  latest = self->_latest;
  sent = self->_sent;

  return [(_INVocabularyGenerationDocument *)latest diffFromPreviousDocument:sent];
}

- (void)endTransactionWithFinalAnchor:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(_INVocabularyGenerationDocument *)self->_latest setThisGeneration:v4];
  [(_INVocabularyGenerationDocument *)self->_latest setResetOnNextSync:0];
  vocabularyUpdatesEnabled = 0;
  if (!self->_deleteExistingVocabulary)
  {
    vocabularyUpdatesEnabled = self->_vocabularyUpdatesEnabled;
  }

  v6 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = v6;
    v9 = [v7 numberWithBool:vocabularyUpdatesEnabled];
    v13 = 136315650;
    v14 = "[_INSyncTransaction endTransactionWithFinalAnchor:]";
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s finalAnchor = '%@' cleaning up=%@", &v13, 0x20u);
  }

  if (vocabularyUpdatesEnabled)
  {
    [(_INSyncTransaction *)self _saveAndCleanup];
  }

  latest = self->_latest;
  self->_latest = 0;

  sent = self->_sent;
  self->_sent = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_saveAndCleanup
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(_INVocabularyGenerationDocument *)self->_latest vocabularyItems];
  v4 = [v3 count];

  v5 = INSiriLogContextIntents;
  v6 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      latest = self->_latest;
      pathToSentVocabularyDocument = self->_pathToSentVocabularyDocument;
      v22 = 136315650;
      v23 = "[_INSyncTransaction _saveAndCleanup]";
      v24 = 2112;
      v25 = latest;
      v26 = 2112;
      v27 = pathToSentVocabularyDocument;
      _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s Saving latest vocab %@ to %@", &v22, 0x20u);
    }

    v9 = [(_INVocabularyGenerationDocument *)self->_latest writeToFile:self->_pathToSentVocabularyDocument createIntermediateDirectories:0];
    if (v9)
    {
      v10 = v9;
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "[_INSyncTransaction _saveAndCleanup]";
        v24 = 2114;
        v25 = v10;
        v12 = "%s Error writing sent file %{public}@";
LABEL_19:
        _os_log_error_impl(&dword_18E991000, v11, OS_LOG_TYPE_ERROR, v12, &v22, 0x16u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v6)
    {
      syncSlot = self->_syncSlot;
      storeManager = self->_storeManager;
      v15 = v5;
      v16 = [(_INVocabularyStoreManager *)storeManager appBundleID];
      v22 = 136315650;
      v23 = "[_INSyncTransaction _saveAndCleanup]";
      v24 = 2112;
      v25 = syncSlot;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_18E991000, v15, OS_LOG_TYPE_INFO, "%s Removing the sent file, because it is now empty %@ %@", &v22, 0x20u);
    }

    v17 = [(_INVocabularyStoreManager *)self->_storeManager deleteVocabularyStoreItemAt:self->_pathToSentVocabularyDocument];
    if (v17)
    {
      v18 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v22 = 136315394;
        v23 = "[_INSyncTransaction _saveAndCleanup]";
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Error removing empty sent vocab file %{public}@", &v22, 0x16u);
      }
    }
  }

  v19 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    pathToStagedVocabularyDocument = self->_pathToStagedVocabularyDocument;
    v22 = 136315394;
    v23 = "[_INSyncTransaction _saveAndCleanup]";
    v24 = 2112;
    v25 = pathToStagedVocabularyDocument;
    _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s Removing staged vocabulary at %@", &v22, 0x16u);
  }

  v10 = [(_INVocabularyStoreManager *)self->_storeManager deleteVocabularyStoreItemAt:self->_pathToStagedVocabularyDocument];
  if (v10)
  {
    v11 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "[_INSyncTransaction _saveAndCleanup]";
      v24 = 2114;
      v25 = v10;
      v12 = "%s Error cleaning up user vocabulary %{public}@";
      goto LABEL_19;
    }
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_initWithVocabularyManager:(id)a3 syncSlot:(id)a4 deleteExistingVocabulary:(BOOL)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v37.receiver = self;
  v37.super_class = _INSyncTransaction;
  v11 = [(_INSyncTransaction *)&v37 init];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [v10 copy];
  syncSlot = v11->_syncSlot;
  v11->_syncSlot = v12;

  objc_storeStrong(&v11->_storeManager, a3);
  v11->_deleteExistingVocabulary = a5;
  v14 = [(_INVocabularyStoreManager *)v11->_storeManager appBundleID];
  v15 = v10;
  if (INSyncTransactionCheckVocabularyUpdatesEnabled_onceToken != -1)
  {
    dispatch_once(&INSyncTransactionCheckVocabularyUpdatesEnabled_onceToken, &__block_literal_global_43512);
  }

  v16 = [INSyncTransactionCheckVocabularyUpdatesEnabled_vocabularyUpdatesOverrides objectForKey:v14];
  v17 = [v16 containsObject:v15];

  v18 = (v17 & 1) != 0 || [_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:v14 intentSlot:v15]== 3;
  v11->_vocabularyUpdatesEnabled = v18;

  if (!v11->_vocabularyUpdatesEnabled)
  {
    v19 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      storeManager = v11->_storeManager;
      v21 = v19;
      v22 = [(_INVocabularyStoreManager *)storeManager appBundleID];
      *buf = 136315394;
      v39 = "[_INSyncTransaction _initWithVocabularyManager:syncSlot:deleteExistingVocabulary:]";
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_18E991000, v21, OS_LOG_TYPE_INFO, "%s Vocabulary updates disabled for %@", buf, 0x16u);
    }
  }

  if (v11->_deleteExistingVocabulary)
  {
    goto LABEL_17;
  }

  v35 = 0;
  v36 = 0;
  v34 = 0;
  v23 = [(_INVocabularyStoreManager *)v11->_storeManager getPathToLatestVocabulary:&v36 pathDuringReading:&v35 sentVocabulary:&v34 forIntentSlot:v11->_syncSlot];
  v24 = v36;
  v25 = v36;
  v26 = v35;
  v27 = v35;
  v28 = v34;
  v29 = v34;
  if (v23)
  {
    v30 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "[_INSyncTransaction _initWithVocabularyManager:syncSlot:deleteExistingVocabulary:]";
      v40 = 2114;
      v41 = v23;
      _os_log_error_impl(&dword_18E991000, v30, OS_LOG_TYPE_ERROR, "%s Error accessing intent-slot directory %{public}@", buf, 0x16u);
    }
  }

  else
  {
    objc_storeStrong(&v11->_pathToLatestVocabularyDocument, v24);
    objc_storeStrong(&v11->_pathToStagedVocabularyDocument, v26);
    objc_storeStrong(&v11->_pathToSentVocabularyDocument, v28);
  }

  if (v23)
  {
    v31 = 0;
  }

  else
  {
LABEL_17:
    v31 = v11;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

+ (id)beginTransactionForBundleID:(id)a3 bundlePath:(id)a4 syncSlot:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [_INVocabularyStoreManager managerForBundleID:v8 bundlePath:v9];
  if (v11)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 1;
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __70___INSyncTransaction_beginTransactionForBundleID_bundlePath_syncSlot___block_invoke;
    v25 = &unk_1E7280710;
    v29 = &v30;
    v13 = v8;
    v26 = v13;
    v14 = v10;
    v27 = v14;
    v15 = v12;
    v28 = v15;
    [v11 checkIfSyncSlot:v14 isAllowedWithCompletion:&v22];
    dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = *(v31 + 24);
    if ((v16 & 1) == 0)
    {
      v17 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v35 = "+[_INSyncTransaction beginTransactionForBundleID:bundlePath:syncSlot:]";
        v36 = 2114;
        v37 = v14;
        v38 = 2114;
        v39 = v13;
        v40 = 2114;
        v41 = v9;
        _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Sync slot %{public}@ is not valid for %{public}@ at %{public}@", buf, 0x2Au);
      }

      notify_post("INVoocabularyChangedNotification");
    }

    v18 = [a1 alloc];
    v19 = [v18 _initWithVocabularyManager:v11 syncSlot:v14 deleteExistingVocabulary:{v16 ^ 1u, v22, v23, v24, v25}];
    [v19 _beginTransaction];

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end
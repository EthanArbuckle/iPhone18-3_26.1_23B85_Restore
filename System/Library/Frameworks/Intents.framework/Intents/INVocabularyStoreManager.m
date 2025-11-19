@interface INVocabularyStoreManager
@end

@implementation INVocabularyStoreManager

void __81___INVocabularyStoreManager_writeLatestVocabularyItems_forIntentSlot_completion___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = _INVocabularyStringTypeFromSlotName(*(a1 + 32));
  if (v2)
  {
    [*(a1 + 40) _writeLatestVocabularyItems:*(a1 + 48) forIntentSlot:*(a1 + 32) completion:*(a1 + 56)];
  }

  else
  {
    v3 = *(a1 + 56);
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A250];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown sync slot '%@'", *(a1 + 32), @"reason"];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v4 errorWithDomain:v5 code:514 userInfo:v7];
    (*(v3 + 16))(v3, 0, v8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __68___INVocabularyStoreManager_deleteAllUserVocabularyFromAllAppsAsync__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _customVocabularyDirectory];
  v2 = INRemoveItemAtPath(v1);

  v3 = INSiriLogContextIntents;
  if (v2)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[_INVocabularyStoreManager deleteAllUserVocabularyFromAllAppsAsync]_block_invoke";
      v7 = 2114;
      v8 = v2;
      _os_log_error_impl(&dword_18E991000, v3, OS_LOG_TYPE_ERROR, "%s Failed to delete all user vocabulary with error %{public}@", &v5, 0x16u);
    }
  }

  else if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "+[_INVocabularyStoreManager deleteAllUserVocabularyFromAllAppsAsync]_block_invoke";
    _os_log_impl(&dword_18E991000, v3, OS_LOG_TYPE_INFO, "%s Finished deleting all user vocabulary", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v6 = *(a1 + 32);
    v23 = 0;
    v7 = [v6 contentsOfDirectoryAtPath:a2 error:&v23];
    v8 = v23;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if (([*(a1 + 40) containsObject:{v14, v19}] & 1) == 0)
          {
            v5[2](v5, v14);
            if (*(*(*(a1 + 48) + 8) + 24))
            {

              goto LABEL_19;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if (!v8)
    {
      goto LABEL_19;
    }

    v15 = [v8 domain];
    if ([v15 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v16 = [v8 code];

      if (v16 == 260)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    else
    {
    }

    v17 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "+[_INVocabularyStoreManager _iterateVocabularyWithSummary:optionalBlock:]_block_invoke";
      v26 = 2114;
      v27 = v8;
      _os_log_error_impl(&dword_18E991000, v17, OS_LOG_TYPE_ERROR, "%s Error listing user-vocabulary directories %{public}@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
}

void __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stringByAppendingPathComponent:v3];
  v5 = *(a1 + 64);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_2;
  v9[3] = &unk_1E727DEC8;
  v10 = v4;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v13 = v3;
  v17 = *(a1 + 80);
  v14 = *(a1 + 56);
  v6 = *(v5 + 16);
  v7 = v3;
  v8 = v4;
  v6(v5, v8, v9);
}

void __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  if (*(a1 + 40))
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 72);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_3;
  v14[3] = &unk_1E727DEA0;
  v15 = *(a1 + 48);
  v6 = v4;
  v16 = v6;
  v7 = *(a1 + 80);
  v20 = *(a1 + 96);
  v8 = v3;
  v17 = v8;
  v9 = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = *(a1 + 88);
  v13 = v10;
  v11 = *(a1 + 64);
  *&v12 = v9;
  *(&v12 + 1) = v11;
  v19 = v13;
  v18 = v12;
  (*(v5 + 16))(v5, v8, v14);
  if ([v6 count])
  {
    [*(a1 + 40) setValue:v6 forKey:*(a1 + 56)];
  }
}

void __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) containsObject:v3])
  {
    v9 = [*(a1 + 48) stringByAppendingPathComponent:v3];
    v10 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[_INVocabularyStoreManager _iterateVocabularyWithSummary:optionalBlock:]_block_invoke";
      v19 = 2114;
      v20 = v9;
      _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s Removing invalid user-vocabulary directory %{public}@", buf, 0x16u);
    }

    v11 = *(a1 + 64);
    v15 = 0;
    v12 = [v11 removeItemAtPath:v9 error:&v15];
    v7 = v15;
    if ((v12 & 1) == 0)
    {
      v13 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "+[_INVocabularyStoreManager _iterateVocabularyWithSummary:optionalBlock:]_block_invoke";
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&dword_18E991000, v13, OS_LOG_TYPE_ERROR, "%s Error removing invalid user-vocabulary directory %{public}@", buf, 0x16u);
      }
    }

    goto LABEL_10;
  }

  [*(a1 + 40) addObject:v3];
  if (*(a1 + 72))
  {
    v4 = _INVocabularyStringTypeFromSlotName(v3);
    [v4 unsignedIntegerValue];

    v5 = *(a1 + 88);
    v6 = [*(a1 + 48) stringByAppendingPathComponent:v3];
    v7 = [v5 _latestVocabularyStringsAt:v6];

    v16 = 0;
    v8 = *(a1 + 56);
    (*(*(a1 + 72) + 16))();
LABEL_10:
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __46___INVocabularyStoreManager__globalClassQueue__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.global", *(a1 + 32)];
  v1 = v4;
  v2 = dispatch_queue_create([v4 UTF8String], 0);
  v3 = _globalClassQueue_stGlobalClassQueue;
  _globalClassQueue_stGlobalClassQueue = v2;
}

@end
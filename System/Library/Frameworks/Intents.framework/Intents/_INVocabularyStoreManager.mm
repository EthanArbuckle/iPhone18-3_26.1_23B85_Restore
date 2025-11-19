@interface _INVocabularyStoreManager
+ (id)_customVocabularyDirectory;
+ (id)_globalClassQueue;
+ (id)_hashOfAppPath:(id)a3;
+ (id)_latestVocabularyStringsAt:(id)a3;
+ (id)appDatastoreDirectoryForAppBundleID:(id)a3 bundlePath:(id)a4;
+ (id)managerForBundleID:(id)a3 bundlePath:(id)a4;
+ (id)savedCustomVocabularyOverviewDictionary;
+ (void)_iterateVocabularyWithSummary:(id)a3 optionalBlock:(id)a4;
+ (void)deleteAllUserVocabularyFromAllAppsAsync;
+ (void)enumerateVocabularyUsingBlock:(id)a3;
- (_INVocabularyStoreManager)initWithBaseDirectory:(id)a3 appBundleID:(id)a4 appBundlePath:(id)a5;
- (id)_baseDirectoryPathForIntentSlot:(id)a3;
- (id)_documentWithItems:(id)a3 forIntentSlot:(id)a4;
- (id)_validator;
- (id)deleteEverything;
- (id)deleteIntentSlot:(id)a3;
- (id)deleteVocabularyStoreItemAt:(id)a3;
- (id)getPathToLatestVocabulary:(id *)a3 pathDuringReading:(id *)a4 sentVocabulary:(id *)a5 forIntentSlot:(id)a6;
- (void)_writeLatestVocabularyItems:(id)a3 forIntentSlot:(id)a4 completion:(id)a5;
- (void)checkIfSyncSlot:(id)a3 isAllowedWithCompletion:(id)a4;
- (void)writeLatestVocabularyItems:(id)a3 forIntentSlot:(id)a4 completion:(id)a5;
@end

@implementation _INVocabularyStoreManager

- (void)writeLatestVocabularyItems:(id)a3 forIntentSlot:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___INVocabularyStoreManager_writeLatestVocabularyItems_forIntentSlot_completion___block_invoke;
  v15[3] = &unk_1E7285680;
  v16 = v9;
  v17 = self;
  v18 = v8;
  v19 = v10;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)checkIfSyncSlot:(id)a3 isAllowedWithCompletion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _INVocabularyStringTypeFromSlotName(v6);
    if (v8)
    {
      v9 = [(_INVocabularyStoreManager *)self _validator];
      appBundleID = self->_appBundleID;
      v11 = [v8 integerValue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69___INVocabularyStoreManager_checkIfSyncSlot_isAllowedWithCompletion___block_invoke;
      v14[3] = &unk_1E727FA90;
      v15 = v7;
      [v9 determineIfBundleID:appBundleID canProvideVocabularyOfType:v11 completion:v14];
    }

    else
    {
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[_INVocabularyStoreManager checkIfSyncSlot:isAllowedWithCompletion:]";
        v18 = 2114;
        v19 = v6;
        _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s '%{public}@' is not a valid slot", buf, 0x16u);
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_writeLatestVocabularyItems:(id)a3 forIntentSlot:(id)a4 completion:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_INVocabularyStoreManager *)self _baseDirectoryPathForIntentSlot:v9];
  if ([v8 count] || (buf[0] = 0, objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fileExistsAtPath:isDirectory:", v11, buf), v12, (buf[0] & 1) != 0))
  {
    v13 = [(_INVocabularyStoreManager *)self _documentWithItems:v8 forIntentSlot:v9];
    v14 = [v11 stringByAppendingPathComponent:@"LatestVocabulary.plist"];
    v15 = [v13 writeToFile:v14 createIntermediateDirectories:1];
    if (v15)
    {
      v16 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[_INVocabularyStoreManager _writeLatestVocabularyItems:forIntentSlot:completion:]";
        v25 = 2114;
        v26 = v15;
        _os_log_error_impl(&dword_18E991000, v16, OS_LOG_TYPE_ERROR, "%s error writing sync state %{public}@", buf, 0x16u);
      }

      v17 = v15;
      v18 = 0;
    }

    else
    {
      v22 = [v11 stringByAppendingPathComponent:@"SentVocabulary.plist"];
      v19 = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:v22];
      v20 = [v13 diffFromPreviousDocument:v19];
      v18 = [v20 hasChanges];
    }

    v10[2](v10, v18, v15);
  }

  else
  {
    v10[2](v10, 0, 0);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)deleteEverything
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    appBundleID = self->_appBundleID;
    v11 = 136315394;
    v12 = "[_INVocabularyStoreManager deleteEverything]";
    v13 = 2112;
    v14 = appBundleID;
    _os_log_impl(&dword_18E991000, v3, OS_LOG_TYPE_INFO, "%s deleting user-vocabulary for %@", &v11, 0x16u);
  }

  v5 = [(_INVocabularyStoreManager *)self baseDirectoryPath];
  v6 = [(_INVocabularyStoreManager *)self deleteVocabularyStoreItemAt:v5];

  notify_post("INVoocabularyChangedNotification");
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v10 = self->_appBundleID;
      v11 = 136315650;
      v12 = "[_INVocabularyStoreManager deleteEverything]";
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Failed to delete user-vocabulary for %{public}@ with error %{public}@", &v11, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)getPathToLatestVocabulary:(id *)a3 pathDuringReading:(id *)a4 sentVocabulary:(id *)a5 forIntentSlot:(id)a6
{
  v9 = [(_INVocabularyStoreManager *)self _baseDirectoryPathForIntentSlot:a6];
  v10 = v9;
  if (a3)
  {
    *a3 = [v9 stringByAppendingPathComponent:@"LatestVocabulary.plist"];
  }

  if (a4)
  {
    *a4 = [v10 stringByAppendingPathComponent:@"StagedVocabulary.plist"];
  }

  if (a5)
  {
    *a5 = [v10 stringByAppendingPathComponent:@"SentVocabulary.plist"];
  }

  return 0;
}

- (id)deleteIntentSlot:(id)a3
{
  v4 = a3;
  v5 = [(_INVocabularyStoreManager *)self baseDirectoryPath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [(_INVocabularyStoreManager *)self deleteVocabularyStoreItemAt:v6];

  return v7;
}

- (id)deleteVocabularyStoreItemAt:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() _customVocabularyDirectory];
  if ([v3 hasPrefix:v4])
  {
    v5 = INRemoveItemAtPath(v3);
    if (!v5)
    {
      v6 = [v3 stringByDeletingLastPathComponent];
      _CleanUpDirectoryAsNeeded(v6, v4);

      v5 = 0;
    }
  }

  else
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[_INVocabularyStoreManager deleteVocabularyStoreItemAt:]";
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Attempt to delete a files outside of the vocabulary-directory we manage. Offending file: %@", buf, 0x16u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A368];
    v13 = v3;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v5 = [v8 errorWithDomain:@"IntentsErrorDomain" code:4000 userInfo:v9];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_validator
{
  validator = self->_validator;
  if (!validator)
  {
    v4 = objc_alloc_init(_INVocabularyValidator);
    v5 = self->_validator;
    self->_validator = v4;

    validator = self->_validator;
  }

  return validator;
}

- (_INVocabularyStoreManager)initWithBaseDirectory:(id)a3 appBundleID:(id)a4 appBundlePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = _INVocabularyStoreManager;
  v11 = [(_INVocabularyStoreManager *)&v24 init];
  if (v11)
  {
    v12 = [v9 copy];
    appBundleID = v11->_appBundleID;
    v11->_appBundleID = v12;

    v14 = [v10 copy];
    appBundlePath = v11->_appBundlePath;
    v11->_appBundlePath = v14;

    v16 = [v8 copy];
    baseDirectoryPath = v11->_baseDirectoryPath;
    v11->_baseDirectoryPath = v16;

    v18 = MEMORY[0x1E696AEC0];
    v19 = [objc_opt_class() description];
    v20 = [v18 stringWithFormat:@"%@.%@", v19, v11->_appBundleID];

    v21 = dispatch_queue_create([v20 UTF8String], 0);
    queue = v11->_queue;
    v11->_queue = v21;
  }

  return v11;
}

- (id)_baseDirectoryPathForIntentSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"VoiceCommandNameType"])
  {
    [objc_opt_class() appDatastoreDirectoryForAppBundleID:@"com.apple.siriVoiceShortcuts" bundlePath:0];
  }

  else
  {
    [(_INVocabularyStoreManager *)self baseDirectoryPath];
  }
  v5 = ;
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (id)_documentWithItems:(id)a3 forIntentSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(_INVocabularyGenerationDocument);
  if ([v6 isEqualToString:@"VoiceCommandNameType"])
  {
    [(_INVocabularyGenerationDocument *)v8 setAppBundleID:@"com.apple.siriVoiceShortcuts"];
  }

  else
  {
    v9 = [(_INVocabularyStoreManager *)self appBundleID];
    [(_INVocabularyGenerationDocument *)v8 setAppBundleID:v9];
  }

  [(_INVocabularyGenerationDocument *)v8 setVocabularyItems:v7];

  [(_INVocabularyGenerationDocument *)v8 setIntentSlot:v6];

  return v8;
}

+ (void)deleteAllUserVocabularyFromAllAppsAsync
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "+[_INVocabularyStoreManager deleteAllUserVocabularyFromAllAppsAsync]";
    _os_log_impl(&dword_18E991000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v4 = [a1 _globalClassQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___INVocabularyStoreManager_deleteAllUserVocabularyFromAllAppsAsync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v4, block);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_iterateVocabularyWithSummary:(id)a3 optionalBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _customVocabularyDirectory];
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F02DB958];
  v11 = MEMORY[0x1E695DFD8];
  v12 = +[_INVocabulary supportedVocabularyStringTypes];
  v13 = [v11 setWithArray:v12];

  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke;
  v32[3] = &unk_1E727DE78;
  v35 = v36;
  v14 = v9;
  v33 = v14;
  v15 = v10;
  v34 = v15;
  v16 = MEMORY[0x193AD7780](v32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_50;
  v23[3] = &unk_1E727DEF0;
  v17 = v8;
  v24 = v17;
  v18 = v16;
  v28 = v18;
  v19 = v6;
  v25 = v19;
  v20 = v13;
  v26 = v20;
  v21 = v7;
  v30 = v36;
  v31 = a1;
  v29 = v21;
  v22 = v14;
  v27 = v22;
  (v16)[2](v18, v17, v23);

  _Block_object_dispose(v36, 8);
}

+ (id)savedCustomVocabularyOverviewDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [a1 _iterateVocabularyWithSummary:v3 optionalBlock:0];

  return v3;
}

+ (void)enumerateVocabularyUsingBlock:(id)a3
{
  if (a3)
  {
    [a1 _iterateVocabularyWithSummary:0 optionalBlock:a3];
  }
}

+ (id)_latestVocabularyStringsAt:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v29[0] = @"LatestVocabulary.plist";
  v29[1] = @"StagedVocabulary.plist";
  v29[2] = @"SentVocabulary.plist";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [_INVocabularyGenerationDocument alloc];
        v10 = [v3 stringByAppendingPathComponent:v8];
        v11 = [(_INVocabularyGenerationDocument *)v9 initWithContentsOfFile:v10];

        if (v11)
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [(_INVocabularyGenerationDocument *)v11 vocabularyItems];
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [*(*(&v20 + 1) + 8 * j) string];
                if (v17)
                {
                  [v5 addObject:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v14);
          }

          goto LABEL_20;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)managerForBundleID:(id)a3 bundlePath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "+[_INVocabularyStoreManager managerForBundleID:bundlePath:]";
      v16 = 2114;
      v17 = v6;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s radar://24597826 ignoring that %{public}@ is installed at '%{public}@'. All installed instances will share the same vocabulary.", &v14, 0x20u);
    }
  }

  v10 = [_INVocabularyStoreManager appDatastoreDirectoryForAppBundleID:v6 bundlePath:0];
  v11 = [[a1 alloc] initWithBaseDirectory:v10 appBundleID:v6 appBundlePath:0];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)appDatastoreDirectoryForAppBundleID:(id)a3 bundlePath:(id)a4
{
  v6 = a3;
  v7 = [a1 _hashOfAppPath:a4];
  v8 = [a1 _customVocabularyDirectory];
  v9 = [v8 stringByAppendingPathComponent:v6];

  v10 = [v9 stringByAppendingPathComponent:v7];

  return v10;
}

+ (id)_hashOfAppPath:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  *md = 0;
  v10 = 0;
  v11 = 0;
  if ([v3 length])
  {
    v4 = [v3 dataUsingEncoding:4];
    CC_SHA1([v4 bytes], objc_msgSend(v4, "length"), md);
  }

  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v5 appendFormat:@"%02x", md[i]];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_customVocabularyDirectory
{
  v2 = INUserSupportDirectoryPath();
  v3 = [v2 stringByAppendingPathComponent:@"CustomVocabulary"];

  return v3;
}

+ (id)_globalClassQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___INVocabularyStoreManager__globalClassQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_globalClassQueue_onceToken != -1)
  {
    dispatch_once(&_globalClassQueue_onceToken, block);
  }

  v2 = _globalClassQueue_stGlobalClassQueue;

  return v2;
}

@end
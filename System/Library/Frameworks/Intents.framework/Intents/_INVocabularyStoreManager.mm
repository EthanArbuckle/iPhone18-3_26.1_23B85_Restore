@interface _INVocabularyStoreManager
+ (id)_customVocabularyDirectory;
+ (id)_globalClassQueue;
+ (id)_hashOfAppPath:(id)path;
+ (id)_latestVocabularyStringsAt:(id)at;
+ (id)appDatastoreDirectoryForAppBundleID:(id)d bundlePath:(id)path;
+ (id)managerForBundleID:(id)d bundlePath:(id)path;
+ (id)savedCustomVocabularyOverviewDictionary;
+ (void)_iterateVocabularyWithSummary:(id)summary optionalBlock:(id)block;
+ (void)deleteAllUserVocabularyFromAllAppsAsync;
+ (void)enumerateVocabularyUsingBlock:(id)block;
- (_INVocabularyStoreManager)initWithBaseDirectory:(id)directory appBundleID:(id)d appBundlePath:(id)path;
- (id)_baseDirectoryPathForIntentSlot:(id)slot;
- (id)_documentWithItems:(id)items forIntentSlot:(id)slot;
- (id)_validator;
- (id)deleteEverything;
- (id)deleteIntentSlot:(id)slot;
- (id)deleteVocabularyStoreItemAt:(id)at;
- (id)getPathToLatestVocabulary:(id *)vocabulary pathDuringReading:(id *)reading sentVocabulary:(id *)sentVocabulary forIntentSlot:(id)slot;
- (void)_writeLatestVocabularyItems:(id)items forIntentSlot:(id)slot completion:(id)completion;
- (void)checkIfSyncSlot:(id)slot isAllowedWithCompletion:(id)completion;
- (void)writeLatestVocabularyItems:(id)items forIntentSlot:(id)slot completion:(id)completion;
@end

@implementation _INVocabularyStoreManager

- (void)writeLatestVocabularyItems:(id)items forIntentSlot:(id)slot completion:(id)completion
{
  itemsCopy = items;
  slotCopy = slot;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81___INVocabularyStoreManager_writeLatestVocabularyItems_forIntentSlot_completion___block_invoke;
  v15[3] = &unk_1E7285680;
  v16 = slotCopy;
  selfCopy = self;
  v18 = itemsCopy;
  v19 = completionCopy;
  v12 = itemsCopy;
  v13 = completionCopy;
  v14 = slotCopy;
  dispatch_async(queue, v15);
}

- (void)checkIfSyncSlot:(id)slot isAllowedWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  slotCopy = slot;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = _INVocabularyStringTypeFromSlotName(slotCopy);
    if (v8)
    {
      _validator = [(_INVocabularyStoreManager *)self _validator];
      appBundleID = self->_appBundleID;
      integerValue = [v8 integerValue];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __69___INVocabularyStoreManager_checkIfSyncSlot_isAllowedWithCompletion___block_invoke;
      v14[3] = &unk_1E727FA90;
      v15 = completionCopy;
      [_validator determineIfBundleID:appBundleID canProvideVocabularyOfType:integerValue completion:v14];
    }

    else
    {
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "[_INVocabularyStoreManager checkIfSyncSlot:isAllowedWithCompletion:]";
        v18 = 2114;
        v19 = slotCopy;
        _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s '%{public}@' is not a valid slot", buf, 0x16u);
      }

      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_writeLatestVocabularyItems:(id)items forIntentSlot:(id)slot completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  slotCopy = slot;
  completionCopy = completion;
  v11 = [(_INVocabularyStoreManager *)self _baseDirectoryPathForIntentSlot:slotCopy];
  if ([itemsCopy count] || (buf[0] = 0, objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "fileExistsAtPath:isDirectory:", v11, buf), v12, (buf[0] & 1) != 0))
  {
    v13 = [(_INVocabularyStoreManager *)self _documentWithItems:itemsCopy forIntentSlot:slotCopy];
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
      hasChanges = 0;
    }

    else
    {
      v22 = [v11 stringByAppendingPathComponent:@"SentVocabulary.plist"];
      v19 = [[_INVocabularyGenerationDocument alloc] initWithContentsOfFile:v22];
      v20 = [v13 diffFromPreviousDocument:v19];
      hasChanges = [v20 hasChanges];
    }

    completionCopy[2](completionCopy, hasChanges, v15);
  }

  else
  {
    completionCopy[2](completionCopy, 0, 0);
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

  baseDirectoryPath = [(_INVocabularyStoreManager *)self baseDirectoryPath];
  v6 = [(_INVocabularyStoreManager *)self deleteVocabularyStoreItemAt:baseDirectoryPath];

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

- (id)getPathToLatestVocabulary:(id *)vocabulary pathDuringReading:(id *)reading sentVocabulary:(id *)sentVocabulary forIntentSlot:(id)slot
{
  v9 = [(_INVocabularyStoreManager *)self _baseDirectoryPathForIntentSlot:slot];
  v10 = v9;
  if (vocabulary)
  {
    *vocabulary = [v9 stringByAppendingPathComponent:@"LatestVocabulary.plist"];
  }

  if (reading)
  {
    *reading = [v10 stringByAppendingPathComponent:@"StagedVocabulary.plist"];
  }

  if (sentVocabulary)
  {
    *sentVocabulary = [v10 stringByAppendingPathComponent:@"SentVocabulary.plist"];
  }

  return 0;
}

- (id)deleteIntentSlot:(id)slot
{
  slotCopy = slot;
  baseDirectoryPath = [(_INVocabularyStoreManager *)self baseDirectoryPath];
  v6 = [baseDirectoryPath stringByAppendingPathComponent:slotCopy];

  v7 = [(_INVocabularyStoreManager *)self deleteVocabularyStoreItemAt:v6];

  return v7;
}

- (id)deleteVocabularyStoreItemAt:(id)at
{
  v18 = *MEMORY[0x1E69E9840];
  atCopy = at;
  _customVocabularyDirectory = [objc_opt_class() _customVocabularyDirectory];
  if ([atCopy hasPrefix:_customVocabularyDirectory])
  {
    v5 = INRemoveItemAtPath(atCopy);
    if (!v5)
    {
      stringByDeletingLastPathComponent = [atCopy stringByDeletingLastPathComponent];
      _CleanUpDirectoryAsNeeded(stringByDeletingLastPathComponent, _customVocabularyDirectory);

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
      v17 = atCopy;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Attempt to delete a files outside of the vocabulary-directory we manage. Offending file: %@", buf, 0x16u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A368];
    v13 = atCopy;
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

- (_INVocabularyStoreManager)initWithBaseDirectory:(id)directory appBundleID:(id)d appBundlePath:(id)path
{
  directoryCopy = directory;
  dCopy = d;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = _INVocabularyStoreManager;
  v11 = [(_INVocabularyStoreManager *)&v24 init];
  if (v11)
  {
    v12 = [dCopy copy];
    appBundleID = v11->_appBundleID;
    v11->_appBundleID = v12;

    v14 = [pathCopy copy];
    appBundlePath = v11->_appBundlePath;
    v11->_appBundlePath = v14;

    v16 = [directoryCopy copy];
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

- (id)_baseDirectoryPathForIntentSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"VoiceCommandNameType"])
  {
    [objc_opt_class() appDatastoreDirectoryForAppBundleID:@"com.apple.siriVoiceShortcuts" bundlePath:0];
  }

  else
  {
    [(_INVocabularyStoreManager *)self baseDirectoryPath];
  }
  v5 = ;
  v6 = [v5 stringByAppendingPathComponent:slotCopy];

  return v6;
}

- (id)_documentWithItems:(id)items forIntentSlot:(id)slot
{
  slotCopy = slot;
  itemsCopy = items;
  v8 = objc_alloc_init(_INVocabularyGenerationDocument);
  if ([slotCopy isEqualToString:@"VoiceCommandNameType"])
  {
    [(_INVocabularyGenerationDocument *)v8 setAppBundleID:@"com.apple.siriVoiceShortcuts"];
  }

  else
  {
    appBundleID = [(_INVocabularyStoreManager *)self appBundleID];
    [(_INVocabularyGenerationDocument *)v8 setAppBundleID:appBundleID];
  }

  [(_INVocabularyGenerationDocument *)v8 setVocabularyItems:itemsCopy];

  [(_INVocabularyGenerationDocument *)v8 setIntentSlot:slotCopy];

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

  _globalClassQueue = [self _globalClassQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___INVocabularyStoreManager_deleteAllUserVocabularyFromAllAppsAsync__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(_globalClassQueue, block);

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_iterateVocabularyWithSummary:(id)summary optionalBlock:(id)block
{
  summaryCopy = summary;
  blockCopy = block;
  _customVocabularyDirectory = [self _customVocabularyDirectory];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
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
  v14 = defaultManager;
  v33 = v14;
  v15 = v10;
  v34 = v15;
  v16 = MEMORY[0x193AD7780](v32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __73___INVocabularyStoreManager__iterateVocabularyWithSummary_optionalBlock___block_invoke_50;
  v23[3] = &unk_1E727DEF0;
  v17 = _customVocabularyDirectory;
  v24 = v17;
  v18 = v16;
  v28 = v18;
  v19 = summaryCopy;
  v25 = v19;
  v20 = v13;
  v26 = v20;
  v21 = blockCopy;
  v30 = v36;
  selfCopy = self;
  v29 = v21;
  v22 = v14;
  v27 = v22;
  (v16)[2](v18, v17, v23);

  _Block_object_dispose(v36, 8);
}

+ (id)savedCustomVocabularyOverviewDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [self _iterateVocabularyWithSummary:dictionary optionalBlock:0];

  return dictionary;
}

+ (void)enumerateVocabularyUsingBlock:(id)block
{
  if (block)
  {
    [self _iterateVocabularyWithSummary:0 optionalBlock:block];
  }
}

+ (id)_latestVocabularyStringsAt:(id)at
{
  v31 = *MEMORY[0x1E69E9840];
  atCopy = at;
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
        v10 = [atCopy stringByAppendingPathComponent:v8];
        v11 = [(_INVocabularyGenerationDocument *)v9 initWithContentsOfFile:v10];

        if (v11)
        {
          v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          vocabularyItems = [(_INVocabularyGenerationDocument *)v11 vocabularyItems];
          v13 = [vocabularyItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                  objc_enumerationMutation(vocabularyItems);
                }

                string = [*(*(&v20 + 1) + 8 * j) string];
                if (string)
                {
                  [v5 addObject:string];
                }
              }

              v14 = [vocabularyItems countByEnumeratingWithState:&v20 objects:v28 count:16];
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

+ (id)managerForBundleID:(id)d bundlePath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  pathCopy = path;
  if (pathCopy)
  {
    v8 = pathCopy;
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315650;
      v15 = "+[_INVocabularyStoreManager managerForBundleID:bundlePath:]";
      v16 = 2114;
      v17 = dCopy;
      v18 = 2114;
      v19 = v8;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s radar://24597826 ignoring that %{public}@ is installed at '%{public}@'. All installed instances will share the same vocabulary.", &v14, 0x20u);
    }
  }

  v10 = [_INVocabularyStoreManager appDatastoreDirectoryForAppBundleID:dCopy bundlePath:0];
  v11 = [[self alloc] initWithBaseDirectory:v10 appBundleID:dCopy appBundlePath:0];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)appDatastoreDirectoryForAppBundleID:(id)d bundlePath:(id)path
{
  dCopy = d;
  v7 = [self _hashOfAppPath:path];
  _customVocabularyDirectory = [self _customVocabularyDirectory];
  v9 = [_customVocabularyDirectory stringByAppendingPathComponent:dCopy];

  v10 = [v9 stringByAppendingPathComponent:v7];

  return v10;
}

+ (id)_hashOfAppPath:(id)path
{
  v12 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  *md = 0;
  v10 = 0;
  v11 = 0;
  if ([pathCopy length])
  {
    v4 = [pathCopy dataUsingEncoding:4];
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
  block[4] = self;
  if (_globalClassQueue_onceToken != -1)
  {
    dispatch_once(&_globalClassQueue_onceToken, block);
  }

  v2 = _globalClassQueue_stGlobalClassQueue;

  return v2;
}

@end
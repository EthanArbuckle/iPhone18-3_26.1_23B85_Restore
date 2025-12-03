@interface ATXExecutableReferenceManager
- (ATXExecutableReferenceManager)init;
- (ATXExecutableReferenceManager)initWithCacheDirectory:(id)directory minDurationForTrackedReferencesToStayAround:(double)around;
- (BOOL)_writeData:(id)data;
- (BOOL)canExecutableClearOnEngagement:(id)engagement;
- (BOOL)isExecutableHidden:(id)hidden;
- (id)_executablePairsForSuggestions:(id)suggestions clientModelId:(id)id;
- (id)_loadReferences;
- (id)_pairsForClientModelId:(id)id map:(id)map;
- (id)_readData;
- (id)clientModelIdsForExecutable:(id)executable;
- (id)description;
- (id)jsonDict;
- (id)referencesForClientModelId:(id)id;
- (unint64_t)referenceCountForExecutable:(id)executable;
- (void)_addExecutablePairs:(id)pairs toMap:(id)map;
- (void)_purgeReferencesIfPossibleInMap:(id)map forceWrite:(BOOL)write;
- (void)_readData;
- (void)_writeReferences:(id)references;
- (void)addReferencesForSuggestions:(id)suggestions clientModelId:(id)id;
- (void)markReferenceAsHiddenForExecutable:(id)executable clientModelId:(id)id untilDate:(id)date;
- (void)markReferencesAsPurgableFromClientModelIdIfPossible:(id)possible;
- (void)performBatchUpdateOfReferencesWithBlock:(id)block;
- (void)purgeReferencesForSuggestions:(id)suggestions clientModelId:(id)id;
- (void)purgeReferencesIfPossible;
- (void)recordExecutable:(id)executable clientModelId:(id)id shouldClearEngagement:(BOOL)engagement;
- (void)updateDateOfReferenceForExecutable:(id)executable clientModelId:(id)id;
- (void)updateReferencesForProactiveSuggestions:(id)suggestions clientModelId:(id)id;
@end

@implementation ATXExecutableReferenceManager

- (id)_loadReferences
{
  v70 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = v3;
  cachedExecutableToReferenceMapForBatchUpdates = self->__cachedExecutableToReferenceMapForBatchUpdates;
  if (cachedExecutableToReferenceMapForBatchUpdates)
  {
    strongToStrongObjectsMapTable = cachedExecutableToReferenceMapForBatchUpdates;
    goto LABEL_45;
  }

  v43 = v3;
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ATXExecutableReferenceManager *)v6 _loadReferences];
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__22;
  v66 = __Block_byref_object_dispose__22;
  v67 = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __48__ATXExecutableReferenceManager__loadReferences__block_invoke;
  v61[3] = &unk_1E80C29A0;
  v61[4] = self;
  v61[5] = &v62;
  [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:@"ATXExecutableReferenceManager" block:v61];
  if ([v63[5] length])
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v7 = objc_autoreleasePoolPush();
    v8 = [ATXPBExecutableReferenceCache alloc];
    v9 = [(ATXPBExecutableReferenceCache *)v8 initWithData:v63[5]];
    objc_autoreleasePoolPop(v7);
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    keys = [(ATXPBExecutableReferenceCache *)v9 keys];
    v11 = [keys countByEnumeratingWithState:&v57 objects:v69 count:16];
    v42 = v9;
    if (!v11)
    {
      goto LABEL_42;
    }

    v45 = keys;
    v46 = *v58;
    while (1)
    {
      v12 = 0;
      v47 = v11;
      do
      {
        if (*v58 != v46)
        {
          objc_enumerationMutation(keys);
        }

        v49 = v12;
        v13 = *(*(&v57 + 1) + 8 * v12);
        context = objc_autoreleasePoolPush();
        executableType = [(ATXPBExecutableReferenceKey *)v13 executableType];
        if (executableType <= 2)
        {
          if (executableType == 1)
          {
            v25 = objc_autoreleasePoolPush();
            v26 = [ATXExecutableIdentifier alloc];
            executableString = [(ATXPBExecutableReferenceKey *)v13 executableString];
            v50 = [(ATXExecutableIdentifier *)v26 initWithString:executableString];

            objc_autoreleasePoolPop(v25);
            goto LABEL_31;
          }

          if (executableType != 2)
          {
            goto LABEL_40;
          }

          v15 = objc_autoreleasePoolPush();
          v19 = [ATXAction alloc];
          executableAction = [(ATXPBExecutableReferenceKey *)v13 executableAction];
          v18 = [(ATXAction *)v19 initWithProto:executableAction];

          if (v18)
          {
            v50 = [[ATXExecutableIdentifier alloc] initWithAction:v18];
          }

          else
          {
            v50 = 0;
          }
        }

        else
        {
          switch(executableType)
          {
            case 3:
              v15 = objc_autoreleasePoolPush();
              v21 = objc_alloc(MEMORY[0x1E69A45D0]);
              executableHeroApp = [(ATXPBExecutableReferenceKey *)v13 executableHeroApp];
              v18 = [v21 initWithProto:executableHeroApp];

              if (v18)
              {
                v50 = [[ATXExecutableIdentifier alloc] initWithHeroAppPrediction:v18];
              }

              else
              {
                v50 = 0;
              }

              break;
            case 4:
              v15 = objc_autoreleasePoolPush();
              v23 = objc_alloc(MEMORY[0x1E69C5B88]);
              executableInfoSuggestion = [(ATXPBExecutableReferenceKey *)v13 executableInfoSuggestion];
              v18 = [v23 initWithProto:executableInfoSuggestion];

              if (v18)
              {
                v50 = [[ATXExecutableIdentifier alloc] initWithInfoSuggestion:v18];
              }

              else
              {
                v50 = 0;
              }

              break;
            case 5:
              v15 = objc_autoreleasePoolPush();
              v16 = [ATXLinkActionContainer alloc];
              executableLinkAction = [(ATXPBExecutableReferenceKey *)v13 executableLinkAction];
              v18 = [(ATXLinkActionContainer *)v16 initWithProto:executableLinkAction];

              if (v18)
              {
                v50 = [[ATXExecutableIdentifier alloc] initWithLinkAction:v18];
              }

              else
              {
                v50 = 0;
              }

              break;
            default:
              goto LABEL_40;
          }
        }

        objc_autoreleasePoolPop(v15);
LABEL_31:
        if (v50)
        {
          v28 = objc_opt_new();
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          references = [(ATXPBExecutableReferenceKey *)v13 references];
          v30 = [references countByEnumeratingWithState:&v53 objects:v68 count:16];
          v52 = v28;
          if (v30)
          {
            v31 = *v54;
            obj = references;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v54 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v53 + 1) + 8 * i);
                v34 = objc_autoreleasePoolPush();
                v35 = [ATXExecutableReference alloc];
                clientModelId = [(ATXPBExecutableReferenceEntry *)v33 clientModelId];
                v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[ATXPBExecutableReferenceEntry date](v33)];
                shouldClearOnEngagement = [(ATXPBExecutableReferenceEntry *)v33 shouldClearOnEngagement];
                shouldPurge = [(ATXPBExecutableReferenceEntry *)v33 shouldPurge];
                v40 = [(ATXExecutableReference *)v35 initWithClientModelId:clientModelId date:v37 shouldClearOnEngagement:shouldClearOnEngagement shouldPurge:shouldPurge suggestionIsHidden:[(ATXPBExecutableReferenceEntry *)v33 suggestionIsHidden]];

                [v52 addObject:v40];
                objc_autoreleasePoolPop(v34);
              }

              references = obj;
              v30 = [obj countByEnumeratingWithState:&v53 objects:v68 count:16];
            }

            while (v30);
          }

          [(NSMapTable *)strongToStrongObjectsMapTable setObject:v52 forKey:v50];
        }

LABEL_40:
        objc_autoreleasePoolPop(context);
        keys = v45;
        v12 = v49 + 1;
      }

      while (v49 + 1 != v47);
      v11 = [v45 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (!v11)
      {
LABEL_42:

        goto LABEL_44;
      }
    }
  }

  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
LABEL_44:
  _Block_object_dispose(&v62, 8);

  v4 = v43;
LABEL_45:
  objc_autoreleasePoolPop(v4);

  return strongToStrongObjectsMapTable;
}

uint64_t __48__ATXExecutableReferenceManager__loadReferences__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _readData];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_readData
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = open([(NSString *)self->_path fileSystemRepresentation], 0);
  if (v2 == -1)
  {
    v6 = *__error();
    v7 = __atxlog_handle_default();
    v8 = v7;
    if (v6 == 2)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "No recently engaged cache references file found.", buf, 2u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXExecutableReferenceManager _readData];
    }

    v5 = 0;
  }

  else
  {
    v3 = v2;
    ATXCacheFileRead();
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }

    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = @"ATXExecutableReferenceCache.pb";
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Successfully read data from cache file: %@", buf, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

- (void)purgeReferencesIfPossible
{
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  [(ATXExecutableReferenceManager *)self _purgeReferencesIfPossibleInMap:_loadReferences forceWrite:0];
}

- (ATXExecutableReferenceManager)init
{
  appPredictionCacheDirectory = [MEMORY[0x1E698B010] appPredictionCacheDirectory];
  v4 = [(ATXExecutableReferenceManager *)self initWithCacheDirectory:appPredictionCacheDirectory minDurationForTrackedReferencesToStayAround:900.0];

  return v4;
}

- (ATXExecutableReferenceManager)initWithCacheDirectory:(id)directory minDurationForTrackedReferencesToStayAround:(double)around
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = ATXExecutableReferenceManager;
  v7 = [(ATXExecutableReferenceManager *)&v11 init];
  if (v7)
  {
    v8 = [directoryCopy stringByAppendingPathComponent:@"ATXExecutableReferenceCache.pb"];
    path = v7->_path;
    v7->_path = v8;

    v7->_minDurationForTrackedReferencesToStayAround = around;
  }

  return v7;
}

- (id)jsonDict
{
  v34 = *MEMORY[0x1E69E9840];
  v21 = objc_opt_new();
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [_loadReferences countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(_loadReferences);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        debugTitle = [v7 debugTitle];
        v9 = objc_opt_new();
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v10 = [_loadReferences objectForKey:v7];
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              jsonDict = [*(*(&v22 + 1) + 8 * j) jsonDict];
              [v9 addObject:jsonDict];
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v32 count:16];
          }

          while (v12);
        }

        [v21 setObject:v9 forKeyedSubscript:debugTitle];
      }

      v5 = [_loadReferences countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v5);
  }

  v30[0] = @"type";
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v30[1] = @"references";
  v31[0] = v17;
  v31[1] = v21;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v18;
}

- (id)description
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(ATXExecutableReferenceManager *)self _loadReferences];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      v4 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v4;
        v5 = *(*(&v23 + 1) + 8 * v4);
        [v3 appendFormat:@"> References for executable: %@\n", v5];
        v6 = [obj objectForKey:v5];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * i);
              clientModelId = [v11 clientModelId];
              date = [v11 date];
              [v3 appendFormat:@"  - %@ on %@; shouldPurge: %d clearOnEngagement: %d\n", clientModelId, date, objc_msgSend(v11, "shouldPurge"), objc_msgSend(v11, "shouldClearOnEngagement")];
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v8);
        }

        [v3 appendString:@"\n"];

        v4 = v18 + 1;
      }

      while (v18 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }

  return v3;
}

- (BOOL)_writeData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = open([(NSString *)self->_path fileSystemRepresentation], 514, 384);
  if (v5 == -1)
  {
    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ATXEngagementRecordManager _writeData:];
    }

    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = ATXCacheFileWrite();
    if ((v6 & 0x80000000) == 0)
    {
      close(v6);
    }

    v8 = __atxlog_handle_default();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = @"ATXExecutableReferenceCache.pb";
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "Successfully wrote data to cache file: %@", buf, 0xCu);
    }
  }

  return v7;
}

- (void)performBatchUpdateOfReferencesWithBlock:(id)block
{
  blockCopy = block;
  cachedExecutableToReferenceMapForBatchUpdates = self->__cachedExecutableToReferenceMapForBatchUpdates;
  v5 = objc_autoreleasePoolPush();
  if (cachedExecutableToReferenceMapForBatchUpdates)
  {
    blockCopy[2]();
  }

  else
  {
    _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
    self->__cachedExecutableToReferenceMapNeedsWrite = 0;
    objc_storeStrong(&self->__cachedExecutableToReferenceMapForBatchUpdates, _loadReferences);
    v7 = objc_autoreleasePoolPush();
    blockCopy[2]();
    objc_autoreleasePoolPop(v7);
    v8 = self->__cachedExecutableToReferenceMapForBatchUpdates;
    self->__cachedExecutableToReferenceMapForBatchUpdates = 0;

    if (self->__cachedExecutableToReferenceMapNeedsWrite)
    {
      [(ATXExecutableReferenceManager *)self _writeReferences:_loadReferences];
    }

    self->__cachedExecutableToReferenceMapNeedsWrite = 0;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_writeReferences:(id)references
{
  v48 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  v5 = referencesCopy;
  if (referencesCopy)
  {
    if (self->__cachedExecutableToReferenceMapForBatchUpdates == referencesCopy)
    {
      self->__cachedExecutableToReferenceMapNeedsWrite = 1;
    }

    else
    {
      selfCopy = self;
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ATXExecutableReferenceManager _writeReferences:v6];
      }

      v29 = objc_autoreleasePoolPush();
      v32 = objc_alloc_init(ATXPBExecutableReferenceCache);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v30 = v5;
      obj = v5;
      v33 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v33)
      {
        v31 = *v43;
        do
        {
          v7 = 0;
          do
          {
            if (*v43 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v42 + 1) + 8 * v7);
            v9 = objc_autoreleasePoolPush();
            v10 = objc_alloc_init(ATXPBExecutableReferenceKey);
            type = [v8 type];
            context = v9;
            if (type <= 1)
            {
              if (!type)
              {
                [(ATXPBExecutableReferenceKey *)v10 setExecutableType:?];
                object = [v8 object];
                [(ATXPBExecutableReferenceKey *)v10 setExecutableString:object];
                goto LABEL_21;
              }

              if (type != 1)
              {
                goto LABEL_22;
              }

              [(ATXPBExecutableReferenceKey *)v10 setExecutableType:?];
              object = [v8 object];
              proto = [object proto];
              [(ATXPBExecutableReferenceKey *)v10 setExecutableAction:proto];
            }

            else
            {
              switch(type)
              {
                case 2:
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableType:?];
                  object = [v8 object];
                  proto = [object proto];
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableHeroApp:proto];
                  break;
                case 3:
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableType:?];
                  object = [v8 object];
                  proto = [object proto];
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableInfoSuggestion:proto];
                  break;
                case 4:
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableType:?];
                  object = [v8 object];
                  proto = [object proto];
                  [(ATXPBExecutableReferenceKey *)v10 setExecutableLinkAction:proto];
                  break;
                default:
                  goto LABEL_22;
              }
            }

LABEL_21:
LABEL_22:
            selfCopy = [(NSMapTable *)obj objectForKey:v8, selfCopy];
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v15 = [selfCopy countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v39;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v39 != v17)
                  {
                    objc_enumerationMutation(selfCopy);
                  }

                  v19 = *(*(&v38 + 1) + 8 * i);
                  v20 = objc_alloc_init(ATXPBExecutableReferenceEntry);
                  clientModelId = [v19 clientModelId];
                  [(ATXPBExecutableReferenceEntry *)v20 setClientModelId:clientModelId];

                  date = [v19 date];
                  [date timeIntervalSinceReferenceDate];
                  [(ATXPBExecutableReferenceEntry *)v20 setDate:v23];

                  -[ATXPBExecutableReferenceEntry setShouldClearOnEngagement:](v20, [v19 shouldClearOnEngagement]);
                  -[ATXPBExecutableReferenceEntry setShouldPurge:](v20, [v19 shouldPurge]);
                  -[ATXPBExecutableReferenceEntry setSuggestionIsHidden:](v20, [v19 suggestionIsHidden]);
                  [(ATXPBExecutableReferenceKey *)v10 addReferences:v20];
                }

                v16 = [selfCopy countByEnumeratingWithState:&v38 objects:v46 count:16];
              }

              while (v16);
            }

            [(ATXPBExecutableReferenceCache *)v32 addKeys:v10];

            objc_autoreleasePoolPop(context);
            ++v7;
          }

          while (v7 != v33);
          v24 = [(NSMapTable *)obj countByEnumeratingWithState:&v42 objects:v47 count:16];
          v33 = v24;
        }

        while (v24);
      }

      data = [(ATXPBExecutableReferenceCache *)v32 data];
      v26 = data;
      if (data)
      {
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __50__ATXExecutableReferenceManager__writeReferences___block_invoke;
        v36[3] = &unk_1E80C0958;
        v36[4] = selfCopy;
        v37 = data;
        [ATXRunningBoardAssertion performWorkWithFinishTaskAssertionName:@"ATXExecutableReferenceManager" block:v36];
      }

      else
      {
        v27 = __atxlog_handle_default();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [ATXExecutableReferenceManager _writeReferences:v27];
        }
      }

      v5 = v30;

      objc_autoreleasePoolPop(v29);
    }
  }
}

- (void)recordExecutable:(id)executable clientModelId:(id)id shouldClearEngagement:(BOOL)engagement
{
  engagementCopy = engagement;
  executableCopy = executable;
  idCopy = id;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v10 = [ATXExecutableReference alloc];
  date = [MEMORY[0x1E695DF00] date];
  v12 = [(ATXExecutableReference *)v10 initWithClientModelId:idCopy date:date shouldClearOnEngagement:engagementCopy];

  v13 = [_loadReferences objectForKey:executableCopy];
  v14 = v13;
  if (v13)
  {
    [v13 addObject:v12];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v12, 0}];
    [_loadReferences setObject:v15 forKey:executableCopy];
  }

  [(ATXExecutableReferenceManager *)self _writeReferences:_loadReferences];
}

- (id)_pairsForClientModelId:(id)id map:(id)map
{
  v34 = *MEMORY[0x1E69E9840];
  idCopy = id;
  mapCopy = map;
  v7 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = mapCopy;
  v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v21)
  {
    v20 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v8;
        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [obj objectForKey:{v9, v20}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * i);
              clientModelId = [v15 clientModelId];
              v17 = [clientModelId isEqualToString:idCopy];

              if (v17)
              {
                v18 = [[ATXExecutableReferencePair alloc] initWithReference:v15 executable:v9];
                [v7 addObject:v18];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v12);
        }

        v8 = v23 + 1;
      }

      while (v23 + 1 != v21);
      v21 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v21);
  }

  return v7;
}

- (id)_executablePairsForSuggestions:(id)suggestions clientModelId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  idCopy = id;
  v24 = objc_opt_new();
  date = [MEMORY[0x1E695DF00] date];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = suggestionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = ATXAllowedEngagementRecordManagerClasses();
        executableSpecification = [v12 executableSpecification];
        executableClassString = [executableSpecification executableClassString];
        v16 = [v13 containsObject:executableClassString];

        if (v16)
        {
          v17 = [ATXExecutableReference alloc];
          uiSpecification = [v12 uiSpecification];
          v19 = -[ATXExecutableReference initWithClientModelId:date:shouldClearOnEngagement:](v17, "initWithClientModelId:date:shouldClearOnEngagement:", idCopy, date, [uiSpecification shouldClearOnEngagement]);

          v20 = ATXExecutableIdentifierForSuggestion(v12);
          v21 = [[ATXExecutableReferencePair alloc] initWithReference:v19 executable:v20];
          [v24 addObject:v21];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v24;
}

- (void)updateReferencesForProactiveSuggestions:(id)suggestions clientModelId:(id)id
{
  v74 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  idCopy = id;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v9 = [(ATXExecutableReferenceManager *)self _pairsForClientModelId:idCopy map:_loadReferences];
  v56 = idCopy;
  v57 = suggestionsCopy;
  v10 = [(ATXExecutableReferenceManager *)self _executablePairsForSuggestions:suggestionsCopy clientModelId:idCopy];
  date = [MEMORY[0x1E695DF00] date];
  v11 = [v9 mutableCopy];
  [v11 intersectSet:v10];
  v53 = v10;
  v12 = [v10 mutableCopy];
  [v12 minusSet:v11];
  v54 = v9;
  v13 = [v9 mutableCopy];
  v51 = v11;
  [v13 minusSet:v11];
  v14 = [v12 count];
  v15 = v14 != 0;
  if (v14)
  {
    [(ATXExecutableReferenceManager *)self _addExecutablePairs:v12 toMap:_loadReferences];
  }

  v52 = v12;
  v55 = _loadReferences;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v13;
  v16 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v65;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v65 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v64 + 1) + 8 * i);
        reference = [v20 reference];
        shouldPurge = [reference shouldPurge];

        if ((shouldPurge & 1) == 0)
        {
          reference2 = [v20 reference];
          v15 = 1;
          [reference2 setShouldPurge:1];

          reference3 = [v20 reference];
          suggestionIsHidden = [reference3 suggestionIsHidden];

          if (suggestionIsHidden)
          {
            v26 = __atxlog_handle_default();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = objc_opt_class();
              v28 = NSStringFromClass(v27);
              reference4 = [v20 reference];
              *buf = 138412546;
              v70 = v28;
              v71 = 2112;
              v72 = reference4;
              _os_log_impl(&dword_1BF549000, v26, OS_LOG_TYPE_DEFAULT, "%@ - updateReferencesForProactiveSuggestions marked hidden reference as purgable: %@", buf, 0x16u);
            }
          }
        }
      }

      v17 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v17);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v30 = v51;
  v31 = [v30 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v61;
    do
    {
      v34 = 0;
      do
      {
        if (*v61 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v60 + 1) + 8 * v34);
        reference5 = [v35 reference];
        if (![reference5 shouldPurge])
        {
          goto LABEL_27;
        }

        reference6 = [v35 reference];
        date2 = [reference6 date];
        [date timeIntervalSinceDate:date2];
        v40 = v39;
        minDurationForTrackedReferencesToStayAround = self->_minDurationForTrackedReferencesToStayAround;

        if (v40 < minDurationForTrackedReferencesToStayAround)
        {
          reference7 = [v35 reference];
          shouldPurge2 = [reference7 shouldPurge];

          if (shouldPurge2)
          {
            reference8 = [v35 reference];
            [reference8 setShouldPurge:0];

            reference9 = [v35 reference];
            suggestionIsHidden2 = [reference9 suggestionIsHidden];

            if (suggestionIsHidden2)
            {
              reference5 = __atxlog_handle_default();
              if (os_log_type_enabled(reference5, OS_LOG_TYPE_DEFAULT))
              {
                v47 = objc_opt_class();
                v48 = NSStringFromClass(v47);
                reference10 = [v35 reference];
                *buf = 138412546;
                v70 = v48;
                v71 = 2112;
                v72 = reference10;
                _os_log_impl(&dword_1BF549000, reference5, OS_LOG_TYPE_DEFAULT, "%@ - updateReferencesForProactiveSuggestions unmarked hidden reference as purgable: %@", buf, 0x16u);
              }

              v15 = 1;
LABEL_27:

              goto LABEL_28;
            }

            v15 = 1;
          }
        }

LABEL_28:
        ++v34;
      }

      while (v32 != v34);
      v50 = [v30 countByEnumeratingWithState:&v60 objects:v68 count:16];
      v32 = v50;
    }

    while (v50);
  }

  [(ATXExecutableReferenceManager *)self _purgeReferencesIfPossibleInMap:v55 forceWrite:v15];
}

- (unint64_t)referenceCountForExecutable:(id)executable
{
  executableCopy = executable;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v6 = [_loadReferences objectForKey:executableCopy];

  v7 = [v6 count];
  return v7;
}

- (id)clientModelIdsForExecutable:(id)executable
{
  v22 = *MEMORY[0x1E69E9840];
  executableCopy = executable;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v6 = [_loadReferences objectForKey:executableCopy];
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        clientModelId = [v13 clientModelId];

        if (clientModelId)
        {
          clientModelId2 = [v13 clientModelId];
          [v7 addObject:clientModelId2];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BOOL)canExecutableClearOnEngagement:(id)engagement
{
  v16 = *MEMORY[0x1E69E9840];
  engagementCopy = engagement;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  [_loadReferences objectForKey:engagementCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) shouldClearOnEngagement])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)isExecutableHidden:(id)hidden
{
  v16 = *MEMORY[0x1E69E9840];
  hiddenCopy = hidden;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  [_loadReferences objectForKey:hiddenCopy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) suggestionIsHidden])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)referencesForClientModelId:(id)id
{
  v29 = *MEMORY[0x1E69E9840];
  idCopy = id;
  v5 = [MEMORY[0x1E695DFA8] set];
  [(ATXExecutableReferenceManager *)self _loadReferences];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v17)
  {
    v16 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [obj objectForKey:v7];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              clientModelId = [*(*(&v19 + 1) + 8 * j) clientModelId];
              v14 = [clientModelId isEqualToString:idCopy];

              if (v14)
              {
                [v5 addObject:v7];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  return v5;
}

- (void)markReferencesAsPurgableFromClientModelIdIfPossible:(id)possible
{
  v46 = *MEMORY[0x1E69E9840];
  possibleCopy = possible;
  selfCopy = self;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  if ([_loadReferences count])
  {
    date = [MEMORY[0x1E695DF00] date];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = _loadReferences;
    v28 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v28)
    {
      v8 = 0;
      v25 = _loadReferences;
      v26 = *v37;
      v27 = v7;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v7);
          }

          v30 = v9;
          v10 = *(*(&v36 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [v7 objectForKey:v10];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v33;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v33 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v32 + 1) + 8 * i);
                clientModelId = [v16 clientModelId];
                v18 = [clientModelId isEqualToString:possibleCopy];

                if (v18)
                {
                  if ([v16 suggestionIsHidden])
                  {
                    if ([v16 suggestionIsHidden])
                    {
                      date2 = [v16 date];
                      [date timeIntervalSinceDate:date2];
                      v21 = v20;

                      if (v21 > 0.0)
                      {
                        [v16 setShouldPurge:1];
                        v22 = __atxlog_handle_default();
                        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                        {
                          v23 = objc_opt_class();
                          v24 = NSStringFromClass(v23);
                          *buf = 138412546;
                          v41 = v24;
                          v42 = 2112;
                          v43 = v16;
                          _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "%@ - markReferencesAsPurgableFromClientModelIdIfPossible marked hidden reference as purgable: %@", buf, 0x16u);
                        }
                      }
                    }

                    v8 = 1;
                  }

                  else
                  {
                    v8 = 1;
                    [v16 setShouldPurge:1];
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v13);
          }

          objc_autoreleasePoolPop(context);
          v9 = v30 + 1;
          v7 = v27;
        }

        while (v30 + 1 != v28);
        v28 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v28);

      _loadReferences = v25;
      if (v8)
      {
        [(ATXExecutableReferenceManager *)selfCopy _writeReferences:v27];
      }
    }

    else
    {
    }
  }
}

- (void)updateDateOfReferenceForExecutable:(id)executable clientModelId:(id)id
{
  v30 = *MEMORY[0x1E69E9840];
  executableCopy = executable;
  idCopy = id;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v9 = [_loadReferences objectForKey:executableCopy];
  if ([v9 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v21 = v9;
      v22 = _loadReferences;
      selfCopy = self;
      v24 = executableCopy;
      v13 = 0;
      v14 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          clientModelId = [v16 clientModelId];
          v19 = [clientModelId isEqualToString:idCopy];

          if (v19)
          {
            date = [MEMORY[0x1E695DF00] date];
            [v16 updateDateTo:date];

            v13 = 1;
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);

      executableCopy = v24;
      v9 = v21;
      _loadReferences = v22;
      if (v13)
      {
        [(ATXExecutableReferenceManager *)selfCopy _writeReferences:v22];
      }
    }

    else
    {
    }
  }
}

- (void)markReferenceAsHiddenForExecutable:(id)executable clientModelId:(id)id untilDate:(id)date
{
  v32 = *MEMORY[0x1E69E9840];
  executableCopy = executable;
  idCopy = id;
  dateCopy = date;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v11 = [_loadReferences objectForKey:executableCopy];
  if ([v11 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v22 = v11;
      v23 = _loadReferences;
      selfCopy = self;
      v25 = executableCopy;
      v15 = 0;
      v16 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          clientModelId = [v18 clientModelId];
          v21 = [clientModelId isEqualToString:idCopy];

          if (v21)
          {
            [v18 updateDateTo:dateCopy];
            v15 = 1;
            [v18 setSuggestionIsHidden:1];
          }

          objc_autoreleasePoolPop(v19);
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);

      executableCopy = v25;
      v11 = v22;
      _loadReferences = v23;
      if (v15)
      {
        [(ATXExecutableReferenceManager *)selfCopy _writeReferences:v23];
      }
    }

    else
    {
    }
  }
}

- (void)_purgeReferencesIfPossibleInMap:(id)map forceWrite:(BOOL)write
{
  writeCopy = write;
  v48 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  date = [MEMORY[0x1E695DF00] date];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v31 = mapCopy;
  v8 = [mapCopy copy];
  v29 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (!v29)
  {

    if (!writeCopy)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v26 = writeCopy;
  v9 = 0;
  v27 = *v39;
  v28 = v8;
  do
  {
    v10 = 0;
    do
    {
      if (*v39 != v27)
      {
        objc_enumerationMutation(v8);
      }

      v33 = v10;
      v11 = *(*(&v38 + 1) + 8 * v10);
      context = objc_autoreleasePoolPush();
      v30 = v11;
      v12 = [v31 objectForKey:v11];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = [v12 copy];
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v46 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v35;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v35 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v34 + 1) + 8 * i);
            if ([v18 shouldPurge])
            {
              date2 = [v18 date];
              [date timeIntervalSinceDate:date2];
              v21 = v20;
              minDurationForTrackedReferencesToStayAround = self->_minDurationForTrackedReferencesToStayAround;

              if (v21 >= minDurationForTrackedReferencesToStayAround)
              {
                [v12 removeObject:v18];
                if ([v18 suggestionIsHidden])
                {
                  v23 = __atxlog_handle_default();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    v24 = objc_opt_class();
                    v25 = NSStringFromClass(v24);
                    *buf = 138412546;
                    v43 = v25;
                    v44 = 2112;
                    v45 = v18;
                    _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "%@ - purged hidden reference: %@", buf, 0x16u);
                  }
                }

                v9 = 1;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v34 objects:v46 count:16];
        }

        while (v15);
      }

      if (![v12 count])
      {
        [v31 removeObjectForKey:v30];
        v9 = 1;
      }

      objc_autoreleasePoolPop(context);
      v10 = v33 + 1;
      v8 = v28;
    }

    while (v33 + 1 != v29);
    v29 = [v28 countByEnumeratingWithState:&v38 objects:v47 count:16];
  }

  while (v29);

  if ((v9 | v26))
  {
LABEL_25:
    [(ATXExecutableReferenceManager *)self _writeReferences:v31];
  }

LABEL_26:
}

- (void)purgeReferencesForSuggestions:(id)suggestions clientModelId:(id)id
{
  v49 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  idCopy = id;
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    selfCopy = self;
    v11 = 0;
    v12 = *v44;
    v32 = *v44;
    v33 = v8;
    do
    {
      v13 = 0;
      v34 = v10;
      do
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v38 = v13;
        v14 = *(*(&v43 + 1) + 8 * v13);
        v37 = objc_autoreleasePoolPush();
        v15 = ATXAllowedEngagementRecordManagerClasses();
        executableSpecification = [v14 executableSpecification];
        executableClassString = [executableSpecification executableClassString];
        v18 = [v15 containsObject:executableClassString];

        if (v18)
        {
          v19 = ATXExecutableIdentifierForSuggestion(v14);
          if (v19)
          {
            v20 = [_loadReferences objectForKey:v19];
            if ([v20 count])
            {
              v36 = v19;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v21 = [v20 copy];
              v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v40;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v40 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v39 + 1) + 8 * i);
                    if ([v26 shouldPurge])
                    {
                      clientModelId = [v26 clientModelId];
                      v28 = [clientModelId isEqualToString:idCopy];

                      if (v28)
                      {
                        [v20 removeObject:v26];
                        v11 = 1;
                      }
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
                }

                while (v23);
              }

              v12 = v32;
              v8 = v33;
              v10 = v34;
              v19 = v36;
              if (![v20 count])
              {
                [_loadReferences removeObjectForKey:v36];
                v11 = 1;
              }
            }
          }

          v30 = v37;
          v29 = v38;
        }

        else
        {
          v30 = v37;
          v29 = v38;
        }

        objc_autoreleasePoolPop(v30);
        v13 = v29 + 1;
      }

      while (v13 != v10);
      v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);

    if (v11)
    {
      [(ATXExecutableReferenceManager *)selfCopy _writeReferences:_loadReferences];
    }
  }

  else
  {
  }
}

- (void)addReferencesForSuggestions:(id)suggestions clientModelId:(id)id
{
  suggestionsCopy = suggestions;
  idCopy = id;
  v7 = objc_autoreleasePoolPush();
  _loadReferences = [(ATXExecutableReferenceManager *)self _loadReferences];
  v9 = [(ATXExecutableReferenceManager *)self _executablePairsForSuggestions:suggestionsCopy clientModelId:idCopy];
  if ([v9 count])
  {
    [(ATXExecutableReferenceManager *)self _addExecutablePairs:v9 toMap:_loadReferences];
    [(ATXExecutableReferenceManager *)self _writeReferences:_loadReferences];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_addExecutablePairs:(id)pairs toMap:(id)map
{
  v23 = *MEMORY[0x1E69E9840];
  pairsCopy = pairs;
  mapCopy = map;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [pairsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(pairsCopy);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        executable = [v11 executable];
        v13 = [mapCopy objectForKey:executable];

        if (v13)
        {
          reference = [v11 reference];
          [v13 addObject:reference];
        }

        else
        {
          v15 = objc_alloc(MEMORY[0x1E695DFA8]);
          reference = [v11 reference];
          v16 = [v15 initWithObjects:{reference, 0}];
          executable2 = [v11 executable];
          [mapCopy setObject:v16 forKey:executable2];
        }
      }

      v8 = [pairsCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)_readData
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_1_15(&dword_1BF549000, v1, v2, "Couldn't open recently engaged cache references file: [%i] %s", v3, v4, v5, v6, v7);
}

@end
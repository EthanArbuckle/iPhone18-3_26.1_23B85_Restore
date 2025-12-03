@interface AFOpportuneSpeakingModuleDataCollection
+ (id)sharedCollector;
- (AFOpportuneSpeakingModuleDataCollection)init;
- (void)_deleteSpeakablesOlderThan:(id)than;
- (void)logFeedbackOfType:(int64_t)type forSpeakableId:(id)id withModelId:(id)modelId;
- (void)logInteractionEvents:(id)events forSpeakableId:(id)id;
- (void)logRecommendedAction:(id)action forSpeakableId:(id)id withModelId:(id)modelId;
- (void)logSpeakable:(id)speakable forContact:(id)contact withModelId:(id)id withFeatures:(id)features withScore:(float)score;
@end

@implementation AFOpportuneSpeakingModuleDataCollection

- (void)_deleteSpeakablesOlderThan:(id)than
{
  v31 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_speakableMap allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v21;
    p_superclass = AFSpeechPackage.superclass;
    *&v7 = 136315650;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_speakableMap objectForKey:v12, v18];
        if ([v13 isOlderThan:thanCopy])
        {
          v14 = p_superclass[270];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            log = v14;
            identifier = [v13 identifier];
            date = [v13 date];
            *buf = v18;
            v25 = "[AFOpportuneSpeakingModuleDataCollection _deleteSpeakablesOlderThan:]";
            v26 = 2112;
            v27 = identifier;
            v28 = 2112;
            v29 = date;
            _os_log_debug_impl(&dword_1912FE000, log, OS_LOG_TYPE_DEBUG, "%s Deleting sanitized speakable:%@ date:%@", buf, 0x20u);

            p_superclass = (AFSpeechPackage + 8);
          }

          [(NSMutableDictionary *)self->_speakableMap removeObjectForKey:v12];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)logInteractionEvents:(id)events forSpeakableId:(id)id
{
  eventsCopy = events;
  idCopy = id;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__AFOpportuneSpeakingModuleDataCollection_logInteractionEvents_forSpeakableId___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = idCopy;
  v13 = eventsCopy;
  v9 = eventsCopy;
  v10 = idCopy;
  dispatch_async(queue, block);
}

void __79__AFOpportuneSpeakingModuleDataCollection_logInteractionEvents_forSpeakableId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = AFSpokenNotificationDataCollectionEnabled();
    v3 = v8;
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v5 setObject:a1[6] forKey:@"InteractionEvents"];
      v6 = [v8 identifier];
      [v5 setObject:v6 forKey:@"SpeakableId"];

      v7 = [getDCLongRunningLogClass() sharedInstance];
      [v7 addEventWithType:@"InteractionInfo" eventDataAsDictionary:v5];

      v3 = v8;
    }
  }
}

- (void)logRecommendedAction:(id)action forSpeakableId:(id)id withModelId:(id)modelId
{
  actionCopy = action;
  idCopy = id;
  modelIdCopy = modelId;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__AFOpportuneSpeakingModuleDataCollection_logRecommendedAction_forSpeakableId_withModelId___block_invoke;
  v15[3] = &unk_1E7349398;
  v15[4] = self;
  v16 = idCopy;
  v17 = actionCopy;
  v18 = modelIdCopy;
  v12 = modelIdCopy;
  v13 = actionCopy;
  v14 = idCopy;
  dispatch_async(queue, v15);
}

void __91__AFOpportuneSpeakingModuleDataCollection_logRecommendedAction_forSpeakableId_withModelId___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = AFSpokenNotificationDataCollectionEnabled();
    v3 = v8;
    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [v5 setObject:a1[6] forKey:@"RecommendedAction"];
      [v5 setObject:a1[7] forKey:@"ModelId"];
      v6 = [v8 identifier];
      [v5 setObject:v6 forKey:@"SpeakableId"];

      v7 = [getDCLongRunningLogClass() sharedInstance];
      [v7 addEventWithType:@"RecommendationInfo" eventDataAsDictionary:v5];

      v3 = v8;
    }
  }
}

- (void)logFeedbackOfType:(int64_t)type forSpeakableId:(id)id withModelId:(id)modelId
{
  idCopy = id;
  modelIdCopy = modelId;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__AFOpportuneSpeakingModuleDataCollection_logFeedbackOfType_forSpeakableId_withModelId___block_invoke;
  v13[3] = &unk_1E73464F0;
  v13[4] = self;
  v14 = idCopy;
  v15 = modelIdCopy;
  typeCopy = type;
  v11 = modelIdCopy;
  v12 = idCopy;
  dispatch_async(queue, v13);
}

void __88__AFOpportuneSpeakingModuleDataCollection_logFeedbackOfType_forSpeakableId_withModelId___block_invoke(void *a1)
{
  v8 = [*(a1[4] + 16) objectForKey:a1[5]];
  if (v8 && AFSpokenNotificationDataCollectionEnabled())
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v3 = a1[7];
    if (v3 > 2)
    {
      v4 = @"Unknown";
    }

    else
    {
      v4 = off_1E7345340[v3];
    }

    v5 = v4;
    [v2 setObject:v5 forKey:@"Feedback"];

    [v2 setObject:a1[6] forKey:@"ModelId"];
    v6 = [v8 identifier];
    [v2 setObject:v6 forKey:@"SpeakableId"];

    v7 = [getDCLongRunningLogClass() sharedInstance];
    [v7 addEventWithType:@"FeedbackInfo" eventDataAsDictionary:v2];
  }
}

- (void)logSpeakable:(id)speakable forContact:(id)contact withModelId:(id)id withFeatures:(id)features withScore:(float)score
{
  speakableCopy = speakable;
  contactCopy = contact;
  idCopy = id;
  featuresCopy = features;
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__AFOpportuneSpeakingModuleDataCollection_logSpeakable_forContact_withModelId_withFeatures_withScore___block_invoke;
  v21[3] = &unk_1E7343648;
  v21[4] = self;
  v22 = speakableCopy;
  v23 = contactCopy;
  v24 = idCopy;
  v25 = featuresCopy;
  scoreCopy = score;
  v17 = featuresCopy;
  v18 = idCopy;
  v19 = contactCopy;
  v20 = speakableCopy;
  dispatch_async(queue, v21);
}

void __102__AFOpportuneSpeakingModuleDataCollection_logSpeakable_forContact_withModelId_withFeatures_withScore___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) speakableIdentifier];
  v17 = [v2 objectForKey:v3];

  if (!v17)
  {
    v4 = [AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable alloc];
    v5 = [*(a1 + 40) speakableDate];
    v17 = [(AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable *)v4 initWithDate:v5];

    v6 = *(*(a1 + 32) + 16);
    v7 = [*(a1 + 40) speakableIdentifier];
    [v6 setObject:v17 forKey:v7];
  }

  if (AFSpokenNotificationDataCollectionEnabled())
  {
    if ([getDCUtilsClass() isCurrentProcess:@"assistantd"])
    {
      v8 = [getDCManagerClass() sharedInstance];
      [v8 markSessionForUpload:mach_absolute_time() withReason:@"NotificationEvent"];
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([*(a1 + 48) length])
    {
      v10 = *(a1 + 48);
    }

    else
    {
      v10 = @"NOID";
    }

    [v9 setObject:v10 forKey:@"ContactId"];
    [v9 setObject:*(a1 + 56) forKey:@"ModelId"];
    v11 = [(AFOpportuneSpeakingModuleDataCollectionSanitizedSpeakable *)v17 identifier];
    [v9 setObject:v11 forKey:@"SpeakableId"];

    [v9 setObject:*(a1 + 64) forKey:@"SpeakableFeatures"];
    LODWORD(v12) = *(a1 + 72);
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    [v9 setObject:v13 forKey:@"SpeakableScore"];

    v14 = [getDCLongRunningLogClass() sharedInstance];
    [v14 addEventWithType:@"SpeakableInfo" eventDataAsDictionary:v9];
  }

  v15 = *(a1 + 32);
  v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-600.0];
  [v15 _deleteSpeakablesOlderThan:v16];
}

- (AFOpportuneSpeakingModuleDataCollection)init
{
  v31 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = AFOpportuneSpeakingModuleDataCollection;
  v2 = [(AFOpportuneSpeakingModuleDataCollection *)&v26 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("OSMDataCollection", v3);

    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    speakableMap = v2->_speakableMap;
    v2->_speakableMap = v6;

    if (DataCollectionServicesLibrary_sOnce != -1)
    {
      dispatch_once(&DataCollectionServicesLibrary_sOnce, &__block_literal_global_109);
    }

    if (DataCollectionServicesLibrary_sLib)
    {
      v8 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
      {
        v22 = MEMORY[0x1E696AE30];
        v23 = v8;
        processInfo = [v22 processInfo];
        processName = [processInfo processName];
        *buf = 136315394;
        v28 = "[AFOpportuneSpeakingModuleDataCollection init]";
        v29 = 2112;
        v30 = processName;
        _os_log_debug_impl(&dword_1912FE000, v23, OS_LOG_TYPE_DEBUG, "%s Configuring data collection manager for process: %@", buf, 0x16u);
      }

      sharedConfiguration = [getDCConfigurationClass() sharedConfiguration];
      [sharedConfiguration setPrimaryProcess:@"assistantd"];
      [sharedConfiguration setPackingPolicy:getDCPackingPolicyTypeOnTimer()];
      [sharedConfiguration setPackagingTimeInterval:3600.0];
      [sharedConfiguration setLogWriteTimeInterval:300.0];
      [sharedConfiguration setOutputDirectoryPath:@"/tmp/OSM/"];
      [sharedConfiguration setUploadUrl:@"https://osmdatacollectionproxy.usspk02.orchard.apple.com/upload"];
      sharedInstance = [getDCLongRunningLogClass() sharedInstance];
      [sharedConfiguration addLogger:sharedInstance toProcess:@"assistantd"];

      sharedInstance2 = [getDCLongRunningLogClass() sharedInstance];
      [sharedConfiguration addLogger:sharedInstance2 toProcess:@"OpportuneSpeakingModelService"];

      DCRuleClass = getDCRuleClass();
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"process-%@", @"assistantd"];
      v14 = [DCRuleClass getNearestFileAfterMarkWithPrefix:v13];
      [sharedConfiguration addPackingRule:v14];

      v15 = getDCRuleClass();
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"process-%@", @"OpportuneSpeakingModelService"];
      v17 = [v15 getNearestFileAfterMarkWithPrefix:v16];
      [sharedConfiguration addPackingRule:v17];

      sharedInstance3 = [getDCManagerClass() sharedInstance];
      [sharedInstance3 setupWithConfiguration:sharedConfiguration];

      v19 = _AFPreferencesOpportuneSpeakingModuleEnabled();
      AFSetSpokenNotificationDataCollectionEnabled(v19);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)sharedCollector
{
  if (sharedCollector_onceToken != -1)
  {
    dispatch_once(&sharedCollector_onceToken, &__block_literal_global_10429);
  }

  v3 = sharedCollector__sharedInstance;

  return v3;
}

void __58__AFOpportuneSpeakingModuleDataCollection_sharedCollector__block_invoke()
{
  v0 = objc_alloc_init(AFOpportuneSpeakingModuleDataCollection);
  v1 = sharedCollector__sharedInstance;
  sharedCollector__sharedInstance = v0;
}

@end
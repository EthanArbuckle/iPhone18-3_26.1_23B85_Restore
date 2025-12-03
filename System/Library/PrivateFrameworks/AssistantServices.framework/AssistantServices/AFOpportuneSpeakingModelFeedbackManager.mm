@interface AFOpportuneSpeakingModelFeedbackManager
- (AFOpportuneSpeakingModelFeedbackManager)init;
- (BOOL)interactionDetectedForSpeakableId:(id)id;
- (id)lastNegativeFeedbackForContact:(id)contact;
- (void)fetchNotificationUsageForSpeakableId:(id)id withStartDate:(id)date withEndDate:(id)endDate withHandler:(id)handler;
- (void)loadIfNecessary;
- (void)save;
- (void)setLastNegativeFeedbackForContact:(id)contact;
@end

@implementation AFOpportuneSpeakingModelFeedbackManager

- (void)save
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_feedback)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v4 = AFOpportuneSpeakingModelFeedbackPath();
    stringByDeletingLastPathComponent = [v4 stringByDeletingLastPathComponent];
    v20 = 0;
    v6 = [v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v20];
    v7 = v20;

    if (v6)
    {
      feedback = self->_feedback;
      v19 = v7;
      v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:feedback requiringSecureCoding:1 error:&v19];
      v10 = v19;

      if (v9)
      {
        v18 = v10;
        v11 = [v9 writeToFile:v4 options:1 error:&v18];
        v7 = v18;

        if ((v11 & 1) == 0)
        {
          v12 = AFSiriLogContextService;
          if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
          {
            v13 = self->_feedback;
            *buf = 136315650;
            v22 = "[AFOpportuneSpeakingModelFeedbackManager save]";
            v23 = 2112;
            v24 = v13;
            v25 = 2112;
            v26 = v7;
            _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s Failed to save feedback to disk %@: %@", buf, 0x20u);
          }
        }
      }

      else
      {
        v15 = AFSiriLogContextService;
        if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_feedback;
          *buf = 136315650;
          v22 = "[AFOpportuneSpeakingModelFeedbackManager save]";
          v23 = 2112;
          v24 = v17;
          v25 = 2112;
          v26 = v10;
          _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Failed to archive feedback %@: %@", buf, 0x20u);
        }

        v7 = v10;
      }
    }

    else
    {
      v14 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[AFOpportuneSpeakingModelFeedbackManager save]";
        v23 = 2112;
        v24 = v7;
        _os_log_error_impl(&dword_1912FE000, v14, OS_LOG_TYPE_ERROR, "%s Error creating directory: %@", buf, 0x16u);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)loadIfNecessary
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_feedback)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v4 = AFOpportuneSpeakingModelFeedbackPath();
    if ([v3 fileExistsAtPath:v4])
    {
      v13 = 0;
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v4 options:2 error:&v13];
      v6 = v13;
      if (v6 || !v5)
      {
        v11 = AFSiriLogContextService;
        if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v15 = "[AFOpportuneSpeakingModelFeedbackManager loadIfNecessary]";
          v16 = 2112;
          v17 = v6;
          _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Error reading data: %@", buf, 0x16u);
        }
      }

      else
      {
        v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:0];
        v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
        feedback = self->_feedback;
        self->_feedback = v8;

        [v7 finishDecoding];
      }
    }

    else
    {
      v10 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v15 = "[AFOpportuneSpeakingModelFeedbackManager loadIfNecessary]";
        _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s No feedback persisted", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)interactionDetectedForSpeakableId:(id)id
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_usageEventsBySpeakableId objectForKey:id];
  v4 = v3;
  if (v3)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v17 + 1) + 8 * i) objectForKey:{@"EventType", v17}];
          v11 = [MEMORY[0x1E696AD98] numberWithInt:6];
          stringValue = [v11 stringValue];

          if (v10)
          {
            v13 = stringValue == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13 && ([v10 isEqualToString:stringValue] & 1) != 0)
          {

            v14 = 1;
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_17:
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)fetchNotificationUsageForSpeakableId:(id)id withStartDate:(id)date withEndDate:(id)endDate withHandler:(id)handler
{
  idCopy = id;
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v14 = BiomeLibrary();
  notification = [v14 Notification];
  usage = [notification Usage];

  v17 = [objc_alloc(MEMORY[0x1E698F2D0]) initWithStartDate:dateCopy endDate:endDateCopy maxEvents:0 lastN:0 reversed:0];
  v18 = [usage publisherWithUseCase:@"Assistant" options:v17];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke;
  v34[3] = &unk_1E7348F88;
  v19 = idCopy;
  v35 = v19;
  v20 = [v18 filterWithIsIncluded:v34];

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke_2;
  v28[3] = &unk_1E7345320;
  objc_copyWeak(&v32, &location);
  v22 = v19;
  v29 = v22;
  v30 = v21;
  v23 = handlerCopy;
  v31 = v23;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke_58;
  v26[3] = &unk_1E7349020;
  v24 = v30;
  v27 = v24;
  v25 = [v20 sinkWithCompletion:v28 receiveInput:v26];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);
}

uint64_t __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = [v3 uniqueID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 state])
  {
    v4 = [v3 state];
    v5 = AFSiriLogContextService;
    v6 = os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR);
    if (v4 == 1)
    {
      if (v6)
      {
        v7 = v5;
        v8 = [v3 error];
        v13 = 136315394;
        v14 = "[AFOpportuneSpeakingModelFeedbackManager fetchNotificationUsageForSpeakableId:withStartDate:withEndDate:withHandler:]_block_invoke";
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Error fetching notification event: %@", &v13, 0x16u);
      }
    }

    else if (v6)
    {
      v13 = 136315138;
      v14 = "[AFOpportuneSpeakingModelFeedbackManager fetchNotificationUsageForSpeakableId:withStartDate:withEndDate:withHandler:]_block_invoke";
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Unknown BPSCompletion status", &v13, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[3] setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 32)];
      (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), [*(a1 + 40) count] != 0);
    }

    else
    {
      v11 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315138;
        v14 = "[AFOpportuneSpeakingModelFeedbackManager fetchNotificationUsageForSpeakableId:withStartDate:withEndDate:withHandler:]_block_invoke_2";
        _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s AFOpportuneSpeakingModelFeedback was deallocated", &v13, 0xCu);
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), 0, 0);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __118__AFOpportuneSpeakingModelFeedbackManager_fetchNotificationUsageForSpeakableId_withStartDate_withEndDate_withHandler___block_invoke_58(uint64_t a1, void *a2)
{
  v9 = [a2 eventBody];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v9, "usageType")}];
  v5 = [v4 stringValue];
  [v3 setObject:v5 forKey:@"EventType"];

  v6 = MEMORY[0x1E696AD98];
  v7 = [v9 absoluteTimestamp];
  [v7 timeIntervalSinceReferenceDate];
  v8 = [v6 numberWithDouble:?];
  [v3 setObject:v8 forKey:@"StartDate"];

  [*(a1 + 32) addObject:v3];
}

- (void)setLastNegativeFeedbackForContact:(id)contact
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "[AFOpportuneSpeakingModelFeedbackManager setLastNegativeFeedbackForContact:]";
    v16 = 2112;
    v17 = contactCopy;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s contact: %@", &v14, 0x16u);
  }

  if (!self->_feedback)
  {
    v6 = objc_alloc_init(AFOpportuneSpeakingModelFeedback);
    feedback = self->_feedback;
    self->_feedback = v6;
  }

  date = [MEMORY[0x1E695DF00] date];
  v9 = [contactCopy length];
  v10 = self->_feedback;
  if (v9)
  {
    negativeFeedbackByContact = [(AFOpportuneSpeakingModelFeedback *)v10 negativeFeedbackByContact];
    v12 = [negativeFeedbackByContact mutableCopy];

    [v12 setObject:date forKey:contactCopy];
    [(AFOpportuneSpeakingModelFeedback *)self->_feedback setNegativeFeedbackByContact:v12];
  }

  else
  {
    [(AFOpportuneSpeakingModelFeedback *)v10 setLastNegativeFeedback:date];
  }

  [(AFOpportuneSpeakingModelFeedbackManager *)self save];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)lastNegativeFeedbackForContact:(id)contact
{
  v16 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  [(AFOpportuneSpeakingModelFeedbackManager *)self loadIfNecessary];
  v5 = [contactCopy length];
  feedback = self->_feedback;
  if (v5)
  {
    negativeFeedbackByContact = [(AFOpportuneSpeakingModelFeedback *)feedback negativeFeedbackByContact];
    lastNegativeFeedback = [negativeFeedbackByContact objectForKey:contactCopy];
  }

  else
  {
    lastNegativeFeedback = [(AFOpportuneSpeakingModelFeedback *)feedback lastNegativeFeedback];
  }

  v9 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315394;
    v13 = "[AFOpportuneSpeakingModelFeedbackManager lastNegativeFeedbackForContact:]";
    v14 = 2112;
    v15 = lastNegativeFeedback;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return lastNegativeFeedback;
}

- (AFOpportuneSpeakingModelFeedbackManager)init
{
  v13 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = AFOpportuneSpeakingModelFeedbackManager;
  v2 = [(AFOpportuneSpeakingModelFeedbackManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    usageEventsBySpeakableId = v2->_usageEventsBySpeakableId;
    v2->_usageEventsBySpeakableId = v3;

    knowledgeStore = [get_DKKnowledgeStoreClass() knowledgeStore];
    knowledgeStore = v2->_knowledgeStore;
    v2->_knowledgeStore = knowledgeStore;

    if (!v2->_knowledgeStore)
    {
      v7 = AFSiriLogContextService;
      if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v12 = "[AFOpportuneSpeakingModelFeedbackManager init]";
        _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Error obtaining CoreDuet knowledge store.", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

@end
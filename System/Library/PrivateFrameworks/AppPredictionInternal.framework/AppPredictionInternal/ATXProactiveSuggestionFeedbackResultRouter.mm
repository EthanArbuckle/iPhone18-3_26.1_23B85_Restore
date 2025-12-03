@interface ATXProactiveSuggestionFeedbackResultRouter
- (ATXProactiveSuggestionFeedbackResultRouter)init;
- (ATXProactiveSuggestionFeedbackResultRouter)initWithFeedbackListeners:(id)listeners;
- (id)clientModelIdsWithFeedbackListeners;
- (void)_initializeFeedbackListenersDictWith:(id)with;
- (void)handleNewFeedbackResult:(id)result;
@end

@implementation ATXProactiveSuggestionFeedbackResultRouter

- (ATXProactiveSuggestionFeedbackResultRouter)init
{
  v11[4] = *MEMORY[0x277D85DE8];
  v3 = +[ATXActionFeedback sharedInstance];
  v11[0] = v3;
  v4 = +[ATXFallbackActionsFeedback sharedInstance];
  v11[1] = v4;
  v5 = objc_opt_new();
  v11[2] = v5;
  v6 = objc_opt_new();
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [(ATXProactiveSuggestionFeedbackResultRouter *)self initWithFeedbackListeners:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)clientModelIdsWithFeedbackListeners
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  allKeys = [(NSDictionary *)self->_feedbackListeners allKeys];
  v5 = [v3 initWithArray:allKeys];

  return v5;
}

- (ATXProactiveSuggestionFeedbackResultRouter)initWithFeedbackListeners:(id)listeners
{
  listenersCopy = listeners;
  v8.receiver = self;
  v8.super_class = ATXProactiveSuggestionFeedbackResultRouter;
  v5 = [(ATXProactiveSuggestionFeedbackResultRouter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ATXProactiveSuggestionFeedbackResultRouter *)v5 _initializeFeedbackListenersDictWith:listenersCopy];
  }

  return v6;
}

- (void)_initializeFeedbackListenersDictWith:(id)with
{
  selfCopy = self;
  v30 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v4 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = withCopy;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v18 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        clientModelIds = [v6 clientModelIds];
        v8 = [clientModelIds countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(clientModelIds);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              v13 = [(NSDictionary *)v4 objectForKey:v12];
              if (!v13)
              {
                v13 = objc_opt_new();
                [(NSDictionary *)v4 setObject:v13 forKey:v12];
              }

              [v13 addObject:v6];
            }

            v9 = [clientModelIds countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  feedbackListeners = selfCopy->_feedbackListeners;
  selfCopy->_feedbackListeners = v4;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleNewFeedbackResult:(id)result
{
  v19 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  clientCacheUpdate = [resultCopy clientCacheUpdate];
  clientModelId = [clientCacheUpdate clientModelId];

  v7 = [(NSDictionary *)self->_feedbackListeners objectForKey:clientModelId];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          [v12 receiveUIFeedbackResult:resultCopy];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
@interface ATXSpotlightActionsSuggestionSender
+ (id)identifierForNowPlayingSuggestionFromLayout:(id)a3;
+ (id)identifierForOngoingCallSuggestionFromLayout:(id)a3;
+ (id)identifiersForDirectionsSuggestionFromLayout:(id)a3;
+ (id)identifiersForSuggestionsFromLayout:(id)a3;
- (ATXSpotlightActionsSuggestionSender)init;
- (void)_logCAEvents:(id)a3 eventType:(int64_t)a4 toStream:(id)a5;
- (void)_processChanges:(id)a3;
- (void)_sendSpotlightSuggestionUpdateNotification:(id)a3;
- (void)blendingLayerDidUpdateSpotlightUICache:(id)a3;
@end

@implementation ATXSpotlightActionsSuggestionSender

+ (id)identifiersForSuggestionsFromLayout:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v3;
    obj = [v3 collections];
    v21 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v21)
    {
      v20 = *v29;
      do
      {
        v5 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = v5;
          v6 = *(*(&v28 + 1) + 8 * v5);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v7 = [v6 suggestions];
          v8 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v25;
            do
            {
              v11 = 0;
              do
              {
                if (*v25 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v24 + 1) + 8 * v11);
                v13 = [objc_alloc(MEMORY[0x277D42028]) initWithProactiveSuggestion:v12];
                if (v13)
                {
                  [v4 addObject:v13];
                }

                else
                {
                  v14 = __atxlog_handle_blending();
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [v12 executableSpecification];
                    v15 = [v23 executableIdentifier];
                    *buf = 138412546;
                    v33 = v15;
                    v34 = 2112;
                    v35 = v12;
                    _os_log_error_impl(&dword_2263AA000, v14, OS_LOG_TYPE_ERROR, "ATXContextActionIdentifier: nil: %@, %@", buf, 0x16u);
                  }
                }

                ++v11;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v24 objects:v36 count:16];
            }

            while (v9);
          }

          v5 = v22 + 1;
        }

        while (v22 + 1 != v21);
        v21 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v21);
    }

    v3 = v18;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)identifiersForDirectionsSuggestionFromLayout:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v3;
    obj = [v3 collections];
    v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v26)
    {
      v25 = *v33;
      do
      {
        v5 = 0;
        do
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = v5;
          v6 = *(*(&v32 + 1) + 8 * v5);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v7 = [v6 suggestions];
          v8 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v29;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v29 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v28 + 1) + 8 * i);
                v13 = [v12 atxShortcutsActionExecutableObject];
                v14 = [v13 contextualAction];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v16 = [v13 contextualAction];
                  v17 = [v16 uniqueIdentifier];

                  v18 = [v12 uiSpecification];
                  v19 = [v18 title];

                  [v4 setObject:v19 forKeyedSubscript:v17];
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v9);
          }

          v5 = v27 + 1;
        }

        while (v27 + 1 != v26);
        v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v26);
    }

    v20 = [v4 copy];
    v3 = v23;
  }

  else
  {
    v20 = objc_opt_new();
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)identifierForNowPlayingSuggestionFromLayout:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 collections];
    v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v6 = *v28;
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v8 suggestions];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                v15 = [v14 uiSpecification];
                v16 = [v15 predictionReasons];

                if ((v16 & 0x40000) != 0)
                {
                  v18 = [v14 executableSpecification];
                  v17 = [v18 executableIdentifier];

                  goto LABEL_21;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v21;
        }

        v17 = 0;
        v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)identifierForOngoingCallSuggestionFromLayout:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v3 collections];
    v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v22)
    {
      v6 = *v28;
      v21 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v8 suggestions];
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            while (2)
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                v15 = [v14 uiSpecification];
                v16 = [v15 predictionReasons];

                if ((v16 & 0x80000) != 0)
                {
                  v18 = [v14 executableSpecification];
                  v17 = [v18 executableIdentifier];

                  goto LABEL_21;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v6 = v21;
        }

        v17 = 0;
        v22 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }

    else
    {
      v17 = 0;
    }

LABEL_21:
  }

  else
  {
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (ATXSpotlightActionsSuggestionSender)init
{
  v8.receiver = self;
  v8.super_class = ATXSpotlightActionsSuggestionSender;
  v2 = [(ATXSpotlightActionsSuggestionSender *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAC0] dictionary];
    previousDirectionsIdentifiers = v2->_previousDirectionsIdentifiers;
    v2->_previousDirectionsIdentifiers = v3;

    v5 = objc_opt_new();
    previousIdentifiers = v2->_previousIdentifiers;
    v2->_previousIdentifiers = v5;
  }

  return v2;
}

- (void)blendingLayerDidUpdateSpotlightUICache:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __atxlog_handle_blending();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache", &v9, 0xCu);
  }

  [(ATXSpotlightActionsSuggestionSender *)self _processChanges:v4];
  [(ATXSpotlightActionsSuggestionSender *)self _sendSpotlightSuggestionUpdateNotification:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processChanges:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [objc_opt_class() identifiersForSuggestionsFromLayout:v4];

    v6 = [(NSSet *)v5 mutableCopy];
    [v6 minusSet:self->_previousIdentifiers];
    v7 = [(NSSet *)self->_previousIdentifiers mutableCopy];
    [v7 minusSet:v5];
    v8 = objc_alloc_init(MEMORY[0x277D420C8]);
    previousIdentifiers = self->_previousIdentifiers;
    self->_previousIdentifiers = v5;

    v10 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXSpotlightActionsSuggestionSender _processChanges:v7];
    }

    [(ATXSpotlightActionsSuggestionSender *)self _logCAEvents:v7 eventType:2 toStream:v8];
    v11 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXSpotlightActionsSuggestionSender _processChanges:v6];
    }

    [(ATXSpotlightActionsSuggestionSender *)self _logCAEvents:v6 eventType:1 toStream:v8];
  }
}

- (void)_logCAEvents:(id)a3 eventType:(int64_t)a4 toStream:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = objc_alloc(MEMORY[0x277D420D0]);
        v15 = [v13 uniqueIdentifier];
        v16 = [v13 subtype];
        v17 = [v13 context];
        v18 = [v14 initWithType:a4 suggestionUniqueId:v15 suggestionType:@"action" suggestionSubtype:v16 suggestionContext:v17];

        [v8 sendEvent:v18];
        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_sendSpotlightSuggestionUpdateNotification:(id)a3
{
  v4 = a3;
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"zkwTriggerUIRefresh", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat) && [MEMORY[0x277D42590] isInternalBuild])
  {
    v5 = __atxlog_handle_blending();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Internal: trigger for all changes", v17, 2u);
    }

    notify_post([*MEMORY[0x277CEB298] UTF8String]);
  }

  else
  {
    v6 = [objc_opt_class() identifierForNowPlayingSuggestionFromLayout:v4];
    v7 = v6;
    v8 = v6 == self->_previousNowPlayingIdentifier || [(NSString *)v6 isEqualToString:?];
    objc_storeStrong(&self->_previousNowPlayingIdentifier, v7);
    v9 = [objc_opt_class() identifierForOngoingCallSuggestionFromLayout:v4];
    v10 = v9;
    v11 = v9 == self->_previousOngoingCallIdentifier || [(NSString *)v9 isEqualToString:?];
    previousOngoingCallIdentifier = self->_previousOngoingCallIdentifier;
    self->_previousOngoingCallIdentifier = v10;
    v13 = v10;

    v14 = [objc_opt_class() identifiersForDirectionsSuggestionFromLayout:v4];
    v15 = [(NSDictionary *)v14 isEqualToDictionary:self->_previousDirectionsIdentifiers];
    previousDirectionsIdentifiers = self->_previousDirectionsIdentifiers;
    self->_previousDirectionsIdentifiers = v14;

    if ((v8 & v11) != 1 || !v15)
    {
      notify_post([*MEMORY[0x277CEB298] UTF8String]);
    }
  }
}

- (void)_processChanges:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Removed %lu events - ATXSpotlightUIEvent", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processChanges:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_3_4(&dword_2263AA000, v1, v2, "Added %lu events - ATXSpotlightUIEvent", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end
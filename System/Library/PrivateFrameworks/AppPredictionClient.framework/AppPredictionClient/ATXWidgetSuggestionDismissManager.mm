@interface ATXWidgetSuggestionDismissManager
- (ATXWidgetSuggestionDismissManager)init;
- (ATXWidgetSuggestionDismissManager)initWithStore:(id)store;
- (BOOL)_shouldBlockSuggestionByRelatedDismissDates:(id)dates;
- (BOOL)shouldBlockSuggestionWithIntent:(id)intent;
- (BOOL)shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:(id)dismiss kind:(id)kind intent:(id)intent;
- (unint64_t)userDismissCountForWidgetSuggestionWithBundleId:(id)id;
@end

@implementation ATXWidgetSuggestionDismissManager

- (ATXWidgetSuggestionDismissManager)init
{
  v3 = +[ATXInformationStore sharedInstance];
  if (v3)
  {
    self = [(ATXWidgetSuggestionDismissManager *)self initWithStore:v3];
    selfCopy = self;
  }

  else
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXWidgetSuggestionDismissManager *)v5 init];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXWidgetSuggestionDismissManager)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = ATXWidgetSuggestionDismissManager;
  v6 = [(ATXWidgetSuggestionDismissManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (BOOL)shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:(id)dismiss kind:(id)kind intent:(id)intent
{
  selfCopy = self;
  intent = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:dismiss, kind, intent];
  LOBYTE(selfCopy) = [(ATXWidgetSuggestionDismissManager *)selfCopy _shouldBlockSuggestionByRelatedDismissDates:intent];

  return selfCopy;
}

- (BOOL)shouldBlockSuggestionWithIntent:(id)intent
{
  selfCopy = self;
  v4 = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent:intent];
  LOBYTE(selfCopy) = [(ATXWidgetSuggestionDismissManager *)selfCopy _shouldBlockSuggestionByRelatedDismissDates:v4];

  return selfCopy;
}

- (BOOL)_shouldBlockSuggestionByRelatedDismissDates:(id)dates
{
  v27 = *MEMORY[0x1E69E9840];
  datesCopy = dates;
  v4 = datesCopy;
  if (datesCopy)
  {
    if ([datesCopy count] <= 2)
    {
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
      startDateOfDismissHistoryConsidered = [objc_opt_class() startDateOfDismissHistoryConsidered];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = v4;
      v5 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v5)
      {
        v20 = v4;
        v8 = 0;
        v9 = 0;
        v10 = *v23;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v22 + 1) + 8 * i);
            startDate = [v12 startDate];
            endDate = [v12 endDate];
            [endDate timeIntervalSinceNow];
            if (v15 >= 0.0)
            {
              v16 = [startDate laterDate:v6];

              if (v16 == startDate)
              {
                ++v9;
                ++v8;
              }

              else
              {
                v17 = [startDate laterDate:startDateOfDismissHistoryConsidered];

                if (v17 == startDate)
                {
                  ++v8;
                }
              }
            }
          }

          v5 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v5);
        if (v9)
        {
          v18 = 1;
        }

        else
        {
          v18 = v8 > 2;
        }

        LOBYTE(v5) = v18;
        v4 = v20;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)userDismissCountForWidgetSuggestionWithBundleId:(id)id
{
  v3 = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:id];
  v4 = [v3 count];

  return v4;
}

@end
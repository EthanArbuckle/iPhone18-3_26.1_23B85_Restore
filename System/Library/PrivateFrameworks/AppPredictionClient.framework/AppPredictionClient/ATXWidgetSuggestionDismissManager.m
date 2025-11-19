@interface ATXWidgetSuggestionDismissManager
- (ATXWidgetSuggestionDismissManager)init;
- (ATXWidgetSuggestionDismissManager)initWithStore:(id)a3;
- (BOOL)_shouldBlockSuggestionByRelatedDismissDates:(id)a3;
- (BOOL)shouldBlockSuggestionWithIntent:(id)a3;
- (BOOL)shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:(id)a3 kind:(id)a4 intent:(id)a5;
- (unint64_t)userDismissCountForWidgetSuggestionWithBundleId:(id)a3;
@end

@implementation ATXWidgetSuggestionDismissManager

- (ATXWidgetSuggestionDismissManager)init
{
  v3 = +[ATXInformationStore sharedInstance];
  if (v3)
  {
    self = [(ATXWidgetSuggestionDismissManager *)self initWithStore:v3];
    v4 = self;
  }

  else
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXWidgetSuggestionDismissManager *)v5 init];
    }

    v4 = 0;
  }

  return v4;
}

- (ATXWidgetSuggestionDismissManager)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXWidgetSuggestionDismissManager;
  v6 = [(ATXWidgetSuggestionDismissManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (BOOL)shouldBlockWidgetSuggestionBecauseOfPreviousDismiss:(id)a3 kind:(id)a4 intent:(id)a5
{
  v5 = self;
  v6 = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:a3, a4, a5];
  LOBYTE(v5) = [(ATXWidgetSuggestionDismissManager *)v5 _shouldBlockSuggestionByRelatedDismissDates:v6];

  return v5;
}

- (BOOL)shouldBlockSuggestionWithIntent:(id)a3
{
  v3 = self;
  v4 = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithIntent:a3];
  LOBYTE(v3) = [(ATXWidgetSuggestionDismissManager *)v3 _shouldBlockSuggestionByRelatedDismissDates:v4];

  return v3;
}

- (BOOL)_shouldBlockSuggestionByRelatedDismissDates:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count] <= 2)
    {
      v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
      v21 = [objc_opt_class() startDateOfDismissHistoryConsidered];
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
            v13 = [v12 startDate];
            v14 = [v12 endDate];
            [v14 timeIntervalSinceNow];
            if (v15 >= 0.0)
            {
              v16 = [v13 laterDate:v6];

              if (v16 == v13)
              {
                ++v9;
                ++v8;
              }

              else
              {
                v17 = [v13 laterDate:v21];

                if (v17 == v13)
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

- (unint64_t)userDismissCountForWidgetSuggestionWithBundleId:(id)a3
{
  v3 = [(ATXInformationStore *)self->_store dateIntervalsOfUserRemovalOfSuggestedWidgetWithExtensionBundleId:a3];
  v4 = [v3 count];

  return v4;
}

@end
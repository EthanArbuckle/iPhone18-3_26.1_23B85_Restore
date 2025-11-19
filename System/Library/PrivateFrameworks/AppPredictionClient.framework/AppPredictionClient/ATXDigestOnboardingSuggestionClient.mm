@interface ATXDigestOnboardingSuggestionClient
+ (id)sharedInstance;
+ (void)changeNumPreviousDaysToCheckForNotificationProblemToNumDays:(unint64_t)a3;
+ (void)removeRandomizedSelectionForDigestOnboardingSuggestion;
+ (void)resetDigestOnboardingSuggestionsAtHour:(id)a3 minute:(id)a4;
+ (void)resetRandomizedSelectionForDigestOnboardingSuggestion;
- (ATXDigestOnboardingSuggestionClient)init;
- (BOOL)hasNotificationProblemForPreviousNumDays:(int64_t)a3;
- (id)notificationStreamPublisherForStartDate:(id)a3;
- (void)_handleLocaleChange;
- (void)_invalidateTriggerOnMainQueue;
- (void)_registerForKVOChangesOnMainQueue;
- (void)_registerForLocaleChangeOnMainQueue;
- (void)_registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:(double)a3 thresholdForShowingDigestOnboardingSuggestion:(double)a4;
- (void)_registerForTriggerOnMainQueueAtHour:(int64_t)a3 minute:(int64_t)a4;
- (void)_setProbabilityOfShowingDigestOnboardingToUser;
- (void)_suggestDigestOnboardingIfApplicableOnMainQueue;
- (void)_suggestDigestOnboardingIfApplicableOnMainQueueGivenNumberOfActiveNotifications:(unint64_t)a3 numberOfUniqueBundleIds:(unint64_t)a4 minActive:(unint64_t)a5 minUnique:(unint64_t)a6;
- (void)_unregisterForKVOChangesOnMainQueue;
- (void)_unregisterForLocaleChangeOnMainQueue;
- (void)averageNumberOfNotifications:(id)a3;
- (void)clientDidRejectOnboardingSuggestion;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerForOnboardingSuggestions;
- (void)registerObserver:(id)a3;
- (void)unregisterForOnboardingSuggestions;
@end

@implementation ATXDigestOnboardingSuggestionClient

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_0 != -1)
  {
    +[ATXDigestOnboardingSuggestionClient sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_0;

  return v3;
}

void __53__ATXDigestOnboardingSuggestionClient_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_0;
  sharedInstance__pasExprOnceResult_0 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXDigestOnboardingSuggestionClient)init
{
  v13.receiver = self;
  v13.super_class = ATXDigestOnboardingSuggestionClient;
  v2 = [(ATXDigestOnboardingSuggestionClient *)&v13 init];
  if (v2)
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ATXDigestOnboardingSuggestionClient *)v3 init];
    }

    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("ATXDigestOnboardingSuggestionClient.queue", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_alloc(MEMORY[0x1E695E000]);
    v10 = [v9 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v10;

    [(ATXDigestOnboardingSuggestionClient *)v2 _setProbabilityOfShowingDigestOnboardingToUser];
  }

  return v2;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ATXDigestOnboardingSuggestionClient_registerObserver___block_invoke;
  v6[3] = &unk_1E80C0958;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)registerForOnboardingSuggestions
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(queue, block);
}

void __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke(uint64_t a1)
{
  v2 = +[ATXNotificationManagementMAConstants sharedInstance];
  v3 = [v2 digestOnboardingSuggestionHour];
  v4 = [v2 digestOnboardingSuggestionMinute];
  v5 = [v2 numPreviousDaysToCheckForNotificationProblemForDigestOnboardingSuggestion];
  [v2 thresholdForShowingDigestOnboardingSuggestionToSeedUsers];
  v7 = v6;
  [v2 thresholdForShowingDigestOnboardingSuggestion];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke_2;
  v9[3] = &unk_1E80C0C68;
  v9[4] = *(a1 + 32);
  v9[5] = v3;
  v9[6] = v4;
  v9[7] = v5;
  v9[8] = v7;
  v9[9] = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __71__ATXDigestOnboardingSuggestionClient_registerForOnboardingSuggestions__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 40) forKey:@"digestOnboardingSuggestionHour"];
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 48) forKey:@"digestOnboardingSuggestionMinute"];
  [*(*(a1 + 32) + 16) setInteger:*(a1 + 56) forKey:@"numPreviousDaysToCheckForNotificationProblem"];
  [*(a1 + 32) _registerForKVOChangesOnMainQueue];
  [*(a1 + 32) _registerForLocaleChangeOnMainQueue];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);

  return [v2 _registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:v3 thresholdForShowingDigestOnboardingSuggestion:v4];
}

- (void)_registerForOnboardingSuggestionOnMainQueueWithThresholdForShowingDigestOnboardingSuggestionToSeedUsers:(double)a3 thresholdForShowingDigestOnboardingSuggestion:(double)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  [v7 doubleValue];
  v9 = v8;

  v10 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "Digest Onboarding Suggestion Threshold for seed user = %f", &v14, 0xCu);
  }

  v11 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a4;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "Digest Onboarding Suggestion Threshold for GM = %f", &v14, 0xCu);
  }

  if ([MEMORY[0x1E69C5CF8] isBetaBuild])
  {
    if (v9 >= a3)
    {
      v12 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 134217984;
        v15 = v9;
        v13 = "Not registering for digest onboarding suggestion for seed user since the random number %f assigned to device is not less than threshold";
LABEL_13:
        _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, v13, &v14, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

LABEL_10:
    [(ATXDigestOnboardingSuggestionClient *)self _registerForTriggerOnMainQueueAtHour:[(NSUserDefaults *)self->_userDefaults integerForKey:@"digestOnboardingSuggestionHour"] minute:[(NSUserDefaults *)self->_userDefaults integerForKey:@"digestOnboardingSuggestionMinute"]];
    return;
  }

  if (v9 < a4)
  {
    goto LABEL_10;
  }

  v12 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v9;
    v13 = "Not registering for digest onboarding suggestion since the random number %f assigned to device is not less than threshold";
    goto LABEL_13;
  }

LABEL_14:
}

- (void)_registerForTriggerOnMainQueueAtHour:(int64_t)a3 minute:(int64_t)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E695DEE8] currentCalendar];
  v9 = [v8 components:60 fromDate:v7];
  if ([v9 hour] > a3)
  {
    v10 = [v8 dateByAddingUnit:16 value:1 toDate:v7 options:2];
    v11 = [v8 components:28 fromDate:v10];

    v9 = v11;
  }

  [v9 setHour:a3];
  [v9 setMinute:a4];
  v12 = [v8 dateFromComponents:v9];
  v13 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "ATXDigestOnboardingSuggestionClient: scheduling trigger for %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v14 = objc_alloc(MEMORY[0x1E695DFF0]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__ATXDigestOnboardingSuggestionClient__registerForTriggerOnMainQueueAtHour_minute___block_invoke;
  v18[3] = &unk_1E80C0CB8;
  objc_copyWeak(&v19, buf);
  v15 = [v14 initWithFireDate:v12 interval:1 repeats:v18 block:86400.0];
  trigger = self->_trigger;
  self->_trigger = v15;

  v17 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v17 addTimer:self->_trigger forMode:*MEMORY[0x1E695D918]];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

void __83__ATXDigestOnboardingSuggestionClient__registerForTriggerOnMainQueueAtHour_minute___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _suggestDigestOnboardingIfApplicableOnMainQueue];
}

- (void)_invalidateTriggerOnMainQueue
{
  trigger = self->_trigger;
  if (trigger && [(NSTimer *)trigger isValid])
  {
    v4 = self->_trigger;

    [(NSTimer *)v4 invalidate];
  }
}

- (void)unregisterForOnboardingSuggestions
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__ATXDigestOnboardingSuggestionClient_unregisterForOnboardingSuggestions__block_invoke;
  block[3] = &unk_1E80C0C90;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __73__ATXDigestOnboardingSuggestionClient_unregisterForOnboardingSuggestions__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _unregisterForLocaleChangeOnMainQueue];
  [*(a1 + 32) _unregisterForKVOChangesOnMainQueue];
  v2 = *(a1 + 32);

  return [v2 _invalidateTriggerOnMainQueue];
}

- (void)_suggestDigestOnboardingIfApplicableOnMainQueue
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_1BF549000, a2, OS_LOG_TYPE_DEBUG, "%@: No observers registered", &v5, 0xCu);
}

void __86__ATXDigestOnboardingSuggestionClient__suggestDigestOnboardingIfApplicableOnMainQueue__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[ATXNotificationManagementMAConstants sharedInstance];
  v7 = [v6 digestOnboardingSuggestionMinimumActiveNotifications];
  v8 = [v6 digestOnboardingSuggestionMinimumUniqueBundleIds];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__ATXDigestOnboardingSuggestionClient__suggestDigestOnboardingIfApplicableOnMainQueue__block_invoke_2;
  v10[3] = &unk_1E80C0CE0;
  v9 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v12 = a2;
  v13 = a3;
  v14 = v7;
  v15 = v8;
  v11 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (void)_suggestDigestOnboardingIfApplicableOnMainQueueGivenNumberOfActiveNotifications:(unint64_t)a3 numberOfUniqueBundleIds:(unint64_t)a4 minActive:(unint64_t)a5 minUnique:(unint64_t)a6
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138413314;
    v39 = v13;
    v40 = 2048;
    v41 = a3;
    v42 = 2048;
    v43 = a5;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = a6;
    _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%@: Active notifications: %ld (min: %ld); unique apps: %ld (min: %ld)", buf, 0x34u);
  }

  v14 = __atxlog_handle_notification_management();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (a3 < a5 || a4 < a6)
  {
    if (v15)
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412290;
      v39 = v22;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "%@: We do not have the minimum active notifications and unique apps", buf, 0xCu);
    }
  }

  else
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "%@: We have the minimum active notifications and unique apps", buf, 0xCu);
    }

    v14 = objc_opt_new();
    if ([v14 digestSetupComplete])
    {
      [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"hasSetUpDigestBefore"];
    }

    if ([(NSUserDefaults *)self->_userDefaults BOOLForKey:@"hasSetUpDigestBefore"]|| [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"digestOnboardingSuggestionShown"])
    {
      v18 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412290;
        v39 = v20;
        _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, "%@: Digest Onboarding has already been suggested", buf, 0xCu);
      }
    }

    else
    {
      v23 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "%@: Suggesting Digest Onboarding to client", buf, 0xCu);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v26 = self->_observers;
      v27 = [(NSHashTable *)v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v34;
        do
        {
          v30 = 0;
          do
          {
            if (*v34 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v33 + 1) + 8 * v30);
            v32 = objc_opt_new();
            [v31 digestOnboardingSuggestionClient:self didSuggestOnboarding:{v32, v33}];

            ++v30;
          }

          while (v28 != v30);
          v28 = [(NSHashTable *)v26 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v28);
      }

      [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"digestOnboardingSuggestionShown"];
      [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];
    }
  }
}

- (void)averageNumberOfNotifications:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke;
  v7[3] = &unk_1E80C0D78;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  v3 = objc_opt_new();
  v4 = [v2 dateByAddingUnit:16 value:-7 toDate:v3 options:2];

  v5 = [*(a1 + 32) notificationStreamPublisherForStartDate:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke_3;
  v13[3] = &unk_1E80C0D50;
  v6 = v4;
  v14 = v6;
  v15 = &v16;
  v7 = [v5 sinkWithCompletion:&__block_literal_global_27 receiveInput:v13];
  v8 = v17[3];
  v9 = __atxlog_handle_notification_management();
  v10 = v8 / 7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v10;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "Average Number of notifications being sent to client = %lu", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v11, v12);
  _Block_object_dispose(&v16, 8);
}

void __68__ATXDigestOnboardingSuggestionClient_averageNumberOfNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v10 = [a2 eventBody];
  v3 = [v10 bundleID];
  if (v3)
  {
    v4 = v3;
    v5 = [v10 absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 >= v9)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

- (BOOL)hasNotificationProblemForPreviousNumDays:(int64_t)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v6 = objc_opt_new();
  v31 = [v5 dateByAddingUnit:16 value:-a3 toDate:v6 options:0];

  v30 = objc_opt_new();
  v7 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]";
    *&buf[12] = 2112;
    *&buf[14] = v31;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: Checking for notification problem from start date: %@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  if (a3 >= 1)
  {
    v9 = a3;
    do
    {
      v10 = objc_opt_new();
      [v8 addObject:v10];

      --v9;
    }

    while (v9);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v48 = 0;
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
  v12 = [(ATXDigestOnboardingSuggestionClient *)self notificationStreamPublisherForStartDate:v11];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2;
  v38[3] = &unk_1E80C0DA0;
  v29 = v5;
  v39 = v29;
  v40 = buf;
  v13 = [v12 sinkWithCompletion:&__block_literal_global_32 shouldContinue:v38];

  if (*(*&buf[8] + 24))
  {
    v14 = [(ATXDigestOnboardingSuggestionClient *)self notificationStreamPublisherForStartDate:v31];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2_38;
    v32[3] = &unk_1E80C0DC8;
    v33 = v31;
    v34 = v29;
    v35 = v30;
    v37 = a3;
    v15 = v8;
    v36 = v15;
    v16 = [v14 sinkWithCompletion:&__block_literal_global_37 receiveInput:v32];

    v17 = 0;
    do
    {
      v18 = [v15 count];
      v19 = v17 >= v18;
      if (v17 >= v18)
      {
        break;
      }

      v20 = [v15 objectAtIndexedSubscript:v17];
      v21 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [v15 objectAtIndexedSubscript:v17];
        v25 = [v24 count];
        *v41 = 138412802;
        v42 = v23;
        v43 = 2048;
        v44 = v17 + 1;
        v45 = 2048;
        v46 = v25;
        _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "%@: Number of apps receving notifications on day %lu: %lu", v41, 0x20u);
      }

      v26 = [v20 count] > 5;
      ++v17;
    }

    while (v26);

    v27 = v33;
  }

  else
  {
    v27 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 136315138;
      v42 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]";
      _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "%s: Not suggesting digest onboarding because there likely isn't enough data in the notification database.", v41, 0xCu);
    }

    v19 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v19;
}

BOOL __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a2 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [v3 absoluteTimestamp];
    v6 = *(a1 + 32);
    v7 = objc_opt_new();
    v8 = [v6 components:16 fromDate:v5 toDate:v7 options:0];

    v9 = [v8 day];
    if (v9 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = -v9;
    }

    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 bundleID];
      v16 = 136315906;
      v17 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
      v18 = 2048;
      v19 = v10;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: First valid notification event in the stream occurred %ld days ago on %@ from %@", &v16, 0x2Au);
    }

    v13 = __atxlog_handle_notification_management();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10 > 0xE)
    {
      if (v14)
      {
        v16 = 136315138;
        v17 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
        _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: There's enough notification data on the device to show the digest onboarding suggestion.", &v16, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else
    {
      if (v14)
      {
        v16 = 136315394;
        v17 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke";
        v18 = 2048;
        v19 = 14;
        _os_log_impl(&dword_1BF549000, v13, OS_LOG_TYPE_DEFAULT, "%s: Not enough notification data to show digest onboarding suggestion since first valid notification event in the stream was less than %ld days old. This means we likely don't have enough data in the notification database to return a correct list of apps ranked by non-time-sensitive / non-message notification counts.", &v16, 0x16u);
      }
    }
  }

  else
  {
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "[ATXDigestOnboardingSuggestionClient hasNotificationProblemForPreviousNumDays:]_block_invoke_2";
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: Event didn't have bundleId, continuing.", &v16, 0xCu);
    }
  }

  return v4 == 0;
}

void __80__ATXDigestOnboardingSuggestionClient_hasNotificationProblemForPreviousNumDays___block_invoke_2_38(uint64_t a1, void *a2)
{
  v17 = [a2 eventBody];
  v3 = [v17 bundleID];
  if (v3)
  {
    v4 = v3;
    v5 = [v17 absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
    [*(a1 + 32) timeIntervalSinceReferenceDate];
    v9 = v8;

    if (v7 >= v9)
    {
      v10 = *(a1 + 40);
      v11 = [v17 absoluteTimestamp];
      v12 = [v10 components:16 fromDate:v11 toDate:*(a1 + 48) options:0];

      v13 = [v12 day];
      if (v13 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      if (v14 < *(a1 + 64))
      {
        v15 = [*(a1 + 56) objectAtIndexedSubscript:?];
        v16 = [v17 bundleID];
        [v15 addObject:v16];
      }
    }
  }
}

- (id)notificationStreamPublisherForStartDate:(id)a3
{
  v4 = a3;
  v5 = BiomeLibrary();
  v6 = [v5 Notification];
  v7 = [v6 Usage];
  v8 = [v7 atx_publisherFromStartDate:v4];

  v9 = [(ATXDigestOnboardingSuggestionClient *)self _notificationStreamFilterBlock];
  v10 = [v8 filterWithIsIncluded:v9];

  return v10;
}

uint64_t __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];

  if (v3)
  {
    v4 = [v2 eventBody];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke_cold_1(v4, v6);
      }

      v7 = MEMORY[0x1E695DF30];
      v8 = *MEMORY[0x1E695D930];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [v7 raise:v8 format:{@"Encountered event in ATXDigestOnboardingSuggestionClient that was of unknown class. Expected BMNotificationUsage. Received: %@", v10}];
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_unregisterForLocaleChangeOnMainQueue
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];
}

- (void)_registerForLocaleChangeOnMainQueue
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleLocaleChange name:*MEMORY[0x1E695D8F0] object:0];
}

- (void)_handleLocaleChange
{
  [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];

  [(ATXDigestOnboardingSuggestionClient *)self registerForOnboardingSuggestions];
}

- (void)_setProbabilityOfShowingDigestOnboardingToUser
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];

  if (!v3)
  {
    v4 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0;
    v5 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "Random number being assigned for digest onboarding suggestion = %f", &v8, 0xCu);
    }

    userDefaults = self->_userDefaults;
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
    [(NSUserDefaults *)userDefaults setObject:v7 forKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  }
}

+ (void)resetDigestOnboardingSuggestionsAtHour:(id)a3 minute:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x1E695E000]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  [v7 setBool:0 forKey:@"hasSetUpDigestBefore"];
  [v7 setBool:0 forKey:@"digestOnboardingSuggestionShown"];
  if (v8)
  {
    [v7 setInteger:objc_msgSend(v8 forKey:{"integerValue"), @"digestOnboardingSuggestionHour"}];
  }

  if (v5)
  {
    [v7 setInteger:objc_msgSend(v5 forKey:{"integerValue"), @"digestOnboardingSuggestionMinute"}];
  }
}

+ (void)removeRandomizedSelectionForDigestOnboardingSuggestion
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  [v3 setObject:&unk_1F3E60D68 forKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Removed randomized selection for digest onboarding suggestion", v5, 2u);
  }
}

+ (void)resetRandomizedSelectionForDigestOnboardingSuggestion
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  [v3 removeObjectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];
  v4 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "Resetting randomized selection for digest onboarding suggestion", v5, 2u);
  }
}

+ (void)changeNumPreviousDaysToCheckForNotificationProblemToNumDays:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695E000]);
  v5 = [v4 initWithSuiteName:*MEMORY[0x1E69C5AC8]];
  [v5 setInteger:a3 forKey:@"numPreviousDaysToCheckForNotificationProblem"];
  v6 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "Change number of previous days to check for notification problem to %lu", &v7, 0xCu);
  }
}

- (void)_registerForKVOChangesOnMainQueue
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    if (!self->_hasRegisteredKVO)
    {
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"digestOnboardingSuggestionHour" options:0 context:0];
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"digestOnboardingSuggestionMinute" options:0 context:0];
      [(NSUserDefaults *)self->_userDefaults addObserver:self forKeyPath:@"probabilityOfShowingDigestOnboardingSuggestion" options:0 context:0];
      self->_hasRegisteredKVO = 1;
    }
  }
}

- (void)_unregisterForKVOChangesOnMainQueue
{
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    if (self->_hasRegisteredKVO)
    {
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"digestOnboardingSuggestionHour" context:0];
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"digestOnboardingSuggestionMinute" context:0];
      [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:@"probabilityOfShowingDigestOnboardingSuggestion" context:0];
      self->_hasRegisteredKVO = 0;
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"digestOnboardingSuggestionHour"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"digestOnboardingSuggestionMinute") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"probabilityOfShowingDigestOnboardingSuggestion"))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E80C0958;
    v15 = v10;
    v16 = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ATXDigestOnboardingSuggestionClient;
    [(ATXDigestOnboardingSuggestionClient *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

void __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isEqualToString:@"probabilityOfShowingDigestOnboardingSuggestion"])
  {
    v2 = [*(*(a1 + 40) + 16) objectForKey:@"probabilityOfShowingDigestOnboardingSuggestion"];

    if (!v2)
    {
      [*(a1 + 40) _setProbabilityOfShowingDigestOnboardingToUser];
    }

    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "registering for onboarding suggestions again, since the random number has been changed";
LABEL_8:
      _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }
  }

  else
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "registering for onboarding suggestions again, since the suggestion time has been changed";
      goto LABEL_8;
    }
  }

  [*(a1 + 40) _invalidateTriggerOnMainQueue];
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_50;
  block[3] = &unk_1E80C0C90;
  block[4] = v5;
  dispatch_async(v6, block);
}

void __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_50(uint64_t a1)
{
  v2 = +[ATXNotificationManagementMAConstants sharedInstance];
  [v2 thresholdForShowingDigestOnboardingSuggestionToSeedUsers];
  v4 = v3;
  [v2 thresholdForShowingDigestOnboardingSuggestion];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__ATXDigestOnboardingSuggestionClient_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  block[3] = &unk_1E80C0E10;
  block[4] = *(a1 + 32);
  block[5] = v4;
  block[6] = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)dealloc
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(ATXDigestOnboardingSuggestionClient *)self _unregisterForKVOChangesOnMainQueue];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__ATXDigestOnboardingSuggestionClient_dealloc__block_invoke;
    block[3] = &unk_1E80C0C90;
    block[4] = self;
    dispatch_sync(MEMORY[0x1E69E96A0], block);
  }

  v3.receiver = self;
  v3.super_class = ATXDigestOnboardingSuggestionClient;
  [(ATXDigestOnboardingSuggestionClient *)&v3 dealloc];
}

- (void)clientDidRejectOnboardingSuggestion
{
  v3 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "ATXDigestOnboardingSuggestionClient: client rejected onboarding suggestion", v4, 2u);
  }

  [objc_opt_class() resetDigestOnboardingSuggestionsAtHour:0 minute:0];
  [(ATXDigestOnboardingSuggestionClient *)self unregisterForOnboardingSuggestions];
  [(ATXDigestOnboardingSuggestionClient *)self registerForOnboardingSuggestions];
}

void __69__ATXDigestOnboardingSuggestionClient__notificationStreamFilterBlock__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "Encountered event in ATXDigestOnboardingSuggestionClient that was of unknown class. Expected BMNotificationUsage. Received: %@", &v5, 0xCu);
}

@end
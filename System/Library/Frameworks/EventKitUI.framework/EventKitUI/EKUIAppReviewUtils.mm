@interface EKUIAppReviewUtils
+ (BOOL)_shouldDisplayReviewPromptWithCalendarModel:(id)a3;
+ (BOOL)_upcomingEventCountMeetsThresholdInCalendarModel:(id)a3;
+ (id)_queue;
+ (id)_sharedStoreReview;
+ (void)applicationDidForeground;
+ (void)displayReviewPromptIfNeededInScene:(id)a3 calendarModel:(id)a4;
@end

@implementation EKUIAppReviewUtils

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[EKUIAppReviewUtils _queue];
  }

  v3 = _queue_queue;

  return v3;
}

+ (void)applicationDidForeground
{
  if ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = [a1 _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKUIAppReviewUtils_applicationDidForeground__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_async(v3, block);
  }
}

void __28__EKUIAppReviewUtils__queue__block_invoke()
{
  v0 = dispatch_queue_create("EKUIAppReviewUtils", 0);
  v1 = _queue_queue;
  _queue_queue = v0;
}

void __46__EKUIAppReviewUtils_applicationDidForeground__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _sharedStoreReview];
  [v1 applicationDidForeground];
}

void __40__EKUIAppReviewUtils__sharedStoreReview__block_invoke()
{
  v4 = [MEMORY[0x1E698CB20] bagSubProfile];
  v0 = [MEMORY[0x1E698CB20] bagSubProfileVersion];
  v1 = [MEMORY[0x1E698C7D8] bagForProfile:v4 profileVersion:v0];
  v2 = [objc_alloc(MEMORY[0x1E698CB20]) initWithBag:v1];
  v3 = _sharedStoreReview_sharedStoreReview;
  _sharedStoreReview_sharedStoreReview = v2;
}

+ (id)_sharedStoreReview
{
  if (_sharedStoreReview_onceToken != -1)
  {
    +[EKUIAppReviewUtils _sharedStoreReview];
  }

  v3 = _sharedStoreReview_sharedStoreReview;

  return v3;
}

+ (void)displayReviewPromptIfNeededInScene:(id)a3 calendarModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_os_feature_enabled_impl())
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = _os_feature_enabled_impl();
  if (v7 && (v8 & 1) != 0)
  {
LABEL_6:
    v9 = [a1 _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke;
    block[3] = &unk_1E8441000;
    v13 = a1;
    v11 = v7;
    v12 = v6;
    dispatch_async(v9, block);
  }

LABEL_7:
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E695DF00] now];
  v3 = v2;
  if (NavdRecentLocationsEntitlment_block_invoke_previousAttempt && ([v2 timeIntervalSinceReferenceDate], v5 = v4, objc_msgSend(NavdRecentLocationsEntitlment_block_invoke_previousAttempt, "timeIntervalSinceReferenceDate"), v5 - v6 < 600.0))
  {
    v7 = logHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_INFO, "Skipping app store review prompt because it is too soon", buf, 2u);
    }
  }

  else
  {
    objc_storeStrong(&NavdRecentLocationsEntitlment_block_invoke_previousAttempt, v3);
    v8 = logHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_INFO, "Asking whether we should attempt an app store review prompt", buf, 2u);
    }

    v9 = [a1[6] _sharedStoreReview];
    v10 = [v9 shouldAttemptReview];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_16;
    v11[3] = &unk_1E8440FD8;
    v14 = a1[6];
    v12 = a1[4];
    v13 = a1[5];
    [v10 addFinishBlock:v11];

    v7 = v12;
  }
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_16(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[6] _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2;
  block[3] = &unk_1E843EED8;
  v11 = v6;
  v12 = v5;
  v15 = a1[6];
  v13 = a1[4];
  v14 = a1[5];
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32))
  {
    if ([*(a1 + 40) BOOLValue])
    {
      if ([*(a1 + 64) _shouldDisplayReviewPromptWithCalendarModel:*(a1 + 48)])
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_17;
        v7[3] = &unk_1E843F690;
        v4 = *(a1 + 56);
        v5 = *(a1 + 64);
        v8 = v4;
        v9 = v5;
        dispatch_async(MEMORY[0x1E69E96A0], v7);
        v2 = v8;
        goto LABEL_4;
      }

      v2 = logHandle();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      *buf = 0;
      v6 = "Not attempting to ask for app store review because our filtering says this is not a good candidate";
    }

    else
    {
      v2 = logHandle();
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_4;
      }

      *buf = 0;
      v6 = "Not attempting to ask for app store review because [AMSSharedStoreReview shouldAttemptReview] said NO";
    }

    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_INFO, v6, buf, 2u);
    goto LABEL_4;
  }

  v2 = logHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2_cold_1(v1, v2);
  }

LABEL_4:
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_17(uint64_t a1)
{
  v2 = logHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to prompt for an app store review", v4, 2u);
  }

  [MEMORY[0x1E697BAA8] requestReviewInScene:*(a1 + 32)];
  v3 = [*(a1 + 40) _sharedStoreReview];
  [v3 didAttemptPromptReview];
}

+ (BOOL)_shouldDisplayReviewPromptWithCalendarModel:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([a1 _upcomingEventCountMeetsThresholdInCalendarModel:v4] & 1) == 0)
  {
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [v4 eventStore];
  v6 = [v5 sources];

  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v7)
  {
LABEL_10:

LABEL_17:
    v14 = logHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = *v30;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v30 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v29 + 1) + 8 * v10);
    v12 = MEMORY[0x1E6992EF8];
    v13 = [v11 externalID];
    LOBYTE(v12) = [v12 isiCloudAccount:v13];

    if (v12)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v8)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v14 = v11;

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v14 allCalendars];
  if ([v15 count] < 5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v15;
    v19 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v26;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v16);
          }

          if ([*(*(&v25 + 1) + 8 * i) sharingStatus] == 1)
          {
            ++v21;
          }

          if (v21 >= 2)
          {
            v24 = logHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
            }

            goto LABEL_37;
          }
        }

        v20 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v16 = logHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

    v17 = 0;
  }

  else
  {
    v16 = logHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[EKUIAppReviewUtils _shouldDisplayReviewPromptWithCalendarModel:];
    }

LABEL_37:
    v17 = 1;
  }

LABEL_20:
  return v17;
}

+ (BOOL)_upcomingEventCountMeetsThresholdInCalendarModel:(id)a3
{
  v3 = a3;
  v4 = CUIKTodayDate();
  v5 = CalCopyCalendar();
  v6 = [v5 dateByAddingUnit:16 value:7 toDate:v4 options:0];

  v7 = [v6 dateByAddingTimeInterval:-1.0];

  v8 = [v3 sectionForCachedOccurrencesOnDate:v4];
  v9 = [v3 sectionForCachedOccurrencesOnDate:v7];
  v10 = [v3 dateForCachedOccurrencesInSection:v8];
  v11 = [v3 dateForCachedOccurrencesInSection:v9];
  v12 = v8 + [v10 CalIsBeforeDate:v4];
  v13 = v9 - [v11 CalIsAfterDate:v7];
  if (v12 <= v13)
  {
    v15 = 0;
    do
    {
      v15 += [v3 numberOfCachedOccurrencesInSection:v12];
      v14 = v15 > 0xD;
      ++v12;
    }

    while (v15 <= 0xD && v12 <= v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __71__EKUIAppReviewUtils_displayReviewPromptIfNeededInScene_calendarModel___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1D3400000, a2, OS_LOG_TYPE_ERROR, "Error returned from [AMSSharedStoreReview shouldAttemptReview]: %@", &v3, 0xCu);
}

@end
@interface ATXHomeScreenWidgetFeedbackProcessor
+ (BOOL)_shouldProcessEvent:(id)a3;
+ (id)_retrieveLastHistogramUpdateDate;
+ (void)_storeLastHistogramUpdateDate:(id)a3;
- (ATXHomeScreenWidgetFeedbackProcessor)init;
- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)a3 publisher:(id)a4;
- (void)_addToHistogramForWidgetsInEvent:(id)a3 type:(unint64_t)a4;
- (void)_updateHistogramForEvent:(id)a3;
- (void)updateHistogramsForRecentHomeScreenEvents;
@end

@implementation ATXHomeScreenWidgetFeedbackProcessor

+ (BOOL)_shouldProcessEvent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 homeScreenEvent];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 eventTypeString];
      if ([v6 isEqualToString:@"Unknown"])
      {
        v7 = 0;
LABEL_13:

LABEL_14:
        if (v7 <= 0xC)
        {
          v8 = 0x100Eu >> v7;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_17;
      }

      if ([v6 isEqualToString:@"HomeScreenPageShown"])
      {
        v7 = 1;
        goto LABEL_13;
      }

      if ([v6 isEqualToString:@"HomeScreenDisappeared"])
      {
        v7 = 2;
        goto LABEL_13;
      }

      if ([v6 isEqualToString:@"StackChanged"])
      {
        v7 = 3;
        goto LABEL_13;
      }

      if ([v6 isEqualToString:@"WidgetTapped"])
      {
        goto LABEL_20;
      }

      if ([v6 isEqualToString:@"WidgetLongLook"])
      {
        v7 = 5;
        goto LABEL_13;
      }

      if ([v6 isEqualToString:@"WidgetUserFeedback"])
      {
LABEL_20:
      }

      else
      {
        if ([v6 isEqualToString:@"UserStackConfigChanged"])
        {
          v7 = 7;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"DeviceLocked"])
        {
          v7 = 8;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"DeviceUnlocked"])
        {
          v7 = 9;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"PinnedWidgetAdded"])
        {
          v7 = 10;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"PinnedWidgetDeleted"])
        {
          v7 = 11;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"SpecialPageAppeared"])
        {
          v7 = 12;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"SpecialPageDisappeared"])
        {
          v7 = 13;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"StackShown"])
        {
          v7 = 14;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"StackDisappeared"])
        {
          v7 = 15;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"StackCreated"])
        {
          v7 = 16;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"StackDeleted"])
        {
          v7 = 17;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"WidgetAddedToStack"])
        {
          v7 = 18;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"WidgetRemovedFromStack"])
        {
          v7 = 19;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"StackVisibilityChanged"])
        {
          v7 = 20;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"AppAdded"])
        {
          v7 = 21;
          goto LABEL_13;
        }

        if ([v6 isEqualToString:@"AppRemoved"])
        {
          v7 = 22;
        }

        else
        {
          v7 = 0;
        }

        if ((v7 & 0xFFFFFFFD) != 4)
        {
          goto LABEL_14;
        }
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

LABEL_17:

    goto LABEL_18;
  }

  v8 = 0;
LABEL_18:

  return v8 & 1;
}

- (void)_addToHistogramForWidgetsInEvent:(id)a3 type:(unint64_t)a4
{
  v6 = [a3 metadata];
  v7 = [v6 stacks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke;
  v8[3] = &unk_278598B58;
  v8[4] = self;
  v8[5] = a4;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

void __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke_cold_1(v4);
  }

  v6 = *(*(a1 + 32) + 8);
  v7 = [v4 extensionBundleId];
  [v6 addEventForWidgetBundleId:v7 type:*(a1 + 40)];
}

- (void)_updateHistogramForEvent:(id)a3
{
  v41 = a3;
  v5 = [v41 eventTypeString];
  if ([v5 isEqualToString:@"Unknown"])
  {
    goto LABEL_2;
  }

  if ([v5 isEqualToString:@"HomeScreenPageShown"])
  {

    [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:v41 type:2];
    objc_storeStrong(&self->_lastPageAppearEvent, a3);
    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"HomeScreenDisappeared"])
  {

    lastPageAppearEvent = self->_lastPageAppearEvent;
    if (lastPageAppearEvent)
    {
      v7 = [(ATXHomeScreenEvent *)lastPageAppearEvent metadata];
      v8 = [v7 pageIndex];
      v9 = [v41 metadata];
      v10 = [v9 pageIndex];
      v11 = [v8 isEqual:v10];

      if (v11)
      {
        v12 = [v41 date];
        v13 = [(ATXHomeScreenEvent *)self->_lastPageAppearEvent date];
        [v12 timeIntervalSinceDate:v13];
        v15 = v14;

        if (v15 > 5.0)
        {
          [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:v41 type:1];
        }

        v16 = self->_lastPageAppearEvent;
        self->_lastPageAppearEvent = 0;
      }
    }

    goto LABEL_6;
  }

  if ([v5 isEqualToString:@"StackChanged"])
  {

    v17 = [v41 reason];
    v18 = NSStringForATXHomeScreenStackChangeReason();
    v19 = [v17 isEqualToString:v18];

    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v25 = [v41 reason];
      v26 = NSStringForATXHomeScreenStackChangeReason();
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {
        v20 = 4;
      }

      else
      {
        v32 = [v41 reason];
        v33 = NSStringForATXHomeScreenStackChangeReason();
        v34 = [v32 isEqualToString:v33];

        if (v34)
        {
          v20 = 5;
        }

        else
        {
          v35 = [v41 reason];
          v36 = NSStringForATXHomeScreenStackChangeReason();
          v37 = [v35 isEqualToString:v36];

          if (!v37)
          {
LABEL_38:
            widgetFeedback = self->_widgetFeedback;
            v5 = [v41 widgetBundleId];
            v22 = widgetFeedback;
            v23 = v5;
            v24 = 2;
            goto LABEL_39;
          }

          v20 = 6;
        }
      }
    }

    v38 = self->_widgetFeedback;
    v39 = [v41 widgetBundleId];
    [(ATXHomeScreenWidgetFeedback *)v38 addEventForWidgetBundleId:v39 type:v20];

    goto LABEL_38;
  }

  if ([v5 isEqualToString:@"WidgetTapped"])
  {

    v21 = self->_widgetFeedback;
    v5 = [v41 widgetBundleId];
    v22 = v21;
    v23 = v5;
    v24 = 0;
    goto LABEL_39;
  }

  if ([v5 isEqualToString:@"WidgetLongLook"])
  {
    goto LABEL_2;
  }

  if ([v5 isEqualToString:@"WidgetUserFeedback"])
  {

    v28 = [v41 reason];
    v29 = NSStringForATXHomeScreenWidgetExplicitFeedback();
    v30 = [v28 isEqualToString:v29];

    if (!v30)
    {
      goto LABEL_6;
    }

    v31 = self->_widgetFeedback;
    v5 = [v41 widgetBundleId];
    v22 = v31;
    v23 = v5;
    v24 = 7;
LABEL_39:
    [(ATXHomeScreenWidgetFeedback *)v22 addEventForWidgetBundleId:v23 type:v24];
    goto LABEL_3;
  }

  if ([v5 isEqualToString:@"UserStackConfigChanged"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"DeviceLocked") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"DeviceUnlocked") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PinnedWidgetAdded") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"PinnedWidgetDeleted"))
  {
LABEL_2:

LABEL_3:
    goto LABEL_6;
  }

  if (([v5 isEqualToString:@"SpecialPageAppeared"] & 1) == 0)
  {
    if (([v5 isEqualToString:@"SpecialPageDisappeared"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"AppAdded") & 1) == 0)
    {
      [v5 isEqualToString:@"AppRemoved"];
    }

    goto LABEL_2;
  }

  [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:v41 type:2];
LABEL_6:

  MEMORY[0x2821F96F8]();
}

+ (id)_retrieveLastHistogramUpdateDate
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 objectForKey:@"HomeScreenLastEventDateProcessedForHistograms"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(ATXHomeScreenWidgetFeedbackProcessor *)v5];
    }

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];

    v4 = v6;
  }

  return v4;
}

+ (void)_storeLastHistogramUpdateDate:(id)a3
{
  v3 = MEMORY[0x277CBEBD0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v6 setObject:v4 forKey:@"HomeScreenLastEventDateProcessedForHistograms"];
}

- (ATXHomeScreenWidgetFeedbackProcessor)init
{
  v3 = objc_opt_new();
  v4 = +[ATXHomeScreenWidgetFeedbackProcessor _retrieveLastHistogramUpdateDate];
  [v4 timeIntervalSinceReferenceDate];
  v5 = [v3 genericEventPublisherFromStartTime:?];

  v6 = objc_opt_new();
  v7 = [(ATXHomeScreenWidgetFeedbackProcessor *)self initWithWidgetFeedback:v6 publisher:v5];

  return v7;
}

- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)a3 publisher:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenWidgetFeedbackProcessor;
  v9 = [(ATXHomeScreenWidgetFeedbackProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_widgetFeedback, a3);
    objc_storeStrong(&v10->_publisher, a4);
  }

  return v10;
}

- (void)updateHistogramsForRecentHomeScreenEvents
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__17;
  v9[4] = __Block_byref_object_dispose__17;
  v10 = 0;
  objc_initWeak(&location, self);
  v3 = [(BPSPublisher *)self->_publisher filterWithIsIncluded:&__block_literal_global_36];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2;
  v7[3] = &unk_278597540;
  v7[4] = v9;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27;
  v5[3] = &unk_278598B80;
  objc_copyWeak(&v6, &location);
  v5[4] = v9;
  v4 = [v3 sinkWithCompletion:v7 receiveInput:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
  _Block_object_dispose(v9, 8);
}

BOOL __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [ATXHomeScreenWidgetFeedbackProcessor _shouldProcessEvent:v2];

  return v3;
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_home_screen();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2_cold_1(v3);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenWidgetFeedbackProcessor: Histograms updated for recent home screen events", v7, 2u);
  }

  [ATXHomeScreenWidgetFeedbackProcessor _storeLastHistogramUpdateDate:*(*(*(a1 + 32) + 8) + 40)];
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 eventBody];
    v6 = [v5 homeScreenEvent];

    if (v6)
    {
      [WeakRetained _updateHistogramForEvent:v6];
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v8 = [v6 date];
      v9 = v8;
      if (v7)
      {
        v10 = [v8 laterDate:*(*(*(a1 + 32) + 8) + 40)];
      }

      else
      {
        v10 = v8;
      }

      objc_storeStrong((*(*(a1 + 32) + 8) + 40), v10);
      if (v7)
      {
      }
    }

    else
    {
      v11 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_27_cold_1(v11);
      }
    }
  }
}

void __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 dictionaryRepresentation];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXHomeScreenWidgetFeedbackProcessor: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __81__ATXHomeScreenWidgetFeedbackProcessor_updateHistogramsForRecentHomeScreenEvents__block_invoke_2_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v2, v3, "ATXHomeScreenWidgetFeedbackProcessor: Error while updating histograms for recent home screen events: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
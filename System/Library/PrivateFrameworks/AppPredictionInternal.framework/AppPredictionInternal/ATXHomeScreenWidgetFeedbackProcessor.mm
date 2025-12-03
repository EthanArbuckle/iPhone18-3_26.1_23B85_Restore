@interface ATXHomeScreenWidgetFeedbackProcessor
+ (BOOL)_shouldProcessEvent:(id)event;
+ (id)_retrieveLastHistogramUpdateDate;
+ (void)_storeLastHistogramUpdateDate:(id)date;
- (ATXHomeScreenWidgetFeedbackProcessor)init;
- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)feedback publisher:(id)publisher;
- (void)_addToHistogramForWidgetsInEvent:(id)event type:(unint64_t)type;
- (void)_updateHistogramForEvent:(id)event;
- (void)updateHistogramsForRecentHomeScreenEvents;
@end

@implementation ATXHomeScreenWidgetFeedbackProcessor

+ (BOOL)_shouldProcessEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeScreenEvent = [eventCopy homeScreenEvent];
    v5 = homeScreenEvent;
    if (homeScreenEvent)
    {
      eventTypeString = [homeScreenEvent eventTypeString];
      if ([eventTypeString isEqualToString:@"Unknown"])
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

      if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
      {
        v7 = 1;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
      {
        v7 = 2;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"StackChanged"])
      {
        v7 = 3;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"WidgetTapped"])
      {
        goto LABEL_20;
      }

      if ([eventTypeString isEqualToString:@"WidgetLongLook"])
      {
        v7 = 5;
        goto LABEL_13;
      }

      if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
      {
LABEL_20:
      }

      else
      {
        if ([eventTypeString isEqualToString:@"UserStackConfigChanged"])
        {
          v7 = 7;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"DeviceLocked"])
        {
          v7 = 8;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"DeviceUnlocked"])
        {
          v7 = 9;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"PinnedWidgetAdded"])
        {
          v7 = 10;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"PinnedWidgetDeleted"])
        {
          v7 = 11;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"SpecialPageAppeared"])
        {
          v7 = 12;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"SpecialPageDisappeared"])
        {
          v7 = 13;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackShown"])
        {
          v7 = 14;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackDisappeared"])
        {
          v7 = 15;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackCreated"])
        {
          v7 = 16;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackDeleted"])
        {
          v7 = 17;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"WidgetAddedToStack"])
        {
          v7 = 18;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"WidgetRemovedFromStack"])
        {
          v7 = 19;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"StackVisibilityChanged"])
        {
          v7 = 20;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"AppAdded"])
        {
          v7 = 21;
          goto LABEL_13;
        }

        if ([eventTypeString isEqualToString:@"AppRemoved"])
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

- (void)_addToHistogramForWidgetsInEvent:(id)event type:(unint64_t)type
{
  metadata = [event metadata];
  stacks = [metadata stacks];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ATXHomeScreenWidgetFeedbackProcessor__addToHistogramForWidgetsInEvent_type___block_invoke;
  v8[3] = &unk_278598B58;
  v8[4] = self;
  v8[5] = type;
  [stacks enumerateKeysAndObjectsUsingBlock:v8];
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

- (void)_updateHistogramForEvent:(id)event
{
  eventCopy = event;
  eventTypeString = [eventCopy eventTypeString];
  if ([eventTypeString isEqualToString:@"Unknown"])
  {
    goto LABEL_2;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenPageShown"])
  {

    [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:2];
    objc_storeStrong(&self->_lastPageAppearEvent, event);
    goto LABEL_6;
  }

  if ([eventTypeString isEqualToString:@"HomeScreenDisappeared"])
  {

    lastPageAppearEvent = self->_lastPageAppearEvent;
    if (lastPageAppearEvent)
    {
      metadata = [(ATXHomeScreenEvent *)lastPageAppearEvent metadata];
      pageIndex = [metadata pageIndex];
      metadata2 = [eventCopy metadata];
      pageIndex2 = [metadata2 pageIndex];
      v11 = [pageIndex isEqual:pageIndex2];

      if (v11)
      {
        date = [eventCopy date];
        date2 = [(ATXHomeScreenEvent *)self->_lastPageAppearEvent date];
        [date timeIntervalSinceDate:date2];
        v15 = v14;

        if (v15 > 5.0)
        {
          [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:1];
        }

        v16 = self->_lastPageAppearEvent;
        self->_lastPageAppearEvent = 0;
      }
    }

    goto LABEL_6;
  }

  if ([eventTypeString isEqualToString:@"StackChanged"])
  {

    reason = [eventCopy reason];
    v18 = NSStringForATXHomeScreenStackChangeReason();
    v19 = [reason isEqualToString:v18];

    if (v19)
    {
      v20 = 3;
    }

    else
    {
      reason2 = [eventCopy reason];
      v26 = NSStringForATXHomeScreenStackChangeReason();
      v27 = [reason2 isEqualToString:v26];

      if (v27)
      {
        v20 = 4;
      }

      else
      {
        reason3 = [eventCopy reason];
        v33 = NSStringForATXHomeScreenStackChangeReason();
        v34 = [reason3 isEqualToString:v33];

        if (v34)
        {
          v20 = 5;
        }

        else
        {
          reason4 = [eventCopy reason];
          v36 = NSStringForATXHomeScreenStackChangeReason();
          v37 = [reason4 isEqualToString:v36];

          if (!v37)
          {
LABEL_38:
            widgetFeedback = self->_widgetFeedback;
            eventTypeString = [eventCopy widgetBundleId];
            v22 = widgetFeedback;
            v23 = eventTypeString;
            v24 = 2;
            goto LABEL_39;
          }

          v20 = 6;
        }
      }
    }

    v38 = self->_widgetFeedback;
    widgetBundleId = [eventCopy widgetBundleId];
    [(ATXHomeScreenWidgetFeedback *)v38 addEventForWidgetBundleId:widgetBundleId type:v20];

    goto LABEL_38;
  }

  if ([eventTypeString isEqualToString:@"WidgetTapped"])
  {

    v21 = self->_widgetFeedback;
    eventTypeString = [eventCopy widgetBundleId];
    v22 = v21;
    v23 = eventTypeString;
    v24 = 0;
    goto LABEL_39;
  }

  if ([eventTypeString isEqualToString:@"WidgetLongLook"])
  {
    goto LABEL_2;
  }

  if ([eventTypeString isEqualToString:@"WidgetUserFeedback"])
  {

    reason5 = [eventCopy reason];
    v29 = NSStringForATXHomeScreenWidgetExplicitFeedback();
    v30 = [reason5 isEqualToString:v29];

    if (!v30)
    {
      goto LABEL_6;
    }

    v31 = self->_widgetFeedback;
    eventTypeString = [eventCopy widgetBundleId];
    v22 = v31;
    v23 = eventTypeString;
    v24 = 7;
LABEL_39:
    [(ATXHomeScreenWidgetFeedback *)v22 addEventForWidgetBundleId:v23 type:v24];
    goto LABEL_3;
  }

  if ([eventTypeString isEqualToString:@"UserStackConfigChanged"] & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceLocked") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"DeviceUnlocked") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"PinnedWidgetAdded") & 1) != 0 || (objc_msgSend(eventTypeString, "isEqualToString:", @"PinnedWidgetDeleted"))
  {
LABEL_2:

LABEL_3:
    goto LABEL_6;
  }

  if (([eventTypeString isEqualToString:@"SpecialPageAppeared"] & 1) == 0)
  {
    if (([eventTypeString isEqualToString:@"SpecialPageDisappeared"] & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackShown") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDisappeared") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackCreated") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackDeleted") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetAddedToStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"WidgetRemovedFromStack") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"StackVisibilityChanged") & 1) == 0 && (objc_msgSend(eventTypeString, "isEqualToString:", @"AppAdded") & 1) == 0)
    {
      [eventTypeString isEqualToString:@"AppRemoved"];
    }

    goto LABEL_2;
  }

  [(ATXHomeScreenWidgetFeedbackProcessor *)self _addToHistogramForWidgetsInEvent:eventCopy type:2];
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

+ (void)_storeLastHistogramUpdateDate:(id)date
{
  v3 = MEMORY[0x277CBEBD0];
  dateCopy = date;
  v5 = [v3 alloc];
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
  [v6 setObject:dateCopy forKey:@"HomeScreenLastEventDateProcessedForHistograms"];
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

- (ATXHomeScreenWidgetFeedbackProcessor)initWithWidgetFeedback:(id)feedback publisher:(id)publisher
{
  feedbackCopy = feedback;
  publisherCopy = publisher;
  v12.receiver = self;
  v12.super_class = ATXHomeScreenWidgetFeedbackProcessor;
  v9 = [(ATXHomeScreenWidgetFeedbackProcessor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_widgetFeedback, feedback);
    objc_storeStrong(&v10->_publisher, publisher);
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
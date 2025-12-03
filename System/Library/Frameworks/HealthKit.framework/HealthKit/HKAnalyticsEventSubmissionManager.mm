@interface HKAnalyticsEventSubmissionManager
- (BOOL)submitEvent:(id)event error:(id *)error;
- (HKAnalyticsEventSubmissionManager)initWithDataSource:(id)source eventUsedProvider:(id)provider analyticsEventConsumer:(id)consumer loggingCategory:(id)category;
- (HKAnalyticsEventSubmissionManager)initWithLoggingCategory:(id)category healthDataSource:(id)source;
- (id)queue;
- (void)submitEvent:(id)event completion:(id)completion;
@end

@implementation HKAnalyticsEventSubmissionManager

- (HKAnalyticsEventSubmissionManager)initWithLoggingCategory:(id)category healthDataSource:(id)source
{
  sourceCopy = source;
  categoryCopy = category;
  v8 = [[HKAnalyticsDataSource alloc] initWithHealthDataSource:sourceCopy];

  v9 = [(HKAnalyticsEventSubmissionManager *)self initWithDataSource:v8 eventUsedProvider:&__block_literal_global_27 analyticsEventConsumer:&__block_literal_global_7 loggingCategory:categoryCopy];
  return v9;
}

- (HKAnalyticsEventSubmissionManager)initWithDataSource:(id)source eventUsedProvider:(id)provider analyticsEventConsumer:(id)consumer loggingCategory:(id)category
{
  sourceCopy = source;
  providerCopy = provider;
  consumerCopy = consumer;
  categoryCopy = category;
  v22.receiver = self;
  v22.super_class = HKAnalyticsEventSubmissionManager;
  v15 = [(HKAnalyticsEventSubmissionManager *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    v17 = _Block_copy(providerCopy);
    eventUsedProvider = v16->_eventUsedProvider;
    v16->_eventUsedProvider = v17;

    v19 = _Block_copy(consumerCopy);
    analyticsEventConsumer = v16->_analyticsEventConsumer;
    v16->_analyticsEventConsumer = v19;

    objc_storeStrong(&v16->_loggingCategory, category);
  }

  return v16;
}

- (BOOL)submitEvent:(id)event error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  eventName = [eventCopy eventName];
  v8 = [eventName containsString:@"pregnan"];

  eventName2 = [eventCopy eventName];
  v10 = eventName2;
  if (v8)
  {
    v11 = HKSensitiveLogItem(eventName2);

    v10 = v11;
  }

  eventName3 = [eventCopy eventName];
  if ((*(self->_eventUsedProvider + 2))())
  {
    environmentDataSource = [(HKAnalyticsDataSource *)self->_dataSource environmentDataSource];
    isImproveHealthAndActivityEnabled = [environmentDataSource isImproveHealthAndActivityEnabled];

    if ([eventCopy isEventSubmissionIHAGated] && (isImproveHealthAndActivityEnabled & 1) == 0)
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v41 = 2114;
        v42 = v10;
        v16 = "[%{public}@:%{public}@] Analytics event not sent as event requires IH&A but IH&A not enabled";
LABEL_10:
        _os_log_impl(&dword_19197B000, loggingCategory, OS_LOG_TYPE_DEFAULT, v16, buf, 0x16u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    dataSource = self->_dataSource;
    v38 = 0;
    v20 = [eventCopy makeUnrestrictedEventPayloadWithDataSource:dataSource error:&v38];
    v21 = v38;
    if (v21)
    {
      v22 = v21;
      if (error)
      {
        v23 = v21;
        *error = v22;
      }

      else
      {
        _HKLogDroppedError(v21);
      }

      _HKInitializeLogging();
      v25 = self->_loggingCategory;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy7 = self;
        v41 = 2114;
        v42 = v22;
        v43 = 2114;
        v44 = v10;
        _os_log_error_impl(&dword_19197B000, v25, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error when extracting unrestricted event payload: %{public}@", buf, 0x20u);
      }

LABEL_20:

      goto LABEL_21;
    }

    if (v20)
    {
      v24 = [v20 copy];
      [v18 addEntriesFromDictionary:v24];
    }

    else
    {
      _HKInitializeLogging();
      v28 = self->_loggingCategory;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        selfCopy7 = self;
        v41 = 2114;
        v42 = v10;
        _os_log_impl(&dword_19197B000, v28, OS_LOG_TYPE_INFO, "[%{public}@:%{public}@] No unrestricted payload", buf, 0x16u);
      }
    }

    if (isImproveHealthAndActivityEnabled)
    {
      v29 = self->_dataSource;
      v37 = 0;
      v30 = [eventCopy makeIHAGatedEventPayloadWithDataSource:v29 error:&v37];
      v31 = v37;
      if (v31)
      {
        v22 = v31;
        if (error)
        {
          v32 = v31;
          *error = v22;
        }

        else
        {
          _HKLogDroppedError(v31);
        }

        _HKInitializeLogging();
        v34 = self->_loggingCategory;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          selfCopy7 = self;
          v41 = 2114;
          v42 = v22;
          v43 = 2114;
          v44 = v10;
          _os_log_error_impl(&dword_19197B000, v34, OS_LOG_TYPE_ERROR, "[%{public}@:%{public}@] Error when extracting IHA gated event payload: %{public}@", buf, 0x20u);
        }

        goto LABEL_20;
      }

      if (v30)
      {
        v33 = [v30 copy];
        [v18 addEntriesFromDictionary:v33];
      }

      else
      {
        _HKInitializeLogging();
        v35 = self->_loggingCategory;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          selfCopy7 = self;
          v41 = 2114;
          v42 = v10;
          _os_log_impl(&dword_19197B000, v35, OS_LOG_TYPE_INFO, "[%{public}@:%{public}@] No IH&A gated payload", buf, 0x16u);
        }
      }
    }

    if ([v18 count])
    {
      (*(self->_analyticsEventConsumer + 2))();
      v17 = 1;
      goto LABEL_22;
    }

    _HKInitializeLogging();
    v36 = self->_loggingCategory;
    v17 = 0;
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 138543618;
    selfCopy7 = self;
    v41 = 2114;
    v42 = v10;
    _os_log_impl(&dword_19197B000, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@:%{public}@] Not sending payload as there were no contents", buf, 0x16u);
LABEL_21:
    v17 = 0;
LABEL_22:

    goto LABEL_23;
  }

  _HKInitializeLogging();
  loggingCategory = self->_loggingCategory;
  if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy7 = self;
    v41 = 2114;
    v42 = v10;
    v16 = "[%{public}@:%{public}@] Analytics event not sent as event treated as unused by CoreAnalytics";
    goto LABEL_10;
  }

LABEL_11:
  v17 = 0;
LABEL_23:

  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)queue
{
  queue = self->_queue;
  if (!queue)
  {
    v4 = HKCreateSerialDispatchQueue(self, @"HKAnalyticsEventSubmissionManager.queue");
    v5 = self->_queue;
    self->_queue = v4;

    queue = self->_queue;
  }

  return queue;
}

- (void)submitEvent:(id)event completion:(id)completion
{
  eventCopy = event;
  completionCopy = completion;
  queue = [(HKAnalyticsEventSubmissionManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__HKAnalyticsEventSubmissionManager_submitEvent_completion___block_invoke;
  block[3] = &unk_1E73766C8;
  block[4] = self;
  v12 = eventCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = eventCopy;
  dispatch_async(queue, block);
}

void __60__HKAnalyticsEventSubmissionManager_submitEvent_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v5 = 0;
  [v2 submitEvent:v3 error:&v5];
  v4 = v5;
  (*(a1[6] + 16))();
}

@end
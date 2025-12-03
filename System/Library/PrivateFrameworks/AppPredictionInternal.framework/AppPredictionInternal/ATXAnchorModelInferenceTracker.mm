@interface ATXAnchorModelInferenceTracker
- (ATXAnchorModelInferenceTracker)init;
- (id)fetchPersistedInferenceEvents;
- (id)inferenceEventsToTryAgain;
- (void)fetchPersistedInferenceEvents;
- (void)persistInferenceEvent:(id)event;
- (void)trackInferenceStartedForInferenceEvent:(id)event;
@end

@implementation ATXAnchorModelInferenceTracker

- (ATXAnchorModelInferenceTracker)init
{
  v7.receiver = self;
  v7.super_class = ATXAnchorModelInferenceTracker;
  v2 = [(ATXAnchorModelInferenceTracker *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = [v3 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v2->_defaults;
    v2->_defaults = v4;
  }

  return v2;
}

- (void)trackInferenceStartedForInferenceEvent:(id)event
{
  v4 = MEMORY[0x277CCABB0];
  eventCopy = event;
  retryCount = [eventCopy retryCount];
  v6 = [v4 numberWithInteger:{objc_msgSend(retryCount, "integerValue") + 1}];
  [eventCopy setRetryCount:v6];

  [(ATXAnchorModelInferenceTracker *)self persistInferenceEvent:eventCopy];
}

- (id)inferenceEventsToTryAgain
{
  fetchPersistedInferenceEvents = [(ATXAnchorModelInferenceTracker *)self fetchPersistedInferenceEvents];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ATXAnchorModelInferenceTracker_inferenceEventsToTryAgain__block_invoke;
  v6[3] = &unk_27859F8E8;
  v6[4] = self;
  v4 = [fetchPersistedInferenceEvents _pas_filteredArrayWithTest:v6];

  return v4;
}

uint64_t __59__ATXAnchorModelInferenceTracker_inferenceEventsToTryAgain__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 retryCount];
  v5 = [v4 unsignedIntValue];

  if (v5 >= 4)
  {
    v6 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = 3;
      v7 = "Found an incomplete inference event, but it has already been retried %ld times. Tracking it as a failed inference event.";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, &v15, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = [v3 dateFirstAdded];
  [v8 timeIntervalSinceNow];
  v10 = v9;

  v6 = __atxlog_handle_anchor();
  v11 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v10 < -1200.0)
  {
    if (v11)
    {
      v15 = 134217984;
      v16 = 0x4034000000000000;
      v7 = "Found an incomplete inference event, but it originally happened more than %.2f minutes ago. Tracking it as a failed inference event.";
      goto LABEL_7;
    }

LABEL_8:

    [*(a1 + 32) trackInferenceFailedForInferenceEvent:v3];
    v12 = 0;
    goto LABEL_12;
  }

  if (v11)
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "Found an incomplete inference event. Going to retry it.", &v15, 2u);
  }

  v12 = 1;
LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)persistInferenceEvent:(id)event
{
  v9 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:event requiringSecureCoding:1 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    [(NSUserDefaults *)self->_defaults setObject:v4 forKey:@"ATXAnchorModelInferenceTrackerDefaultsKey"];
  }

  else
  {
    v8 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXAnchorModelInferenceTracker *)v6 persistInferenceEvent:v8];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to archive ATXAnchorModelIncompleteInferenceEvent with error: %@", v6}];
  }
}

- (id)fetchPersistedInferenceEvents
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:@"ATXAnchorModelInferenceTrackerDefaultsKey"];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v11 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v11];
    v5 = v11;
    objc_autoreleasePoolPop(v3);
    if (v4)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v12[0] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    }

    else
    {
      v7 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ATXAnchorModelInferenceTracker *)v5 fetchPersistedInferenceEvents];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to unarchive ATXAnchorModelIncompleteInferenceEvent with error: %@", v5}];
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v5 = __atxlog_handle_anchor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(ATXAnchorModelInferenceTracker *)v5 fetchPersistedInferenceEvents];
    }

    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)persistInferenceEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unable to archive ATXAnchorModelIncompleteInferenceEvent with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchPersistedInferenceEvents
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unable to unarchive ATXAnchorModelIncompleteInferenceEvent with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
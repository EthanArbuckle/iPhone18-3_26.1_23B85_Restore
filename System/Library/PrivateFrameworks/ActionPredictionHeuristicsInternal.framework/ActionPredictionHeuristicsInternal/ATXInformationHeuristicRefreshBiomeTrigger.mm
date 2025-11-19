@interface ATXInformationHeuristicRefreshBiomeTrigger
- (ATXInformationHeuristicRefreshBiomeTrigger)initWithCoder:(id)a3;
- (ATXInformationHeuristicRefreshBiomeTrigger)initWithStreamType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)_publisher;
- (id)description;
- (void)_start;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInformationHeuristicRefreshBiomeTrigger

- (ATXInformationHeuristicRefreshBiomeTrigger)initWithStreamType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  result = [(ATXInformationHeuristicRefreshTrigger *)&v5 init];
  if (result)
  {
    result->_streamType = a3;
  }

  return result;
}

- (void)_start
{
  if (!self->_sink)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.proactive.ActionPredictionHeuristicsInternal.BiomeTrigger.%ld", self->_streamType];
    v4 = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(v4, v5);
    queue = self->_queue;
    self->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v3 targetQueue:self->_queue];
    scheduler = self->_scheduler;
    self->_scheduler = v8;

    objc_initWeak(&location, self);
    v10 = [(ATXInformationHeuristicRefreshBiomeTrigger *)self _publisher];
    v11 = [v10 subscribeOn:self->_scheduler];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke;
    v16[3] = &unk_278C3CFB8;
    objc_copyWeak(&v17, &location);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_191;
    v14[3] = &unk_278C3CFE0;
    objc_copyWeak(&v15, &location);
    v12 = [v11 sinkWithCompletion:v16 receiveInput:v14];
    sink = self->_sink;
    self->_sink = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v6 = __atxlog_handle_gi();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_7;
  }

  v5 = [v3 error];

  if (v5)
  {
    v6 = __atxlog_handle_gi();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_1(WeakRetained, v3);
    }

LABEL_7:
  }
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_191(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_gi();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[3];
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshBiomeTrigger: new event in stream: %ld. Triggering heuristics refresh.", &v7, 0xCu);
    }

    v4 = [WeakRetained delegate];
    v5 = [WeakRetained registeredHeuristics];
    [v4 informationHeuristicRefreshTrigger:WeakRetained didTriggerRefreshForHeuristics:v5];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_publisher
{
  streamType = self->_streamType;
  if (streamType == 2)
  {
    v4 = BiomeLibrary();
    v5 = [v4 IntelligencePlatform];
    v7 = [v5 Views];
    v8 = [v7 Updated];
    v9 = [v8 DSLPublisherWithUseCase:@"FutureLifeEvent"];
    v2 = [v9 filterWithKeyPath:@"eventBody.viewName" value:@"futureLifeEventMap"];
  }

  else
  {
    if (streamType == 1)
    {
      v4 = BiomeLibrary();
      v5 = [v4 UserFocus];
      v6 = [v5 InferredMode];
    }

    else
    {
      if (streamType)
      {
        goto LABEL_9;
      }

      v4 = BiomeLibrary();
      v5 = [v4 UserFocus];
      v6 = [v5 ComputedMode];
    }

    v7 = v6;
    v2 = [v6 atx_DSLPublisher];
  }

LABEL_9:

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInformationHeuristicRefreshBiomeTrigger *)self isEqualToATXInformationHeuristicRefreshBiomeTrigger:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ATXInformationHeuristicRefreshBiomeTrigger for %ld", self->_streamType];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  v4 = a3;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_streamType forKey:{@"streamType", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshBiomeTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v10 initWithCoder:v4];
  if (!v5 || ([v4 error], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || (v5->_streamType = objc_msgSend(v4, "decodeIntegerForKey:", @"streamType"), objc_msgSend(v4, "error"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 24);
  v10 = [a2 error];
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v3, v4, "ATXInformationHeuristicRefreshBiomeTrigger: error subscribing to stream: %ld: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end
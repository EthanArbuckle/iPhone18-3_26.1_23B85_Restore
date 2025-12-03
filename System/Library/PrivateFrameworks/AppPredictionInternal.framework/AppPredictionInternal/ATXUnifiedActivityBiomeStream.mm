@interface ATXUnifiedActivityBiomeStream
- (ATXUnifiedActivityBiomeStream)init;
- (id)_mergeTransitionPublishers:(id)publishers;
- (id)efficientCurrentMode;
- (id)initFromTimeBasedTransitionStream:(id)stream appLaunchBasedTransitionStream:(id)transitionStream heuristicTransitionStream:(id)heuristicTransitionStream userFocusTransitionStream:(id)focusTransitionStream;
- (id)sessionPublisherFromStartTime:(double)time;
- (id)transitionPublisherFromStartTime:(double)time;
@end

@implementation ATXUnifiedActivityBiomeStream

- (id)initFromTimeBasedTransitionStream:(id)stream appLaunchBasedTransitionStream:(id)transitionStream heuristicTransitionStream:(id)heuristicTransitionStream userFocusTransitionStream:(id)focusTransitionStream
{
  streamCopy = stream;
  transitionStreamCopy = transitionStream;
  heuristicTransitionStreamCopy = heuristicTransitionStream;
  focusTransitionStreamCopy = focusTransitionStream;
  v18.receiver = self;
  v18.super_class = ATXUnifiedActivityBiomeStream;
  v15 = [(ATXUnifiedActivityBiomeStream *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_timeBasedInferredActivityStream, stream);
    objc_storeStrong(p_isa + 2, transitionStream);
    objc_storeStrong(p_isa + 3, heuristicTransitionStream);
    objc_storeStrong(p_isa + 4, focusTransitionStream);
  }

  return p_isa;
}

- (ATXUnifiedActivityBiomeStream)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [(ATXUnifiedActivityBiomeStream *)self initFromTimeBasedTransitionStream:v3 appLaunchBasedTransitionStream:v4 heuristicTransitionStream:v5 userFocusTransitionStream:v6];

  return v7;
}

- (id)efficientCurrentMode
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__73;
  v25 = __Block_byref_object_dispose__73;
  v26 = 0;
  v3 = [(ATXUserFocusComputedActivityBiomeStream *)self->_userFocusComputedActivityStream transitionPublisherFromStartTime:0 endTime:0 maxEvents:&unk_283A56E40 lastN:0 reversed:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke;
  v20[3] = &unk_27859E3D8;
  v20[4] = self;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_24;
  v19[3] = &unk_27859F2F8;
  v19[4] = &v21;
  v4 = [v3 sinkWithCompletion:v20 receiveInput:v19];

  v5 = v22[5];
  if (v5 && [v5 isEntryEvent])
  {
    mode = [v22[5] mode];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__73;
    v17 = __Block_byref_object_dispose__73;
    v18 = 0;
    v7 = [(ATXHeuristicInferredActivityBiomeStream *)self->_heuristicInferredActivityStream transitionPublisherFromStartTime:0 endTime:0 maxEvents:&unk_283A56E40 lastN:0 reversed:1];
    v11[4] = &v13;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_2;
    v12[3] = &unk_27859E3D8;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_26;
    v11[3] = &unk_27859F2F8;
    v8 = [v7 sinkWithCompletion:v12 receiveInput:v11];

    v9 = v14[5];
    if (v9 && [v9 isEntryEvent])
    {
      mode = [v14[5] mode];
    }

    else
    {
      mode = 0;
    }

    _Block_object_dispose(&v13, 8);
  }

  _Block_object_dispose(&v21, 8);

  return mode;
}

void __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_cold_1(a1, v3);
    }
  }
}

void __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_2_cold_1(a1, v3);
    }
  }
}

- (id)transitionPublisherFromStartTime:(double)time
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = [(ATXTimeBasedInferredActivityBiomeStream *)self->_timeBasedInferredActivityStream transitionPublisherFromStartTime:?];
  bpsPublisher = v5;
  if (!v5)
  {
    bpsPublisher = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  v19[0] = bpsPublisher;
  v7 = [(ATXAppLaunchBasedInferredActivityBiomeStream *)self->_appLaunchInferredActivityStream transitionPublisherFromStartTime:time];
  bpsPublisher2 = v7;
  if (!v7)
  {
    bpsPublisher2 = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  v19[1] = bpsPublisher2;
  v9 = [(ATXHeuristicInferredActivityBiomeStream *)self->_heuristicInferredActivityStream transitionPublisherFromStartTime:time];
  bpsPublisher3 = v9;
  if (!v9)
  {
    bpsPublisher3 = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  v19[2] = bpsPublisher3;
  v11 = [(ATXUserFocusComputedActivityBiomeStream *)self->_userFocusComputedActivityStream transitionPublisherFromStartTime:time];
  bpsPublisher4 = v11;
  if (!v11)
  {
    bpsPublisher4 = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  v19[3] = bpsPublisher4;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  v14 = [(ATXUnifiedActivityBiomeStream *)self _mergeTransitionPublishers:v13];
  v15 = objc_opt_new();
  v16 = [v15 combineTransitions:v14];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_mergeTransitionPublishers:(id)publishers
{
  publishersCopy = publishers;
  if ([publishersCopy count])
  {
    v5 = [publishersCopy objectAtIndexedSubscript:0];
    if ([publishersCopy count] == 1)
    {
      bpsPublisher = v5;
    }

    else
    {
      v7 = [publishersCopy subarrayWithRange:{1, objc_msgSend(publishersCopy, "count") - 1}];
      bpsPublisher = [(ATXUnifiedActivityBiomeStream *)self _mergeTransitionPublisher:v5 withOthers:v7];
    }
  }

  else
  {
    bpsPublisher = [MEMORY[0x277CBEBF8] bpsPublisher];
  }

  return bpsPublisher;
}

uint64_t __70__ATXUnifiedActivityBiomeStream__mergeTransitionPublisher_withOthers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 transitionTime];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 transitionTime];
  v9 = [v8 numberWithDouble:?];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isEntryEvent")}];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isEntryEvent")}];
    v10 = [v11 compare:v12];
  }

  return v10;
}

- (id)sessionPublisherFromStartTime:(double)time
{
  v3 = [(ATXUnifiedActivityBiomeStream *)self transitionPublisherFromStartTime:time];
  v4 = [_ATXUnifiedActivityStreamConversions sessionPublisherFromTransitionPublisher:v3];

  return v4;
}

void __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 error];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v7, v8, "%@ - error fetching last activity transition from ATXUserFocusComputedActivityBiomeStream: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __53__ATXUnifiedActivityBiomeStream_efficientCurrentMode__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [a2 error];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v7, v8, "%@ - error fetching last activity transition from ATXHeuristicInferredActivityBiomeStream: %@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

@end
@interface ATXBiomePredictionContextStream
- (ATXBiomePredictionContextStream)initWithStoreConfig:(id)a3;
- (BOOL)_shouldMatchContext:(id)a3 queryEvent:(id)a4 tolerance:(double)a5;
- (id)publisherFromStartTime:(double)a3;
- (void)enumerateNearestContextForEvents:(id)a3 tolerance:(double)a4 block:(id)a5;
- (void)sendEvent:(id)a3;
@end

@implementation ATXBiomePredictionContextStream

- (ATXBiomePredictionContextStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXBiomePredictionContextStream;
  v5 = [(ATXBiomePredictionContextStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"predictionContext" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (id)publisherFromStartTime:(double)a3
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v6 = [(ATXBiomePredictionContextStream *)self _publisherWithOptions:v5];

  return v6;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXBiomePredictionContextStream *)self source];
  [v5 sendEvent:v4];
}

- (BOOL)_shouldMatchContext:(id)a3 queryEvent:(id)a4 tolerance:(double)a5
{
  v7 = a4;
  v8 = [a3 timeContext];
  v9 = [v8 date];

  v10 = [v7 eventTime];

  [v10 timeIntervalSinceDate:v9];
  v12 = v11 <= a5 && v11 >= 0.0;

  return v12;
}

- (void)enumerateNearestContextForEvents:(id)a3 tolerance:(double)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = __atxlog_handle_default();
    v11 = os_signpost_id_generate(v10);

    v12 = __atxlog_handle_default();
    v13 = v12;
    v14 = v11 - 1;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ATXBiomePredictionContextStream.enumerateNearestContextForEvents", " enableTelemetry=YES ", buf, 2u);
    }

    spid = v11;

    v15 = [v8 firstObject];
    v16 = [v15 eventTime];
    v17 = [v16 dateByAddingTimeInterval:-a4];

    v18 = [v8 lastObject];
    v19 = [v18 eventTime];
    v20 = [v19 dateByAddingTimeInterval:a4];

    v21 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v17 endDate:v20 maxEvents:0 lastN:0 reversed:0];
    v22 = [(ATXBiomePredictionContextStream *)self _publisherWithOptions:v21];
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    *buf = 0;
    v43 = buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__72;
    v46 = __Block_byref_object_dispose__72;
    v47 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke;
    v35[3] = &unk_27859F2A8;
    v39 = v48;
    v40 = buf;
    v36 = v8;
    v37 = self;
    v41 = a4;
    v38 = v9;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_27;
    v28[3] = &unk_27859F2D0;
    v32 = v48;
    v33 = buf;
    v29 = v36;
    v30 = self;
    v34 = a4;
    v31 = v38;
    v23 = [v22 sinkWithCompletion:v35 receiveInput:v28];
    v24 = __atxlog_handle_default();
    v25 = v24;
    if (v14 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v27 = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v25, OS_SIGNPOST_INTERVAL_END, spid, "ATXBiomePredictionContextStream.enumerateNearestContextForEvents", " enableTelemetry=YES ", v27, 2u);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v48, 8);
  }
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_cold_1(v3, v5);
    }
  }

  while (1)
  {
    v12 = *(*(*(a1 + 56) + 8) + 24);
    if (v12 >= [*(a1 + 32) count])
    {
      break;
    }

    v6 = *(*(*(a1 + 64) + 8) + 40);
    if (!v6)
    {
      break;
    }

    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v9 = [v7 _shouldMatchContext:v6 queryEvent:v8 tolerance:*(a1 + 72)];

    if (v9)
    {
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      (*(v10 + 16))(v10, v11, *(*(*(a1 + 64) + 8) + 40));
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  while (1)
  {
    v4 = *(*(*(a1 + 56) + 8) + 24);
    if (v4 >= [*(a1 + 32) count])
    {
      break;
    }

    v5 = [v3 timeContext];
    v6 = [v5 date];
    v7 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v8 = [v7 eventTime];
    v9 = [v6 compare:v8];

    if (v9 != 1)
    {
      break;
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v13 = [v11 _shouldMatchContext:v10 queryEvent:v12 tolerance:*(a1 + 72)];

      if (v13)
      {
        v14 = *(a1 + 48);
        v15 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
        (*(v14 + 16))(v14, v15, *(*(*(a1 + 64) + 8) + 40));
      }
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v3;
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXBiomePredictionContextStream: error querying Prediction Context stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
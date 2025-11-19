@interface ATXDisplayOnIntervalStream
- (BOOL)displayStateAtTime:(id)a3;
- (id)_displayBacklightPublisherWithStartDate:(id)a3 endDate:(id)a4;
- (void)enumerateDisplayOnIntervalsFromStartDate:(id)a3 endDate:(id)a4 block:(id)a5;
- (void)enumerateDisplayStateEventsFromStartDate:(id)a3 endDate:(id)a4 block:(id)a5;
@end

@implementation ATXDisplayOnIntervalStream

- (void)enumerateDisplayOnIntervalsFromStartDate:(id)a3 endDate:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 compare:v10] != -1)
  {
    [(ATXDisplayOnIntervalStream *)a2 enumerateDisplayOnIntervalsFromStartDate:v9 endDate:v10 block:?];
  }

  v12 = objc_autoreleasePoolPush();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy_;
  v19[4] = __Block_byref_object_dispose_;
  v20 = 0;
  v13 = [(ATXDisplayOnIntervalStream *)self _displayBacklightPublisherWithStartDate:v9 endDate:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke_17;
  v16[3] = &unk_27858FCA0;
  v18 = v19;
  v14 = v11;
  v17 = v14;
  v15 = [v13 sinkWithCompletion:&__block_literal_global shouldContinue:v16];

  _Block_object_dispose(v19, 8);
  objc_autoreleasePoolPop(v12);
}

void __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 backlightLevel];

  if (v5 == 1)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [v3 eventBody];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
      v9 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    v10 = [v3 eventBody];
    v11 = [v10 backlightLevel];

    if (!v11)
    {
      if (*(*(*(a1 + 40) + 8) + 40))
      {
        v12 = [v3 eventBody];
        v13 = [v12 absoluteTimestamp];
        [v13 timeIntervalSinceReferenceDate];
        v15 = v14;
        v16 = [*(*(*(a1 + 40) + 8) + 40) absoluteTimestamp];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17;

        if (v15 > v18)
        {
          v19 = objc_alloc(MEMORY[0x277CCA970]);
          v20 = [*(*(*(a1 + 40) + 8) + 40) absoluteTimestamp];
          v21 = [v3 eventBody];
          v22 = [v21 absoluteTimestamp];
          v8 = [v19 initWithStartDate:v20 endDate:v22];

          v23 = [[ATXDisplayOnIntervalEvent alloc] initWithOnInterval:v8];
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 40);
          *(v24 + 40) = 0;

          v9 = (*(*(a1 + 32) + 16))();
          goto LABEL_9;
        }
      }
    }
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (void)enumerateDisplayStateEventsFromStartDate:(id)a3 endDate:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v9 compare:v10] != -1)
  {
    [ATXDisplayOnIntervalStream enumerateDisplayStateEventsFromStartDate:a2 endDate:self block:?];
  }

  v12 = objc_autoreleasePoolPush();
  v13 = [(ATXDisplayOnIntervalStream *)self _displayBacklightPublisherWithStartDate:v9 endDate:v10];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__ATXDisplayOnIntervalStream_enumerateDisplayStateEventsFromStartDate_endDate_block___block_invoke_26;
  v16[3] = &unk_27858FCC8;
  v14 = v11;
  v17 = v14;
  v15 = [v13 sinkWithCompletion:&__block_literal_global_25 shouldContinue:v16];

  objc_autoreleasePoolPop(v12);
}

void __85__ATXDisplayOnIntervalStream_enumerateDisplayStateEventsFromStartDate_endDate_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke_cold_1(v2);
    }
  }
}

uint64_t __85__ATXDisplayOnIntervalStream_enumerateDisplayStateEventsFromStartDate_endDate_block___block_invoke_26(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ATXDisplayStateEvent alloc];
  v5 = [v3 eventBody];
  v6 = [v5 backlightLevel] == 1;
  v7 = [v3 eventBody];

  v8 = [v7 absoluteTimestamp];
  v9 = [(ATXDisplayStateEvent *)v4 initWithDisplayState:v6 absoluteTimestamp:v8];

  v10 = (*(*(a1 + 32) + 16))();
  return v10;
}

- (BOOL)displayStateAtTime:(id)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 Device];
  v6 = [v5 Display];
  v7 = [v6 Backlight];
  v8 = [v7 atx_publisherWithStartDate:0 endDate:v3 maxEvents:&unk_283988EE8 lastN:&unk_283988EE8 reversed:0];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__ATXDisplayOnIntervalStream_displayStateAtTime___block_invoke_31;
  v12[3] = &unk_27858FCF0;
  v9 = v3;
  v13 = v9;
  v14 = &v15;
  v10 = [v8 sinkWithCompletion:&__block_literal_global_30 receiveInput:v12];
  LOBYTE(v4) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __49__ATXDisplayOnIntervalStream_displayStateAtTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__ATXDisplayOnIntervalStream_displayStateAtTime___block_invoke_cold_1(v2);
    }
  }
}

void __49__ATXDisplayOnIntervalStream_displayStateAtTime___block_invoke_31(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  v4 = [v3 absoluteTimestamp];

  v5 = [*(a1 + 32) earlierDate:v4];

  if (v5 == v4)
  {
    v6 = [v7 eventBody];
    *(*(*(a1 + 40) + 8) + 24) = [v6 backlightLevel] == 1;
  }
}

- (id)_displayBacklightPublisherWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BiomeLibrary();
  v8 = [v7 Device];
  v9 = [v8 Display];
  v10 = [v9 Backlight];
  v11 = [v10 atx_publisherWithStartDate:v6 endDate:v5 maxEvents:0 lastN:0 reversed:0];

  return v11;
}

- (void)enumerateDisplayOnIntervalsFromStartDate:(uint64_t)a3 endDate:(uint64_t)a4 block:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ATXDisplayOnIntervalStream.m" lineNumber:43 description:{@"Start date must be earlier than the end date %@ %@.", a3, a4}];
}

void __85__ATXDisplayOnIntervalStream_enumerateDisplayOnIntervalsFromStartDate_endDate_block___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "ATXDisplayOnIntervalStream: Error querying Backlight stream: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)enumerateDisplayStateEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXDisplayOnIntervalStream.m" lineNumber:89 description:@"Start date must be earlier than the end date."];
}

void __49__ATXDisplayOnIntervalStream_displayStateAtTime___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0(&dword_226368000, v2, v3, "ATXDisplayOnIntervalStream: displayStateAtTime Error querying Backlight stream: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
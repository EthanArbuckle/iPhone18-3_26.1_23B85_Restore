@interface ATXChargerPluggedInStream
- (id)_chargerPluggedInPublisherWithStartDate:(id)a3 endDate:(id)a4;
- (void)enumeratePluggedInEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 block:(id)a7;
@end

@implementation ATXChargerPluggedInStream

- (void)enumeratePluggedInEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 block:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if ([v12 compare:v13] != -1)
  {
    [ATXChargerPluggedInStream enumeratePluggedInEventsFromStartDate:a2 endDate:self filterBlock:? limit:? block:?];
  }

  v16 = [(ATXChargerPluggedInStream *)self _chargerPluggedInPublisherWithStartDate:v12 endDate:v13];
  v17 = [MEMORY[0x277CF1A18] sessionPublisherWithStreamPublisher:v16 startingBlock:&__block_literal_global_7 sessionKeyBlock:0 options:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_21;
  v21[3] = &unk_278590480;
  v22 = v14;
  v23 = v15;
  v18 = v15;
  v19 = v14;
  v20 = [v17 sinkWithCompletion:&__block_literal_global_20 receiveInput:v21];
}

uint64_t __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

void __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_2_cold_1(v2, v4);
    }
  }
}

void __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ATXChargerPluggedInEvent alloc];
  v5 = MEMORY[0x277CBEAA8];
  v6 = [v3 startEvent];
  [v6 timestamp];
  v7 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v8 = MEMORY[0x277CBEAA8];
  v9 = [v3 endEvent];
  [v9 timestamp];
  v10 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v3 startEvent];

  v13 = [v12 eventBody];
  v14 = [v11 numberWithLongLong:{objc_msgSend(v13, "adapterType")}];
  v16 = [(ATXChargerPluggedInEvent *)v4 initWithStartTime:v7 endTime:v10 connected:1 adapterType:v14];

  v15 = *(a1 + 32);
  if (!v15 || (*(v15 + 16))(v15, v16))
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_chargerPluggedInPublisherWithStartDate:(id)a3 endDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = BiomeLibrary();
  v8 = [v7 Device];
  v9 = [v8 Power];
  v10 = [v9 PluggedIn];
  v11 = [v10 atx_publisherWithStartDate:v6 endDate:v5 maxEvents:0 lastN:0 reversed:0];

  return v11;
}

- (void)enumeratePluggedInEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 filterBlock:limit:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXChargerPluggedInStream.m" lineNumber:40 description:@"Start date must be earlier than the end date."];
}

void __99__ATXChargerPluggedInStream_enumeratePluggedInEventsFromStartDate_endDate_filterBlock_limit_block___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXChargerPluggedInStream: Error querying device plugged in stream: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
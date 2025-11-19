@interface HKActivityStatisticsQuery
@end

@implementation HKActivityStatisticsQuery

uint64_t __52___HKActivityStatisticsQuery_setQueryUpdateHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 192);
  *(v3 + 192) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void __57___HKActivityStatisticsQuery_client_deliverResult_query___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 152))
  {
    v3 = &OBJC_IVAR____HKActivityStatisticsQuery__queryUpdateHandler;
  }

  else
  {
    v3 = &OBJC_IVAR____HKActivityStatisticsQuery__initialQueryResultsHandler;
  }

  v4 = _Block_copy(*(v2 + *v3));
  *(*(a1 + 32) + 152) = 1;
  v5 = [*(a1 + 32) queue_shouldDeactivateAfterInitialResults];
  if (v4)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57___HKActivityStatisticsQuery_client_deliverResult_query___block_invoke_2;
    v11[3] = &unk_1E7376618;
    v9 = v4;
    v10 = *(a1 + 32);
    v13 = v9;
    v11[4] = v10;
    v12 = *(a1 + 48);
    [v7 queue_dispatchToClientForUUID:v8 shouldDeactivate:v6 block:v11];
  }
}

@end
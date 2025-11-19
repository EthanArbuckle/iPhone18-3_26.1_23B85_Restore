@interface ATXMicroLocationVisitStream
+ (id)atxMicroLocationVisitEventFromBiomeEvent:(id)a3;
+ (id)convertNumDevicesVectorFromBMArray:(id)a3;
+ (id)convertProbabilityVectorFromBMArray:(id)a3;
- (id)mostRecentMicroLocationWithinSeconds:(unint64_t)a3;
- (void)enumerateMicroLocationVisitEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7 block:(id)a8;
@end

@implementation ATXMicroLocationVisitStream

- (id)mostRecentMicroLocationWithinSeconds:(unint64_t)a3
{
  v5 = objc_autoreleasePoolPush();
  if (a3)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    a3 = [v6 dateByAddingTimeInterval:-a3];
  }

  else
  {
    v6 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__ATXMicroLocationVisitStream_mostRecentMicroLocationWithinSeconds___block_invoke;
  v9[3] = &unk_27858FD60;
  v9[4] = &v10;
  [(ATXMicroLocationVisitStream *)self enumerateMicroLocationVisitEventsFromStartDate:a3 endDate:v6 filterBlock:0 limit:1 ascending:0 block:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)enumerateMicroLocationVisitEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 limit:(unint64_t)a6 ascending:(BOOL)a7 block:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v18 = [(ATXMicroLocationVisitStream *)self _publisherWithStartDate:v14 endDate:v15 shouldReverse:!v9];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_12;
  v22[3] = &unk_27858FD88;
  v25 = v27;
  v26 = a6;
  v19 = v16;
  v23 = v19;
  v20 = v17;
  v24 = v20;
  v21 = [v18 sinkWithCompletion:&__block_literal_global_0 shouldContinue:v22];

  _Block_object_dispose(v27, 8);
}

void __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 state])
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v3);
    }
  }
}

uint64_t __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_12(void *a1, uint64_t a2)
{
  v3 = [ATXMicroLocationVisitStream atxMicroLocationVisitEventFromBiomeEvent:a2];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 24);
  if (v5 >= a1[7])
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = a1[4];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!(*(v6 + 16))(v6, v3))
  {
LABEL_7:
    v7 = 1;
    goto LABEL_9;
  }

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 24);
LABEL_6:
  *(v4 + 24) = v5 + 1;
  v7 = (*(a1[5] + 16))();
LABEL_9:

  return v7;
}

+ (id)convertProbabilityVectorFromBMArray:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 microLocationIdentifier];

          if (v12)
          {
            v13 = [ATXMicroLocationVisitProbabilityPerLocation alloc];
            v14 = [v11 microLocationIdentifier];
            v15 = MEMORY[0x277CCABB0];
            [v11 probability];
            v16 = [v15 numberWithDouble:?];
            v17 = [(ATXMicroLocationVisitProbabilityPerLocation *)v13 initWithMicroLocationIdentifier:v14 probability:v16];

            [v5 addObject:v17];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = [v5 copy];
  }

  else
  {
    v18 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)convertNumDevicesVectorFromBMArray:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 technology];

          if (v12)
          {
            v13 = [ATXMicroLocationVisitNumDevicesPerTechnology alloc];
            v14 = [v11 technology];
            v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "numDevices")}];
            v16 = [(ATXMicroLocationVisitNumDevicesPerTechnology *)v13 initWithTechnology:v14 numDevices:v15];

            [v5 addObject:v16];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v17 = [v5 copy];
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)atxMicroLocationVisitEventFromBiomeEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 eventBody];
  v5 = [v4 domain];
  if (v5 && (v6 = v5, [v4 maxProbabilityMicroLocationIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v4 probabilityVector];
    v9 = [ATXMicroLocationVisitStream convertProbabilityVectorFromBMArray:v8];

    v10 = [v4 numDevicesVector];
    v11 = [ATXMicroLocationVisitStream convertNumDevicesVectorFromBMArray:v10];

    v12 = [ATXMicroLocationVisitEvent alloc];
    v13 = [v4 domain];
    v14 = [v4 maxProbabilityMicroLocationIdentifier];
    v15 = MEMORY[0x277CCABB0];
    [v4 maxProbability];
    v16 = [v15 numberWithDouble:?];
    v17 = [v4 isStable];
    v18 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    v20 = [(ATXMicroLocationVisitEvent *)v12 initWithDomain:v13 maxProbabilityMicroLocationIdentifier:v14 maxProbability:v16 probabilityVector:v9 isStable:v17 numDevicesVector:v11 timestamp:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 136315394;
  v6 = "[ATXMicroLocationVisitStream enumerateMicroLocationVisitEventsFromStartDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: Error fetching BMLibrary.Location.MicroLocationVisit events %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end
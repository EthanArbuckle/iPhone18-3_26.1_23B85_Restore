@interface ATXMicroLocationVisitStream
+ (id)atxMicroLocationVisitEventFromBiomeEvent:(id)event;
+ (id)convertNumDevicesVectorFromBMArray:(id)array;
+ (id)convertProbabilityVectorFromBMArray:(id)array;
- (id)mostRecentMicroLocationWithinSeconds:(unint64_t)seconds;
- (void)enumerateMicroLocationVisitEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a8;
@end

@implementation ATXMicroLocationVisitStream

- (id)mostRecentMicroLocationWithinSeconds:(unint64_t)seconds
{
  v5 = objc_autoreleasePoolPush();
  if (seconds)
  {
    date = [MEMORY[0x277CBEAA8] date];
    seconds = [date dateByAddingTimeInterval:-seconds];
  }

  else
  {
    date = 0;
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
  [(ATXMicroLocationVisitStream *)self enumerateMicroLocationVisitEventsFromStartDate:seconds endDate:date filterBlock:0 limit:1 ascending:0 block:v9];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (void)enumerateMicroLocationVisitEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a8
{
  ascendingCopy = ascending;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v17 = a8;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v18 = [(ATXMicroLocationVisitStream *)self _publisherWithStartDate:dateCopy endDate:endDateCopy shouldReverse:!ascendingCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __120__ATXMicroLocationVisitStream_enumerateMicroLocationVisitEventsFromStartDate_endDate_filterBlock_limit_ascending_block___block_invoke_12;
  v22[3] = &unk_27858FD88;
  v25 = v27;
  limitCopy = limit;
  v19 = blockCopy;
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

+ (id)convertProbabilityVectorFromBMArray:(id)array
{
  v26 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
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
          microLocationIdentifier = [v11 microLocationIdentifier];

          if (microLocationIdentifier)
          {
            v13 = [ATXMicroLocationVisitProbabilityPerLocation alloc];
            microLocationIdentifier2 = [v11 microLocationIdentifier];
            v15 = MEMORY[0x277CCABB0];
            [v11 probability];
            v16 = [v15 numberWithDouble:?];
            v17 = [(ATXMicroLocationVisitProbabilityPerLocation *)v13 initWithMicroLocationIdentifier:microLocationIdentifier2 probability:v16];

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

+ (id)convertNumDevicesVectorFromBMArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
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
          technology = [v11 technology];

          if (technology)
          {
            v13 = [ATXMicroLocationVisitNumDevicesPerTechnology alloc];
            technology2 = [v11 technology];
            v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "numDevices")}];
            v16 = [(ATXMicroLocationVisitNumDevicesPerTechnology *)v13 initWithTechnology:technology2 numDevices:v15];

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

+ (id)atxMicroLocationVisitEventFromBiomeEvent:(id)event
{
  eventCopy = event;
  eventBody = [eventCopy eventBody];
  domain = [eventBody domain];
  if (domain && (v6 = domain, [eventBody maxProbabilityMicroLocationIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    probabilityVector = [eventBody probabilityVector];
    v9 = [ATXMicroLocationVisitStream convertProbabilityVectorFromBMArray:probabilityVector];

    numDevicesVector = [eventBody numDevicesVector];
    v11 = [ATXMicroLocationVisitStream convertNumDevicesVectorFromBMArray:numDevicesVector];

    v12 = [ATXMicroLocationVisitEvent alloc];
    domain2 = [eventBody domain];
    maxProbabilityMicroLocationIdentifier = [eventBody maxProbabilityMicroLocationIdentifier];
    v15 = MEMORY[0x277CCABB0];
    [eventBody maxProbability];
    v16 = [v15 numberWithDouble:?];
    isStable = [eventBody isStable];
    v18 = MEMORY[0x277CBEAA8];
    [eventCopy timestamp];
    v19 = [v18 dateWithTimeIntervalSinceReferenceDate:?];
    v20 = [(ATXMicroLocationVisitEvent *)v12 initWithDomain:domain2 maxProbabilityMicroLocationIdentifier:maxProbabilityMicroLocationIdentifier maxProbability:v16 probabilityVector:v9 isStable:isStable numDevicesVector:v11 timestamp:v19];
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
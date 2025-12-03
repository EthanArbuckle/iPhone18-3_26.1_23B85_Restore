@interface ARPCorrelationTask
- (ARPCorrelationTask)initWithCorrelationsFile:(id)file knowledgeStore:(id)store;
- (id)longFormVideoAppBundleIDs;
- (id)queryForMicroLocationsFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events overlappingNowPlayingEvents:(id)playingEvents;
- (void)execute;
- (void)execute:(id)execute microLocationEvents:(id)events;
- (void)longFormVideoAppBundleIDs;
@end

@implementation ARPCorrelationTask

- (ARPCorrelationTask)initWithCorrelationsFile:(id)file knowledgeStore:(id)store
{
  fileCopy = file;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ARPCorrelationTask;
  v8 = [(ARPCorrelationTask *)&v12 init];
  if (v8)
  {
    v9 = [fileCopy copy];
    file = v8->_file;
    v8->_file = v9;

    objc_storeStrong(&v8->_knowledgeStore, store);
  }

  return v8;
}

- (id)queryForMicroLocationsFromStartTime:(id)time endTime:(id)endTime maxEvents:(unint64_t)events overlappingNowPlayingEvents:(id)playingEvents
{
  v49 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  endTimeCopy = endTime;
  playingEventsCopy = playingEvents;
  v11 = ARPLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = [playingEventsCopy count];
    *&buf[12] = 2048;
    *&buf[14] = events;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: nowPlayingEvents.count: %lu, maxEvents: %lu", buf, 0x16u);
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = timeCopy;
    *&buf[12] = 2112;
    *&buf[14] = endTimeCopy;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: startTime: %@, endTime: %@", buf, 0x16u);
  }

  if ([playingEventsCopy count])
  {
    v12 = [objc_alloc(getBMDKEventStreamClass()) initWithDKStreamIdentifier:@"/inferred/microLocationVisit" contentProtection:*MEMORY[0x277CCA1A0]];
    v13 = MEMORY[0x277CCABB0];
    [timeCopy timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
    v15 = MEMORY[0x277CCABB0];
    [endTimeCopy timeIntervalSinceReferenceDate];
    v16 = [v15 numberWithDouble:?];
    v17 = [v12 publisherWithStartTime:v14 endTime:v16 maxEvents:0 lastN:0 reversed:1];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v17 == 0;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: publisherNil?:%d", buf, 8u);
    }

    +[ARPRoutingSession microLocationCorrelationGracePeriod];
    v19 = v18;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: microLocationCorrelationGracePeriod:%f", buf, 0xCu);
    }

    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x2020000000;
    v42[3] = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v46 = __Block_byref_object_copy__0;
    v47 = __Block_byref_object_dispose__0;
    v48 = [playingEventsCopy objectAtIndexedSubscript:0];
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__ARPCorrelationTask_queryForMicroLocationsFromStartTime_endTime_maxEvents_overlappingNowPlayingEvents___block_invoke_2;
    v30[3] = &unk_278C646C8;
    v36 = v19;
    v33 = buf;
    v34 = v42;
    v31 = playingEventsCopy;
    v21 = v20;
    v32 = v21;
    v35 = &v38;
    eventsCopy = events;
    v22 = [v17 sinkWithCompletion:&__block_literal_global_81 shouldContinue:v30];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = v39[3];
      *v43 = 134217984;
      v44 = v23;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: found %lu microLocationEvents", v43, 0xCu);
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v24 = [v21 count];
      *v43 = 134217984;
      v44 = v24;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "queryForMicroLocationsFromStartTime: results.count: %lu", v43, 0xCu);
    }

    v25 = v32;
    v26 = v21;

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(v42, 8);
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

BOOL __104__ARPCorrelationTask_queryForMicroLocationsFromStartTime_endTime_maxEvents_overlappingNowPlayingEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 dkEvent];
  while (1)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) startDate];
    v7 = [v5 endDate];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;
    v10 = *(a1 + 72);

    if (v9 <= v10)
    {
      break;
    }

    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 24) + 1;
    *(v11 + 24) = v12;
    if (v12 == [*(a1 + 32) count])
    {
      v21 = 0;
      goto LABEL_9;
    }

    v13 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = [v5 startDate];
  v17 = [*(*(*(a1 + 48) + 8) + 40) startDate];
  [v16 timeIntervalSinceDate:v17];
  v19 = v18;
  v20 = *(a1 + 72);

  if (v19 <= v20)
  {
    [*(a1 + 40) addObject:v5];
    v22 = *(*(a1 + 64) + 8);
    v23 = *(v22 + 24) + 1;
    *(v22 + 24) = v23;
    v21 = v23 < *(a1 + 80);
  }

  else
  {
    v21 = 1;
  }

LABEL_9:

  return v21;
}

- (void)execute
{
  v3 = _os_activity_create(&dword_23EB15000, "CoreDuet: ARPCorrelationTask execute", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v4.opaque[0] = 0;
  v4.opaque[1] = 0;
  os_activity_scope_enter(v3, &v4);
  os_activity_scope_leave(&v4);

  [(ARPCorrelationTask *)self execute:0 microLocationEvents:0];
}

- (void)execute:(id)execute microLocationEvents:(id)events
{
  v58[3] = *MEMORY[0x277D85DE8];
  executeCopy = execute;
  eventsCopy = events;
  v8 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v9 = 0x278C64000uLL;
  if (executeCopy)
  {
    v10 = executeCopy;
  }

  else
  {
    v14 = MEMORY[0x277CFE260];
    playing = [MEMORY[0x277CFE248] playing];
    v13 = [v14 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

    longFormVideoAppBundleIDs = [(ARPCorrelationTask *)self longFormVideoAppBundleIDs];
    [MEMORY[0x277CFE260] predicateForEventsWithStringValueInValues:longFormVideoAppBundleIDs];
    file = v47 = self;
    +[ARPRoutingSession minimumRoutingEventDuration];
    v11 = [MEMORY[0x277CFE260] predicateForEventsWithMinimumDuration:?];
    v18 = MEMORY[0x277CCA920];
    v58[0] = file;
    v58[1] = v13;
    v58[2] = v11;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:3];
    v20 = [v18 andPredicateWithSubpredicates:v19];

    v21 = MEMORY[0x277CFE1E0];
    nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
    v57 = nowPlayingStream;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
    v46 = v8;
    v56 = v8;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
    v25 = [v21 eventQueryWithPredicate:v20 eventStreams:v23 offset:0 limit:512 sortDescriptors:v24];

    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPCorrelationTask.m"];
    v27 = [v26 stringByAppendingFormat:@":%d", 283];
    [v25 setClientName:v27];

    [v25 setTracker:&__block_literal_global_95];
    knowledgeStore = [(ARPCorrelationTask *)v47 knowledgeStore];
    v49 = 0;
    v10 = [knowledgeStore executeQuery:v25 error:&v49];
    v29 = v49;

    if (v29)
    {
      v30 = ARPLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [ARPCorrelationTask execute:microLocationEvents:];
      }

      v8 = v46;
      executeCopy = 0;
      goto LABEL_28;
    }

    v8 = v46;
    executeCopy = 0;
    self = v47;
    v9 = 0x278C64000;
  }

  v11 = ARPLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    *buf = 134217984;
    v51 = v12;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "[ARPCorrelationTask execute:microLocationEvents:] nowPlayingEvents.count:%lu", buf, 0xCu);
  }

  if (eventsCopy)
  {
    v13 = eventsCopy;
  }

  else if ([v10 count])
  {
    v31 = v8;
    [*(v9 + 784) microLocationCorrelationGracePeriod];
    v33 = v32;
    lastObject = [v10 lastObject];
    startDate = [lastObject startDate];
    v36 = [startDate dateByAddingTimeInterval:-v33];

    firstObject = [v10 firstObject];
    startDate2 = [firstObject startDate];
    v39 = [startDate2 dateByAddingTimeInterval:v33];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "Calling queryForMicroLocationsFromStartTime v1.0a:", buf, 2u);
    }

    v13 = -[ARPCorrelationTask queryForMicroLocationsFromStartTime:endTime:maxEvents:overlappingNowPlayingEvents:](self, "queryForMicroLocationsFromStartTime:endTime:maxEvents:overlappingNowPlayingEvents:", v39, v36, 2 * [v10 count], v10);

    v8 = v31;
    v9 = 0x278C64000;
  }

  else
  {
    v13 = 0;
  }

  [*(v9 + 784) routingSessionTimeout];
  v41 = v40;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v42 = [v10 count];
    v43 = [v13 count];
    *buf = 134218496;
    v51 = v42;
    v52 = 2048;
    v53 = v43;
    v54 = 2048;
    v55 = v41;
    _os_log_impl(&dword_23EB15000, v11, OS_LOG_TYPE_INFO, "nowPlayingEventsArg microLocationEvents: nowPlayingEvents.count: %lu microLocationEvents.count: %lu, routingSessionTimeout: %f", buf, 0x20u);
  }

  if ([v10 count] && objc_msgSend(v13, "count"))
  {
    longFormVideoAppBundleIDs = [*(v9 + 784) routingSessionsFromNowPlayingEvents:v10 microLocationEvents:v13 routingSessionTimeout:v41];
  }

  else
  {
    longFormVideoAppBundleIDs = MEMORY[0x277CBEBF8];
  }

  file = [(ARPCorrelationTask *)self file];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(ARPCorrelationTask *)longFormVideoAppBundleIDs execute:file microLocationEvents:v11];
  }

  v44 = *(v9 + 784);
  v48 = 0;
  [v44 writeSessions:longFormVideoAppBundleIDs routingSessionTimeout:file file:&v48 error:v41];
  v29 = v48;
  if (v29)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ARPCorrelationTask execute:microLocationEvents:];
    }

LABEL_28:
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)longFormVideoAppBundleIDs
{
  v29[1] = *MEMORY[0x277D85DE8];
  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  v29[0] = nowPlayingStream;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];

  v5 = [MEMORY[0x277CFE1E0] eventQueryWithPredicate:0 eventStreams:v4 offset:0 limit:0 sortDescriptors:0];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ARPCorrelationTask.m"];
  v7 = [v6 stringByAppendingFormat:@":%d", 340];
  [v5 setClientName:v7];

  [v5 setTracker:&__block_literal_global_97];
  [v5 setGroupByProperties:&unk_2851429D8];
  [v5 setResultType:3];
  knowledgeStore = [(ARPCorrelationTask *)self knowledgeStore];
  v27 = 0;
  v9 = [knowledgeStore executeQuery:v5 error:&v27];
  v10 = v27;

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v10)
  {
    sharedAVSystemController = ARPLog();
    if (os_log_type_enabled(sharedAVSystemController, OS_LOG_TYPE_ERROR))
    {
      [ARPCorrelationTask longFormVideoAppBundleIDs];
    }
  }

  else
  {
    v22 = v4;
    sharedAVSystemController = [getAVSystemControllerClass() sharedAVSystemController];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [v9 valueForKey:@"valueString"];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          if ([sharedAVSystemController hasRouteSharingPolicyLongFormVideo:v18])
          {
            [v11 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    v4 = v22;
  }

  allObjects = [v11 allObjects];

  v20 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (void)execute:microLocationEvents:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23EB15000, v0, v1, "Error fetching now playing for correlation task: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)execute:(NSObject *)a3 microLocationEvents:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_23EB15000, a3, OS_LOG_TYPE_DEBUG, "Archiving %@ sessions to %@ for correlation task.", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)execute:microLocationEvents:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23EB15000, v0, v1, "Error archiving sessions to file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)longFormVideoAppBundleIDs
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23EB15000, v0, v1, "Error fetching long form video bundle IDs from knowledge store: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end
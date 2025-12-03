@interface ATXEventTravelTimeDataSourceInternal
+ (id)sharedInstance;
- (ATXEventTravelTimeDataSourceInternal)init;
- (void)travelTimeInfoForEventID:(id)d location:(id)location expectedArrivalDate:(id)date transportType:(id)type localOnlyAfterFirstUpdate:(BOOL)update heuristicDevice:(id)device callback:(id)callback;
@end

@implementation ATXEventTravelTimeDataSourceInternal

- (ATXEventTravelTimeDataSourceInternal)init
{
  v9.receiver = self;
  v9.super_class = ATXEventTravelTimeDataSourceInternal;
  v2 = [(ATXEventTravelTimeDataSourceInternal *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:5];
    v5 = v3[1];
    v3[1] = v4;

    v6 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v3];
    hypothesizerCacheLock = v2->_hypothesizerCacheLock;
    v2->_hypothesizerCacheLock = v6;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken4 != -1)
  {
    +[ATXEventTravelTimeDataSourceInternal sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_1;

  return v3;
}

void __54__ATXEventTravelTimeDataSourceInternal_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)travelTimeInfoForEventID:(id)d location:(id)location expectedArrivalDate:(id)date transportType:(id)type localOnlyAfterFirstUpdate:(BOOL)update heuristicDevice:(id)device callback:(id)callback
{
  dCopy = d;
  locationCopy = location;
  dateCopy = date;
  typeCopy = type;
  deviceCopy = device;
  callbackCopy = callback;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__7;
  v82 = __Block_byref_object_dispose__7;
  v83 = 0;
  v61 = [dateCopy dateByAddingTimeInterval:1200.0];
  v59 = dCopy;
  if (dCopy)
  {
    eventStore = [deviceCopy eventStore];
    v20 = [eventStore eventWithIdentifier:v59];

    structuredLocation = [v20 structuredLocation];
    if (structuredLocation && ([v20 structuredLocation], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "geoLocation"), v23 = objc_claimAutoreleasedReturnValue(), v23, v22, structuredLocation, v23))
    {
      endDate = [v20 endDate];

      structuredLocation2 = [v20 structuredLocation];
      geoLocation = [structuredLocation2 geoLocation];

      v61 = endDate;
      locationCopy = geoLocation;
    }

    else
    {
      structuredLocation2 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(structuredLocation2, OS_LOG_TYPE_DEBUG))
      {
        [ATXEventTravelTimeDataSourceInternal travelTimeInfoForEventID:location:expectedArrivalDate:transportType:localOnlyAfterFirstUpdate:heuristicDevice:callback:];
      }
    }
  }

  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  if (locationCopy)
  {
    v27 = objc_opt_new();
    v28 = MEMORY[0x277CCACA8];
    [locationCopy coordinate];
    v30 = v29;
    [locationCopy coordinate];
    v32 = [v28 stringWithFormat:@"%f, %f", v30, v31];
    v33 = *(v27 + 8);
    *(v27 + 8) = v32;

    objc_storeStrong((v27 + 16), type);
    *(v27 + 24) = update;
    hypothesizerCacheLock = self->_hypothesizerCacheLock;
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke;
    v64[3] = &unk_278C3D100;
    v71 = &v78;
    v35 = v27;
    v65 = v35;
    v66 = locationCopy;
    v67 = dateCopy;
    v68 = v61;
    updateCopy = update;
    v72 = &v74;
    v69 = typeCopy;
    selfCopy = self;
    [(_PASLock *)hypothesizerCacheLock runWithLockAcquired:v64];
  }

  v36 = v79[5];
  if (!v36 || ([v36 currentHypothesis], v37 = objc_claimAutoreleasedReturnValue(), v37, !v37))
  {
    if (*(v75 + 24) == 1)
    {
      v47 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [ATXEventTravelTimeDataSourceInternal travelTimeInfoForEventID:location:expectedArrivalDate:transportType:localOnlyAfterFirstUpdate:heuristicDevice:callback:];
      }

      if (locationCopy)
      {
        v48 = objc_opt_new();
        v49 = MEMORY[0x277CCACA8];
        [locationCopy coordinate];
        v51 = v50;
        [locationCopy coordinate];
        v53 = [v49 stringWithFormat:@"%f, %f", v51, v52];
        v54 = *(v48 + 8);
        *(v48 + 8) = v53;

        objc_storeStrong((v48 + 16), type);
        *(v48 + 24) = update;
        v55 = self->_hypothesizerCacheLock;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_41;
        v62[3] = &unk_278C3D128;
        currentHypothesis3 = v48;
        v63 = currentHypothesis3;
        [(_PASLock *)v55 runWithLockAcquired:v62];

        v46 = 0;
        generationDate = 0;
        v43 = 0.0;
        goto LABEL_27;
      }

      currentHypothesis3 = __atxlog_handle_heuristic();
      v43 = 0.0;
      if (os_log_type_enabled(currentHypothesis3, OS_LOG_TYPE_ERROR))
      {
        [ATXEventTravelTimeDataSourceInternal travelTimeInfoForEventID:location:expectedArrivalDate:transportType:localOnlyAfterFirstUpdate:heuristicDevice:callback:];
      }
    }

    else
    {
      currentHypothesis3 = __atxlog_handle_heuristic();
      v43 = 0.0;
      if (os_log_type_enabled(currentHypothesis3, OS_LOG_TYPE_DEBUG))
      {
        [ATXEventTravelTimeDataSourceInternal travelTimeInfoForEventID:location:expectedArrivalDate:transportType:localOnlyAfterFirstUpdate:heuristicDevice:callback:];
      }
    }

    v46 = 0;
    generationDate = 0;
    goto LABEL_27;
  }

  v38 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [ATXEventTravelTimeDataSourceInternal travelTimeInfoForEventID:location:expectedArrivalDate:transportType:localOnlyAfterFirstUpdate:heuristicDevice:callback:];
  }

  currentHypothesis = [v79[5] currentHypothesis];
  generationDate = [currentHypothesis generationDate];

  currentHypothesis2 = [v79[5] currentHypothesis];
  [currentHypothesis2 estimatedTravelTime];
  v43 = v42;

  currentHypothesis3 = [v79[5] currentHypothesis];
  travelState = [currentHypothesis3 travelState];
  if (travelState >= 6)
  {
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %lu)", travelState];
  }

  else
  {
    v46 = off_278C3D148[travelState];
  }

LABEL_27:

  v56 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  [v56 setObject:generationDate forKeyedSubscript:@"generationDate"];
  v57 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
  [v56 setObject:v57 forKeyedSubscript:@"estimatedTravelTime"];

  [v56 setObject:v46 forKeyedSubscript:@"travelState"];
  callbackCopy[2](callbackCopy, v56, 0);

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
}

void __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[1] objectForKey:*(a1 + 32)];
  v5 = *(*(a1 + 80) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v7 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) coordinate];
    v7 = [objc_alloc(MEMORY[0x277D0EC68]) initWithCoordinate:{v8, v9}];
    [v7 setArrivalDate:*(a1 + 48)];
    [v7 setExpirationDate:*(a1 + 56)];
    v10 = *(a1 + 64);
    if ([v10 isEqualToString:@"AUTOMOBILE"])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:@"TRANSIT"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"WALKING"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"BICYCLE"])
    {
      v11 = 3;
    }

    else if ([v10 isEqualToString:@"UNKNOWN_TRANSPORT_TYPE"])
    {
      v11 = 4;
    }

    else if ([v10 isEqualToString:@"FERRY"])
    {
      v11 = 5;
    }

    else if ([v10 isEqualToString:@"RIDESHARE"])
    {
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }

    [v7 setTransportType:v11];
    v12 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 40) coordinate];
      v14 = v13;
      [*(a1 + 40) coordinate];
      *buf = 134218240;
      v32 = v14;
      v33 = 2048;
      v34 = v15;
      _os_log_impl(&dword_23E3EA000, v12, OS_LOG_TYPE_INFO, "Begin Route Hypothesis to destination: (%f, %f)", buf, 0x16u);
    }

    v16 = [MEMORY[0x277D0ECE8] hypothesizerForPlannedDestination:v7];
    v17 = *(*(a1 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = *(a1 + 80);
    v20 = *(*(v19 + 8) + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_35;
    v25[3] = &unk_278C3D0D8;
    v30 = *(a1 + 96);
    v28 = v19;
    v21 = *(a1 + 40);
    v29 = *(a1 + 88);
    v22 = *(a1 + 72);
    v26 = v21;
    v27 = v22;
    [v20 startHypothesizingWithUpdateHandler:v25];
    [v3[1] setObject:*(*(*(a1 + 80) + 8) + 40) forKey:*(a1 + 32)];
    v23 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_cold_2();
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_35(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    [*(*(*(a1 + 48) + 8) + 40) onlyPerformLocalUpdates];
  }

  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) coordinate];
    v4 = v3;
    [*(a1 + 32) coordinate];
    v13 = 134218240;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_23E3EA000, v2, OS_LOG_TYPE_INFO, "Route hypothesizer received update (%f, %f). Checking for validity.", &v13, 0x16u);
  }

  if ([*(*(*(a1 + 48) + 8) + 40) state] == 2 || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "state") == 3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v6 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(*(*(a1 + 48) + 8) + 40) state];
      v13 = 134217984;
      v14 = v7;
      _os_log_impl(&dword_23E3EA000, v6, OS_LOG_TYPE_INFO, "Route hypothesizer has failed. Status: %lu. Note: This could be because user is too far from the desired destination.", &v13, 0xCu);
    }
  }

  else
  {
    v8 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      [*(a1 + 32) coordinate];
      v10 = v9;
      [*(a1 + 32) coordinate];
      v13 = 134218240;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      _os_log_impl(&dword_23E3EA000, v8, OS_LOG_TYPE_INFO, "Hypothesis is valid (%f, %f). Posting ATXEventTravelTimeUpdated notification.", &v13, 0x16u);
    }

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"ATXTravelTimeUpdated" object:*(a1 + 40)];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_41(uint64_t a1, uint64_t a2)
{
  [*(a2 + 8) removeObjectForKey:*(a1 + 32)];
  v2 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __159__ATXEventTravelTimeDataSourceInternal_travelTimeInfoForEventID_location_expectedArrivalDate_transportType_localOnlyAfterFirstUpdate_heuristicDevice_callback___block_invoke_41_cold_1();
  }
}

@end
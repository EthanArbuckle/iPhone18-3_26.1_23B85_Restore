@interface ARPRoutingSession
+ (double)microLocationCorrelationGracePeriod;
+ (double)minimumRoutingEventDuration;
+ (double)routingSessionTimeout;
+ (id)routingSessionsFromNowPlayingEvents:(id)a3 microLocationEvents:(id)a4 routingSessionTimeout:(double)a5;
+ (void)writeSessions:(id)a3 routingSessionTimeout:(double)a4 file:(id)a5 error:(id *)a6;
- (ARPRoutingSession)initWithCoder:(id)a3;
- (ARPRoutingSession)initWithOutputDeviceID:(id)a3 interval:(id)a4 microLocationProbabilityVector:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPRoutingSession

+ (double)routingSessionTimeout
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AirPlayRoutePrediction"];
  [v2 doubleForKey:@"RoutingSessionTimeout"];
  if (v3 <= 0.0)
  {
    v4 = 10800.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (double)minimumRoutingEventDuration
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AirPlayRoutePrediction"];
  [v2 doubleForKey:@"MinimumRoutingEventDuration"];
  if (v3 <= 0.0)
  {
    v4 = 30.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (double)microLocationCorrelationGracePeriod
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AirPlayRoutePrediction"];
  [v2 doubleForKey:@"MicroLocationCorrelationGracePeriod"];
  if (v3 <= 0.0)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)routingSessionsFromNowPlayingEvents:(id)a3 microLocationEvents:(id)a4 routingSessionTimeout:(double)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = ARPLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v29 = [v7 count];
    v30 = 2048;
    v31 = [v8 count];
    _os_log_impl(&dword_23EB15000, v9, OS_LOG_TYPE_INFO, "routingSessionsFromNowPlayingEvents: nowPlayingEvents: %lu microLocationEvents: %lu", buf, 0x16u);
  }

  +[ARPRoutePredictor defaultMicroLocationSimilarityThreshold];
  v11 = v10;
  +[ARPRoutingSession microLocationCorrelationGracePeriod];
  v13 = v12;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v29 = v11;
    v30 = 2048;
    v31 = v13;
    _os_log_impl(&dword_23EB15000, v9, OS_LOG_TYPE_INFO, "routingSessionsFromNowPlayingEvents: defaultMicroLocationSimilarityThreshold: %f microLocationCorrelationGracePeriod: %f", buf, 0x16u);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = [v7 reverseObjectEnumerator];
  v16 = [v15 allObjects];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __99__ARPRoutingSession_routingSessionsFromNowPlayingEvents_microLocationEvents_routingSessionTimeout___block_invoke;
  v22[3] = &unk_278C645A0;
  v23 = v8;
  v24 = v14;
  v25 = v13;
  v26 = a5;
  v27 = v11;
  v17 = v14;
  v18 = v8;
  [v16 enumerateObjectsUsingBlock:v22];

  v19 = [v17 copy];
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __99__ARPRoutingSession_routingSessionsFromNowPlayingEvents_microLocationEvents_routingSessionTimeout___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 metadata];
  v5 = [MEMORY[0x277CFE248] outputDeviceIDs];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = ARPExtractLongFormVideoOutputDeviceIDs(v6);
  if ([v7 count] == 1)
  {
    v40 = [v7 firstObject];
    v8 = [*(a1 + 32) indexOfObject:v3 inSortedRange:0 options:objc_msgSend(*(a1 + 32) usingComparator:{"count"), 1024, &__block_literal_global_70}];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }

    if (v8)
    {
      v9 = v8 - 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 + 2;
    if (v9 + 2 >= [*(a1 + 32) count])
    {
      v10 = [*(a1 + 32) count];
    }

    if (v9 >= v10)
    {
LABEL_14:
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = *(a1 + 48);
      do
      {
        v13 = [*(a1 + 32) objectAtIndexedSubscript:v9];
        v14 = [v13 startDate];
        v15 = [v3 startDate];
        [v14 timeIntervalSinceDate:v15];
        v17 = fabs(v16);

        if (v17 < v12)
        {
          v18 = v13;

          v11 = v18;
          v12 = v17;
        }

        ++v9;
      }

      while (v9 < v10);
    }

    v19 = [v11 metadata];
    v20 = [MEMORY[0x277CFE230] probabilityVector];
    v21 = [v19 objectForKeyedSubscript:v20];

    if (v11 && v21)
    {
      v48 = 0;
      v49 = &v48;
      v50 = 0x2020000000;
      v51 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = *(a1 + 40);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __99__ARPRoutingSession_routingSessionsFromNowPlayingEvents_microLocationEvents_routingSessionTimeout___block_invoke_3;
      v41[3] = &unk_278C64578;
      v23 = v3;
      v42 = v23;
      v46 = *(a1 + 56);
      v24 = v40;
      v43 = v24;
      v39 = v21;
      v25 = v21;
      v47 = *(a1 + 64);
      v44 = v25;
      v45 = &v48;
      [v22 enumerateObjectsUsingBlock:v41];
      if (v49[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = objc_alloc(MEMORY[0x277CCA970]);
        v27 = [v23 startDate];
        v28 = [v23 endDate];
        v29 = [v26 initWithStartDate:v27 endDate:v28];

        v30 = [[ARPRoutingSession alloc] initWithOutputDeviceID:v24 interval:v29 microLocationProbabilityVector:v25];
      }

      else
      {
        v29 = [*(a1 + 40) objectAtIndexedSubscript:?];
        v37 = objc_alloc(MEMORY[0x277CCA970]);
        v31 = [v29 interval];
        v32 = [v31 startDate];
        v33 = [v23 endDate];
        v38 = [v37 initWithStartDate:v32 endDate:v33];

        v34 = [ARPRoutingSession alloc];
        v35 = [v29 outputDeviceID];
        v36 = [v29 microLocationProbabilityVector];
        v30 = [(ARPRoutingSession *)v34 initWithOutputDeviceID:v35 interval:v38 microLocationProbabilityVector:v36];

        [*(a1 + 40) removeObjectAtIndex:v49[3]];
      }

      [*(a1 + 40) insertObject:v30 atIndex:0];
      _Block_object_dispose(&v48, 8);
      v21 = v39;
    }
  }
}

uint64_t __99__ARPRoutingSession_routingSessionsFromNowPlayingEvents_microLocationEvents_routingSessionTimeout___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void __99__ARPRoutingSession_routingSessionsFromNowPlayingEvents_microLocationEvents_routingSessionTimeout___block_invoke_3(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [*(a1 + 32) startDate];
  v9 = [v7 interval];
  v10 = [v9 endDate];
  [v8 timeIntervalSinceDate:v10];
  v12 = v11;
  v13 = *(a1 + 64);

  if (v12 > v13)
  {
    v14 = ARPLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [*(a1 + 32) startDate];
      v16 = [v7 interval];
      v17 = [v16 endDate];
      v18 = *(a1 + 64);
      v25 = 138412802;
      v26 = v15;
      v27 = 2112;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      _os_log_impl(&dword_23EB15000, v14, OS_LOG_TYPE_INFO, "routingSessionsFromNowPlayingEvents: stopping enumeration of sessions since: [nowPlayingEvent.startDate (%@) timeIntervalSinceDate:session.interval.endDate (%@)] > routingSessionTimeout (%f)", &v25, 0x20u);
    }

LABEL_11:
    *a4 = 1;
    goto LABEL_12;
  }

  v19 = *(a1 + 40);
  v20 = [v7 outputDeviceID];
  LODWORD(v19) = [v19 isEqualToString:v20];

  if (v19)
  {
    if (![*(a1 + 40) isEqualToString:@"Speaker"] || (objc_msgSend(v7, "microLocationProbabilityVector"), v21 = objc_claimAutoreleasedReturnValue(), v22 = ARPMicroLocationSimilarity(v21, *(a1 + 48)), v21, v22 >= *(a1 + 72)))
    {
      v23 = ARPLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v25 = 134217984;
        v26 = a3;
        _os_log_impl(&dword_23EB15000, v23, OS_LOG_TYPE_INFO, "routingSessionsFromNowPlayingEvents: found sessionIndex: %lu", &v25, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = a3;
      goto LABEL_11;
    }
  }

LABEL_12:

  v24 = *MEMORY[0x277D85DE8];
}

- (ARPRoutingSession)initWithOutputDeviceID:(id)a3 interval:(id)a4 microLocationProbabilityVector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = ARPRoutingSession;
  v11 = [(ARPRoutingSession *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    outputDeviceID = v11->_outputDeviceID;
    v11->_outputDeviceID = v12;

    v14 = [v9 copy];
    interval = v11->_interval;
    v11->_interval = v14;

    objc_storeStrong(&v11->_microLocationProbabilityVector, a5);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ARPRoutingSession allocWithZone:a3];
  v5 = [(ARPRoutingSession *)self outputDeviceID];
  v6 = [(ARPRoutingSession *)self interval];
  v7 = [(ARPRoutingSession *)self microLocationProbabilityVector];
  v8 = [(ARPRoutingSession *)v4 initWithOutputDeviceID:v5 interval:v6 microLocationProbabilityVector:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ARPRoutingSession *)self outputDeviceID];
  v6 = NSStringFromSelector(sel_outputDeviceID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ARPRoutingSession *)self interval];
  v8 = NSStringFromSelector(sel_interval);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(ARPRoutingSession *)self microLocationProbabilityVector];
  v9 = NSStringFromSelector(sel_microLocationProbabilityVector);
  [v4 encodeObject:v10 forKey:v9];
}

- (ARPRoutingSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_outputDeviceID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_interval);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = NSStringFromSelector(sel_microLocationProbabilityVector);
  v16 = [v4 decodeObjectOfClasses:v14 forKey:v15];

  v17 = [(ARPRoutingSession *)self initWithOutputDeviceID:v7 interval:v10 microLocationProbabilityVector:v16];
  return v17;
}

+ (void)writeSessions:(id)a3 routingSessionTimeout:(double)a4 file:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a3;
  v11 = [[ARPRoutingSessionArchive alloc] initWithSessions:v10 routingSessionTimeout:a4];

  v21 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v21];
  v13 = v21;
  if (!v13)
  {
    v14 = [v9 stringByDeletingLastPathComponent];
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    [v15 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v20];
    v13 = v20;

    if (!v13)
    {
      v19 = 0;
      [v12 writeToFile:v9 options:1073741825 error:&v19];
      v16 = v19;
      if (v16)
      {
        v13 = v16;
      }

      else
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.AirPlayRoutePrediction:%s", objc_msgSend(v9, "fileSystemRepresentation")];
        notify_post([v17 UTF8String]);

        v13 = 0;
      }
    }
  }

  if (a6)
  {
    v18 = v13;
    *a6 = v13;
  }
}

@end
@interface ANAnalytics
+ (id)shared;
- (ANAnalytics)initWithSystem:(id)a3 assistant:(id)a4 dailyReporter:(id)a5;
- (void)announcementEntryAgeLimit:(id)a3 timeExceeded:(double)a4 context:(id)a5;
- (void)announcementFinishedPlaying:(id)a3 withTime:(double)a4 ofGroupCount:(int64_t)a5 context:(id)a6;
- (void)announcementPlayed:(id)a3 withTime:(double)a4 deadlineViolation:(double)a5 playbackSource:(unint64_t)a6 ofGroupCount:(int64_t)a7 context:(id)a8;
- (void)announcementReceived:(id)a3 withTime:(double)a4 receiveTimeType:(unint64_t)a5 context:(id)a6;
- (void)announcementSent:(id)a3 inHome:(id)a4 withError:(int64_t)a5 withTime:(double)a6 sendType:(unint64_t)a7 ofGroupCount:(int64_t)a8 context:(id)a9;
- (void)announcementsExpired:(id)a3 ofGroupCount:(int64_t)a4 context:(id)a5;
- (void)announcementsStorageAgeLimit:(id)a3 context:(id)a4;
- (void)dailyReport:(id)a3 withPayload:(id)a4;
- (void)dailyReportComplete;
- (void)error:(int64_t)a3 context:(id)a4;
- (void)playbackAction:(unint64_t)a3 fromSource:(unint64_t)a4 context:(id)a5;
- (void)recordReachableHomes:(id)a3;
@end

@implementation ANAnalytics

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__ANAnalytics_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (shared_onceToken_0 != -1)
  {
    dispatch_once(&shared_onceToken_0, block);
  }

  v2 = shared_shared;

  return v2;
}

void __21__ANAnalytics_shared__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEAB80] sharedInstance];
  v3 = [v2 BOOLForDefault:*MEMORY[0x277CEA818]];

  v4 = objc_alloc(*(a1 + 32));
  v9 = objc_alloc_init(ANCoreAnalytics);
  v5 = objc_alloc_init(ANAnalyticsAssistant);
  if (v3)
  {
    v6 = objc_alloc_init(ANAnalyticsDaily);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 initWithSystem:v9 assistant:v5 dailyReporter:v6];
  v8 = shared_shared;
  shared_shared = v7;

  if (v3)
  {
  }
}

- (ANAnalytics)initWithSystem:(id)a3 assistant:(id)a4 dailyReporter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ANAnalytics;
  v12 = [(ANAnalytics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_system, a3);
    objc_storeStrong(&v13->_assistant, a4);
    if (v11)
    {
      objc_storeStrong(&v13->_dailyReporter, a5);
      [(ANAnalyticsDailyProtocol *)v13->_dailyReporter setDelegate:v13];
      [(ANAnalyticsDailyProtocol *)v13->_dailyReporter start];
    }
  }

  return v13;
}

- (void)announcementSent:(id)a3 inHome:(id)a4 withError:(int64_t)a5 withTime:(double)a6 sendType:(unint64_t)a7 ofGroupCount:(int64_t)a8 context:(id)a9
{
  v16 = a3;
  v17 = a4;
  if (v16)
  {
    v18 = a9;
    v19 = [(ANAnalytics *)self assistant];
    v20 = [v19 audioDataForAnnouncement:v16];
    v22 = v21;

    v43 = 0u;
    v23 = [(ANAnalytics *)self assistant];
    v24 = v23;
    if (v23)
    {
      [v23 senderDataForAnnouncement:v16];
    }

    else
    {
      v43 = 0u;
    }

    v25 = [(ANAnalytics *)self assistant];
    v26 = [v25 boundGroupCount:a8];

    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v27 setObject:v28 forKeyedSubscript:@"action"];

    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    [v27 setObject:v29 forKeyedSubscript:@"duration"];

    v30 = [MEMORY[0x277CCABB0] numberWithBool:a5 != 0];
    [v27 setObject:v30 forKeyedSubscript:@"error"];

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v27 setObject:v31 forKeyedSubscript:@"errorCode"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
    [v27 setObject:v32 forKeyedSubscript:@"groupCount"];

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
    [v27 setObject:v33 forKeyedSubscript:@"location"];

    v34 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
    [v27 setObject:v34 forKeyedSubscript:@"sendType"];

    v35 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    [v27 setObject:v35 forKeyedSubscript:@"size"];

    v36 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v43 + 1)];
    [v27 setObject:v36 forKeyedSubscript:@"source"];

    v37 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    [v27 setObject:v37 forKeyedSubscript:@"time"];

    v38 = [v18 analyticsPayload];

    [v27 addEntriesFromDictionary:v38];
    v39 = [(ANAnalytics *)self system];
    v40 = [v27 copy];
    [v39 send:@"announcementSent" withPayload:v40];

    v41 = [(ANAnalytics *)self dailyReporter];

    if (!a7 && v41)
    {
      v42 = [(ANAnalytics *)self dailyReporter];
      [v42 announcementSent:v16 inHome:v17];
    }
  }
}

- (void)announcementReceived:(id)a3 withTime:(double)a4 receiveTimeType:(unint64_t)a5 context:(id)a6
{
  v10 = a3;
  if (v10)
  {
    v11 = a6;
    v12 = [(ANAnalytics *)self assistant];
    v13 = [v12 audioDataForAnnouncement:v10];
    v15 = v14;

    v51 = 0u;
    v52 = 0u;
    v16 = [(ANAnalytics *)self assistant];
    v17 = v16;
    if (v16)
    {
      [v16 senderDataForAnnouncement:v10];
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
    }

    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v51];
    [v18 setObject:v19 forKeyedSubscript:@"action"];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [v18 setObject:v20 forKeyedSubscript:@"duration"];

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
    [v18 setObject:v21 forKeyedSubscript:@"location"];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v18 setObject:v22 forKeyedSubscript:@"receiveType"];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v18 setObject:v23 forKeyedSubscript:@"size"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v52 + 1)];
    [v18 setObject:v24 forKeyedSubscript:@"source"];

    v25 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v18 setObject:v25 forKeyedSubscript:@"time"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:SDWORD2(v51)];
    [v18 setObject:v26 forKeyedSubscript:@"fromDevice"];

    v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CEAB88], "deviceClass")}];
    [v18 setObject:v27 forKeyedSubscript:@"toDevice"];

    v28 = [v11 analyticsPayload];
    [v18 addEntriesFromDictionary:v28];

    v29 = [(ANAnalytics *)self system];
    v50 = v11;
    v30 = [v18 copy];
    [v29 send:@"announcementTimeToReceive" withPayload:v30];

    v31 = [(ANAnalytics *)self assistant];
    v32 = [v31 bucketFromSize:v13];

    v33 = [(ANAnalytics *)self assistant];
    v34 = [v33 bucketFromDuration:v15];

    v35 = [(ANAnalytics *)self assistant];
    v36 = [v35 bucketFromReceiveTime:a4];

    v37 = objc_opt_new();
    v38 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
    [v37 setObject:v38 forKeyedSubscript:@"sizeBucket"];

    v39 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
    [v37 setObject:v39 forKeyedSubscript:@"durationBucket"];

    v40 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
    [v37 setObject:v40 forKeyedSubscript:@"timeBucket"];

    v41 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v37 setObject:v41 forKeyedSubscript:@"size"];

    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [v37 setObject:v42 forKeyedSubscript:@"duration"];

    v43 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v37 setObject:v43 forKeyedSubscript:@"time"];

    v44 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v37 setObject:v44 forKeyedSubscript:@"receiveType"];

    v45 = [MEMORY[0x277CCABB0] numberWithInteger:SDWORD2(v51)];
    [v37 setObject:v45 forKeyedSubscript:@"fromDevice"];

    v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CEAB88], "deviceClass")}];
    [v37 setObject:v46 forKeyedSubscript:@"toDevice"];

    v47 = [v50 analyticsPayload];

    [v37 addEntriesFromDictionary:v47];
    v48 = [(ANAnalytics *)self system];
    v49 = [v37 copy];
    [v48 send:@"announcementReceiveMeasure" withPayload:v49];
  }
}

- (void)announcementPlayed:(id)a3 withTime:(double)a4 deadlineViolation:(double)a5 playbackSource:(unint64_t)a6 ofGroupCount:(int64_t)a7 context:(id)a8
{
  v14 = a3;
  if (v14)
  {
    v15 = a8;
    v16 = [(ANAnalytics *)self assistant];
    v17 = [v16 audioDataForAnnouncement:v14];
    v19 = v18;

    v37 = 0u;
    v20 = [(ANAnalytics *)self assistant];
    v21 = v20;
    if (v20)
    {
      [v20 senderDataForAnnouncement:v14];
    }

    else
    {
      v37 = 0u;
    }

    v22 = [(ANAnalytics *)self assistant];
    v23 = [v22 boundGroupCount:a7];

    v24 = objc_opt_new();
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v24 setObject:v25 forKeyedSubscript:@"action"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:a5 > 0.0];
    [v24 setObject:v26 forKeyedSubscript:@"deadlineViolation"];

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    [v24 setObject:v27 forKeyedSubscript:@"duration"];

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
    [v24 setObject:v28 forKeyedSubscript:@"groupCount"];

    v29 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
    [v24 setObject:v29 forKeyedSubscript:@"location"];

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
    [v24 setObject:v30 forKeyedSubscript:@"size"];

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v37 + 1)];
    [v24 setObject:v31 forKeyedSubscript:@"source"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
    [v24 setObject:v32 forKeyedSubscript:@"playbackSource"];

    v33 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v24 setObject:v33 forKeyedSubscript:@"time"];

    v34 = [v15 analyticsPayload];

    [v24 addEntriesFromDictionary:v34];
    v35 = [(ANAnalytics *)self system];
    v36 = [v24 copy];
    [v35 send:@"announcementTimeToPlay" withPayload:v36];
  }
}

- (void)announcementFinishedPlaying:(id)a3 withTime:(double)a4 ofGroupCount:(int64_t)a5 context:(id)a6
{
  v10 = a3;
  if (v10)
  {
    v11 = a6;
    v12 = [(ANAnalytics *)self assistant];
    v13 = [v12 audioDataForAnnouncement:v10];
    v15 = v14;

    v31 = 0u;
    v16 = [(ANAnalytics *)self assistant];
    v17 = v16;
    if (v16)
    {
      [v16 senderDataForAnnouncement:v10];
    }

    else
    {
      v31 = 0u;
    }

    v18 = [(ANAnalytics *)self assistant];
    v19 = [v18 boundGroupCount:a5];

    v20 = objc_opt_new();
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v20 setObject:v21 forKeyedSubscript:@"action"];

    v22 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    [v20 setObject:v22 forKeyedSubscript:@"duration"];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
    [v20 setObject:v23 forKeyedSubscript:@"groupCount"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v31];
    [v20 setObject:v24 forKeyedSubscript:@"location"];

    v25 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v20 setObject:v25 forKeyedSubscript:@"size"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v31 + 1)];
    [v20 setObject:v26 forKeyedSubscript:@"source"];

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v20 setObject:v27 forKeyedSubscript:@"time"];

    v28 = [v11 analyticsPayload];

    [v20 addEntriesFromDictionary:v28];
    v29 = [(ANAnalytics *)self system];
    v30 = [v20 copy];
    [v29 send:@"announcementFinishedPlaying" withPayload:v30];
  }
}

- (void)announcementsExpired:(id)a3 ofGroupCount:(int64_t)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 count])
  {
    v10 = [(ANAnalytics *)self assistant];
    v11 = [v10 boundGroupCount:a4];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v8;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v30 = 0u;
          v17 = [(ANAnalytics *)self assistant];
          v18 = v17;
          if (v17)
          {
            [v17 senderDataForAnnouncement:v16];
          }

          else
          {
            v30 = 0u;
          }

          v19 = objc_opt_new();
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          [v19 setObject:v20 forKeyedSubscript:@"action"];

          v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "hasPlayed")}];
          [v19 setObject:v21 forKeyedSubscript:@"played"];

          v22 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          [v19 setObject:v22 forKeyedSubscript:@"groupCount"];

          v23 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v30 + 1)];
          [v19 setObject:v23 forKeyedSubscript:@"source"];

          v24 = [v9 analyticsPayload];
          [v19 addEntriesFromDictionary:v24];

          v25 = [(ANAnalytics *)self system];
          v26 = [v19 copy];
          [v25 send:@"announcementExpiration" withPayload:v26];
        }

        v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    v8 = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)announcementEntryAgeLimit:(id)a3 timeExceeded:(double)a4 context:(id)a5
{
  v8 = a3;
  if (v8)
  {
    v20 = 0u;
    v9 = a5;
    v10 = [(ANAnalytics *)self assistant];
    v11 = v10;
    if (v10)
    {
      [v10 senderDataForAnnouncement:v8];
    }

    else
    {
      v20 = 0u;
    }

    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v12 setObject:v13 forKeyedSubscript:@"action"];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    [v12 setObject:v14 forKeyedSubscript:@"location"];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v20 + 1)];
    [v12 setObject:v15 forKeyedSubscript:@"source"];

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v12 setObject:v16 forKeyedSubscript:@"timeExceeded"];

    v17 = [v9 analyticsPayload];

    [v12 addEntriesFromDictionary:v17];
    v18 = [(ANAnalytics *)self system];
    v19 = [v12 copy];
    [v18 send:@"announcementEntryAgeLimit" withPayload:v19];
  }
}

- (void)announcementsStorageAgeLimit:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 announcements];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 announcements];
    v11 = [v10 count];

    if (v11)
    {
      v12 = [(ANAnalytics *)self assistant];
      v13 = [v6 announcements];
      v34 = [v12 boundGroupCount:{objc_msgSend(v13, "count")}];

      v14 = [v6 announcements];
      v15 = [v14 count];

      if (v15)
      {
        v16 = 0;
        do
        {
          v17 = [v6 announcements];
          v18 = [v17 objectAtIndexedSubscript:v16];

          v19 = [v6 metadata];
          v20 = [v19 objectAtIndexedSubscript:v16];

          v35 = 0u;
          v21 = [(ANAnalytics *)self assistant];
          v22 = v21;
          if (v21)
          {
            [v21 senderDataForAnnouncement:v18];
          }

          else
          {
            v35 = 0u;
          }

          v23 = objc_opt_new();
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:0];
          [v23 setObject:v24 forKeyedSubscript:@"action"];

          v25 = [MEMORY[0x277CCABB0] numberWithInteger:v35];
          [v23 setObject:v25 forKeyedSubscript:@"location"];

          v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v18, "hasPlayed")}];
          [v23 setObject:v26 forKeyedSubscript:@"played"];

          v27 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v35 + 1)];
          [v23 setObject:v27 forKeyedSubscript:@"source"];

          v28 = [MEMORY[0x277CCABB0] numberWithInteger:v34];
          [v23 setObject:v28 forKeyedSubscript:@"groupCount"];

          v29 = [v7 analyticsPayload];
          [v23 addEntriesFromDictionary:v29];

          [v23 addEntriesFromDictionary:v20];
          v30 = [(ANAnalytics *)self system];
          v31 = [v23 copy];
          [v30 send:@"announcementAgeLimit" withPayload:v31];

          ++v16;
          v32 = [v6 announcements];
          v33 = [v32 count];
        }

        while (v16 < v33);
      }
    }
  }
}

- (void)error:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  if ((a3 - 5035) >= 0xFFFFFFFFFFFFF03DLL)
  {
    v11 = v6;
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v7 setObject:v8 forKeyedSubscript:@"errorCode"];

    if (v11)
    {
      v9 = [v11 analyticsPayload];
      [v7 addEntriesFromDictionary:v9];
    }

    v10 = [(ANAnalytics *)self system];
    [v10 send:@"announcementError" withPayload:v7];

    v6 = v11;
  }
}

- (void)playbackAction:(unint64_t)a3 fromSource:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v14 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v14 setObject:v9 forKeyedSubscript:@"action"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v14 setObject:v10 forKeyedSubscript:@"source"];

  v11 = [v8 analyticsPayload];

  [v14 addEntriesFromDictionary:v11];
  v12 = [(ANAnalytics *)self system];
  v13 = [v14 copy];
  [v12 send:@"playbackAction" withPayload:v13];
}

- (void)recordReachableHomes:(id)a3
{
  v4 = a3;
  v5 = [(ANAnalytics *)self dailyReporter];
  [v5 recordReachableHomes:v4];
}

- (void)dailyReport:(id)a3 withPayload:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ANAnalytics *)self system];
  [v8 send:v7 withPayload:v6];
}

- (void)dailyReportComplete
{
  v6 = *MEMORY[0x277D85DE8];
  if (ANLogHandleAnalytics_once != -1)
  {
    [ANAnalytics dailyReportComplete];
  }

  v2 = ANLogHandleAnalytics_logger;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = &stru_2851BDB18;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "%@AnalyticsDaily completed daily report.", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end
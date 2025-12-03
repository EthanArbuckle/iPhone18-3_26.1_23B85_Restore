@interface ANAnalytics
+ (id)shared;
- (ANAnalytics)initWithSystem:(id)system assistant:(id)assistant dailyReporter:(id)reporter;
- (void)announcementEntryAgeLimit:(id)limit timeExceeded:(double)exceeded context:(id)context;
- (void)announcementFinishedPlaying:(id)playing withTime:(double)time ofGroupCount:(int64_t)count context:(id)context;
- (void)announcementPlayed:(id)played withTime:(double)time deadlineViolation:(double)violation playbackSource:(unint64_t)source ofGroupCount:(int64_t)count context:(id)context;
- (void)announcementReceived:(id)received withTime:(double)time receiveTimeType:(unint64_t)type context:(id)context;
- (void)announcementSent:(id)sent inHome:(id)home withError:(int64_t)error withTime:(double)time sendType:(unint64_t)type ofGroupCount:(int64_t)count context:(id)context;
- (void)announcementsExpired:(id)expired ofGroupCount:(int64_t)count context:(id)context;
- (void)announcementsStorageAgeLimit:(id)limit context:(id)context;
- (void)dailyReport:(id)report withPayload:(id)payload;
- (void)dailyReportComplete;
- (void)error:(int64_t)error context:(id)context;
- (void)playbackAction:(unint64_t)action fromSource:(unint64_t)source context:(id)context;
- (void)recordReachableHomes:(id)homes;
@end

@implementation ANAnalytics

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __21__ANAnalytics_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (ANAnalytics)initWithSystem:(id)system assistant:(id)assistant dailyReporter:(id)reporter
{
  systemCopy = system;
  assistantCopy = assistant;
  reporterCopy = reporter;
  v15.receiver = self;
  v15.super_class = ANAnalytics;
  v12 = [(ANAnalytics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_system, system);
    objc_storeStrong(&v13->_assistant, assistant);
    if (reporterCopy)
    {
      objc_storeStrong(&v13->_dailyReporter, reporter);
      [(ANAnalyticsDailyProtocol *)v13->_dailyReporter setDelegate:v13];
      [(ANAnalyticsDailyProtocol *)v13->_dailyReporter start];
    }
  }

  return v13;
}

- (void)announcementSent:(id)sent inHome:(id)home withError:(int64_t)error withTime:(double)time sendType:(unint64_t)type ofGroupCount:(int64_t)count context:(id)context
{
  sentCopy = sent;
  homeCopy = home;
  if (sentCopy)
  {
    contextCopy = context;
    assistant = [(ANAnalytics *)self assistant];
    v20 = [assistant audioDataForAnnouncement:sentCopy];
    v22 = v21;

    v43 = 0u;
    assistant2 = [(ANAnalytics *)self assistant];
    v24 = assistant2;
    if (assistant2)
    {
      [assistant2 senderDataForAnnouncement:sentCopy];
    }

    else
    {
      v43 = 0u;
    }

    assistant3 = [(ANAnalytics *)self assistant];
    v26 = [assistant3 boundGroupCount:count];

    v27 = objc_opt_new();
    v28 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v27 setObject:v28 forKeyedSubscript:@"action"];

    v29 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    [v27 setObject:v29 forKeyedSubscript:@"duration"];

    v30 = [MEMORY[0x277CCABB0] numberWithBool:error != 0];
    [v27 setObject:v30 forKeyedSubscript:@"error"];

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    [v27 setObject:v31 forKeyedSubscript:@"errorCode"];

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
    [v27 setObject:v32 forKeyedSubscript:@"groupCount"];

    v33 = [MEMORY[0x277CCABB0] numberWithInteger:v43];
    [v27 setObject:v33 forKeyedSubscript:@"location"];

    v34 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [v27 setObject:v34 forKeyedSubscript:@"sendType"];

    v35 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
    [v27 setObject:v35 forKeyedSubscript:@"size"];

    v36 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v43 + 1)];
    [v27 setObject:v36 forKeyedSubscript:@"source"];

    v37 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [v27 setObject:v37 forKeyedSubscript:@"time"];

    analyticsPayload = [contextCopy analyticsPayload];

    [v27 addEntriesFromDictionary:analyticsPayload];
    system = [(ANAnalytics *)self system];
    v40 = [v27 copy];
    [system send:@"announcementSent" withPayload:v40];

    dailyReporter = [(ANAnalytics *)self dailyReporter];

    if (!type && dailyReporter)
    {
      dailyReporter2 = [(ANAnalytics *)self dailyReporter];
      [dailyReporter2 announcementSent:sentCopy inHome:homeCopy];
    }
  }
}

- (void)announcementReceived:(id)received withTime:(double)time receiveTimeType:(unint64_t)type context:(id)context
{
  receivedCopy = received;
  if (receivedCopy)
  {
    contextCopy = context;
    assistant = [(ANAnalytics *)self assistant];
    v13 = [assistant audioDataForAnnouncement:receivedCopy];
    v15 = v14;

    v51 = 0u;
    v52 = 0u;
    assistant2 = [(ANAnalytics *)self assistant];
    v17 = assistant2;
    if (assistant2)
    {
      [assistant2 senderDataForAnnouncement:receivedCopy];
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

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [v18 setObject:v22 forKeyedSubscript:@"receiveType"];

    v23 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
    [v18 setObject:v23 forKeyedSubscript:@"size"];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:*(&v52 + 1)];
    [v18 setObject:v24 forKeyedSubscript:@"source"];

    v25 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [v18 setObject:v25 forKeyedSubscript:@"time"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:SDWORD2(v51)];
    [v18 setObject:v26 forKeyedSubscript:@"fromDevice"];

    v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CEAB88], "deviceClass")}];
    [v18 setObject:v27 forKeyedSubscript:@"toDevice"];

    analyticsPayload = [contextCopy analyticsPayload];
    [v18 addEntriesFromDictionary:analyticsPayload];

    system = [(ANAnalytics *)self system];
    v50 = contextCopy;
    v30 = [v18 copy];
    [system send:@"announcementTimeToReceive" withPayload:v30];

    assistant3 = [(ANAnalytics *)self assistant];
    v32 = [assistant3 bucketFromSize:v13];

    assistant4 = [(ANAnalytics *)self assistant];
    v34 = [assistant4 bucketFromDuration:v15];

    assistant5 = [(ANAnalytics *)self assistant];
    v36 = [assistant5 bucketFromReceiveTime:time];

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

    v43 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [v37 setObject:v43 forKeyedSubscript:@"time"];

    v44 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [v37 setObject:v44 forKeyedSubscript:@"receiveType"];

    v45 = [MEMORY[0x277CCABB0] numberWithInteger:SDWORD2(v51)];
    [v37 setObject:v45 forKeyedSubscript:@"fromDevice"];

    v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CEAB88], "deviceClass")}];
    [v37 setObject:v46 forKeyedSubscript:@"toDevice"];

    analyticsPayload2 = [v50 analyticsPayload];

    [v37 addEntriesFromDictionary:analyticsPayload2];
    system2 = [(ANAnalytics *)self system];
    v49 = [v37 copy];
    [system2 send:@"announcementReceiveMeasure" withPayload:v49];
  }
}

- (void)announcementPlayed:(id)played withTime:(double)time deadlineViolation:(double)violation playbackSource:(unint64_t)source ofGroupCount:(int64_t)count context:(id)context
{
  playedCopy = played;
  if (playedCopy)
  {
    contextCopy = context;
    assistant = [(ANAnalytics *)self assistant];
    v17 = [assistant audioDataForAnnouncement:playedCopy];
    v19 = v18;

    v37 = 0u;
    assistant2 = [(ANAnalytics *)self assistant];
    v21 = assistant2;
    if (assistant2)
    {
      [assistant2 senderDataForAnnouncement:playedCopy];
    }

    else
    {
      v37 = 0u;
    }

    assistant3 = [(ANAnalytics *)self assistant];
    v23 = [assistant3 boundGroupCount:count];

    v24 = objc_opt_new();
    v25 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [v24 setObject:v25 forKeyedSubscript:@"action"];

    v26 = [MEMORY[0x277CCABB0] numberWithBool:violation > 0.0];
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

    v32 = [MEMORY[0x277CCABB0] numberWithInteger:source];
    [v24 setObject:v32 forKeyedSubscript:@"playbackSource"];

    v33 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [v24 setObject:v33 forKeyedSubscript:@"time"];

    analyticsPayload = [contextCopy analyticsPayload];

    [v24 addEntriesFromDictionary:analyticsPayload];
    system = [(ANAnalytics *)self system];
    v36 = [v24 copy];
    [system send:@"announcementTimeToPlay" withPayload:v36];
  }
}

- (void)announcementFinishedPlaying:(id)playing withTime:(double)time ofGroupCount:(int64_t)count context:(id)context
{
  playingCopy = playing;
  if (playingCopy)
  {
    contextCopy = context;
    assistant = [(ANAnalytics *)self assistant];
    v13 = [assistant audioDataForAnnouncement:playingCopy];
    v15 = v14;

    v31 = 0u;
    assistant2 = [(ANAnalytics *)self assistant];
    v17 = assistant2;
    if (assistant2)
    {
      [assistant2 senderDataForAnnouncement:playingCopy];
    }

    else
    {
      v31 = 0u;
    }

    assistant3 = [(ANAnalytics *)self assistant];
    v19 = [assistant3 boundGroupCount:count];

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

    v27 = [MEMORY[0x277CCABB0] numberWithDouble:time];
    [v20 setObject:v27 forKeyedSubscript:@"time"];

    analyticsPayload = [contextCopy analyticsPayload];

    [v20 addEntriesFromDictionary:analyticsPayload];
    system = [(ANAnalytics *)self system];
    v30 = [v20 copy];
    [system send:@"announcementFinishedPlaying" withPayload:v30];
  }
}

- (void)announcementsExpired:(id)expired ofGroupCount:(int64_t)count context:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  expiredCopy = expired;
  contextCopy = context;
  if (expiredCopy && [expiredCopy count])
  {
    assistant = [(ANAnalytics *)self assistant];
    v11 = [assistant boundGroupCount:count];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = expiredCopy;
    obj = expiredCopy;
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
          assistant2 = [(ANAnalytics *)self assistant];
          v18 = assistant2;
          if (assistant2)
          {
            [assistant2 senderDataForAnnouncement:v16];
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

          analyticsPayload = [contextCopy analyticsPayload];
          [v19 addEntriesFromDictionary:analyticsPayload];

          system = [(ANAnalytics *)self system];
          v26 = [v19 copy];
          [system send:@"announcementExpiration" withPayload:v26];
        }

        v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    expiredCopy = v28;
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)announcementEntryAgeLimit:(id)limit timeExceeded:(double)exceeded context:(id)context
{
  limitCopy = limit;
  if (limitCopy)
  {
    v20 = 0u;
    contextCopy = context;
    assistant = [(ANAnalytics *)self assistant];
    v11 = assistant;
    if (assistant)
    {
      [assistant senderDataForAnnouncement:limitCopy];
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

    v16 = [MEMORY[0x277CCABB0] numberWithDouble:exceeded];
    [v12 setObject:v16 forKeyedSubscript:@"timeExceeded"];

    analyticsPayload = [contextCopy analyticsPayload];

    [v12 addEntriesFromDictionary:analyticsPayload];
    system = [(ANAnalytics *)self system];
    v19 = [v12 copy];
    [system send:@"announcementEntryAgeLimit" withPayload:v19];
  }
}

- (void)announcementsStorageAgeLimit:(id)limit context:(id)context
{
  limitCopy = limit;
  contextCopy = context;
  announcements = [limitCopy announcements];
  if (announcements)
  {
    v9 = announcements;
    announcements2 = [limitCopy announcements];
    v11 = [announcements2 count];

    if (v11)
    {
      assistant = [(ANAnalytics *)self assistant];
      announcements3 = [limitCopy announcements];
      v34 = [assistant boundGroupCount:{objc_msgSend(announcements3, "count")}];

      announcements4 = [limitCopy announcements];
      v15 = [announcements4 count];

      if (v15)
      {
        v16 = 0;
        do
        {
          announcements5 = [limitCopy announcements];
          v18 = [announcements5 objectAtIndexedSubscript:v16];

          metadata = [limitCopy metadata];
          v20 = [metadata objectAtIndexedSubscript:v16];

          v35 = 0u;
          assistant2 = [(ANAnalytics *)self assistant];
          v22 = assistant2;
          if (assistant2)
          {
            [assistant2 senderDataForAnnouncement:v18];
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

          analyticsPayload = [contextCopy analyticsPayload];
          [v23 addEntriesFromDictionary:analyticsPayload];

          [v23 addEntriesFromDictionary:v20];
          system = [(ANAnalytics *)self system];
          v31 = [v23 copy];
          [system send:@"announcementAgeLimit" withPayload:v31];

          ++v16;
          announcements6 = [limitCopy announcements];
          v33 = [announcements6 count];
        }

        while (v16 < v33);
      }
    }
  }
}

- (void)error:(int64_t)error context:(id)context
{
  contextCopy = context;
  if ((error - 5035) >= 0xFFFFFFFFFFFFF03DLL)
  {
    v11 = contextCopy;
    v7 = objc_opt_new();
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:error];
    [v7 setObject:v8 forKeyedSubscript:@"errorCode"];

    if (v11)
    {
      analyticsPayload = [v11 analyticsPayload];
      [v7 addEntriesFromDictionary:analyticsPayload];
    }

    system = [(ANAnalytics *)self system];
    [system send:@"announcementError" withPayload:v7];

    contextCopy = v11;
  }
}

- (void)playbackAction:(unint64_t)action fromSource:(unint64_t)source context:(id)context
{
  contextCopy = context;
  v14 = objc_opt_new();
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:action];
  [v14 setObject:v9 forKeyedSubscript:@"action"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:source];
  [v14 setObject:v10 forKeyedSubscript:@"source"];

  analyticsPayload = [contextCopy analyticsPayload];

  [v14 addEntriesFromDictionary:analyticsPayload];
  system = [(ANAnalytics *)self system];
  v13 = [v14 copy];
  [system send:@"playbackAction" withPayload:v13];
}

- (void)recordReachableHomes:(id)homes
{
  homesCopy = homes;
  dailyReporter = [(ANAnalytics *)self dailyReporter];
  [dailyReporter recordReachableHomes:homesCopy];
}

- (void)dailyReport:(id)report withPayload:(id)payload
{
  payloadCopy = payload;
  reportCopy = report;
  system = [(ANAnalytics *)self system];
  [system send:reportCopy withPayload:payloadCopy];
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
@interface ATXModeScoringSession
+ (id)coalesceSessions:(id)sessions modeEntityStore:(id)store;
- (BOOL)hasModeWithinRank:(unint64_t)rank rank:(unint64_t)a4;
- (BOOL)isLabeled;
- (BOOL)isStronglyCorrelatedWithTopMode;
- (double)numScoredAppLaunches;
- (double)secondsUntilOtherSession:(id)session;
- (id)_initFromStartTime:(double)time endTime:(double)endTime modeEntityStore:(id)store appLaunches:(id)launches sessionAffinityVector:(id)vector;
- (id)_weightForLaunch:(id)launch;
- (id)initFromStartTime:(double)time endTime:(double)endTime modeEntityStore:(id)store;
- (unint64_t)topMode;
- (void)_populateAffinity;
- (void)debug_prettyPrintSession:(BOOL)session;
- (void)populateAppLaunches:(id)launches;
@end

@implementation ATXModeScoringSession

- (id)initFromStartTime:(double)time endTime:(double)endTime modeEntityStore:(id)store
{
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = ATXModeScoringSession;
  v10 = [(ATXModeScoringSession *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_startTimestamp = time;
    v10->_endTimestamp = endTime;
    v12 = objc_opt_new();
    appLaunches = v11->_appLaunches;
    v11->_appLaunches = v12;

    objc_storeStrong(&v11->_modeEntityStore, store);
  }

  return v11;
}

- (id)_initFromStartTime:(double)time endTime:(double)endTime modeEntityStore:(id)store appLaunches:(id)launches sessionAffinityVector:(id)vector
{
  storeCopy = store;
  launchesCopy = launches;
  vectorCopy = vector;
  v19.receiver = self;
  v19.super_class = ATXModeScoringSession;
  v16 = [(ATXModeScoringSession *)&v19 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_startTimestamp = time;
    v16->_endTimestamp = endTime;
    objc_storeStrong(&v16->_appLaunches, launches);
    objc_storeStrong(p_isa + 5, store);
    objc_storeStrong(p_isa + 4, vector);
  }

  return p_isa;
}

- (BOOL)isStronglyCorrelatedWithTopMode
{
  sortedAffinities = [(ATXModeEntityAffinityVector *)self->_sessionAffinityVector sortedAffinities];
  v3 = sortedAffinities;
  if (sortedAffinities && [sortedAffinities count])
  {
    if ([v3 count] == 1)
    {
      v4 = 1;
    }

    else
    {
      v5 = [v3 objectAtIndexedSubscript:0];
      first = [v5 first];
      [first doubleValue];
      v8 = v7;
      v9 = [v3 objectAtIndexedSubscript:1];
      first2 = [v9 first];
      [first2 doubleValue];
      v4 = v8 > v11 + v11;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)hasModeWithinRank:(unint64_t)rank rank:(unint64_t)a4
{
  sortedAffinities = [(ATXModeEntityAffinityVector *)self->_sessionAffinityVector sortedAffinities];
  v6 = [sortedAffinities _pas_mappedArrayWithTransform:&__block_literal_global_10];

  v7 = [v6 count];
  if (v7 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 subarrayWithRange:{0, v8}];
  v10 = ATXModeToString();
  v11 = [v9 containsObject:v10];

  return v11;
}

- (double)numScoredAppLaunches
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_appLaunches;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        modeEntityStore = self->_modeEntityStore;
        bundleID = [*(*(&v15 + 1) + 8 * i) bundleID];
        v11 = [(ATXModeEntityStore *)modeEntityStore appEntityForBundleId:bundleID];
        affinityVector = [v11 affinityVector];

        if (affinityVector)
        {
          v7 = v7 + 1.0;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)secondsUntilOtherSession:(id)session
{
  sessionCopy = session;
  [sessionCopy startTimestamp];
  p_endTimestamp = &self->_endTimestamp;
  if (v6 > self->_endTimestamp)
  {
    [sessionCopy startTimestamp];
LABEL_5:
    v10 = v7 - *p_endTimestamp;
    goto LABEL_6;
  }

  [sessionCopy endTimestamp];
  startTimestamp = self->_startTimestamp;
  p_startTimestamp = &self->_startTimestamp;
  v10 = 0.0;
  if (v11 < startTimestamp)
  {
    [sessionCopy endTimestamp];
    p_endTimestamp = p_startTimestamp;
    goto LABEL_5;
  }

LABEL_6:

  return v10;
}

- (BOOL)isLabeled
{
  sessionAffinityVector = self->_sessionAffinityVector;
  if (sessionAffinityVector)
  {
    LOBYTE(sessionAffinityVector) = ![(ATXModeEntityAffinityVector *)sessionAffinityVector isZeroVector];
  }

  return sessionAffinityVector;
}

- (unint64_t)topMode
{
  sortedAffinities = [(ATXModeEntityAffinityVector *)self->_sessionAffinityVector sortedAffinities];
  if ([sortedAffinities count])
  {
    v3 = [sortedAffinities objectAtIndexedSubscript:0];
    second = [v3 second];
    v5 = ATXStringToMode();
  }

  else
  {
    v5 = 16;
  }

  return v5;
}

+ (id)coalesceSessions:(id)sessions modeEntityStore:(id)store
{
  v43 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  storeCopy = store;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v9 = v8;

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v12 = v11;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = sessionsCopy;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        [v18 startTimestamp];
        if (v19 < v9)
        {
          v9 = v19;
        }

        [v18 endTimestamp];
        if (v20 >= v12)
        {
          v12 = v20;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v15);
  }

  v21 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global_23];
  v22 = [ATXModeEntityAffinityVector weightedCentroid:v21];
  v23 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v13;
  v25 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v24);
        }

        appLaunches = [*(*(&v33 + 1) + 8 * j) appLaunches];
        [v23 addObjectsFromArray:appLaunches];
      }

      v26 = [v24 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v26);
  }

  v30 = [[ATXModeScoringSession alloc] _initFromStartTime:storeCopy endTime:v23 modeEntityStore:v22 appLaunches:v9 sessionAffinityVector:v12];
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

id __58__ATXModeScoringSession_coalesceSessions_modeEntityStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D42648];
  v3 = a2;
  v4 = [v3 sessionAffinityVector];
  v5 = MEMORY[0x277CCABB0];
  [v3 numScoredAppLaunches];
  v7 = v6;

  v8 = [v5 numberWithDouble:v7];
  v9 = [v2 tupleWithFirst:v4 second:v8];

  return v9;
}

- (void)populateAppLaunches:(id)launches
{
  v4 = [launches copy];
  appLaunches = self->_appLaunches;
  self->_appLaunches = v4;

  [(ATXModeScoringSession *)self _populateAffinity];
}

- (void)_populateAffinity
{
  appLaunches = self->_appLaunches;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ATXModeScoringSession__populateAffinity__block_invoke;
  v7[3] = &unk_2785974C0;
  v7[4] = self;
  v4 = [(NSArray *)appLaunches _pas_mappedArrayWithTransform:v7];
  v5 = [ATXModeEntityAffinityVector weightedCentroid:v4];
  sessionAffinityVector = self->_sessionAffinityVector;
  self->_sessionAffinityVector = v5;
}

id __42__ATXModeScoringSession__populateAffinity__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 40);
  v4 = a2;
  v5 = [v4 bundleID];
  v6 = [v3 appEntityForBundleId:v5];
  v7 = [v6 affinityVector];

  v8 = [*(a1 + 32) _weightForLaunch:v4];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277D42648] tupleWithFirst:v7 second:v8];
  }

  return v10;
}

- (id)_weightForLaunch:(id)launch
{
  v13[1] = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  v4 = +[_ATXAppLaunchHistogramManager sharedInstance];
  v5 = [v4 histogramForLaunchType:0];

  bundleID = [launchCopy bundleID];

  v13[0] = bundleID;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v5 totalLaunchesForBundleIds:v7];
  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 / sqrt(v9 + 1.0)];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)debug_prettyPrintSession:(BOOL)session
{
  sessionCopy = session;
  v48 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:currentLocale];

  [v5 setDateFormat:v8];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_startTimestamp];
  v10 = [v5 stringFromDate:v9];

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_endTimestamp];
  v12 = [v5 stringFromDate:v11];

  v13 = __atxlog_handle_modes();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    prettyDescription = [(ATXModeEntityAffinityVector *)self->_sessionAffinityVector prettyDescription];
    *buf = 138412802;
    v43 = v10;
    v44 = 2112;
    v45 = v12;
    v46 = 2112;
    v47 = prettyDescription;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_DEFAULT, "Session: %@, %@: %@", buf, 0x20u);
  }

  if (sessionCopy)
  {
    v33 = v12;
    v34 = v10;
    v35 = v8;
    v36 = v5;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = self->_appLaunches;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          modeEntityStore = self->_modeEntityStore;
          bundleID = [v20 bundleID];
          v23 = [(ATXModeEntityStore *)modeEntityStore appEntityForBundleId:bundleID];

          affinityVector = [v23 affinityVector];
          if (affinityVector)
          {
            v25 = affinityVector;
            affinityVector2 = [v23 affinityVector];
            isZeroVector = [affinityVector2 isZeroVector];

            if ((isZeroVector & 1) == 0)
            {
              v28 = __atxlog_handle_modes();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                bundleID2 = [v20 bundleID];
                affinityVector3 = [v23 affinityVector];
                prettyDescription2 = [affinityVector3 prettyDescription];
                *buf = 138412546;
                v43 = bundleID2;
                v44 = 2112;
                v45 = prettyDescription2;
                _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "    App Launch: %@, %@", buf, 0x16u);
              }
            }
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v17);
    }

    v8 = v35;
    v5 = v36;
    v12 = v33;
    v10 = v34;
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end
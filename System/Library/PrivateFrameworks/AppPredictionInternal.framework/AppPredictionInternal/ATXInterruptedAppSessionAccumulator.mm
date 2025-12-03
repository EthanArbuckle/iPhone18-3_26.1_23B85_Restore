@interface ATXInterruptedAppSessionAccumulator
- (ATXInterruptedAppSessionAccumulator)init;
- (BOOL)_doesLaunchInterruptPreviousLaunch:(id)launch;
- (id)_getSummaryMetricForDimensions:(id)dimensions;
- (id)countedSetContainingInterruptingAppBundleIds;
- (unint64_t)numberOfInterruptingAppSessions;
- (void)handleEndOfStream;
- (void)handleNextAppLaunch:(id)launch dimensionSet:(id)set;
- (void)handleNotificationEvent:(id)event;
- (void)logToCoreAnalytics;
@end

@implementation ATXInterruptedAppSessionAccumulator

- (ATXInterruptedAppSessionAccumulator)init
{
  v12.receiver = self;
  v12.super_class = ATXInterruptedAppSessionAccumulator;
  v2 = [(ATXInterruptedAppSessionAccumulator *)&v12 init];
  v3 = v2;
  if (v2)
  {
    previousDimensions = v2->_previousDimensions;
    v2->_previousDimensions = 0;

    v5 = objc_opt_new();
    appSessions = v3->_appSessions;
    v3->_appSessions = v5;

    v7 = objc_opt_new();
    summaryMetrics = v3->_summaryMetrics;
    v3->_summaryMetrics = v7;

    v9 = objc_opt_new();
    recentNotifications = v3->_recentNotifications;
    v3->_recentNotifications = v9;
  }

  return v3;
}

- (void)handleNotificationEvent:(id)event
{
  eventCopy = event;
  notification = [eventCopy notification];
  bundleID = [notification bundleID];
  if (!bundleID)
  {
    goto LABEL_7;
  }

  v6 = bundleID;
  if (![eventCopy eventType])
  {

    goto LABEL_6;
  }

  eventType = [eventCopy eventType];

  if (eventType == 16)
  {
LABEL_6:
    recentNotifications = self->_recentNotifications;
    notification = [eventCopy notification];
    bundleID2 = [notification bundleID];
    [(NSMutableDictionary *)recentNotifications setObject:eventCopy forKeyedSubscript:bundleID2];

LABEL_7:
  }
}

- (void)handleNextAppLaunch:(id)launch dimensionSet:(id)set
{
  launchCopy = launch;
  setCopy = set;
  v8 = setCopy;
  if (self->_previousLaunch && self->_previousDimensions)
  {
    v21 = setCopy;
    v9 = [(ATXInterruptedAppSessionAccumulator *)self _getSummaryMetricForDimensions:?];
    [v9 setTotalAppSessions:{objc_msgSend(v9, "totalAppSessions") + 1}];
    if ([(ATXInterruptedAppSessionAccumulator *)self _doesLaunchInterruptPreviousLaunch:launchCopy])
    {
      [v9 setInterruptedAppSessions:{objc_msgSend(v9, "interruptedAppSessions") + 1}];
    }

    appSessionEndTime = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionEndTime];
    appSessionStartTime = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionStartTime];
    [appSessionEndTime timeIntervalSinceDate:appSessionStartTime];
    v13 = v12;

    v14 = [(ATXInterruptedAppSessionAccumulator *)self _doesLaunchInterruptPreviousLaunch:launchCopy];
    v15 = [ATXAppSessionEventMetric alloc];
    previousDimensions = self->_previousDimensions;
    bundleID = [(ATXAppInFocusEventSession *)self->_previousLaunch bundleID];
    if (v14)
    {
      bundleID2 = [launchCopy bundleID];
      v19 = [(ATXAppSessionEventMetric *)v15 initWithDimensions:previousDimensions bundleId:bundleID interruptingAppBundleId:bundleID2 duration:v13];
    }

    else
    {
      v19 = [(ATXAppSessionEventMetric *)v15 initWithDimensions:previousDimensions bundleId:bundleID interruptingAppBundleId:0 duration:v13];
    }

    v8 = v21;

    [(NSMutableArray *)self->_appSessions addObject:v19];
    objc_storeStrong(&self->_previousLaunch, launch);
    objc_storeStrong(&self->_previousDimensions, set);
    [(NSMutableDictionary *)self->_recentNotifications removeAllObjects];
  }

  else
  {
    objc_storeStrong(&self->_previousLaunch, launch);
    v20 = v8;
    v9 = self->_previousDimensions;
    self->_previousDimensions = v20;
  }
}

- (void)handleEndOfStream
{
  if (self->_previousLaunch)
  {
    v9 = [(ATXInterruptedAppSessionAccumulator *)self _getSummaryMetricForDimensions:self->_previousDimensions];
    [v9 setTotalAppSessions:{objc_msgSend(v9, "totalAppSessions") + 1}];
    v3 = [ATXAppSessionEventMetric alloc];
    previousDimensions = self->_previousDimensions;
    bundleID = [(ATXAppInFocusEventSession *)self->_previousLaunch bundleID];
    appSessionEndTime = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionEndTime];
    appSessionStartTime = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionStartTime];
    [appSessionEndTime timeIntervalSinceDate:appSessionStartTime];
    v8 = [(ATXAppSessionEventMetric *)v3 initWithDimensions:previousDimensions bundleId:bundleID interruptingAppBundleId:0 duration:?];

    [(NSMutableArray *)self->_appSessions addObject:v8];
  }
}

- (void)logToCoreAnalytics
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_appSessions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * v7++) logToCoreAnalytics];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_summaryMetrics;
  v9 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v12), v15];
        [v13 logToCoreAnalytics];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableDictionary *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_doesLaunchInterruptPreviousLaunch:(id)launch
{
  launchCopy = launch;
  bundleID = [(ATXAppInFocusEventSession *)self->_previousLaunch bundleID];
  bundleID2 = [launchCopy bundleID];
  v7 = [bundleID isEqualToString:bundleID2];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    appSessionStartTime = [launchCopy appSessionStartTime];
    appSessionEndTime = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionEndTime];
    [appSessionStartTime timeIntervalSinceDate:appSessionEndTime];
    v8 = v11 <= 5.0;
  }

  recentNotifications = self->_recentNotifications;
  bundleID3 = [launchCopy bundleID];
  v14 = [(NSMutableDictionary *)recentNotifications objectForKeyedSubscript:bundleID3];

  v15 = 0;
  if (v8 && v14)
  {
    appSessionStartTime2 = [launchCopy appSessionStartTime];
    v17 = MEMORY[0x277CBEAA8];
    [v14 timestamp];
    v18 = [v17 dateWithTimeIntervalSinceReferenceDate:?];
    [appSessionStartTime2 timeIntervalSinceDate:v18];
    v20 = v19;

    if (v20 <= 30.0)
    {
      v21 = objc_alloc(MEMORY[0x277CCA970]);
      appSessionStartTime3 = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionStartTime];
      appSessionEndTime2 = [(ATXAppInFocusEventSession *)self->_previousLaunch appSessionEndTime];
      v24 = [v21 initWithStartDate:appSessionStartTime3 endDate:appSessionEndTime2];
      v25 = MEMORY[0x277CBEAA8];
      [v14 timestamp];
      v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
      v15 = [v24 containsDate:v26];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)_getSummaryMetricForDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  v5 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:dimensionsCopy];

  if (!v5)
  {
    v6 = [[ATXInterruptedAppSessionSummaryMetrics alloc] initWithDimensions:dimensionsCopy];
    [(NSMutableDictionary *)self->_summaryMetrics setObject:v6 forKeyedSubscript:dimensionsCopy];
  }

  v7 = [(NSMutableDictionary *)self->_summaryMetrics objectForKeyedSubscript:dimensionsCopy];

  return v7;
}

- (unint64_t)numberOfInterruptingAppSessions
{
  v2 = [(NSMutableArray *)self->_appSessions _pas_filteredArrayWithTest:&__block_literal_global_0];
  v3 = [v2 count];

  return v3;
}

BOOL __70__ATXInterruptedAppSessionAccumulator_numberOfInterruptingAppSessions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 interruptingAppBundleId];
  v3 = v2 != 0;

  return v3;
}

- (id)countedSetContainingInterruptingAppBundleIds
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCA940]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_appSessions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        interruptingAppBundleId = [v9 interruptingAppBundleId];

        if (interruptingAppBundleId)
        {
          interruptingAppBundleId2 = [v9 interruptingAppBundleId];
          [v3 addObject:interruptingAppBundleId2];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end
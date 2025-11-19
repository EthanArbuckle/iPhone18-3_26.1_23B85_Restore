@interface ATXDigestOnboardingLogging
- (ATXDigestOnboardingLogging)init;
- (ATXDigestOnboardingLogging)initWithDigestOnboardingLoggingBiomeStream:(id)a3 digestOnboardingAppSelectionLoggingBiomeStream:(id)a4;
- (id)onBoardingAppSelectionEventWithApp:(id)a3 rank:(unint64_t)a4 addedToDigest:(BOOL)a5 wasShownInDigest:(BOOL)a6 sessionUUID:(id)a7;
- (void)logDigestOnboardingAppSelectionForShownApps:(id)a3 appsAddedToDigest:(id)a4 rankedApps:(id)a5 sessionUUID:(id)a6;
- (void)logDigestOnboardingWithEntrySource:(int)a3 digestSetupOutcome:(int)a4 finalUIShown:(int)a5 timeTaken:(double)a6 didSelectShowMore:(BOOL)a7 numDaysForAverageNotificationCount:(unint64_t)a8 shownApps:(id)a9 appsAddedToDigest:(id)a10 deliveryTimes:(id)a11;
@end

@implementation ATXDigestOnboardingLogging

- (ATXDigestOnboardingLogging)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXDigestOnboardingLogging *)self initWithDigestOnboardingLoggingBiomeStream:v3 digestOnboardingAppSelectionLoggingBiomeStream:v4];

  return v5;
}

- (ATXDigestOnboardingLogging)initWithDigestOnboardingLoggingBiomeStream:(id)a3 digestOnboardingAppSelectionLoggingBiomeStream:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXDigestOnboardingLogging;
  v9 = [(ATXDigestOnboardingLogging *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ATXDigestOnboardingLogging.queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_digestOnboardingLoggingBiomeStream, a3);
    objc_storeStrong(&v9->_digestOnboardingAppSelectionLoggingBiomeStream, a4);
  }

  return v9;
}

- (void)logDigestOnboardingWithEntrySource:(int)a3 digestSetupOutcome:(int)a4 finalUIShown:(int)a5 timeTaken:(double)a6 didSelectShowMore:(BOOL)a7 numDaysForAverageNotificationCount:(unint64_t)a8 shownApps:(id)a9 appsAddedToDigest:(id)a10 deliveryTimes:(id)a11
{
  v12 = a7;
  v14 = *&a5;
  v15 = *&a4;
  v16 = *&a3;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = objc_opt_new();
  v22 = [[ATXDigestOnboardingLoggingEvent alloc] initWithSessionUUID:v21 entrySource:v16 digestOnboardingOutcome:v15 finalUIShown:v14 didSelectShowMore:v12 timeTaken:v20 deliveryTimes:a6];

  v23 = [(ATXDigestOnboardingLoggingBiomeStream *)self->_digestOnboardingLoggingBiomeStream source];
  [v23 sendEvent:v22];

  v24 = objc_opt_new();
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a8];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __202__ATXDigestOnboardingLogging_logDigestOnboardingWithEntrySource_digestSetupOutcome_finalUIShown_timeTaken_didSelectShowMore_numDaysForAverageNotificationCount_shownApps_appsAddedToDigest_deliveryTimes___block_invoke;
  v29[3] = &unk_1E80C3C60;
  v29[4] = self;
  v30 = v18;
  v31 = v19;
  v32 = v21;
  v26 = v21;
  v27 = v19;
  v28 = v18;
  [v24 appsSortedByNotificationsReceivedInPreviousNumDays:v25 completionHandler:v29];
}

- (void)logDigestOnboardingAppSelectionForShownApps:(id)a3 appsAddedToDigest:(id)a4 rankedApps:(id)a5 sessionUUID:(id)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v11 count])
  {
    v13 = 0;
    do
    {
      v14 = [v11 objectAtIndexedSubscript:v13];
      v15 = [v14 bundleId];
      v16 = [v21 containsObject:v15];

      if (v16)
      {
        v17 = [v14 bundleId];
        v18 = [v10 containsObject:v17];
      }

      else
      {
        v18 = 0;
      }

      v19 = [(ATXDigestOnboardingLogging *)self onBoardingAppSelectionEventWithApp:v14 rank:++v13 addedToDigest:v18 wasShownInDigest:v16 sessionUUID:v12];
      v20 = [(ATXDigestOnboardingAppSelectionLoggingBiomeStream *)self->_digestOnboardingAppSelectionLoggingBiomeStream source];
      [v20 sendEvent:v19];
    }

    while ([v11 count] > v13);
  }
}

- (id)onBoardingAppSelectionEventWithApp:(id)a3 rank:(unint64_t)a4 addedToDigest:(BOOL)a5 wasShownInDigest:(BOOL)a6 sessionUUID:(id)a7
{
  v11 = a7;
  v12 = a3;
  v13 = [ATXDigestOnboardingAppSelectionLoggingEvent alloc];
  v14 = [v12 bundleId];
  v15 = [v12 avgNumBasicNotifications];
  v16 = [v12 avgNumMessageNotifications];
  v17 = [v12 avgNumTimeSensitiveNonMessageNotifications];

  BYTE1(v20) = a6;
  LOBYTE(v20) = a5;
  v18 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)v13 initWithSessionUUID:v11 bundleId:v14 avgNumBasicNotifications:v15 avgNumMessageNotifications:v16 avgNumTimeSensitiveNonMessageNotifications:v17 rank:a4 addedToDigest:v20 wasShownInDigestOnboarding:?];

  return v18;
}

@end
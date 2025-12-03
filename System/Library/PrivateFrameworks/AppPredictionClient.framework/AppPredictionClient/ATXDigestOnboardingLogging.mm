@interface ATXDigestOnboardingLogging
- (ATXDigestOnboardingLogging)init;
- (ATXDigestOnboardingLogging)initWithDigestOnboardingLoggingBiomeStream:(id)stream digestOnboardingAppSelectionLoggingBiomeStream:(id)biomeStream;
- (id)onBoardingAppSelectionEventWithApp:(id)app rank:(unint64_t)rank addedToDigest:(BOOL)digest wasShownInDigest:(BOOL)inDigest sessionUUID:(id)d;
- (void)logDigestOnboardingAppSelectionForShownApps:(id)apps appsAddedToDigest:(id)digest rankedApps:(id)rankedApps sessionUUID:(id)d;
- (void)logDigestOnboardingWithEntrySource:(int)source digestSetupOutcome:(int)outcome finalUIShown:(int)shown timeTaken:(double)taken didSelectShowMore:(BOOL)more numDaysForAverageNotificationCount:(unint64_t)count shownApps:(id)apps appsAddedToDigest:(id)self0 deliveryTimes:(id)self1;
@end

@implementation ATXDigestOnboardingLogging

- (ATXDigestOnboardingLogging)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(ATXDigestOnboardingLogging *)self initWithDigestOnboardingLoggingBiomeStream:v3 digestOnboardingAppSelectionLoggingBiomeStream:v4];

  return v5;
}

- (ATXDigestOnboardingLogging)initWithDigestOnboardingLoggingBiomeStream:(id)stream digestOnboardingAppSelectionLoggingBiomeStream:(id)biomeStream
{
  streamCopy = stream;
  biomeStreamCopy = biomeStream;
  v14.receiver = self;
  v14.super_class = ATXDigestOnboardingLogging;
  v9 = [(ATXDigestOnboardingLogging *)&v14 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("ATXDigestOnboardingLogging.queue", v10);
    queue = v9->_queue;
    v9->_queue = v11;

    objc_storeStrong(&v9->_digestOnboardingLoggingBiomeStream, stream);
    objc_storeStrong(&v9->_digestOnboardingAppSelectionLoggingBiomeStream, biomeStream);
  }

  return v9;
}

- (void)logDigestOnboardingWithEntrySource:(int)source digestSetupOutcome:(int)outcome finalUIShown:(int)shown timeTaken:(double)taken didSelectShowMore:(BOOL)more numDaysForAverageNotificationCount:(unint64_t)count shownApps:(id)apps appsAddedToDigest:(id)self0 deliveryTimes:(id)self1
{
  moreCopy = more;
  v14 = *&shown;
  v15 = *&outcome;
  v16 = *&source;
  appsCopy = apps;
  digestCopy = digest;
  timesCopy = times;
  v21 = objc_opt_new();
  v22 = [[ATXDigestOnboardingLoggingEvent alloc] initWithSessionUUID:v21 entrySource:v16 digestOnboardingOutcome:v15 finalUIShown:v14 didSelectShowMore:moreCopy timeTaken:timesCopy deliveryTimes:taken];

  source = [(ATXDigestOnboardingLoggingBiomeStream *)self->_digestOnboardingLoggingBiomeStream source];
  [source sendEvent:v22];

  v24 = objc_opt_new();
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __202__ATXDigestOnboardingLogging_logDigestOnboardingWithEntrySource_digestSetupOutcome_finalUIShown_timeTaken_didSelectShowMore_numDaysForAverageNotificationCount_shownApps_appsAddedToDigest_deliveryTimes___block_invoke;
  v29[3] = &unk_1E80C3C60;
  v29[4] = self;
  v30 = appsCopy;
  v31 = digestCopy;
  v32 = v21;
  v26 = v21;
  v27 = digestCopy;
  v28 = appsCopy;
  [v24 appsSortedByNotificationsReceivedInPreviousNumDays:v25 completionHandler:v29];
}

- (void)logDigestOnboardingAppSelectionForShownApps:(id)apps appsAddedToDigest:(id)digest rankedApps:(id)rankedApps sessionUUID:(id)d
{
  appsCopy = apps;
  digestCopy = digest;
  rankedAppsCopy = rankedApps;
  dCopy = d;
  if ([rankedAppsCopy count])
  {
    v13 = 0;
    do
    {
      v14 = [rankedAppsCopy objectAtIndexedSubscript:v13];
      bundleId = [v14 bundleId];
      v16 = [appsCopy containsObject:bundleId];

      if (v16)
      {
        bundleId2 = [v14 bundleId];
        v18 = [digestCopy containsObject:bundleId2];
      }

      else
      {
        v18 = 0;
      }

      v19 = [(ATXDigestOnboardingLogging *)self onBoardingAppSelectionEventWithApp:v14 rank:++v13 addedToDigest:v18 wasShownInDigest:v16 sessionUUID:dCopy];
      source = [(ATXDigestOnboardingAppSelectionLoggingBiomeStream *)self->_digestOnboardingAppSelectionLoggingBiomeStream source];
      [source sendEvent:v19];
    }

    while ([rankedAppsCopy count] > v13);
  }
}

- (id)onBoardingAppSelectionEventWithApp:(id)app rank:(unint64_t)rank addedToDigest:(BOOL)digest wasShownInDigest:(BOOL)inDigest sessionUUID:(id)d
{
  dCopy = d;
  appCopy = app;
  v13 = [ATXDigestOnboardingAppSelectionLoggingEvent alloc];
  bundleId = [appCopy bundleId];
  avgNumBasicNotifications = [appCopy avgNumBasicNotifications];
  avgNumMessageNotifications = [appCopy avgNumMessageNotifications];
  avgNumTimeSensitiveNonMessageNotifications = [appCopy avgNumTimeSensitiveNonMessageNotifications];

  BYTE1(v20) = inDigest;
  LOBYTE(v20) = digest;
  v18 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)v13 initWithSessionUUID:dCopy bundleId:bundleId avgNumBasicNotifications:avgNumBasicNotifications avgNumMessageNotifications:avgNumMessageNotifications avgNumTimeSensitiveNonMessageNotifications:avgNumTimeSensitiveNonMessageNotifications rank:rank addedToDigest:v20 wasShownInDigestOnboarding:?];

  return v18;
}

@end
@interface ATXNotificationSettingsLogger
- (ATXNotificationSettingsLogger)init;
- (ATXNotificationSettingsLogger)initWithNotificationSettingsReader:(id)reader;
- (void)_writeMetricsToTemporaryLocation:(id)location;
- (void)logNotificationSettingsMetrics;
@end

@implementation ATXNotificationSettingsLogger

- (ATXNotificationSettingsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationSettingsLogger *)self initWithNotificationSettingsReader:v3];

  return v4;
}

- (ATXNotificationSettingsLogger)initWithNotificationSettingsReader:(id)reader
{
  readerCopy = reader;
  v9.receiver = self;
  v9.super_class = ATXNotificationSettingsLogger;
  v6 = [(ATXNotificationSettingsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reader, reader);
  }

  return v7;
}

- (void)logNotificationSettingsMetrics
{
  v15 = objc_opt_new();
  notificationDigestDeliveryTimes = [(ATXNotificationSettingsReader *)self->_reader notificationDigestDeliveryTimes];
  v4 = [notificationDigestDeliveryTimes count];

  [v15 setNumDailyDigests:v4];
  allConfiguredDigestApps = [(ATXNotificationSettingsReader *)self->_reader allConfiguredDigestApps];
  [v15 setNumDigestApps:{objc_msgSend(allConfiguredDigestApps, "count")}];

  numConfiguredModes = [(ATXNotificationSettingsReader *)self->_reader numConfiguredModes];
  v7 = numConfiguredModes;
  if (numConfiguredModes)
  {
    unsignedIntegerValue = [numConfiguredModes unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  [v15 setNumConfiguredModes:unsignedIntegerValue];
  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x277D41CF0]];
  [v15 setHasOfferedDigest:{objc_msgSend(v10, "BOOLForKey:", *MEMORY[0x277CEBA88])}];
  [v15 setHasSetupDigest:{objc_msgSend(v10, "BOOLForKey:", *MEMORY[0x277CEBAA0])}];
  areHighlightsEnabled = [(ATXNotificationSettingsReader *)self->_reader areHighlightsEnabled];
  [v15 setAreHighlightsEnabled:areHighlightsEnabled];

  areSummariesEnabled = [(ATXNotificationSettingsReader *)self->_reader areSummariesEnabled];
  [v15 setAreSummariesEnabled:areSummariesEnabled];

  mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
  isTestModeEnabled = [mEMORY[0x277CEBC70] isTestModeEnabled];

  if (isTestModeEnabled)
  {
    [(ATXNotificationSettingsLogger *)self _writeMetricsToTemporaryLocation:v15];
  }

  else
  {
    [v15 logToCoreAnalytics];
  }
}

- (void)_writeMetricsToTemporaryLocation:(id)location
{
  coreAnalyticsDictionary = [location coreAnalyticsDictionary];
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:coreAnalyticsDictionary options:1 error:&v7];
  mEMORY[0x277CEBC70] = [MEMORY[0x277CEBC70] sharedInstance];
  temporaryPathForTesting = [mEMORY[0x277CEBC70] temporaryPathForTesting];

  [v4 writeToFile:temporaryPathForTesting atomically:1];
}

@end
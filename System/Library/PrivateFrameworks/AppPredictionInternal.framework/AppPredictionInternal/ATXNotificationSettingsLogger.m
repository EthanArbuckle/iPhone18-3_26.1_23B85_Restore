@interface ATXNotificationSettingsLogger
- (ATXNotificationSettingsLogger)init;
- (ATXNotificationSettingsLogger)initWithNotificationSettingsReader:(id)a3;
- (void)_writeMetricsToTemporaryLocation:(id)a3;
- (void)logNotificationSettingsMetrics;
@end

@implementation ATXNotificationSettingsLogger

- (ATXNotificationSettingsLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationSettingsLogger *)self initWithNotificationSettingsReader:v3];

  return v4;
}

- (ATXNotificationSettingsLogger)initWithNotificationSettingsReader:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationSettingsLogger;
  v6 = [(ATXNotificationSettingsLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reader, a3);
  }

  return v7;
}

- (void)logNotificationSettingsMetrics
{
  v15 = objc_opt_new();
  v3 = [(ATXNotificationSettingsReader *)self->_reader notificationDigestDeliveryTimes];
  v4 = [v3 count];

  [v15 setNumDailyDigests:v4];
  v5 = [(ATXNotificationSettingsReader *)self->_reader allConfiguredDigestApps];
  [v15 setNumDigestApps:{objc_msgSend(v5, "count")}];

  v6 = [(ATXNotificationSettingsReader *)self->_reader numConfiguredModes];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  [v15 setNumConfiguredModes:v8];
  v9 = objc_alloc(MEMORY[0x277CBEBD0]);
  v10 = [v9 initWithSuiteName:*MEMORY[0x277D41CF0]];
  [v15 setHasOfferedDigest:{objc_msgSend(v10, "BOOLForKey:", *MEMORY[0x277CEBA88])}];
  [v15 setHasSetupDigest:{objc_msgSend(v10, "BOOLForKey:", *MEMORY[0x277CEBAA0])}];
  v11 = [(ATXNotificationSettingsReader *)self->_reader areHighlightsEnabled];
  [v15 setAreHighlightsEnabled:v11];

  v12 = [(ATXNotificationSettingsReader *)self->_reader areSummariesEnabled];
  [v15 setAreSummariesEnabled:v12];

  v13 = [MEMORY[0x277CEBC70] sharedInstance];
  v14 = [v13 isTestModeEnabled];

  if (v14)
  {
    [(ATXNotificationSettingsLogger *)self _writeMetricsToTemporaryLocation:v15];
  }

  else
  {
    [v15 logToCoreAnalytics];
  }
}

- (void)_writeMetricsToTemporaryLocation:(id)a3
{
  v3 = [a3 coreAnalyticsDictionary];
  v7 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v7];
  v5 = [MEMORY[0x277CEBC70] sharedInstance];
  v6 = [v5 temporaryPathForTesting];

  [v4 writeToFile:v6 atomically:1];
}

@end
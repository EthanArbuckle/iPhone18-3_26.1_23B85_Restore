@interface ATXDefaultWidgetSuggester
- (ATXDefaultWidgetSuggester)initWithHistogramManager:(id)a3;
- (BOOL)shouldSuggestTV;
- (double)_appLaunchCountForAppBudleId:(id)a3;
- (double)_intentDonationCountForActionKey:(id)a3;
- (double)intentDonationCountForTVApp;
@end

@implementation ATXDefaultWidgetSuggester

- (ATXDefaultWidgetSuggester)initWithHistogramManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXDefaultWidgetSuggester;
  v6 = [(ATXDefaultWidgetSuggester *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_histogramManager, a3);
  }

  return v7;
}

- (BOOL)shouldSuggestTV
{
  v3 = MEMORY[0x277CEB478];
  [(ATXDefaultWidgetSuggester *)self appLaunchCountForTVApp];
  v5 = v4;
  [(ATXDefaultWidgetSuggester *)self intentDonationCountForTVApp];
  v7 = v6;
  [(ATXDefaultWidgetSuggester *)self upcomingMediaCountForTVApp];

  return [v3 shouldSuggestTVWithAppLaunchCount:v5 intentDonationCount:v7 upcomingMediaCount:v8];
}

- (double)intentDonationCountForTVApp
{
  v3 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:@"com.apple.tv" actionType:@"INPlayMediaIntent"];
  [(ATXDefaultWidgetSuggester *)self _intentDonationCountForActionKey:v3];
  v5 = v4;

  return v5;
}

- (double)_appLaunchCountForAppBudleId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_ATXAppLaunchHistogramManager *)self->_histogramManager categoricalHistogramForLaunchType:43];
  [v6 totalLaunchesForBundleId:v4];
  v8 = v7;
  v9 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXDefaultWidgetSuggester _appLaunchCountForAppBudleId:v8];
  }

  objc_autoreleasePoolPop(v5);
  return v8;
}

- (double)_intentDonationCountForActionKey:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_ATXAppLaunchHistogramManager *)self->_histogramManager histogramForLaunchType:17];
  v13[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v6 totalLaunchesForBundleIds:v7];
  v9 = v8;

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXDefaultWidgetSuggester _intentDonationCountForActionKey:v9];
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_appLaunchCountForAppBudleId:(double)a1 .cold.1(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  OUTLINED_FUNCTION_0_22();
  _os_log_debug_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEBUG, "ATXDefaultWidgetSuggester: fetched app launches: %f for bundle: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_intentDonationCountForActionKey:(double)a1 .cold.1(double a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a1;
  OUTLINED_FUNCTION_0_22();
  _os_log_debug_impl(&dword_2263AA000, v1, OS_LOG_TYPE_DEBUG, "ATXDefaultWidgetSuggester: fetched intent donations: %f for bundle: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_upcomingMediaCountForAppBundleId:(uint64_t)a1 isInternalApplication:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  OUTLINED_FUNCTION_0_22();
  _os_log_debug_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEBUG, "ATXDefaultWidgetSuggester: fetched upcoming media: %ld for bundle: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end
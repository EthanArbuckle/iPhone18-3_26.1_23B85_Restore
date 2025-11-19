@interface ATXPrivacyPreservingDates
- (double)convertDate:(id)a3 toDeltaFromSkyUpdateDate:(id)a4;
- (id)_reduceGranularityToDayOfYear:(id)a3;
- (id)reduceGranularityToWeekOfYear:(id)a3;
@end

@implementation ATXPrivacyPreservingDates

- (double)convertDate:(id)a3 toDeltaFromSkyUpdateDate:(id)a4
{
  v6 = a4;
  v7 = [(ATXPrivacyPreservingDates *)self _reduceGranularityToDayOfYear:a3];
  v8 = [(ATXPrivacyPreservingDates *)self _reduceGranularityToDayOfYear:v6];

  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  return v10;
}

- (id)reduceGranularityToWeekOfYear:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [v5 components:540 fromDate:v4];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setDay:{-objc_msgSend(v6, "weekday")}];
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v8 dateByAddingComponents:v7 toDate:v4 options:0];

    v10 = [(ATXPrivacyPreservingDates *)self _reduceGranularityToDayOfYear:v9];
  }

  else
  {
    v11 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_INFO, "ATXPrivacyPreservingDates: nil date passed into reduceGranularityToWeekOfYear", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_reduceGranularityToDayOfYear:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:28 fromDate:v4];

  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 dateFromComponents:v6];

  return v8;
}

@end
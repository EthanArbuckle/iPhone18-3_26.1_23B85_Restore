@interface ATXPrivacyPreservingDates
- (double)convertDate:(id)date toDeltaFromSkyUpdateDate:(id)updateDate;
- (id)_reduceGranularityToDayOfYear:(id)year;
- (id)reduceGranularityToWeekOfYear:(id)year;
@end

@implementation ATXPrivacyPreservingDates

- (double)convertDate:(id)date toDeltaFromSkyUpdateDate:(id)updateDate
{
  updateDateCopy = updateDate;
  v7 = [(ATXPrivacyPreservingDates *)self _reduceGranularityToDayOfYear:date];
  v8 = [(ATXPrivacyPreservingDates *)self _reduceGranularityToDayOfYear:updateDateCopy];

  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  return v10;
}

- (id)reduceGranularityToWeekOfYear:(id)year
{
  yearCopy = year;
  if (yearCopy)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v6 = [currentCalendar components:540 fromDate:yearCopy];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setDay:{-objc_msgSend(v6, "weekday")}];
    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [currentCalendar2 dateByAddingComponents:v7 toDate:yearCopy options:0];

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

- (id)_reduceGranularityToDayOfYear:(id)year
{
  v3 = MEMORY[0x277CBEA80];
  yearCopy = year;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:28 fromDate:yearCopy];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar2 dateFromComponents:v6];

  return v8;
}

@end
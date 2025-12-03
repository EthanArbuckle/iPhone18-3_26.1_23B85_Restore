@interface ACHPerfectMonthTemplateSource
- (ACHPerfectMonthTemplateSource)init;
- (id)_modelsDirectoryBasePathForTemplate:(id)template;
- (id)_monthlyAchievementsAssetsDirectoryBasePath;
- (id)localizationBundleURLForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHPerfectMonthTemplateSource

- (ACHPerfectMonthTemplateSource)init
{
  v6.receiver = self;
  v6.super_class = ACHPerfectMonthTemplateSource;
  v2 = [(ACHPerfectMonthTemplateSource *)&v6 init];
  if (v2)
  {
    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    utcGregorianCalendar = v2->_utcGregorianCalendar;
    v2->_utcGregorianCalendar = hk_gregorianCalendarWithUTCTimeZone;
  }

  return v2;
}

- (void)templatesForDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  utcGregorianCalendar = [(ACHPerfectMonthTemplateSource *)self utcGregorianCalendar];
  v20 = ACHDateComponentsForYearMonthDay();
  v7 = [utcGregorianCalendar dateFromComponents:?];
  date = [MEMORY[0x277CBEAA8] date];
  [utcGregorianCalendar component:4 fromDate:date];

  v19 = ACHDateComponentsForYearMonthDay();
  v9 = [utcGregorianCalendar dateFromComponents:?];
  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = v7;
  v12 = v11;
  if ([v11 compare:v9] != 1)
  {
    v13 = MEMORY[0x277CE8D60];
    v14 = v11;
    do
    {
      v15 = objc_autoreleasePoolPush();
      v16 = [utcGregorianCalendar components:*v13 fromDate:v14];
      v17 = PerfectMonthTemplateForDateComponents();
      [v10 addObject:v17];
      v12 = [utcGregorianCalendar dateByAddingUnit:8 value:1 toDate:v14 options:0];

      objc_autoreleasePoolPop(v15);
      v14 = v12;
    }

    while ([v12 compare:v9] != 1);
  }

  if (completionCopy)
  {
    v18 = [v10 copy];
    (*(completionCopy + 2))(completionCopy, v18, 0, 0);
  }
}

- (id)localizationBundleURLForTemplate:(id)template
{
  _monthlyAchievementsAssetsDirectoryBasePath = [(ACHPerfectMonthTemplateSource *)self _monthlyAchievementsAssetsDirectoryBasePath];
  v4 = [_monthlyAchievementsAssetsDirectoryBasePath stringByAppendingPathComponent:@"localization"];
  v5 = [v4 stringByAppendingPathComponent:@"perfect"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  v3 = [(ACHPerfectMonthTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgemodel"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];

  return v5;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  v3 = [(ACHPerfectMonthTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgeproperties"];
  v5 = [v4 stringByAppendingPathComponent:@"perfect"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)_monthlyAchievementsAssetsDirectoryBasePath
{
  if (_monthlyAchievementsAssetsDirectoryBasePath_onceToken != -1)
  {
    [ACHPerfectMonthTemplateSource _monthlyAchievementsAssetsDirectoryBasePath];
  }

  v3 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath;

  return v3;
}

uint64_t __76__ACHPerfectMonthTemplateSource__monthlyAchievementsAssetsDirectoryBasePath__block_invoke()
{
  v0 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v1 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath;
  _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_modelsDirectoryBasePathForTemplate:(id)template
{
  if (_modelsDirectoryBasePathForTemplate__onceToken != -1)
  {
    [ACHPerfectMonthTemplateSource _modelsDirectoryBasePathForTemplate:];
  }

  v4 = _modelsDirectoryBasePathForTemplate__modelsDirecotryBasePath;

  return v4;
}

void __69__ACHPerfectMonthTemplateSource__modelsDirectoryBasePathForTemplate___block_invoke()
{
  v2 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v0 = [v2 stringByAppendingPathComponent:@"models"];
  v1 = _modelsDirectoryBasePathForTemplate__modelsDirecotryBasePath;
  _modelsDirectoryBasePathForTemplate__modelsDirecotryBasePath = v0;
}

@end
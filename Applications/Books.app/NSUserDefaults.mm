@interface NSUserDefaults
- (BOOL)AllowAutoDownloadsForPurchasesFromOtherDevices;
- (BOOL)BAResetAnalyticsUserIDTrigger;
- (BOOL)BCWWebRepExternalLoadApprovalCacheClearTrigger;
- (BOOL)BKFinishedAssetRemovalEnabledKey;
- (BOOL)BKReadingGoalsShouldClearDataKey;
- (BOOL)BKReadingGoalsShouldClearDataTrigger;
- (BOOL)BKReadingGoalsUserDefaultsKey;
- (BOOL)readerShowStatusBar;
- (void)setAllowAutoDownloadsForPurchasesFromOtherDevices:(BOOL)a3;
- (void)setBAResetAnalyticsUserIDTrigger:(BOOL)a3;
- (void)setBCWWebRepExternalLoadApprovalCacheClearTrigger:(BOOL)a3;
- (void)setBKFinishedAssetRemovalEnabledKey:(BOOL)a3;
- (void)setBKReadingGoalsShouldClearDataKey:(BOOL)a3;
- (void)setBKReadingGoalsShouldClearDataTrigger:(BOOL)a3;
- (void)setBKReadingGoalsUserDefaultsKey:(BOOL)a3;
@end

@implementation NSUserDefaults

- (BOOL)readerShowStatusBar
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (BOOL)BKReadingGoalsShouldClearDataTrigger
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsShouldClearDataTrigger:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)BKReadingGoalsShouldClearDataKey
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsShouldClearDataKey:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)BAResetAnalyticsUserIDTrigger
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBAResetAnalyticsUserIDTrigger:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)BCWWebRepExternalLoadApprovalCacheClearTrigger
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBCWWebRepExternalLoadApprovalCacheClearTrigger:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)AllowAutoDownloadsForPurchasesFromOtherDevices
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setAllowAutoDownloadsForPurchasesFromOtherDevices:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)BKReadingGoalsUserDefaultsKey
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsUserDefaultsKey:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

- (BOOL)BKFinishedAssetRemovalEnabledKey
{
  v2 = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)v2 BOOLForKey:v3];

  return v4;
}

- (void)setBKFinishedAssetRemovalEnabledKey:(BOOL)a3
{
  v5 = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)v5 setValue:isa forKey:v4];
}

@end
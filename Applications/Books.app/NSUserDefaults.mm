@interface NSUserDefaults
- (BOOL)AllowAutoDownloadsForPurchasesFromOtherDevices;
- (BOOL)BAResetAnalyticsUserIDTrigger;
- (BOOL)BCWWebRepExternalLoadApprovalCacheClearTrigger;
- (BOOL)BKFinishedAssetRemovalEnabledKey;
- (BOOL)BKReadingGoalsShouldClearDataKey;
- (BOOL)BKReadingGoalsShouldClearDataTrigger;
- (BOOL)BKReadingGoalsUserDefaultsKey;
- (BOOL)readerShowStatusBar;
- (void)setAllowAutoDownloadsForPurchasesFromOtherDevices:(BOOL)devices;
- (void)setBAResetAnalyticsUserIDTrigger:(BOOL)trigger;
- (void)setBCWWebRepExternalLoadApprovalCacheClearTrigger:(BOOL)trigger;
- (void)setBKFinishedAssetRemovalEnabledKey:(BOOL)key;
- (void)setBKReadingGoalsShouldClearDataKey:(BOOL)key;
- (void)setBKReadingGoalsShouldClearDataTrigger:(BOOL)trigger;
- (void)setBKReadingGoalsUserDefaultsKey:(BOOL)key;
@end

@implementation NSUserDefaults

- (BOOL)readerShowStatusBar
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (BOOL)BKReadingGoalsShouldClearDataTrigger
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsShouldClearDataTrigger:(BOOL)trigger
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)BKReadingGoalsShouldClearDataKey
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsShouldClearDataKey:(BOOL)key
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)BAResetAnalyticsUserIDTrigger
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBAResetAnalyticsUserIDTrigger:(BOOL)trigger
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)BCWWebRepExternalLoadApprovalCacheClearTrigger
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBCWWebRepExternalLoadApprovalCacheClearTrigger:(BOOL)trigger
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)AllowAutoDownloadsForPurchasesFromOtherDevices
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setAllowAutoDownloadsForPurchasesFromOtherDevices:(BOOL)devices
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)BKReadingGoalsUserDefaultsKey
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBKReadingGoalsUserDefaultsKey:(BOOL)key
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

- (BOOL)BKFinishedAssetRemovalEnabledKey
{
  selfCopy = self;
  v3 = sub_1007A2214();
  v4 = [(NSUserDefaults *)selfCopy BOOLForKey:v3];

  return v4;
}

- (void)setBKFinishedAssetRemovalEnabledKey:(BOOL)key
{
  selfCopy = self;
  isa = sub_1007A2684().super.super.isa;
  v4 = sub_1007A2214();
  [(NSUserDefaults *)selfCopy setValue:isa forKey:v4];
}

@end
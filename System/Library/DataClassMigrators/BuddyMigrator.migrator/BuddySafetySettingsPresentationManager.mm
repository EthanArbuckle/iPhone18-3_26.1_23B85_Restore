@interface BuddySafetySettingsPresentationManager
- (id)contextWithHasCompletedInitialRun:(BOOL)run;
@end

@implementation BuddySafetySettingsPresentationManager

- (id)contextWithHasCompletedInitialRun:(BOOL)run
{
  v3 = [objc_alloc(sub_7B48()) initWithFlowType:run];

  return v3;
}

@end
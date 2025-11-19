@interface GAXSettingsPINController
- (void)setPIN:(id)a3;
@end

@implementation GAXSettingsPINController

- (void)setPIN:(id)a3
{
  v3 = a3;
  v6 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v7 = v3;
  v4 = v3;
  v5 = v6;
  AXPerformSafeBlock();
}

@end
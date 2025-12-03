@interface GAXSettingsPINController
- (void)setPIN:(id)n;
@end

@implementation GAXSettingsPINController

- (void)setPIN:(id)n
{
  nCopy = n;
  v6 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v7 = nCopy;
  v4 = nCopy;
  v5 = v6;
  AXPerformSafeBlock();
}

@end
@interface GAXBKSystemShellSentinelAccessibility
- (void)dataMigratorDidComplete;
@end

@implementation GAXBKSystemShellSentinelAccessibility

- (void)dataMigratorDidComplete
{
  v2.receiver = self;
  v2.super_class = GAXBKSystemShellSentinelAccessibility;
  [(GAXBKSystemShellSentinelAccessibility *)&v2 dataMigratorDidComplete];
  AXPerformBlockAsynchronouslyOnMainThread();
}

@end
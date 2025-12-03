@interface SBIdleTimerPolicyAggregatorAccessibility
- (void)idleTimerDidWarn:(id)warn;
@end

@implementation SBIdleTimerPolicyAggregatorAccessibility

- (void)idleTimerDidWarn:(id)warn
{
  warnCopy = warn;
  +[SBBacklightControllerAccessibility isIdling];
  v5.receiver = self;
  v5.super_class = SBIdleTimerPolicyAggregatorAccessibility;
  [(SBIdleTimerPolicyAggregatorAccessibility *)&v5 idleTimerDidWarn:warnCopy];
}

@end
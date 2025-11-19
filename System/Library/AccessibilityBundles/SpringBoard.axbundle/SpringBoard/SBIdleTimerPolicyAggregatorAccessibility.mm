@interface SBIdleTimerPolicyAggregatorAccessibility
- (void)idleTimerDidWarn:(id)a3;
@end

@implementation SBIdleTimerPolicyAggregatorAccessibility

- (void)idleTimerDidWarn:(id)a3
{
  v4 = a3;
  +[SBBacklightControllerAccessibility isIdling];
  v5.receiver = self;
  v5.super_class = SBIdleTimerPolicyAggregatorAccessibility;
  [(SBIdleTimerPolicyAggregatorAccessibility *)&v5 idleTimerDidWarn:v4];
}

@end
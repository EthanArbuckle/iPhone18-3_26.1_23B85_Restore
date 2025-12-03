@interface SBUIProudLockIconViewInvertColorsAccessibility
- (id)_activeViewsForState:(int64_t)state;
@end

@implementation SBUIProudLockIconViewInvertColorsAccessibility

- (id)_activeViewsForState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = SBUIProudLockIconViewInvertColorsAccessibility;
  v3 = [(SBUIProudLockIconViewInvertColorsAccessibility *)&v5 _activeViewsForState:state];
  [v3 enumerateObjectsUsingBlock:&stru_44AF0];

  return v3;
}

@end
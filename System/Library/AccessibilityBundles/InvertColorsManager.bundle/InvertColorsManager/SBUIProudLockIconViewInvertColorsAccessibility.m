@interface SBUIProudLockIconViewInvertColorsAccessibility
- (id)_activeViewsForState:(int64_t)a3;
@end

@implementation SBUIProudLockIconViewInvertColorsAccessibility

- (id)_activeViewsForState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBUIProudLockIconViewInvertColorsAccessibility;
  v3 = [(SBUIProudLockIconViewInvertColorsAccessibility *)&v5 _activeViewsForState:a3];
  [v3 enumerateObjectsUsingBlock:&stru_44AF0];

  return v3;
}

@end
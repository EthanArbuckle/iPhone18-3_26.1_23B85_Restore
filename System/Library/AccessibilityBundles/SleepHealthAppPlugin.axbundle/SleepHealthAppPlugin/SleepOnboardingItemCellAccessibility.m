@interface SleepOnboardingItemCellAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation SleepOnboardingItemCellAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(SleepOnboardingItemCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_2];
  v4 = v3;
  if (v3)
  {
    [v3 accessibilityActivationPoint];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SleepOnboardingItemCellAccessibility;
    [(SleepOnboardingItemCellAccessibility *)&v11 accessibilityActivationPoint];
  }

  v7 = v5;
  v8 = v6;

  v9 = v7;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

uint64_t __68__SleepOnboardingItemCellAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
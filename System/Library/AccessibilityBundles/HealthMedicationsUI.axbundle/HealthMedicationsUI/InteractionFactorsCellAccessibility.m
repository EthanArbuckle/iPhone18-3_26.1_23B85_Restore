@interface InteractionFactorsCellAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation InteractionFactorsCellAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v3 = [(InteractionFactorsCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_1];
  v4 = [v3 firstObject];
  v5 = v4;
  if (v4)
  {
    [v4 accessibilityActivationPoint];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = InteractionFactorsCellAccessibility;
    [(InteractionFactorsCellAccessibility *)&v12 accessibilityActivationPoint];
  }

  v8 = v6;
  v9 = v7;

  v10 = v8;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

uint64_t __67__InteractionFactorsCellAccessibility_accessibilityActivationPoint__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
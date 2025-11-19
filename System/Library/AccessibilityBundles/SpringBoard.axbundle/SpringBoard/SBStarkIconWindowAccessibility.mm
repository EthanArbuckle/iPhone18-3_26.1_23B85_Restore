@interface SBStarkIconWindowAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation SBStarkIconWindowAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(SBStarkIconWindowAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_14];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end
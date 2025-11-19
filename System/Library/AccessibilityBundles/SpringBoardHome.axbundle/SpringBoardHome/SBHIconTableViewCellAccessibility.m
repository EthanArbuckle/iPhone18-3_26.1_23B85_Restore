@interface SBHIconTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityDragSourceDescriptors;
@end

@implementation SBHIconTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHIconTableViewCell" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconTableViewCell" hasInstanceMethod:@"iconNameLabel" withFullSignature:{"@", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(SBHIconTableViewCellAccessibility *)self safeValueForKey:@"iconView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityDragSourceDescriptors
{
  v2 = [(SBHIconTableViewCellAccessibility *)self safeValueForKey:@"iconView"];
  v3 = [v2 accessibilityDragSourceDescriptors];

  return v3;
}

@end
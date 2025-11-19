@interface HUTitleControlCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_axControlElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUTitleControlCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUTitleControlCell" hasInstanceMethod:@"controlView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUTitleControlCell" hasInstanceMethod:@"controlTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HUTitleControlCellAccessibility *)self safeValueForKey:@"controlTitle"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(HUTitleControlCellAccessibility *)self _axControlElement];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(HUTitleControlCellAccessibility *)self _axControlElement];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(HUTitleControlCellAccessibility *)self _axControlElement];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)_axControlElement
{
  v2 = [(HUTitleControlCellAccessibility *)self safeValueForKey:@"controlView"];
  v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_12];

  return v3;
}

@end
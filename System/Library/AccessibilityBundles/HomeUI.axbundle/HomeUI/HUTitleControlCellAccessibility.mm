@interface HUTitleControlCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)_axControlElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUTitleControlCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUTitleControlCell" hasInstanceMethod:@"controlView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUTitleControlCell" hasInstanceMethod:@"controlTitle" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HUTitleControlCellAccessibility *)self safeValueForKey:@"controlTitle"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axControlElement = [(HUTitleControlCellAccessibility *)self _axControlElement];
  accessibilityValue = [_axControlElement accessibilityValue];

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axControlElement = [(HUTitleControlCellAccessibility *)self _axControlElement];
  [_axControlElement accessibilityActivationPoint];
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
  _axControlElement = [(HUTitleControlCellAccessibility *)self _axControlElement];
  accessibilityTraits = [_axControlElement accessibilityTraits];

  return accessibilityTraits;
}

- (id)_axControlElement
{
  v2 = [(HUTitleControlCellAccessibility *)self safeValueForKey:@"controlView"];
  v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_12];

  return v3;
}

@end
@interface CKDetailsChatOptionsCheckboxCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKDetailsChatOptionsCheckboxCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKDetailsChatOptionsCheckboxCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"CKDetailsChatOptionsCheckboxCell" hasInstanceMethod:@"controlSwitch" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
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
@interface CKDetailsChatOptionsCheckboxCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKDetailsChatOptionsCheckboxCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKDetailsChatOptionsCheckboxCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"CKDetailsChatOptionsCheckboxCell" hasInstanceMethod:@"controlSwitch" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(CKDetailsChatOptionsCheckboxCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
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
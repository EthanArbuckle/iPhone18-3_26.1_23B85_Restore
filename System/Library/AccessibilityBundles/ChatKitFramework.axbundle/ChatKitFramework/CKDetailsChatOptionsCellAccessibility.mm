@interface CKDetailsChatOptionsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKDetailsChatOptionsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKDetailsChatOptionsCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"CKDetailsChatOptionsCell" hasInstanceMethod:@"controlSwitch" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (![accessibilityLabel length])
  {
    v5 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
    accessibilityLabel2 = [v5 accessibilityLabel];

    accessibilityLabel = accessibilityLabel2;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
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
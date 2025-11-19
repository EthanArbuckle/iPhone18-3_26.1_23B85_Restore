@interface CKDetailsChatOptionsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation CKDetailsChatOptionsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKDetailsChatOptionsCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"CKDetailsChatOptionsCell" hasInstanceMethod:@"controlSwitch" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"textLabel"];
  v4 = [v3 accessibilityLabel];

  if (![v4 length])
  {
    v5 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
    v6 = [v5 accessibilityLabel];

    v4 = v6;
  }

  return v4;
}

- (id)accessibilityValue
{
  v2 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(CKDetailsChatOptionsCellAccessibility *)self safeUIViewForKey:@"controlSwitch"];
  v3 = [v2 accessibilityTraits];

  return v3;
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
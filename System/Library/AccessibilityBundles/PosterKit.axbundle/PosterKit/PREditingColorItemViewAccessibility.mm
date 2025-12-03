@interface PREditingColorItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PREditingColorItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingColorItemView" hasInstanceMethod:@"colorItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingColorItemView" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingColorItem" hasInstanceMethod:@"displayColor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRPosterColor" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v3 = [(PREditingColorItemViewAccessibility *)self safeStringForKey:@"localizedName"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PREditingColorItemViewAccessibility *)self safeValueForKeyPath:@"colorItem.displayColor.color"];
    if (v6)
    {
      accessibilityValue = AXColorStringForColor();
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PREditingColorItemViewAccessibility;
      accessibilityValue = [(PREditingColorItemViewAccessibility *)&v9 accessibilityValue];
    }

    v5 = accessibilityValue;
  }

  return v5;
}

@end
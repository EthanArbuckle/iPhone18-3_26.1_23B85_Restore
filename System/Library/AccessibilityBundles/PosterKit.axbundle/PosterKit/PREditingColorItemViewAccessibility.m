@interface PREditingColorItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PREditingColorItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PREditingColorItemView" hasInstanceMethod:@"colorItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PREditingColorItemView" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PREditingColorItem" hasInstanceMethod:@"displayColor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRPosterColor" hasInstanceMethod:@"color" withFullSignature:{"@", 0}];
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
      v7 = AXColorStringForColor();
    }

    else
    {
      v9.receiver = self;
      v9.super_class = PREditingColorItemViewAccessibility;
      v7 = [(PREditingColorItemViewAccessibility *)&v9 accessibilityValue];
    }

    v5 = v7;
  }

  return v5;
}

@end
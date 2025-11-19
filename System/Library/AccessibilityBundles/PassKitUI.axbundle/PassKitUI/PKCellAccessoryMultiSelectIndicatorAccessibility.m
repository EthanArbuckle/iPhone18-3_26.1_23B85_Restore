@interface PKCellAccessoryMultiSelectIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation PKCellAccessoryMultiSelectIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKCellAccessoryMultiSelectIndicator" hasInstanceVariable:@"_content" withType:"PKMultiSelectIndicatorView"];
  [v3 validateClass:@"PKMultiSelectIndicatorView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PKCellAccessoryMultiSelectIndicatorAccessibility *)self safeValueForKey:@"_content"];
  v3 = [v2 safeValueForKey:@"_imageView"];

  if (v3)
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 image];
    v6 = [v5 accessibilityIdentifier];

    LOBYTE(v5) = [v6 isEqualToString:@"checkmark.circle.fill"];
    v7 = *MEMORY[0x29EDC7F70];

    if (v5)
    {
      v7 |= *MEMORY[0x29EDC7FC0];
    }
  }

  else
  {
    v7 = *MEMORY[0x29EDC7F70];
  }

  return v7;
}

@end
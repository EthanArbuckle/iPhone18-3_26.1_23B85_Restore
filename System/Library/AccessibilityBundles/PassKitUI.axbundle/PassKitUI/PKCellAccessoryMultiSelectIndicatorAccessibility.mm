@interface PKCellAccessoryMultiSelectIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation PKCellAccessoryMultiSelectIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKCellAccessoryMultiSelectIndicator" hasInstanceVariable:@"_content" withType:"PKMultiSelectIndicatorView"];
  [validationsCopy validateClass:@"PKMultiSelectIndicatorView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PKCellAccessoryMultiSelectIndicatorAccessibility *)self safeValueForKey:@"_content"];
  v3 = [v2 safeValueForKey:@"_imageView"];

  if (v3)
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    image = [v4 image];
    accessibilityIdentifier = [image accessibilityIdentifier];

    LOBYTE(image) = [accessibilityIdentifier isEqualToString:@"checkmark.circle.fill"];
    v7 = *MEMORY[0x29EDC7F70];

    if (image)
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
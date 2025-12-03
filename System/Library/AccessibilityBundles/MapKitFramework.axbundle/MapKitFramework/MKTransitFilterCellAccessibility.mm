@interface MKTransitFilterCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation MKTransitFilterCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKTransitFilterCell" hasInstanceMethod:@"titleText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKTransitFilterCell" hasInstanceVariable:@"_label" withType:"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v3 = [(MKTransitFilterCellAccessibility *)self safeValueForKey:@"_label"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = *MEMORY[0x29EDC7F70];
  textColor = [v4 textColor];
  systemWhiteColor = [MEMORY[0x29EDC7A00] systemWhiteColor];

  v8 = *MEMORY[0x29EDC7FC0];
  if (textColor != systemWhiteColor)
  {
    v8 = 0;
  }

  return v8 | v5;
}

@end
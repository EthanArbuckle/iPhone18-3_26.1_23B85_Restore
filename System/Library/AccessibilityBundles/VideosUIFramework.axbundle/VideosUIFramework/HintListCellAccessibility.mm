@interface HintListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HintListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.HintListCell" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VUILabel" isKindOfClass:@"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HintListCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HintListCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(HintListCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

@end
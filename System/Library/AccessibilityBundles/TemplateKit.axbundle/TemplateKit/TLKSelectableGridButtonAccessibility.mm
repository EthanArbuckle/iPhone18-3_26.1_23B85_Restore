@interface TLKSelectableGridButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation TLKSelectableGridButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKSelectableGridButton" hasInstanceMethod:@"topLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TLKSelectableGridButton" hasInstanceMethod:@"bottomLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = TLKSelectableGridButtonAccessibility;
  accessibilityTraits = [(TLKSelectableGridButtonAccessibility *)&v8 accessibilityTraits];
  layer = [(TLKSelectableGridButtonAccessibility *)self layer];
  backgroundColor = [layer backgroundColor];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!backgroundColor)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

@end
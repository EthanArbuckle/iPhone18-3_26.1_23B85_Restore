@interface PRXTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PRXTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRXTextView" isKindOfClass:@"UITextView"];
  [validationsCopy validateClass:@"PRXTextView" hasInstanceVariable:@"_style" withType:"q"];
}

- (id)accessibilityLabel
{
  v4.receiver = self;
  v4.super_class = PRXTextViewAccessibility;
  accessibilityValue = [(PRXTextViewAccessibility *)&v4 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(PRXTextViewAccessibility *)self safeIntegerForKey:@"_style"];
  v3 = MEMORY[0x29EDC7F80];
  if (v2)
  {
    v3 = MEMORY[0x29EDC7FD0];
  }

  return *v3;
}

@end
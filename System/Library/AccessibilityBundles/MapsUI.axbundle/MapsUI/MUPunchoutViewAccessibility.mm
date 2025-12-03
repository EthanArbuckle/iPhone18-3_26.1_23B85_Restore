@interface MUPunchoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MUPunchoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPunchoutView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MUPunchoutViewModel" hasInstanceMethod:@"punchoutText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MUPunchoutViewAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeStringForKey:@"punchoutText"];

  return v3;
}

@end
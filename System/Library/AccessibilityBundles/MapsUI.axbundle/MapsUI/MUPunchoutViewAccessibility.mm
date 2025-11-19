@interface MUPunchoutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MUPunchoutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPunchoutView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MUPunchoutViewModel" hasInstanceMethod:@"punchoutText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MUPunchoutViewAccessibility *)self safeValueForKey:@"viewModel"];
  v3 = [v2 safeStringForKey:@"punchoutText"];

  return v3;
}

@end
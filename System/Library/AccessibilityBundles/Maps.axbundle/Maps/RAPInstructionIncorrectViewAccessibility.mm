@interface RAPInstructionIncorrectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (RAPInstructionIncorrectViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateFlagView;
@end

@implementation RAPInstructionIncorrectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RAPInstructionIncorrectView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"RAPInstructionIncorrectView" hasInstanceVariable:@"_flagView" withType:"UIImageView"];
}

- (void)_axAnnotateFlagView
{
  v2 = [(RAPInstructionIncorrectViewAccessibility *)self safeValueForKey:@"_flagView"];
  [v2 setAccessibilityIdentifier:@"Flag"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = RAPInstructionIncorrectViewAccessibility;
  [(RAPInstructionIncorrectViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(RAPInstructionIncorrectViewAccessibility *)self _axAnnotateFlagView];
}

- (RAPInstructionIncorrectViewAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RAPInstructionIncorrectViewAccessibility;
  v3 = [(RAPInstructionIncorrectViewAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RAPInstructionIncorrectViewAccessibility *)v3 _axAnnotateFlagView];
  }

  return v4;
}

@end
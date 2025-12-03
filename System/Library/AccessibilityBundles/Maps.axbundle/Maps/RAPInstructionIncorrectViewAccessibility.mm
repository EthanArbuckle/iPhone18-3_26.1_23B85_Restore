@interface RAPInstructionIncorrectViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (RAPInstructionIncorrectViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateFlagView;
@end

@implementation RAPInstructionIncorrectViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RAPInstructionIncorrectView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"RAPInstructionIncorrectView" hasInstanceVariable:@"_flagView" withType:"UIImageView"];
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

- (RAPInstructionIncorrectViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RAPInstructionIncorrectViewAccessibility;
  v3 = [(RAPInstructionIncorrectViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RAPInstructionIncorrectViewAccessibility *)v3 _axAnnotateFlagView];
  }

  return v4;
}

@end
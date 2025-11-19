@interface SFStepperAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setText:(id)a3 forButton:(int64_t)a4;
@end

@implementation SFStepperAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFStepper" hasInstanceMethod:@"setText:forButton:" withFullSignature:{"v", "@", "q", 0}];
  [v3 validateClass:@"SFStepper" hasInstanceVariable:@"trailingButton" withType:"SFBrowsingAssistantMainButton"];
  [v3 validateClass:@"SFStepper" hasInstanceVariable:@"leadingButton" withType:"SFBrowsingAssistantMainButton"];
}

- (void)accessibilityIncrement
{
  objc_opt_class();
  v3 = [(SFStepperAccessibility *)self safeValueForKey:@"trailingButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 sendActionsForControlEvents:64];
}

- (void)accessibilityDecrement
{
  objc_opt_class();
  v3 = [(SFStepperAccessibility *)self safeValueForKey:@"leadingButton"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 sendActionsForControlEvents:64];
}

- (void)setText:(id)a3 forButton:(int64_t)a4
{
  if (a3)
  {
    [(SFStepperAccessibility *)self setAccessibilityValue:a3, a4];
  }
}

@end
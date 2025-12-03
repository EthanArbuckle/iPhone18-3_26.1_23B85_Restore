@interface SFStepperAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setText:(id)text forButton:(int64_t)button;
@end

@implementation SFStepperAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFStepper" hasInstanceMethod:@"setText:forButton:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"SFStepper" hasInstanceVariable:@"trailingButton" withType:"SFBrowsingAssistantMainButton"];
  [validationsCopy validateClass:@"SFStepper" hasInstanceVariable:@"leadingButton" withType:"SFBrowsingAssistantMainButton"];
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

- (void)setText:(id)text forButton:(int64_t)button
{
  if (text)
  {
    [(SFStepperAccessibility *)self setAccessibilityValue:text, button];
  }
}

@end
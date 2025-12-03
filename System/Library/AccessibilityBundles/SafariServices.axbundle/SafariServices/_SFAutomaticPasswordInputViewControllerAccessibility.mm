@interface _SFAutomaticPasswordInputViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _SFAutomaticPasswordInputViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFAutomaticPasswordInputViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"_SFAutomaticPasswordInputViewController" hasInstanceVariable:@"_inputView" withType:"UIInputView"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = _SFAutomaticPasswordInputViewControllerAccessibility;
  [(_SFAutomaticPasswordInputViewControllerAccessibility *)&v3 viewWillAppear:appear];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end
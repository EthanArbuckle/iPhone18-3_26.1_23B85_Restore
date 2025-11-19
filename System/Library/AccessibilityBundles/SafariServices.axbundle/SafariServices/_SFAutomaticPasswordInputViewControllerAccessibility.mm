@interface _SFAutomaticPasswordInputViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _SFAutomaticPasswordInputViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFAutomaticPasswordInputViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"_SFAutomaticPasswordInputViewController" hasInstanceVariable:@"_inputView" withType:"UIInputView"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = _SFAutomaticPasswordInputViewControllerAccessibility;
  [(_SFAutomaticPasswordInputViewControllerAccessibility *)&v3 viewWillAppear:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end
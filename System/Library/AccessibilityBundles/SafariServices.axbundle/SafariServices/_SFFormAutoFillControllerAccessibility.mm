@interface _SFFormAutoFillControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)fieldWillFocusWithInputSession:(id)a3;
@end

@implementation _SFFormAutoFillControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFFormAutoFillController" hasInstanceMethod:@"fieldWillFocusWithInputSession:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"_SFFormAutoFillController" hasInstanceVariable:@"_autoFillInputView" withType:"_SFAutoFillInputView"];
}

- (void)fieldWillFocusWithInputSession:(id)a3
{
  v3.receiver = self;
  v3.super_class = _SFFormAutoFillControllerAccessibility;
  [(_SFFormAutoFillControllerAccessibility *)&v3 fieldWillFocusWithInputSession:a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end
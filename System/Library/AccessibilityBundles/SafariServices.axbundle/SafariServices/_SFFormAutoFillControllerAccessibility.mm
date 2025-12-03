@interface _SFFormAutoFillControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)fieldWillFocusWithInputSession:(id)session;
@end

@implementation _SFFormAutoFillControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFFormAutoFillController" hasInstanceMethod:@"fieldWillFocusWithInputSession:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"_SFFormAutoFillController" hasInstanceVariable:@"_autoFillInputView" withType:"_SFAutoFillInputView"];
}

- (void)fieldWillFocusWithInputSession:(id)session
{
  v3.receiver = self;
  v3.super_class = _SFFormAutoFillControllerAccessibility;
  [(_SFFormAutoFillControllerAccessibility *)&v3 fieldWillFocusWithInputSession:session];
  AXPerformBlockOnMainThreadAfterDelay();
}

@end
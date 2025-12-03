@interface SFDialogControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_dismissDialogWithAdditionalAnimations:(id)animations;
@end

@implementation SFDialogControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFDialogController" hasInstanceMethod:@"_presentDialog:forWebProcessID:withAdditionalAnimations:" withFullSignature:{"q", "@", "i", "@?", 0}];
  [validationsCopy validateClass:@"SFDialogController" hasInstanceMethod:@"_dismissDialogWithAdditionalAnimations:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SFDialogController" hasInstanceVariable:@"_dialogView" withType:"SFDialogView"];
  [validationsCopy validateClass:@"SFDialogView" hasInstanceVariable:@"_contentView" withType:"SFDialogContentView"];
  [validationsCopy validateClass:@"SFDialogContentView" hasInstanceVariable:@"_messageTextView" withType:"SFDialogTextView"];
  [validationsCopy validateClass:@"SFDialogTextView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (void)_dismissDialogWithAdditionalAnimations:(id)animations
{
  v5.receiver = self;
  v5.super_class = SFDialogControllerAccessibility;
  [(SFDialogControllerAccessibility *)&v5 _dismissDialogWithAdditionalAnimations:animations];
  v4 = [(SFDialogControllerAccessibility *)self safeValueForKey:@"_dialogView"];
  [v4 setAccessibilityViewIsModal:0];

  AXPerformBlockOnMainThreadAfterDelay();
}

@end
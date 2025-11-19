@interface SFDialogControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_dismissDialogWithAdditionalAnimations:(id)a3;
@end

@implementation SFDialogControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFDialogController" hasInstanceMethod:@"_presentDialog:forWebProcessID:withAdditionalAnimations:" withFullSignature:{"q", "@", "i", "@?", 0}];
  [v3 validateClass:@"SFDialogController" hasInstanceMethod:@"_dismissDialogWithAdditionalAnimations:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"SFDialogController" hasInstanceVariable:@"_dialogView" withType:"SFDialogView"];
  [v3 validateClass:@"SFDialogView" hasInstanceVariable:@"_contentView" withType:"SFDialogContentView"];
  [v3 validateClass:@"SFDialogContentView" hasInstanceVariable:@"_messageTextView" withType:"SFDialogTextView"];
  [v3 validateClass:@"SFDialogTextView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (void)_dismissDialogWithAdditionalAnimations:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFDialogControllerAccessibility;
  [(SFDialogControllerAccessibility *)&v5 _dismissDialogWithAdditionalAnimations:a3];
  v4 = [(SFDialogControllerAccessibility *)self safeValueForKey:@"_dialogView"];
  [v4 setAccessibilityViewIsModal:0];

  AXPerformBlockOnMainThreadAfterDelay();
}

@end
@interface TUIEmojiSearchTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
@end

@implementation TUIEmojiSearchTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUIEmojiSearchTextField" isKindOfClass:@"UITextField"];
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"_inputController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITextFieldAccessibility" hasInstanceMethod:@"_accessibilitySetSelectedTextRange:" withFullSignature:{"v", "{_NSRange=QQ}", 0}];
  [v3 validateClass:@"UITextInputControllerAccessibility" hasInstanceMethod:@"_accessibilityUpdateSelectionNotification:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v6.receiver = self;
  v6.super_class = TUIEmojiSearchTextFieldAccessibility;
  [(TUIEmojiSearchTextFieldAccessibility *)&v6 _accessibilitySetSelectedTextRange:a3.location, a3.length];
  v5 = [(TUIEmojiSearchTextFieldAccessibility *)self safeValueForKey:@"_inputController"];
  v4 = v5;
  AXPerformSafeBlock();
}

@end
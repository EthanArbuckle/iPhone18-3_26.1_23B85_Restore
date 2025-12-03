@interface TUIEmojiSearchTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
@end

@implementation TUIEmojiSearchTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUIEmojiSearchTextField" isKindOfClass:@"UITextField"];
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"_inputController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITextFieldAccessibility" hasInstanceMethod:@"_accessibilitySetSelectedTextRange:" withFullSignature:{"v", "{_NSRange=QQ}", 0}];
  [validationsCopy validateClass:@"UITextInputControllerAccessibility" hasInstanceMethod:@"_accessibilityUpdateSelectionNotification:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  v6.receiver = self;
  v6.super_class = TUIEmojiSearchTextFieldAccessibility;
  [(TUIEmojiSearchTextFieldAccessibility *)&v6 _accessibilitySetSelectedTextRange:range.location, range.length];
  v5 = [(TUIEmojiSearchTextFieldAccessibility *)self safeValueForKey:@"_inputController"];
  v4 = v5;
  AXPerformSafeBlock();
}

@end
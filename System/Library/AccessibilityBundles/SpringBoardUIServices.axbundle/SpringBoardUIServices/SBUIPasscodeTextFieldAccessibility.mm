@interface SBUIPasscodeTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)deleteBackward;
- (void)insertText:(id)a3;
@end

@implementation SBUIPasscodeTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIPasscodeTextField" isKindOfClass:@"UITextField"];
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"insertText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UITextField" hasInstanceMethod:@"deleteBackward" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextFieldAccessibility;
  return *MEMORY[0x29EDC7568] | [(SBUIPasscodeTextFieldAccessibility *)&v3 accessibilityTraits];
}

- (void)insertText:(id)a3
{
  v4 = a3;
  [(SBUIPasscodeTextFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithInsertedText:v4];
  v5.receiver = self;
  v5.super_class = SBUIPasscodeTextFieldAccessibility;
  [(SBUIPasscodeTextFieldAccessibility *)&v5 insertText:v4];
}

- (void)deleteBackward
{
  [(SBUIPasscodeTextFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextFieldAccessibility;
  [(SBUIPasscodeTextFieldAccessibility *)&v3 deleteBackward];
}

@end
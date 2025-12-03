@interface SBUIPasscodeTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)deleteBackward;
- (void)insertText:(id)text;
@end

@implementation SBUIPasscodeTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPasscodeTextField" isKindOfClass:@"UITextField"];
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"insertText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"deleteBackward" withFullSignature:{"v", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextFieldAccessibility;
  return *MEMORY[0x29EDC7568] | [(SBUIPasscodeTextFieldAccessibility *)&v3 accessibilityTraits];
}

- (void)insertText:(id)text
{
  textCopy = text;
  [(SBUIPasscodeTextFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithInsertedText:textCopy];
  v5.receiver = self;
  v5.super_class = SBUIPasscodeTextFieldAccessibility;
  [(SBUIPasscodeTextFieldAccessibility *)&v5 insertText:textCopy];
}

- (void)deleteBackward
{
  [(SBUIPasscodeTextFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeTextFieldAccessibility;
  [(SBUIPasscodeTextFieldAccessibility *)&v3 deleteBackward];
}

@end
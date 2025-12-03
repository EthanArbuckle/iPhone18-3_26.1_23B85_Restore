@interface SBUIPasscodeEntryFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldInsertPasscodeText:(id)text;
- (void)deleteLastCharacter;
@end

@implementation SBUIPasscodeEntryFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPasscodeEntryField" hasInstanceVariable:@"_textField" withType:"SBUIPasscodeTextField"];
  [validationsCopy validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"deleteLastCharacter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"shouldInsertPasscodeText:" withFullSignature:{"B", "@", 0}];
}

- (BOOL)shouldInsertPasscodeText:(id)text
{
  textCopy = text;
  [(SBUIPasscodeEntryFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithInsertedText:textCopy];
  v6.receiver = self;
  v6.super_class = SBUIPasscodeEntryFieldAccessibility;
  LOBYTE(self) = [(SBUIPasscodeEntryFieldAccessibility *)&v6 shouldInsertPasscodeText:textCopy];

  return self;
}

- (void)deleteLastCharacter
{
  [(SBUIPasscodeEntryFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
  v3.receiver = self;
  v3.super_class = SBUIPasscodeEntryFieldAccessibility;
  [(SBUIPasscodeEntryFieldAccessibility *)&v3 deleteLastCharacter];
}

@end
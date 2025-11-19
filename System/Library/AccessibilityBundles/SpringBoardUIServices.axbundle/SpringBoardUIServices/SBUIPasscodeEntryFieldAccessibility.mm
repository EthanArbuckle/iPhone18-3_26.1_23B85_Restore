@interface SBUIPasscodeEntryFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldInsertPasscodeText:(id)a3;
- (void)deleteLastCharacter;
@end

@implementation SBUIPasscodeEntryFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceVariable:@"_textField" withType:"SBUIPasscodeTextField"];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"deleteLastCharacter" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIPasscodeEntryField" hasInstanceMethod:@"shouldInsertPasscodeText:" withFullSignature:{"B", "@", 0}];
}

- (BOOL)shouldInsertPasscodeText:(id)a3
{
  v4 = a3;
  [(SBUIPasscodeEntryFieldAccessibility *)self _accessibilityPostValueChangedNotificationWithInsertedText:v4];
  v6.receiver = self;
  v6.super_class = SBUIPasscodeEntryFieldAccessibility;
  LOBYTE(self) = [(SBUIPasscodeEntryFieldAccessibility *)&v6 shouldInsertPasscodeText:v4];

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
@interface TIKeyboardCandidateAccessibility__UIKit__TextInput
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation TIKeyboardCandidateAccessibility__UIKit__TextInput

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"TIKeyboardCandidate" hasInstanceMethod:@"candidate" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  mEMORY[0x29EDC7B18] = [MEMORY[0x29EDC7B18] sharedInputModeController];
  currentInputMode = [mEMORY[0x29EDC7B18] currentInputMode];
  v8[0] = [currentInputMode primaryLanguage];
  MEMORY[0x29EDC9740](currentInputMode);
  mEMORY[0x29EDBDF80] = [MEMORY[0x29EDBDF80] sharedInstance];
  v5 = [(TIKeyboardCandidateAccessibility__UIKit__TextInput *)selfCopy safeValueForKey:@"candidate"];
  v7 = [mEMORY[0x29EDBDF80] descriptionOfWord:? forLanguage:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](mEMORY[0x29EDBDF80]);
  objc_storeStrong(v8, 0);

  return v7;
}

@end
@interface TIKeyboardCandidateAccessibility__UIKit__TextInput
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation TIKeyboardCandidateAccessibility__UIKit__TextInput

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"TIKeyboardCandidate" hasInstanceMethod:@"candidate" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v4 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v3 = [v4 currentInputMode];
  v8[0] = [v3 primaryLanguage];
  MEMORY[0x29EDC9740](v3);
  v6 = [MEMORY[0x29EDBDF80] sharedInstance];
  v5 = [(TIKeyboardCandidateAccessibility__UIKit__TextInput *)v9 safeValueForKey:@"candidate"];
  v7 = [v6 descriptionOfWord:? forLanguage:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(v8, 0);

  return v7;
}

@end
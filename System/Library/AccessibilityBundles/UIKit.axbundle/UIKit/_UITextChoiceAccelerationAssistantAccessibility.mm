@interface _UITextChoiceAccelerationAssistantAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)showPromptForReplacementCandidate:(id)a3 delay:(double)a4;
@end

@implementation _UITextChoiceAccelerationAssistantAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UITextChoiceAccelerationAssistant" hasInstanceMethod:@"showPromptForReplacementCandidate:delay:" withFullSignature:{"B", "@", "d", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)showPromptForReplacementCandidate:(id)a3 delay:(double)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = a4;
  v7.receiver = v11;
  v7.super_class = _UITextChoiceAccelerationAssistantAccessibility;
  v8 = [(_UITextChoiceAccelerationAssistantAccessibility *)&v7 showPromptForReplacementCandidate:location[0] delay:a4];
  if (v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

@end
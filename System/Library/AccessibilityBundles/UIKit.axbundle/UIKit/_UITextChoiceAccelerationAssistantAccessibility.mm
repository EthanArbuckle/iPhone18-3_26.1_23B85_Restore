@interface _UITextChoiceAccelerationAssistantAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)showPromptForReplacementCandidate:(id)candidate delay:(double)delay;
@end

@implementation _UITextChoiceAccelerationAssistantAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UITextChoiceAccelerationAssistant" hasInstanceMethod:@"showPromptForReplacementCandidate:delay:" withFullSignature:{"B", "@", "d", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)showPromptForReplacementCandidate:(id)candidate delay:(double)delay
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, candidate);
  delayCopy = delay;
  v7.receiver = selfCopy;
  v7.super_class = _UITextChoiceAccelerationAssistantAccessibility;
  v8 = [(_UITextChoiceAccelerationAssistantAccessibility *)&v7 showPromptForReplacementCandidate:location[0] delay:delay];
  if (v8)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7390], 0);
  }

  v5 = v8;
  objc_storeStrong(location, 0);
  return v5 & 1;
}

@end
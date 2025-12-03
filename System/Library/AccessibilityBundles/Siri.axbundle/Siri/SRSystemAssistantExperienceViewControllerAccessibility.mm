@interface SRSystemAssistantExperienceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setupTextFieldForTextInput;
@end

@implementation SRSystemAssistantExperienceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SRSystemAssistantExperienceViewController" hasInstanceMethod:@"setupTextFieldForTextInput" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SRSystemAssistantExperienceViewController" hasInstanceMethod:@"promptEntryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Siri.SystemAssistantPromptEntryView" hasSwiftField:@"entryView" withSwiftType:"EditMenuAwarePromptEntryView"];
}

- (void)setupTextFieldForTextInput
{
  v7.receiver = self;
  v7.super_class = SRSystemAssistantExperienceViewControllerAccessibility;
  [(SRSystemAssistantExperienceViewControllerAccessibility *)&v7 setupTextFieldForTextInput];
  v3 = [(SRSystemAssistantExperienceViewControllerAccessibility *)self safeValueForKey:@"promptEntryView"];
  v4 = [v3 safeSwiftValueForKey:@"entryView"];
  v6 = [v4 safeSwiftValueForKey:@"textView"];
  v5 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
}

@end
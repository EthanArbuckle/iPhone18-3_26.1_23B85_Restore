@interface SRSystemAssistantExperienceViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setupTextFieldForTextInput;
@end

@implementation SRSystemAssistantExperienceViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SRSystemAssistantExperienceViewController" hasInstanceMethod:@"setupTextFieldForTextInput" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SRSystemAssistantExperienceViewController" hasInstanceMethod:@"promptEntryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Siri.SystemAssistantPromptEntryView" hasSwiftField:@"entryView" withSwiftType:"EditMenuAwarePromptEntryView"];
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
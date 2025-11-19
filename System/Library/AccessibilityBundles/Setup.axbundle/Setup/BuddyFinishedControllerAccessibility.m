@interface BuddyFinishedControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation BuddyFinishedControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BuddyFinishedController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"BuddyFinishedController" hasProperty:@"instructionalLabel" withType:"@"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7.receiver = self;
  v7.super_class = BuddyFinishedControllerAccessibility;
  [(BuddyFinishedControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(BuddyFinishedControllerAccessibility *)self safeValueForKey:@"instructionalLabel"];
  v4 = v3;
  if (v3)
  {
    [v3 setIsAccessibilityElement:1];
    [v4 setAccessibilityRespondsToUserInteraction:1];
    v8[0] = *MEMORY[0x29EDBD610];
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
    [v4 _iosAccessibilitySetValue:v5 forAttribute:12015];
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end
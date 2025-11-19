@interface IntelligenceUIPromptEntryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation IntelligenceUIPromptEntryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:? hasSwiftField:? withSwiftType:?];
  [location[0] validateClass:@"_TtCO5UIKit14IntelligenceUI15PromptEntryView" hasSwiftField:@"leadingButton" withSwiftType:?];
  [location[0] validateClass:@"_TtCO5UIKit14IntelligenceUI15PromptEntryView" hasSwiftField:@"trailingButton" withSwiftType:"UIButton"];
  [location[0] validateClass:@"_TtCO5UIKit14IntelligenceUI15PromptEntryView" hasSwiftField:@"textView" withSwiftType:"UITextView"];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = IntelligenceUIPromptEntryViewAccessibility;
  [(IntelligenceUIPromptEntryViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v8 = 0;
  objc_opt_class();
  v2 = [(IntelligenceUIPromptEntryViewAccessibility *)v12 safeSwiftValueForKey:@"placeholderLabel"];
  v7 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v2);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9 = v6;
  [v6 setIsAccessibilityElement:0];
  v5 = [(IntelligenceUIPromptEntryViewAccessibility *)v12 safeSwiftValueForKey:@"leadingButton"];
  [v5 _accessibilitySetSortPriority:1000];
  v4 = [(IntelligenceUIPromptEntryViewAccessibility *)v12 safeSwiftValueForKey:@"textView"];
  [v4 _accessibilitySetSortPriority:999];
  v3 = [(IntelligenceUIPromptEntryViewAccessibility *)v12 safeSwiftValueForKey:@"trailingButton"];
  [v3 _accessibilitySetSortPriority:998];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v9, 0);
}

@end
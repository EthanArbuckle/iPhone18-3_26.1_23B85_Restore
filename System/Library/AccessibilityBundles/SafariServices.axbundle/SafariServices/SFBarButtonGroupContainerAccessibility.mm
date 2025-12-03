@interface SFBarButtonGroupContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFBarButtonGroupContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFBarButtonGroupContainer" hasInstanceMethod:@"buttonIdentifiers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SFBarButtonGroupContainer" hasInstanceVariable:@"barRegistration" withType:"?"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SFBarButtonGroupContainerAccessibility;
  [(SFBarButtonGroupContainerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFBarButtonGroupContainerAccessibility *)self safeValueForKey:@"barRegistration"];
  [v3 _accessibilityLoadAccessibilityInformation];

  v4 = [(SFBarButtonGroupContainerAccessibility *)self safeDictionaryForKey:@"buttonIdentifiers"];
  [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_0];
}

void __84__SFBarButtonGroupContainerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 accessibilityLabel];
  [v4 setAccessibilityLabel:v5];
}

@end
@interface PromptViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)subviewsForStackViewElement;
@end

@implementation PromptViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"buttonStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"infoProgressIndicatorView" withFullSignature:{"@", 0}];
}

- (id)subviewsForStackViewElement
{
  objc_opt_class();
  v3 = [(PromptViewAccessibility *)self safeValueForKey:@"buttonStackView"];
  v4 = __UIAccessibilityCastAsClass();

  array = [MEMORY[0x29EDB8DE8] array];
  v6 = [(PromptViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [array axSafelyAddObject:v6];

  v7 = [(PromptViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  [array axSafelyAddObject:v7];

  v8 = [(PromptViewAccessibility *)self safeValueForKey:@"infoProgressIndicatorView"];
  [array axSafelyAddObject:v8];

  arrangedSubviews = [v4 arrangedSubviews];
  [array axSafelyAddObjectsFromArray:arrangedSubviews];

  return array;
}

@end
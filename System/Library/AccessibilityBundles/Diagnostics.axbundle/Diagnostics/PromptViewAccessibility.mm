@interface PromptViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)subviewsForStackViewElement;
@end

@implementation PromptViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"buttonStackView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Diagnostics.PromptView" hasInstanceMethod:@"infoProgressIndicatorView" withFullSignature:{"@", 0}];
}

- (id)subviewsForStackViewElement
{
  objc_opt_class();
  v3 = [(PromptViewAccessibility *)self safeValueForKey:@"buttonStackView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [(PromptViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v5 axSafelyAddObject:v6];

  v7 = [(PromptViewAccessibility *)self safeValueForKey:@"subtitleLabel"];
  [v5 axSafelyAddObject:v7];

  v8 = [(PromptViewAccessibility *)self safeValueForKey:@"infoProgressIndicatorView"];
  [v5 axSafelyAddObject:v8];

  v9 = [v4 arrangedSubviews];
  [v5 axSafelyAddObjectsFromArray:v9];

  return v5;
}

@end
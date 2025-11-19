@interface SKUIReviewInAppRatingButtonViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation SKUIReviewInAppRatingButtonViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIReviewInAppRatingButtonViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIReviewInAppRatingButtonViewController" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SKUIReviewInAppRatingButtonViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SKUIReviewInAppRatingButtonViewController" hasInstanceMethod:@"setEnabled:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = SKUIReviewInAppRatingButtonViewControllerAccessibility;
  [(SKUIReviewInAppRatingButtonViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v7 = 0;
  objc_opt_class();
  v3 = [(SKUIReviewInAppRatingButtonViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityTraits];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __100__SKUIReviewInAppRatingButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F304450;
  v6[4] = self;
  v6[5] = v5;
  [v4 _setAccessibilityTraitsBlock:v6];
}

uint64_t __100__SKUIReviewInAppRatingButtonViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F70] | *(a1 + 40);
  v2 = [*(a1 + 32) safeBoolForKey:@"isEnabled"];
  v3 = *MEMORY[0x29EDC7FA8];
  if (v2)
  {
    v3 = 0;
  }

  return v1 | v3;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SKUIReviewInAppRatingButtonViewControllerAccessibility;
  [(SKUIReviewInAppRatingButtonViewControllerAccessibility *)&v3 viewDidLoad];
  [(SKUIReviewInAppRatingButtonViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
@interface PKDiscoveryCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityScrollToVisible;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_dismissButtonPressed;
@end

@implementation PKDiscoveryCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_headingLabel" withType:"UILabel"];
  [v3 validateClass:@"PKContinuousButton"];
  [v3 validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
  [v3 validateClass:@"PKDiscoveryCallToActionFooterView"];
  [v3 validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_ctaFooterView" withType:"PKDiscoveryCallToActionFooterView"];
  [v3 validateClass:@"PKDiscoveryCardView" hasInstanceMethod:@"_dismissButtonPressed" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryCardViewAccessibility;
  [(PKDiscoveryCardViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKDiscoveryCardViewAccessibility *)self safeValueForKey:@"_dismissButton"];
  v4 = accessibilityLocalizedString(@"dismiss.button");
  [v3 setAccessibilityLabel:v4];
}

- (id)accessibilityLabel
{
  v3 = [(PKDiscoveryCardViewAccessibility *)self safeValueForKey:@"_headingLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PKDiscoveryCardViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PKDiscoveryCardViewAccessibility *)self safeUIViewForKey:@"_dismissButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(PKDiscoveryCardViewAccessibility *)self safeUIViewForKey:@"_ctaFooterView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (BOOL)_accessibilityScrollToVisible
{
  v3 = [(PKDiscoveryCardViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Pkdiscoverygal.isa)];
  v14 = 0;
  objc_opt_class();
  v4 = [(PKDiscoveryCardViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v5 = __UIAccessibilityCastAsClass();

  if (v5)
  {
    [(PKDiscoveryCardViewAccessibility *)self frame];
    v7 = v6;
    [v5 contentOffset];
    if (v8 <= 0.0 || v8 >= v7 || v3 == 0)
    {
      v13.receiver = self;
      v13.super_class = PKDiscoveryCardViewAccessibility;
      v11 = [(PKDiscoveryCardViewAccessibility *)&v13 _accessibilityScrollToVisible];
    }

    else
    {
      [v5 setContentOffset:0 animated:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_dismissButtonPressed
{
  v2.receiver = self;
  v2.super_class = PKDiscoveryCardViewAccessibility;
  [(PKDiscoveryCardViewAccessibility *)&v2 _dismissButtonPressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
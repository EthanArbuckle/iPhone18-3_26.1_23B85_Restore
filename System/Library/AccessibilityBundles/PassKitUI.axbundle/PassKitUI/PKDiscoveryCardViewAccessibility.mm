@interface PKDiscoveryCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToVisible;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_dismissButtonPressed;
@end

@implementation PKDiscoveryCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_headingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKContinuousButton"];
  [validationsCopy validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
  [validationsCopy validateClass:@"PKDiscoveryCallToActionFooterView"];
  [validationsCopy validateClass:@"PKDiscoveryCardView" hasInstanceVariable:@"_ctaFooterView" withType:"PKDiscoveryCallToActionFooterView"];
  [validationsCopy validateClass:@"PKDiscoveryCardView" hasInstanceMethod:@"_dismissButtonPressed" withFullSignature:{"v", 0}];
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
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PKDiscoveryCardViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
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
      _accessibilityScrollToVisible = [(PKDiscoveryCardViewAccessibility *)&v13 _accessibilityScrollToVisible];
    }

    else
    {
      [v5 setContentOffset:0 animated:{*MEMORY[0x29EDB90B8], *(MEMORY[0x29EDB90B8] + 8)}];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
      _accessibilityScrollToVisible = 1;
    }
  }

  else
  {
    _accessibilityScrollToVisible = 0;
  }

  return _accessibilityScrollToVisible;
}

- (void)_dismissButtonPressed
{
  v2.receiver = self;
  v2.super_class = PKDiscoveryCardViewAccessibility;
  [(PKDiscoveryCardViewAccessibility *)&v2 _dismissButtonPressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end
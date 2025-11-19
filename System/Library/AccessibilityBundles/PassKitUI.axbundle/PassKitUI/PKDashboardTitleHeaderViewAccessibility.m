@interface PKDashboardTitleHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createSubviews;
- (void)didMoveToWindow;
@end

@implementation PKDashboardTitleHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKDashboardTitleHeaderView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKDashboardTitleHeaderView" hasInstanceMethod:@"createSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PKDashboardTitleHeaderView" hasInstanceMethod:@"action" withFullSignature:{"@?", 0}];
  [v3 validateClass:@"PKDashboardTitleHeaderView" hasInstanceVariable:@"_actionButton" withType:"UIButton"];
}

- (id)accessibilityLabel
{
  v2 = [(PKDashboardTitleHeaderViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKDashboardTitleHeaderViewAccessibility;
  [(PKDashboardTitleHeaderViewAccessibility *)&v3 didMoveToWindow];
  [(PKDashboardTitleHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)createSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardTitleHeaderViewAccessibility;
  [(PKDashboardTitleHeaderViewAccessibility *)&v3 createSubviews];
  [(PKDashboardTitleHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = PKDashboardTitleHeaderViewAccessibility;
  [(PKDashboardTitleHeaderViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PKDashboardTitleHeaderViewAccessibility *)self safeUIViewForKey:@"_actionButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __85__PKDashboardTitleHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F2E1D60;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  v5 = v4;
  v7 = v5;
  [v5 _setIsAccessibilityElementBlock:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

BOOL __85__PKDashboardTitleHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if ([WeakRetained _accessibilityViewIsVisible])
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = [v3 safeValueForKey:@"_action"];
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v6 = [a1[4] menu];
      v5 = v6 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PKDashboardTitleHeaderViewAccessibility *)self safeUIViewForKey:@"_actionButton"];
  v4 = [v3 isAccessibilityElement];

  if (v4)
  {
    v5 = MEMORY[0x29EDB8D80];
    v6 = [(PKDashboardTitleHeaderViewAccessibility *)self safeValueForKey:@"_actionButton"];
    v7 = [v5 axArrayByIgnoringNilElementsWithCount:{1, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
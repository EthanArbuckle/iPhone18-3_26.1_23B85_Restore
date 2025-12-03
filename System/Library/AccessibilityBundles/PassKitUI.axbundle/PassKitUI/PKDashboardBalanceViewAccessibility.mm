@interface PKDashboardBalanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_buttonPressed:(id)pressed;
- (void)createSubviews;
- (void)didMoveToWindow;
@end

@implementation PKDashboardBalanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceMethod:@"createSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceMethod:@"_buttonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceVariable:@"_actionButton" withType:"PKContinuousButton"];
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceVariable:@"_detailLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKDashboardBalanceView" hasInstanceVariable:@"_availableCreditLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKDashboardBalanceViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PKDashboardBalanceViewAccessibility *)self safeUIViewForKey:@"_detailLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(PKDashboardBalanceViewAccessibility *)self safeUIViewForKey:@"_availableCreditLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKDashboardBalanceViewAccessibility;
  [(PKDashboardBalanceViewAccessibility *)&v3 didMoveToWindow];
  [(PKDashboardBalanceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)createSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardBalanceViewAccessibility;
  [(PKDashboardBalanceViewAccessibility *)&v3 createSubviews];
  [(PKDashboardBalanceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = PKDashboardBalanceViewAccessibility;
  [(PKDashboardBalanceViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKDashboardBalanceViewAccessibility *)self safeUIViewForKey:@"_actionButton"];
  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __81__PKDashboardBalanceViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2E1D18;
  objc_copyWeak(&v5, &location);
  [v3 _setIsAccessibilityElementBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __81__PKDashboardBalanceViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _accessibilityViewIsVisible];

  return v2;
}

- (void)_buttonPressed:(id)pressed
{
  v3.receiver = self;
  v3.super_class = PKDashboardBalanceViewAccessibility;
  [(PKDashboardBalanceViewAccessibility *)&v3 _buttonPressed:pressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PKDashboardBalanceViewAccessibility *)self safeUIViewForKey:@"_actionButton"];
  isAccessibilityElement = [v3 isAccessibilityElement];

  if (isAccessibilityElement)
  {
    v5 = MEMORY[0x29EDB8D80];
    v6 = [(PKDashboardBalanceViewAccessibility *)self safeValueForKey:@"_actionButton"];
    v7 = [v5 axArrayByIgnoringNilElementsWithCount:{1, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
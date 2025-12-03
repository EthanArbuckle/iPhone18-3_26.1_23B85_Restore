@interface PKSpendingSingleSummaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureFooter;
- (void)viewDidLoad;
@end

@implementation PKSpendingSingleSummaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSpendingSingleSummaryViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKSpendingSingleSummaryViewController" isKindOfClass:@"UICollectionViewController"];
  [validationsCopy validateClass:@"PKSpendingSingleSummaryViewController" hasInstanceMethod:@"_configureFooter" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKSpendingSingleSummaryViewController" hasInstanceVariable:@"_currentFooter" withType:"PKDashboardViewControllerFooterView"];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceVariable:@"_payButtonImage" withType:"UIImage"];
  [validationsCopy validateClass:@"PKDashboardViewControllerFooterView" hasInstanceVariable:@"_payButton" withType:"PKContinuousButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PKSpendingSingleSummaryViewControllerAccessibility;
  [(PKSpendingSingleSummaryViewControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKSpendingSingleSummaryViewControllerAccessibility *)self safeUIViewForKey:@"collectionView"];
  [v3 _setAccessibilityFauxCollectionViewCellsDisabled:1];

  v4 = [(PKSpendingSingleSummaryViewControllerAccessibility *)self safeValueForKey:@"_currentFooter"];
  v5 = [v4 safeValueForKey:@"_payButtonImage"];

  if (v5)
  {
    v6 = accessibilityLocalizedString(@"completed.button");
    v7 = [(PKSpendingSingleSummaryViewControllerAccessibility *)self safeValueForKey:@"_currentFooter"];
    v8 = [v7 safeUIViewForKey:@"_payButton"];
    [v8 setAccessibilityLabel:v6];
  }
}

- (void)_configureFooter
{
  v3.receiver = self;
  v3.super_class = PKSpendingSingleSummaryViewControllerAccessibility;
  [(PKSpendingSingleSummaryViewControllerAccessibility *)&v3 _configureFooter];
  [(PKSpendingSingleSummaryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKSpendingSingleSummaryViewControllerAccessibility;
  [(PKSpendingSingleSummaryViewControllerAccessibility *)&v3 viewDidLoad];
  [(PKSpendingSingleSummaryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end
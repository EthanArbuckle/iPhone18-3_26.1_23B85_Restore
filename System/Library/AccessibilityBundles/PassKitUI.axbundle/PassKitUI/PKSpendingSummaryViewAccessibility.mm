@interface PKSpendingSummaryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation PKSpendingSummaryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSpendingSummaryView" hasInstanceVariable:@"_chartView" withType:"PKSpendingSummaryChartView"];
  [validationsCopy validateClass:@"PKSpendingSummaryView" hasInstanceVariable:@"_arrowImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PKSpendingSummaryView" hasInstanceVariable:@"_spendingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKSpendingSummaryView" hasInstanceVariable:@"_totalAmount" withType:"UILabel"];
  [validationsCopy validateClass:@"PKSpendingSummaryView" hasInstanceVariable:@"_upArrow" withType:"UIImage"];
}

- (id)accessibilityElements
{
  v3 = [(PKSpendingSummaryViewAccessibility *)self _accessibilityValueForKey:@"axElement"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [(PKSpendingSummaryViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"axElement"];
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __59__PKSpendingSummaryViewAccessibility_accessibilityElements__block_invoke;
    v10[3] = &unk_29F2E1FB0;
    v10[4] = self;
    objc_copyWeak(&v11, &location);
    [v3 _setAccessibilityLabelBlock:v10];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __59__PKSpendingSummaryViewAccessibility_accessibilityElements__block_invoke_2;
    v8[3] = &unk_29F2E1ED8;
    objc_copyWeak(&v9, &location);
    [v3 _setAccessibilityFrameBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  v4 = MEMORY[0x29EDB8D80];
  v5 = [(PKSpendingSummaryViewAccessibility *)self safeUIViewForKey:@"_chartView"];
  v6 = [v4 axArrayByIgnoringNilElementsWithCount:{2, v3, v5}];

  return v6;
}

id __59__PKSpendingSummaryViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeUIViewForKey:@"_upOrDownImage"];
  v3 = [v2 _accessibilityViewIsVisible];

  if (v3)
  {
    objc_opt_class();
    v4 = [*(a1 + 32) safeUIViewForKey:@"_arrowImageView"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 image];
    [*(a1 + 32) valueForKey:@"_upArrow"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained safeUIViewForKey:@"_spendingLabel"];
  v9 = [v8 accessibilityLabel];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 safeUIViewForKey:@"_totalAmount"];
  v14 = [v11 accessibilityLabel];
  v12 = __UIAXStringForVariables();

  return v12;
}

double __59__PKSpendingSummaryViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeUIViewForKey:@"_spendingLabel"];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = objc_loadWeakRetained((a1 + 32));
  v13 = [v12 safeUIViewForKey:@"_totalAmount"];
  [v13 accessibilityFrame];
  v21.origin.x = v14;
  v21.origin.y = v15;
  v21.size.width = v16;
  v21.size.height = v17;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  *&v18 = CGRectUnion(v20, v21);

  return v18;
}

@end
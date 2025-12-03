@interface PKApplyOfferCreditCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PKApplyOfferCreditCardViewAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKApplyOfferCreditCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_creditLimitTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_creditLimitLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_aprForPurchaseTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_aprForPurchaseLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_feeTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_feeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKApplyOfferCreditCardView" hasInstanceVariable:@"_bodyLabel" withType:"UILabel"];
}

- (PKApplyOfferCreditCardViewAccessibility)init
{
  v4.receiver = self;
  v4.super_class = PKApplyOfferCreditCardViewAccessibility;
  v2 = [(PKApplyOfferCreditCardViewAccessibility *)&v4 init];
  [(PKApplyOfferCreditCardViewAccessibility *)v2 _accessibilityLoadAccessibilityInformation];

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v31.receiver = self;
  v31.super_class = PKApplyOfferCreditCardViewAccessibility;
  [(PKApplyOfferCreditCardViewAccessibility *)&v31 _accessibilityLoadAccessibilityInformation];
  v3 = objc_alloc(MEMORY[0x29EDC7318]);
  v4 = MEMORY[0x29EDB8D80];
  v5 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_creditLimitTitleLabel"];
  v6 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_creditLimitLabel"];
  v7 = [v4 axArrayByIgnoringNilElementsWithCount:{2, v5, v6}];
  v8 = [v3 initWithAccessibilityContainer:self representedElements:v7];

  v9 = objc_alloc(MEMORY[0x29EDC7318]);
  v10 = MEMORY[0x29EDB8D80];
  v11 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_aprForPurchaseTitleLabel"];
  v12 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_aprForPurchaseLabel"];
  v13 = [v10 axArrayByIgnoringNilElementsWithCount:{2, v11, v12}];
  v14 = [v9 initWithAccessibilityContainer:self representedElements:v13];

  v15 = objc_alloc(MEMORY[0x29EDC7318]);
  v16 = MEMORY[0x29EDB8D80];
  v17 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_feeTitleLabel"];
  v18 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_feeLabel"];
  v19 = [v16 axArrayByIgnoringNilElementsWithCount:{2, v17, v18}];
  v20 = [v15 initWithAccessibilityContainer:self representedElements:v19];

  v21 = [(PKApplyOfferCreditCardViewAccessibility *)self safeUIViewForKey:@"_bodyLabel"];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __85__PKApplyOfferCreditCardViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v26[3] = &unk_29F2E1C00;
  v27 = v8;
  v28 = v14;
  v29 = v20;
  v30 = v21;
  v22 = v21;
  v23 = v20;
  v24 = v14;
  v25 = v8;
  [(PKApplyOfferCreditCardViewAccessibility *)self _setAccessibilityElementsBlock:v26];
}

@end
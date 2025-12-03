@interface PKAdjustableSingleCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKAdjustableSingleCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_titleView" withType:"UILabel"];
  [validationsCopy validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_detailView" withType:"UILabel"];
  [validationsCopy validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_subDetailView" withType:"UILabel"];
  [validationsCopy validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_actionButton" withType:"PKContinuousButton"];
  [validationsCopy validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_disclosureView" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v2 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_titleView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_detailView"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_subDetailView"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, accessibilityLabel, accessibilityLabel2}];
  v8 = AXLabelForElements();

  return v8;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PKAdjustableSingleCellViewAccessibility *)self safeValueForKey:@"_actionButton"];
  v4 = [(PKAdjustableSingleCellViewAccessibility *)self safeValueForKey:@"_disclosureView"];
  v5 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];

  return v5;
}

@end
@interface PKAdjustableSingleCellViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKAdjustableSingleCellViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_titleView" withType:"UILabel"];
  [v3 validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_detailView" withType:"UILabel"];
  [v3 validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_subDetailView" withType:"UILabel"];
  [v3 validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_actionButton" withType:"PKContinuousButton"];
  [v3 validateClass:@"PKAdjustableSingleCellView" hasInstanceVariable:@"_disclosureView" withType:"UIImageView"];
}

- (id)accessibilityLabel
{
  v2 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_titleView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_detailView"];
  v4 = [v3 accessibilityLabel];

  v5 = [(PKAdjustableSingleCellViewAccessibility *)self safeUIViewForKey:@"_subDetailView"];
  v6 = [v5 accessibilityLabel];

  v7 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v4, v6}];
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
@interface PKPassPosterEventTicketFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKPassPosterEventTicketFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_logoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_primaryFieldLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_dateLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_timeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_secnamLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPosterEventTicketFaceView" hasInstanceVariable:@"_venueLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKPassPosterEventTicketFaceViewAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_logoLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_primaryFieldLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_dateLabel"];
  accessibilityLabel4 = [v9 accessibilityLabel];

  v11 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_timeLabel"];
  accessibilityLabel5 = [v11 accessibilityLabel];

  v13 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_secnamLabel"];
  accessibilityLabel6 = [v13 accessibilityLabel];

  v15 = [(PKPassPosterEventTicketFaceViewAccessibility *)self safeUIViewForKey:@"_venueLabel"];
  accessibilityLabel7 = [v15 accessibilityLabel];

  v17 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{7, accessibilityLabel, accessibilityLabel2, accessibilityLabel3, accessibilityLabel4, accessibilityLabel5, accessibilityLabel6, accessibilityLabel7}];
  v18 = AXLabelForElements();

  return v18;
}

BOOL __66__PKPassPosterEventTicketFaceViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessibilityIdentifier];
    v4 = [v3 caseInsensitiveCompare:@"LogoImage"] == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
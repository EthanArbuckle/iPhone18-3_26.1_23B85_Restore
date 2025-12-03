@interface HULinkedApplicationTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation HULinkedApplicationTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HULinkedApplicationTableViewCell" hasInstanceMethod:@"linkedApplicationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationView" hasInstanceMethod:@"publisherLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationView" hasInstanceMethod:@"ratingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationRatingView" hasInstanceMethod:@"starViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationRatingView" hasInstanceMethod:@"rating" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"HULinkedApplicationView" hasInstanceMethod:@"priceLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(HULinkedApplicationTableViewCellAccessibility *)self safeValueForKey:@"linkedApplicationView"];
  v3 = [v2 safeValueForKey:@"nameLabel"];
  v4 = [v2 safeValueForKey:@"publisherLabel"];
  v5 = [v2 safeValueForKey:@"ratingView"];
  [v5 safeFloatForKey:@"rating"];
  v7 = v6;
  v8 = [v2 safeValueForKey:@"priceLabel"];
  v9 = [v5 safeValueForKey:@"starViews"];
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v11 = [v10 count];

  v12 = MEMORY[0x29EDBA0F8];
  v13 = accessibilityHomeUILocalizedString(@"manufacturer.app.store.star.rating");
  v14 = [v12 localizedStringWithFormat:v13, v7, v11];

  v15 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v3, v4, v14, v8}];
  v16 = AXLabelForElements();

  return v16;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HULinkedApplicationTableViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HULinkedApplicationTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end
@interface MetadataRibbonStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppStore.MetadataRibbonStarRatingView" hasInstanceMethod:@"accessibilityStarRatingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppStore.MetadataRibbonStarRatingView" hasInstanceMethod:@"accessibilityRatingCountLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MetadataRibbonStarRatingViewAccessibility *)self safeValueForKey:@"accessibilityRatingCountLabel"];
  v4 = [(MetadataRibbonStarRatingViewAccessibility *)self safeValueForKey:@"accessibilityStarRatingView"];
  accessibilityLabel = [v3 accessibilityLabel];

  if (accessibilityLabel)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityAppStoreLocalizedString(@"user.ratings");
    accessibilityLabel2 = [v3 accessibilityLabel];
    v9 = [v6 stringWithFormat:v7, accessibilityLabel2];

    v10 = __UIAXStringForVariables();
  }

  else
  {
    v10 = &stru_2A20F95B0;
  }

  return v10;
}

@end
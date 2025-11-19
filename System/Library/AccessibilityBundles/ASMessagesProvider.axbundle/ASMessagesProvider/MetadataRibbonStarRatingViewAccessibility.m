@interface MetadataRibbonStarRatingViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonStarRatingViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(MetadataRibbonStarRatingViewAccessibility *)self safeValueForKey:@"accessibilityRatingCountLabel"];
  v4 = [(MetadataRibbonStarRatingViewAccessibility *)self safeValueForKey:@"accessibilityStarRatingView"];
  v5 = [v3 accessibilityLabel];

  if (v5)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityAppStoreLocalizedString(@"user.ratings");
    v8 = [v3 accessibilityLabel];
    v9 = [v6 stringWithFormat:v7, v8];

    v10 = __UIAXStringForVariables();
  }

  else
  {
    v10 = &stru_2A20CE038;
  }

  return v10;
}

@end
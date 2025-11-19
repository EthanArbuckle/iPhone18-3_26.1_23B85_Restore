@interface MetadataRibbonStarRatingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MetadataRibbonStarRatingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.MetadataRibbonStarRatingView" hasInstanceMethod:@"accessibilityStarRatingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.MetadataRibbonStarRatingView" hasInstanceMethod:@"accessibilityRatingCountLabel" withFullSignature:{"@", 0}];
}

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
    v10 = &stru_2A20F95B0;
  }

  return v10;
}

@end
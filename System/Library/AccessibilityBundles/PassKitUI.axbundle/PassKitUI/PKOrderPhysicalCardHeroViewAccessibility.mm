@interface PKOrderPhysicalCardHeroViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKOrderPhysicalCardHeroViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKOrderPhysicalCardHeroView" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPhysicalCardArtworkView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(PKOrderPhysicalCardHeroViewAccessibility *)self safeValueForKey:@"artworkView"];
  v3 = [v2 safeValueForKey:@"_nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"apple.card.for.name");
    v7 = [v5 stringWithFormat:v6, accessibilityLabel];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"apple.card");
  }

  return v7;
}

@end
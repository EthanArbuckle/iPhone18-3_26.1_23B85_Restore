@interface PKOrderPhysicalCardHeroViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKOrderPhysicalCardHeroViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKOrderPhysicalCardHeroView" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPhysicalCardArtworkView" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(PKOrderPhysicalCardHeroViewAccessibility *)self safeValueForKey:@"artworkView"];
  v3 = [v2 safeValueForKey:@"_nameLabel"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"apple.card.for.name");
    v7 = [v5 stringWithFormat:v6, v4];
  }

  else
  {
    v7 = accessibilityLocalizedString(@"apple.card");
  }

  return v7;
}

@end
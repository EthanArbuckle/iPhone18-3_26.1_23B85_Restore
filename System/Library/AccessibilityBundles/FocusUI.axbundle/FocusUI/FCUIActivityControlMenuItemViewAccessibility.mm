@interface FCUIActivityControlMenuItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation FCUIActivityControlMenuItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FCUIActivityControlMenuItemView" hasInstanceVariable:@"_activationDescriptionLabel" withType:"UILabel"];
  [v3 validateClass:@"FCUIActivityControlMenuItemView" hasInstanceVariable:@"_activationDetailsLabel" withType:"UILabel"];
  [v3 validateClass:@"FCUIActivityControlMenuItemView" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(FCUIActivityControlMenuItemViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end
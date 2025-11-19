@interface HUSceneTileCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation HUSceneTileCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUSceneTileCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"HUSceneTileCell" isKindOfClass:@"HUTileCell"];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = HUSceneTileCellAccessibility;
  v2 = [(HUSceneTileCellAccessibility *)&v9 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 configurationState];

  objc_opt_class();
  v5 = [v4 customStateForKey:@"com.apple.Home.isActive"];
  v6 = __UIAccessibilityCastAsClass();

  if ([v6 BOOLValue])
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v2;
}

@end
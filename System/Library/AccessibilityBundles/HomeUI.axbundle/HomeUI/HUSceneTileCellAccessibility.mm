@interface HUSceneTileCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation HUSceneTileCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUSceneTileCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"HUSceneTileCell" isKindOfClass:@"HUTileCell"];
}

- (unint64_t)accessibilityTraits
{
  v9.receiver = self;
  v9.super_class = HUSceneTileCellAccessibility;
  accessibilityTraits = [(HUSceneTileCellAccessibility *)&v9 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  configurationState = [v3 configurationState];

  objc_opt_class();
  v5 = [configurationState customStateForKey:@"com.apple.Home.isActive"];
  v6 = __UIAccessibilityCastAsClass();

  if ([v6 BOOLValue])
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  return v7 | accessibilityTraits;
}

@end
@interface SCATProfileCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SCATProfileCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v22.receiver = self;
  v22.super_class = SCATProfileCell;
  specifierCopy = specifier;
  [(SCATProfileCell *)&v22 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"ProfileKey"];

  uuid = [v5 uuid];
  v7 = +[AXSettings sharedInstance];
  switchControlSelectedProfile = [v7 switchControlSelectedProfile];
  uuid2 = [switchControlSelectedProfile uuid];
  v10 = [uuid isEqual:uuid2];

  v11 = AXSwitchControlLocalizedString();
  if (v10)
  {
    v12 = +[AXSettings sharedInstance];
    assistiveTouchSwitches = [v12 assistiveTouchSwitches];
    v14 = [assistiveTouchSwitches count];
    v15 = +[AXSettings sharedInstance];
    switchControlRecipes = [v15 switchControlRecipes];
    v17 = [switchControlRecipes count];
    v18 = [NSString localizedStringWithFormat:v11, v14, v17, v22.receiver, v22.super_class];
  }

  else
  {
    switchCount = [v5 switchCount];
    recipeCount = [v5 recipeCount];
    v18 = [NSString localizedStringWithFormat:v11, switchCount, recipeCount, v22.receiver, v22.super_class];
  }

  detailTextLabel = [(SCATProfileCell *)self detailTextLabel];
  [detailTextLabel setText:v18];
}

@end
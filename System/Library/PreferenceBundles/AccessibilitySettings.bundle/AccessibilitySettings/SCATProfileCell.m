@interface SCATProfileCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SCATProfileCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v22.receiver = self;
  v22.super_class = SCATProfileCell;
  v4 = a3;
  [(SCATProfileCell *)&v22 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:@"ProfileKey"];

  v6 = [v5 uuid];
  v7 = +[AXSettings sharedInstance];
  v8 = [v7 switchControlSelectedProfile];
  v9 = [v8 uuid];
  v10 = [v6 isEqual:v9];

  v11 = AXSwitchControlLocalizedString();
  if (v10)
  {
    v12 = +[AXSettings sharedInstance];
    v13 = [v12 assistiveTouchSwitches];
    v14 = [v13 count];
    v15 = +[AXSettings sharedInstance];
    v16 = [v15 switchControlRecipes];
    v17 = [v16 count];
    v18 = [NSString localizedStringWithFormat:v11, v14, v17, v22.receiver, v22.super_class];
  }

  else
  {
    v19 = [v5 switchCount];
    v20 = [v5 recipeCount];
    v18 = [NSString localizedStringWithFormat:v11, v19, v20, v22.receiver, v22.super_class];
  }

  v21 = [(SCATProfileCell *)self detailTextLabel];
  [v21 setText:v18];
}

@end
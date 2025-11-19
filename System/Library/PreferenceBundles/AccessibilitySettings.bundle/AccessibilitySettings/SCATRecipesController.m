@interface SCATRecipesController
- (id)_launchToRecipeSummary:(id)a3;
- (id)setName:(id)a3 forItem:(id)a4;
- (id)specifiers;
- (void)didSaveItems;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATRecipesController

- (id)setName:(id)a3 forItem:(id)a4
{
  v5 = a4;
  [v5 setName:a3];

  return v5;
}

- (void)didSaveItems
{
  v8.receiver = self;
  v8.super_class = SCATRecipesController;
  [(AXNamedItemsListController *)&v8 didSaveItems];
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlRecipes];
  v5 = [v4 count];

  if (!v5)
  {
    v6 = [(SCATRecipesController *)self launchToRecipeSpecifiers];

    if (v6)
    {
      v7 = [(SCATRecipesController *)self launchToRecipeSpecifiers];
      [(SCATRecipesController *)self removeContiguousSpecifiers:v7 animated:1];
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXNamedItemsListController *)self namedItemSpecifiers];
    v6 = [v5 mutableCopy];

    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    v9 = AXParameterizedLocalizedString();
    [v8 setProperty:v9 forKey:PSFooterTextGroupKey];

    [v6 insertObject:v8 atIndex:0];
    v10 = AXParameterizedLocalizedString();
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v11 setIdentifier:@"CreateNewRecipe"];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v11 setProperty:@"CreateNewRecipe" forKey:PSIDKey];
    [v6 addObject:v11];
    v12 = +[AXSettings sharedInstance];
    v13 = [v12 switchControlRecipes];
    v14 = [v13 count];

    if (v14)
    {
      v15 = +[PSSpecifier emptyGroupSpecifier];
      v16 = AXParameterizedLocalizedString();
      v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:"_launchToRecipeSummary:" detail:objc_opt_class() cell:2 edit:0];

      [v17 setIdentifier:@"LaunchRecipe"];
      v22[0] = v15;
      v22[1] = v17;
      v18 = [NSArray arrayWithObjects:v22 count:2];
      [(SCATRecipesController *)self setLaunchToRecipeSpecifiers:v18];

      v19 = [(SCATRecipesController *)self launchToRecipeSpecifiers];
      [v6 addObjectsFromArray:v19];
    }

    else
    {
      [(SCATRecipesController *)self setLaunchToRecipeSpecifiers:0];
    }

    v20 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v6;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATRecipesController;
  [(AXNamedItemsListController *)&v4 viewWillAppear:a3];
  [(SCATRecipesController *)self reloadSpecifiers];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATRecipesController *)self specifierForIndexPath:v7];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"CreateNewRecipe"];

  if ([(AXNamedItemsListController *)self isNamedItemSpecifier:v8]|| v10)
  {
    v11 = objc_alloc_init(SCATRecipeEditController);
    if (v10)
    {
      v12 = objc_alloc_init(AXSwitchRecipe);
    }

    else
    {
      v12 = [(AXNamedItemsListController *)self namedItemForSpecifier:v8];
    }

    v13 = v12;
    [(SCATRecipeEditController *)v11 setRecipe:v12];

    v14 = [(SCATRecipeEditController *)v11 title];
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:-1 edit:0];

    [(SCATRecipesController *)self showController:v11 withSpecifier:v15];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = SCATRecipesController;
    [(AXNamedItemsListController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (id)_launchToRecipeSummary:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlLaunchRecipeUUID];
  if (!v4)
  {
    goto LABEL_13;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 switchControlRecipes];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
LABEL_10:

LABEL_13:
    v14 = AXParameterizedLocalizedString();
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v17;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v17 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v16 + 1) + 8 * v9);
    v11 = [v10 uuid];
    v12 = [v11 isEqual:v4];

    if (v12)
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  v13 = v10;

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = [v13 name];

LABEL_14:

  return v14;
}

@end
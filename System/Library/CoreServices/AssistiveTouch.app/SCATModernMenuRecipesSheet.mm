@interface SCATModernMenuRecipesSheet
- (SCATModernMenuRecipesSheet)initWithMenu:(id)menu;
- (id)makeMenuItemsIfNeeded;
- (void)menuItemWasActivated:(id)activated;
@end

@implementation SCATModernMenuRecipesSheet

- (SCATModernMenuRecipesSheet)initWithMenu:(id)menu
{
  v7.receiver = self;
  v7.super_class = SCATModernMenuRecipesSheet;
  v3 = [(SCATModernMenuSheet *)&v7 initWithMenu:menu];
  if (v3)
  {
    v4 = +[AXSettings sharedInstance];
    switchControlRecipes = [v4 switchControlRecipes];
    [(SCATModernMenuRecipesSheet *)v3 setRecipes:switchControlRecipes];
  }

  return v3;
}

- (id)makeMenuItemsIfNeeded
{
  recipes = [(SCATModernMenuRecipesSheet *)self recipes];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [recipes count] + 1);

  v5 = +[NSMutableSet set];
  recipes2 = [(SCATModernMenuRecipesSheet *)self recipes];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007149C;
  v18[3] = &unk_1001D58F0;
  v18[4] = self;
  v7 = v5;
  v19 = v7;
  v8 = v4;
  v20 = v8;
  [recipes2 enumerateObjectsUsingBlock:v18];

  menu = [(SCATModernMenuSheet *)self menu];
  screenPoint = [menu screenPoint];

  if (screenPoint)
  {
    v11 = sub_100042B24(@"CREATE_RECIPE_FROM_POINT");
    v12 = [SCATModernMenuItem itemWithIdentifier:@"create_recipe_from_point" delegate:self title:v11 imageName:@"SCATIcon_recipe_createFromTap" activateBehavior:2];

    [v8 addObject:v12];
    v13 = sub_100042B24(@"CREATE_RECIPE_FROM_HOLD_POINT");
    v14 = [SCATModernMenuItem itemWithIdentifier:@"create_recipe_from_hold_point" delegate:self title:v13 imageName:@"SCATIcon_recipe_createFromHold" activateBehavior:2];

    [v8 addObject:v14];
  }

  v15 = v20;
  v16 = v8;

  return v8;
}

- (void)menuItemWasActivated:(id)activated
{
  activatedCopy = activated;
  identifier = [activatedCopy identifier];
  if ([identifier hasPrefix:@"recipe_"])
  {
    identifier2 = [activatedCopy identifier];
    v7 = [identifier2 substringFromIndex:{objc_msgSend(@"recipe_", "length")}];
    integerValue = [v7 integerValue];

    recipes = [(SCATModernMenuRecipesSheet *)self recipes];
    v10 = [recipes objectAtIndexedSubscript:integerValue];

    menu = [(SCATModernMenuSheet *)self menu];
    delegate = [menu delegate];
    menu2 = [(SCATModernMenuSheet *)self menu];
    [delegate menu:menu2 activateRecipe:v10];
  }

  else if (([identifier isEqualToString:@"create_recipe_from_point"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"create_recipe_from_hold_point"))
  {
    menu3 = [(SCATModernMenuSheet *)self menu];
    screenPoint = [menu3 screenPoint];

    if (!screenPoint)
    {
      _AXAssert();
    }

    menu4 = [(SCATModernMenuSheet *)self menu];
    screenPoint2 = [menu4 screenPoint];
    [screenPoint2 CGPointValue];
    v19 = v18;
    v21 = v20;
    v22 = +[SCATScannerManager sharedManager];
    scatUIContext = [v22 scatUIContext];
    [HNDScreen convertPoint:scatUIContext toView:v19, v21];
    v25 = v24;
    v27 = v26;

    LODWORD(menu4) = [identifier isEqualToString:@"create_recipe_from_hold_point"];
    v28 = +[AXSettings sharedInstance];
    v29 = v28;
    if (menu4)
    {
      v30 = [v28 createAndSaveRecipeForInterfaceOrientedHoldPoint:{v25, v27}];
    }

    else
    {
      v31 = [v28 createAndSaveRecipeForInterfaceOrientedPoint:{v25, v27}];
    }

    v32 = +[AXSettings sharedInstance];
    switchControlRecipes = [v32 switchControlRecipes];
    [(SCATModernMenuRecipesSheet *)self setRecipes:switchControlRecipes];

    v35 = _NSConcreteStackBlock;
    v36 = 3221225472;
    v37 = sub_1000719A8;
    v38 = &unk_1001D3488;
    selfCopy = self;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    v34.receiver = self;
    v34.super_class = SCATModernMenuRecipesSheet;
    [(SCATModernMenuSheet *)&v34 menuItemWasActivated:activatedCopy];
  }
}

@end
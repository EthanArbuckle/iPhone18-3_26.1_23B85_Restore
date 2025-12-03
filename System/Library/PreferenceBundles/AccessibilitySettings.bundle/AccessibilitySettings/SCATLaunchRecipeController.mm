@interface SCATLaunchRecipeController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATLaunchRecipeController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[AXSettings sharedInstance];
    switchControlRecipes = [v5 switchControlRecipes];
    [(SCATLaunchRecipeController *)self setRecipes:switchControlRecipes];

    recipes = [(SCATLaunchRecipeController *)self recipes];
    v8 = [recipes count];

    if (!v8)
    {
      _AXAssert();
    }

    v9 = [NSMutableArray alloc];
    recipes2 = [(SCATLaunchRecipeController *)self recipes];
    v11 = [v9 initWithCapacity:{objc_msgSend(recipes2, "count") + 2}];

    v12 = +[PSSpecifier emptyGroupSpecifier];
    v13 = AXParameterizedLocalizedString();
    [v12 setProperty:v13 forKey:PSFooterTextGroupKey];

    [v11 addObject:v12];
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_27A530 forKey:@"RecipeIndex"];
    [v11 addObject:v15];
    recipes3 = [(SCATLaunchRecipeController *)self recipes];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __40__SCATLaunchRecipeController_specifiers__block_invoke;
    v21[3] = &unk_257CA8;
    v21[4] = self;
    v17 = v11;
    v22 = v17;
    [recipes3 enumerateObjectsUsingBlock:v21];

    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;
    v19 = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

void __40__SCATLaunchRecipeController_specifiers__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 name];
  v7 = [PSSpecifier preferenceSpecifierNamed:v5 target:*(a1 + 32) set:0 get:0 detail:0 cell:3 edit:0];

  v6 = [NSNumber numberWithUnsignedInteger:a3];
  [v7 setProperty:v6 forKey:@"RecipeIndex"];

  [*(a1 + 40) addObject:v7];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v32.receiver = self;
  v32.super_class = SCATLaunchRecipeController;
  v7 = [(SCATLaunchRecipeController *)&v32 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = +[AXSettings sharedInstance];
  v9 = [(SCATLaunchRecipeController *)self specifierAtIndex:[(SCATLaunchRecipeController *)self indexForIndexPath:pathCopy]];
  v10 = [v9 propertyForKey:@"RecipeIndex"];
  if (v10)
  {
    switchControlLaunchRecipeUUID = [v8 switchControlLaunchRecipeUUID];
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!switchControlLaunchRecipeUUID)
      {
        v20 = &dword_0 + 1;
        goto LABEL_23;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      recipes = [(SCATLaunchRecipeController *)self recipes];
      v14 = [recipes countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v14)
      {
        v15 = v14;
        v26 = v8;
        v27 = v7;
        v16 = *v29;
        while (2)
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(recipes);
            }

            uuid = [*(*(&v28 + 1) + 8 * i) uuid];
            v19 = [uuid isEqual:switchControlLaunchRecipeUUID];

            if (v19)
            {
              v20 = 0;
              goto LABEL_17;
            }
          }

          v15 = [recipes countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }

        v20 = &dword_0 + 1;
LABEL_17:
        v8 = v26;
        v7 = v27;
      }

      else
      {
        v20 = &dword_0 + 1;
      }
    }

    else
    {
      v21 = unsignedIntegerValue;
      recipes2 = [(SCATLaunchRecipeController *)self recipes];
      recipes = [recipes2 objectAtIndexedSubscript:v21];

      if (switchControlLaunchRecipeUUID)
      {
        uuid2 = [recipes uuid];
        switchControlLaunchRecipeUUID2 = [v8 switchControlLaunchRecipeUUID];
        v20 = [uuid2 isEqual:switchControlLaunchRecipeUUID2];
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    _AXAssert();
    switchControlLaunchRecipeUUID = [v8 switchControlLaunchRecipeUUID];
    v20 = 0;
  }

LABEL_23:
  [v7 setChecked:v20];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(SCATLaunchRecipeController *)self updateTableCheckedSelection:pathCopy];
  v8 = [(SCATLaunchRecipeController *)self specifierAtIndex:[(SCATLaunchRecipeController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"RecipeIndex"];
  v10 = v9;
  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v12 = +[AXSettings sharedInstance];
    v13 = v12;
    if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setSwitchControlLaunchRecipeUUID:0];
    }

    else
    {
      recipes = [(SCATLaunchRecipeController *)self recipes];
      v15 = [recipes objectAtIndexedSubscript:unsignedIntegerValue];

      uuid = [v15 uuid];
      [v13 setSwitchControlLaunchRecipeUUID:uuid];
    }
  }

  else
  {
    v17 = v8;
    _AXAssert();
  }

  v18.receiver = self;
  v18.super_class = SCATLaunchRecipeController;
  [(SCATLaunchRecipeController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy, v17];
}

@end
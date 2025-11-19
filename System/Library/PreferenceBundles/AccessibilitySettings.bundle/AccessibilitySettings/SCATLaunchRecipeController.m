@interface SCATLaunchRecipeController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATLaunchRecipeController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 switchControlRecipes];
    [(SCATLaunchRecipeController *)self setRecipes:v6];

    v7 = [(SCATLaunchRecipeController *)self recipes];
    v8 = [v7 count];

    if (!v8)
    {
      _AXAssert();
    }

    v9 = [NSMutableArray alloc];
    v10 = [(SCATLaunchRecipeController *)self recipes];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count") + 2}];

    v12 = +[PSSpecifier emptyGroupSpecifier];
    v13 = AXParameterizedLocalizedString();
    [v12 setProperty:v13 forKey:PSFooterTextGroupKey];

    [v11 addObject:v12];
    v14 = AXParameterizedLocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v15 setProperty:&off_27A530 forKey:@"RecipeIndex"];
    [v11 addObject:v15];
    v16 = [(SCATLaunchRecipeController *)self recipes];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __40__SCATLaunchRecipeController_specifiers__block_invoke;
    v21[3] = &unk_257CA8;
    v21[4] = self;
    v17 = v11;
    v22 = v17;
    [v16 enumerateObjectsUsingBlock:v21];

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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v32.receiver = self;
  v32.super_class = SCATLaunchRecipeController;
  v7 = [(SCATLaunchRecipeController *)&v32 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = +[AXSettings sharedInstance];
  v9 = [(SCATLaunchRecipeController *)self specifierAtIndex:[(SCATLaunchRecipeController *)self indexForIndexPath:v6]];
  v10 = [v9 propertyForKey:@"RecipeIndex"];
  if (v10)
  {
    v11 = [v8 switchControlLaunchRecipeUUID];
    v12 = [v10 unsignedIntegerValue];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!v11)
      {
        v20 = &dword_0 + 1;
        goto LABEL_23;
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = [(SCATLaunchRecipeController *)self recipes];
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v28 + 1) + 8 * i) uuid];
            v19 = [v18 isEqual:v11];

            if (v19)
            {
              v20 = 0;
              goto LABEL_17;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
      v21 = v12;
      v22 = [(SCATLaunchRecipeController *)self recipes];
      v13 = [v22 objectAtIndexedSubscript:v21];

      if (v11)
      {
        v23 = [v13 uuid];
        v24 = [v8 switchControlLaunchRecipeUUID];
        v20 = [v23 isEqual:v24];
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
    v11 = [v8 switchControlLaunchRecipeUUID];
    v20 = 0;
  }

LABEL_23:
  [v7 setChecked:v20];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SCATLaunchRecipeController *)self updateTableCheckedSelection:v6];
  v8 = [(SCATLaunchRecipeController *)self specifierAtIndex:[(SCATLaunchRecipeController *)self indexForIndexPath:v6]];
  v9 = [v8 propertyForKey:@"RecipeIndex"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntegerValue];
    v12 = +[AXSettings sharedInstance];
    v13 = v12;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 setSwitchControlLaunchRecipeUUID:0];
    }

    else
    {
      v14 = [(SCATLaunchRecipeController *)self recipes];
      v15 = [v14 objectAtIndexedSubscript:v11];

      v16 = [v15 uuid];
      [v13 setSwitchControlLaunchRecipeUUID:v16];
    }
  }

  else
  {
    v17 = v8;
    _AXAssert();
  }

  v18.receiver = self;
  v18.super_class = SCATLaunchRecipeController;
  [(SCATLaunchRecipeController *)&v18 tableView:v7 didSelectRowAtIndexPath:v6, v17];
}

@end
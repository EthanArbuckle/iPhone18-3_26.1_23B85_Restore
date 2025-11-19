@interface SCATRecipeSwitchesController
- (BOOL)_isForExistingMappingWithMissingSwitch;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SCATRecipeSwitchesController

- (BOOL)_isForExistingMappingWithMissingSwitch
{
  v3 = [(SCATRecipeSwitchesController *)self recipe];
  v4 = [v3 mappings];
  v5 = [(SCATRecipeSwitchesController *)self mapping];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v32 = OBJC_IVAR___PSListController__specifiers;
    v4 = [(SCATRecipeSwitchesController *)v2 recipe];
    v36 = AXSwitchRecipeMappingSwitchUUIDs();

    v5 = objc_alloc_init(NSMutableArray);
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    [v5 addObject:v7];
    v8 = [SCATSwitchesController switchSpecifiersForSwitchesWithTarget:v2 get:0];
    v29 = v8;
    if ([v8 count])
    {
      [v5 addObjectsFromArray:{v8, v8, v7}];
    }

    else
    {
      v9 = AXParameterizedLocalizedString();
      [v7 setProperty:v9 forKey:{PSFooterTextGroupKey, v29, v7}];
    }

    v10 = [(SCATRecipeSwitchesController *)v2 _isForExistingMappingWithMissingSwitch];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      v34 = PSEnabledKey;
      do
      {
        v14 = 0;
        v33 = v12;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v37 + 1) + 8 * v14);
          v16 = [v15 propertyForKey:@"SwitchKey"];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 uuid];
            if ([v36 containsObject:v18])
            {

              goto LABEL_15;
            }

            v19 = v13;
            v20 = v10;
            v21 = v2;
            v22 = [(SCATRecipeSwitchesController *)v2 mapping];
            v23 = [v22 longPressAction];
            if (v23)
            {
              v24 = v23;
              v25 = [v17 supportsLongPress];

              v2 = v21;
              v10 = v20;
              v13 = v19;
              v12 = v33;
              if ((v25 & 1) == 0)
              {
LABEL_15:
                [v15 setProperty:&__kCFBooleanFalse forKey:v34];
              }

              if (!v10)
              {
                goto LABEL_18;
              }

LABEL_17:
              [v15 setCellType:3];
              goto LABEL_18;
            }

            v2 = v21;
            v13 = v19;
            v12 = v33;
            if (v10)
            {
              goto LABEL_17;
            }
          }

LABEL_18:

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v26 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        v12 = v26;
      }

      while (v26);
    }

    v27 = *&v2->AXUISettingsBaseListController_opaque[v32];
    *&v2->AXUISettingsBaseListController_opaque[v32] = obj;

    v3 = *&v2->AXUISettingsBaseListController_opaque[v32];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATRecipeSwitchesController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:PSEnabledKey];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v8 propertyForKey:@"SwitchKey"];
    v12 = [v11 uuid];
    v13 = [(SCATRecipeSwitchesController *)self mapping];
    [v13 setSwitchUUID:v12];

    v14 = [v11 action];
    v15 = [(SCATRecipeSwitchesController *)self mapping];
    [v15 setSwitchOriginalAction:v14];

    if ([(SCATRecipeSwitchesController *)self _isForExistingMappingWithMissingSwitch])
    {
      v16 = +[AXSettings sharedInstance];
      v17 = [(SCATRecipeSwitchesController *)self recipe];
      v18 = [v16 isNewRecipe:v17];

      if (v18)
      {
        _AXAssert();
      }

      v19 = +[AXSettings sharedInstance];
      v20 = [(SCATRecipeSwitchesController *)self recipe];
      [v19 updateRecipe:v20];

      v21 = [(SCATRecipeSwitchesController *)self rootController];
      v22 = [v21 popViewControllerAnimated:1];

      completion = self->completion;
      if (completion)
      {
        completion[2]();
      }
    }

    else
    {
      v24 = objc_alloc_init(SCATRecipeActionsController);
      v25 = [(SCATRecipeSwitchesController *)self recipe];
      [(SCATRecipeActionsController *)v24 setRecipe:v25];

      v26 = [(SCATRecipeSwitchesController *)self mapping];
      [(SCATRecipeActionsController *)v24 setMapping:v26];

      if (self->completion)
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = __66__SCATRecipeSwitchesController_tableView_didSelectRowAtIndexPath___block_invoke;
        v28[3] = &unk_2553B0;
        v28[4] = self;
        [(SCATRecipeActionsController *)v24 setCompletion:v28];
      }

      [(SCATRecipeSwitchesController *)self showController:v24 withSpecifier:v8];
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = SCATRecipeSwitchesController;
    [(SCATRecipeSwitchesController *)&v27 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

@end
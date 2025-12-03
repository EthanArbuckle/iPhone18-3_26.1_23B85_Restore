@interface SCATRecipeSwitchesController
- (BOOL)_isForExistingMappingWithMissingSwitch;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATRecipeSwitchesController

- (BOOL)_isForExistingMappingWithMissingSwitch
{
  recipe = [(SCATRecipeSwitchesController *)self recipe];
  mappings = [recipe mappings];
  mapping = [(SCATRecipeSwitchesController *)self mapping];
  v6 = [mappings containsObject:mapping];

  return v6;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v32 = OBJC_IVAR___PSListController__specifiers;
    recipe = [(SCATRecipeSwitchesController *)selfCopy recipe];
    v36 = AXSwitchRecipeMappingSwitchUUIDs();

    v5 = objc_alloc_init(NSMutableArray);
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    [v5 addObject:v7];
    v8 = [SCATSwitchesController switchSpecifiersForSwitchesWithTarget:selfCopy get:0];
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

    _isForExistingMappingWithMissingSwitch = [(SCATRecipeSwitchesController *)selfCopy _isForExistingMappingWithMissingSwitch];
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
            uuid = [v16 uuid];
            if ([v36 containsObject:uuid])
            {

              goto LABEL_15;
            }

            v19 = v13;
            v20 = _isForExistingMappingWithMissingSwitch;
            v21 = selfCopy;
            mapping = [(SCATRecipeSwitchesController *)selfCopy mapping];
            longPressAction = [mapping longPressAction];
            if (longPressAction)
            {
              v24 = longPressAction;
              supportsLongPress = [v17 supportsLongPress];

              selfCopy = v21;
              _isForExistingMappingWithMissingSwitch = v20;
              v13 = v19;
              v12 = v33;
              if ((supportsLongPress & 1) == 0)
              {
LABEL_15:
                [v15 setProperty:&__kCFBooleanFalse forKey:v34];
              }

              if (!_isForExistingMappingWithMissingSwitch)
              {
                goto LABEL_18;
              }

LABEL_17:
              [v15 setCellType:3];
              goto LABEL_18;
            }

            selfCopy = v21;
            v13 = v19;
            v12 = v33;
            if (_isForExistingMappingWithMissingSwitch)
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

    v27 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
    *&selfCopy->AXUISettingsBaseListController_opaque[v32] = obj;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v32];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SCATRecipeSwitchesController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSEnabledKey];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = [v8 propertyForKey:@"SwitchKey"];
    uuid = [v11 uuid];
    mapping = [(SCATRecipeSwitchesController *)self mapping];
    [mapping setSwitchUUID:uuid];

    action = [v11 action];
    mapping2 = [(SCATRecipeSwitchesController *)self mapping];
    [mapping2 setSwitchOriginalAction:action];

    if ([(SCATRecipeSwitchesController *)self _isForExistingMappingWithMissingSwitch])
    {
      v16 = +[AXSettings sharedInstance];
      recipe = [(SCATRecipeSwitchesController *)self recipe];
      v18 = [v16 isNewRecipe:recipe];

      if (v18)
      {
        _AXAssert();
      }

      v19 = +[AXSettings sharedInstance];
      recipe2 = [(SCATRecipeSwitchesController *)self recipe];
      [v19 updateRecipe:recipe2];

      rootController = [(SCATRecipeSwitchesController *)self rootController];
      v22 = [rootController popViewControllerAnimated:1];

      completion = self->completion;
      if (completion)
      {
        completion[2]();
      }
    }

    else
    {
      v24 = objc_alloc_init(SCATRecipeActionsController);
      recipe3 = [(SCATRecipeSwitchesController *)self recipe];
      [(SCATRecipeActionsController *)v24 setRecipe:recipe3];

      mapping3 = [(SCATRecipeSwitchesController *)self mapping];
      [(SCATRecipeActionsController *)v24 setMapping:mapping3];

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
    [(SCATRecipeSwitchesController *)&v27 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

@end
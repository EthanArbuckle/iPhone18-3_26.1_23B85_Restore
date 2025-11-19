@interface SCATRecipeEditController
- (BOOL)_canShowCreateNewMappingSpecifier;
- (BOOL)_isTimeoutEnabled;
- (BOOL)_shouldAllowEditing;
- (double)valueForSpecifier:(id)a3;
- (id)_createNewMappingSpecifier;
- (id)_footerTextForNoMappings;
- (id)_isTimeoutEnabledForSpecifier:(id)a3;
- (id)_mappingActionForSpecifier:(id)a3;
- (id)_mappingsSpecifiers;
- (id)_recipeNameForSpecifier:(id)a3;
- (id)_timeoutSpecifiers;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)title;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_saveRecipeIfApplicable;
- (void)_setRecipeName:(id)a3 specifier:(id)a4;
- (void)_setTimeoutEnabled:(id)a3 specifier:(id)a4;
- (void)_showActionsForExistingMapping:(id)a3 forSpecifier:(id)a4;
- (void)_showActionsForExistingMappingForSpecifier:(id)a3;
- (void)_showLongPressControllerForExistingMapping:(id)a3 forSpecifier:(id)a4;
- (void)_showSwitchesForMapping:(id)a3 forSpecifier:(id)a4;
- (void)_showSwitchesForNewMappingForSpecifier:(id)a3;
- (void)setRecipe:(id)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATRecipeEditController

- (id)title
{
  v2 = [(SCATRecipeEditController *)self recipe];
  v3 = [v2 name];

  if (![v3 length])
  {
    v4 = AXParameterizedLocalizedString();

    v3 = v4;
  }

  return v3;
}

- (void)setRecipe:(id)a3
{
  v5 = a3;
  if (self->_recipe != v5)
  {
    v7 = v5;
    v6 = +[AXSettings sharedInstance];
    [v6 validateAndUpdateRecipeIfNeeded:v7];

    objc_storeStrong(&self->_recipe, a3);
    v5 = v7;
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"_setRecipeName:specifier:" get:"_recipeNameForSpecifier:" detail:0 cell:8 edit:0];

    [v5 addObject:v7];
    v8 = [(SCATRecipeEditController *)self _mappingsSpecifiers];
    [v5 addObjectsFromArray:v8];

    v9 = [(SCATRecipeEditController *)self _timeoutSpecifiers];
    [v5 addObjectsFromArray:v9];

    v10 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATRecipeEditController;
  [(SCATRecipeEditController *)&v6 viewDidLoad];
  v3 = [(SCATRecipeEditController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = SCATRecipeEditController;
  [(SCATRecipeEditController *)&v7 viewWillAppear:a3];
  [(SCATRecipeEditController *)self reloadSpecifiers];
  v4 = [(SCATRecipeEditController *)self _shouldAllowEditing];
  if (v4)
  {
    v5 = [(SCATRecipeEditController *)self editButtonItem];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SCATRecipeEditController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  if (v4)
  {
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATRecipeEditController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"Mapping"];
  if (v9)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v8 propertyForKey:@"NeedsToChooseSwitch"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      [(SCATRecipeEditController *)self _showSwitchesForMapping:v9 forSpecifier:v8];
LABEL_11:

      goto LABEL_12;
    }

    if ([v10 assistiveTouchLongPressEnabled])
    {
      v13 = [v9 switchUUID];
      v14 = [v10 switchForUUID:v13];
      if ([v14 supportsLongPress])
      {
        v15 = [v9 action];
        v16 = [v15 isEqualToString:AXSwitchRecipeMappingActionHoldAtPoint];

        if ((v16 & 1) == 0)
        {
          [(SCATRecipeEditController *)self _showLongPressControllerForExistingMapping:v9 forSpecifier:v8];
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    [(SCATRecipeEditController *)self _showActionsForExistingMapping:v9 forSpecifier:v8];
    goto LABEL_11;
  }

  v17.receiver = self;
  v17.super_class = SCATRecipeEditController;
  [(SCATRecipeEditController *)&v17 tableView:v6 didSelectRowAtIndexPath:v7];
LABEL_12:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = SCATRecipeEditController;
  v6 = a4;
  v7 = [(SCATRecipeEditController *)&v21 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [v7 textLabel];
  v9 = [v8 textColor];

  v10 = [(SCATRecipeEditController *)self specifierForIndexPath:v6];

  v11 = [v10 propertyForKey:@"NeedsToChooseSwitch"];
  LODWORD(v8) = [v11 BOOLValue];

  if (v8)
  {
    v12 = [v10 propertyForKey:@"Mapping"];
    if ([v12 isOptional])
    {
      v13 = +[UIColor systemGrayColor];
      v14 = v9;
    }

    else
    {
      v15 = [v7 textLabel];
      v14 = [v15 font];

      if (v14)
      {
        [v14 pointSize];
      }

      else
      {
        v16 = 17.0;
      }

      v17 = [UIFont boldSystemFontOfSize:v16];
      v18 = [v7 textLabel];
      [v18 setFont:v17];

      v13 = +[UIColor systemRedColor];
    }

    v9 = v13;
  }

  v19 = [v7 textLabel];
  [v19 setTextColor:v9];

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v20 = [(SCATRecipeEditController *)self specifierForIndexPath:a5];
    v7 = [v20 propertyForKey:@"Mapping"];
    v8 = [(SCATRecipeEditController *)self recipe];
    v9 = [v8 mappings];
    v10 = [v9 mutableCopy];

    [v10 removeObject:v7];
    v11 = [(SCATRecipeEditController *)self recipe];
    [v11 setMappings:v10];

    v12 = [(SCATRecipeEditController *)self recipe];
    v13 = [v12 mappings];
    v14 = [v13 count];

    if (v14)
    {
      v15 = +[AXSettings sharedInstance];
      v16 = [(SCATRecipeEditController *)self recipe];
      [v15 saveRecipe:v16];
    }

    else
    {
      v15 = [(SCATRecipeEditController *)self specifierForID:@"MappingsGroup"];
      v16 = [(SCATRecipeEditController *)self _footerTextForNoMappings];
      [v15 setProperty:v16 forKey:PSFooterTextGroupKey];
    }

    [(SCATRecipeEditController *)self removeSpecifier:v20 animated:1];
    if ([(SCATRecipeEditController *)self _canShowCreateNewMappingSpecifier])
    {
      v17 = [(SCATRecipeEditController *)self specifierForID:@"CreateNewMapping"];

      if (!v17)
      {
        v18 = [(SCATRecipeEditController *)self _createNewMappingSpecifier];
        [(SCATRecipeEditController *)self insertSpecifier:v18 atEndOfGroup:1 animated:1];
      }
    }

    if (![(SCATRecipeEditController *)self _shouldAllowEditing])
    {
      [(SCATRecipeEditController *)self setEditing:0];
      v19 = [(SCATRecipeEditController *)self navigationItem];
      [v19 setRightBarButtonItem:0];
    }
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(SCATRecipeEditController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"Mapping"];
  v6 = v5 != 0;

  return v6;
}

- (id)_recipeNameForSpecifier:(id)a3
{
  v3 = [(SCATRecipeEditController *)self recipe];
  v4 = [v3 name];

  return v4;
}

- (void)_setRecipeName:(id)a3 specifier:(id)a4
{
  v9 = a3;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [v9 stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(SCATRecipeEditController *)self recipe];
    [v8 setName:v9];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
  }
}

- (id)_mappingActionForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"Mapping"];
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchLongPressEnabled] && (objc_msgSend(v3, "longPressAction"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v3 action];
    v8 = AXSwitchRecipeMappingActionAllowsLongPress();

    if (v8)
    {
      v9 = AXParameterizedLocalizedString();
      goto LABEL_7;
    }
  }

  else
  {
  }

  v10 = [v3 action];
  v9 = AXSwitchRecipeMappingNameForAction();

LABEL_7:

  return v9;
}

- (id)_isTimeoutEnabledForSpecifier:(id)a3
{
  v3 = [(SCATRecipeEditController *)self _isTimeoutEnabled];

  return [NSNumber numberWithBool:v3];
}

- (void)_setTimeoutEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(SCATRecipeEditController *)self _isTimeoutEnabled];
  v7 = [v5 BOOLValue];

  if (!v7 || (v6 & 1) != 0)
  {
    v9 = AXSwitchRecipeTimeoutNone;
    v10 = [(SCATRecipeEditController *)self recipe];
    [v10 setTimeout:v9];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
    v11 = [(SCATRecipeEditController *)self timeoutSpecifier];
    [SCATRecipeEditController removeSpecifier:"removeSpecifier:animated:" animated:?];
  }

  else
  {
    v8 = [(SCATRecipeEditController *)self recipe];
    [v8 setTimeout:60.0];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
    v11 = [(SCATRecipeEditController *)self timeoutSpecifier];
    [SCATRecipeEditController insertSpecifier:"insertSpecifier:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
  }
}

- (void)_showSwitchesForNewMappingForSpecifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXSwitchRecipeMapping);
  [(SCATRecipeEditController *)self _showSwitchesForMapping:v5 forSpecifier:v4];
}

- (void)_showSwitchesForMapping:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SCATRecipeSwitchesController);
  v9 = AXParameterizedLocalizedString();
  [(SCATRecipeSwitchesController *)v8 setTitle:v9];

  v10 = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeSwitchesController *)v8 setRecipe:v10];

  [(SCATRecipeSwitchesController *)v8 setMapping:v6];
  v11 = [[UINavigationController alloc] initWithRootViewController:v8];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __65__SCATRecipeEditController__showSwitchesForMapping_forSpecifier___block_invoke;
  v13[3] = &unk_255818;
  objc_copyWeak(&v15, &location);
  v12 = v11;
  v14 = v12;
  [(SCATRecipeSwitchesController *)v8 setCompletion:v13];
  [(SCATRecipeEditController *)self presentViewController:v12 animated:1 completion:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __65__SCATRecipeEditController__showSwitchesForMapping_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (void)_showActionsForExistingMappingForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"Mapping"];
  [(SCATRecipeEditController *)self _showActionsForExistingMapping:v5 forSpecifier:v4];
}

- (void)_showActionsForExistingMapping:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SCATRecipeActionsController);
  v9 = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeActionsController *)v8 setRecipe:v9];

  [(SCATRecipeActionsController *)v8 setMapping:v6];
  v10 = [[UINavigationController alloc] initWithRootViewController:v8];
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __72__SCATRecipeEditController__showActionsForExistingMapping_forSpecifier___block_invoke;
  v12[3] = &unk_255818;
  objc_copyWeak(&v14, &location);
  v11 = v10;
  v13 = v11;
  [(SCATRecipeActionsController *)v8 setCompletion:v12];
  [(SCATRecipeEditController *)self presentViewController:v11 animated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __72__SCATRecipeEditController__showActionsForExistingMapping_forSpecifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

- (void)_showLongPressControllerForExistingMapping:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 action];
  v9 = [v8 isEqualToString:AXSwitchRecipeMappingActionHoldAtPoint];

  if (v9)
  {
    _AXAssert();
  }

  v11 = objc_alloc_init(SCATRecipeLongPressController);
  v10 = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeLongPressController *)v11 setRecipe:v10];

  [(SCATRecipeLongPressController *)v11 setMapping:v7];
  [(SCATRecipeEditController *)self showController:v11 withSpecifier:v6];
}

- (BOOL)_shouldAllowEditing
{
  v2 = [(SCATRecipeEditController *)self recipe];
  v3 = [v2 mappings];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)_createNewMappingSpecifier
{
  v3 = AXParameterizedLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"CreateNewMapping"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  [v4 setButtonAction:"_showSwitchesForNewMappingForSpecifier:"];

  return v4;
}

- (BOOL)_canShowCreateNewMappingSpecifier
{
  v2 = [(SCATRecipeEditController *)self recipe];
  v3 = [v2 mappings];
  v4 = [v3 count];
  v5 = +[AXSettings sharedInstance];
  v6 = [v5 assistiveTouchSwitches];
  LOBYTE(v4) = v4 < [v6 count];

  return v4;
}

- (id)_footerTextForNoMappings
{
  [(SCATRecipeEditController *)self _canShowCreateNewMappingSpecifier];
  v2 = AXParameterizedLocalizedString();

  return v2;
}

- (id)_mappingsSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = AXParameterizedLocalizedString();
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [v5 setIdentifier:@"MappingsGroup"];
  v6 = [(SCATRecipeEditController *)self recipe];
  v7 = [v6 mappings];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(SCATRecipeEditController *)self _footerTextForNoMappings];
    [v5 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  v30 = v5;
  [v3 addObject:v5];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = self;
  v10 = [(SCATRecipeEditController *)self recipe];
  v11 = [v10 mappings];

  obj = v11;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v32 = *v35;
    v14 = PSEnabledKey;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        v16 = v3;
        if (*v35 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = +[AXSettings sharedInstance];
        v19 = [v17 switchUUID];
        v20 = [v18 switchForUUID:v19];

        if (v20)
        {
          v21 = [v20 name];
          v22 = [v20 remoteDeviceName];
          v23 = [v22 length];

          if (v23)
          {
            v29 = [v20 remoteDeviceName];
            v24 = AXParameterizedLocalizedString();

            v21 = v24;
          }
        }

        else
        {
          v21 = AXParameterizedLocalizedString();
        }

        v25 = [PSSpecifier preferenceSpecifierNamed:v21 target:v33 set:0 get:"_mappingActionForSpecifier:" detail:0 cell:2 edit:0, v29];
        [v25 setProperty:&__kCFBooleanTrue forKey:v14];
        [v25 setProperty:v17 forKey:@"Mapping"];
        v26 = [NSNumber numberWithBool:v20 == 0];
        [v25 setProperty:v26 forKey:@"NeedsToChooseSwitch"];

        v3 = v16;
        [v16 addObject:v25];
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  if ([(SCATRecipeEditController *)v33 _canShowCreateNewMappingSpecifier])
  {
    v27 = [(SCATRecipeEditController *)v33 _createNewMappingSpecifier];
    [v3 addObject:v27];
  }

  return v3;
}

- (BOOL)_isTimeoutEnabled
{
  v2 = [(SCATRecipeEditController *)self recipe];
  [v2 timeout];
  v4 = v3 != AXSwitchRecipeTimeoutNone;

  return v4;
}

- (id)_timeoutSpecifiers
{
  v3 = [NSMutableArray arrayWithCapacity:3];
  v4 = AXParameterizedLocalizedString();
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = AXParameterizedLocalizedString();
  [v5 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v5];
  v7 = AXParameterizedLocalizedString();
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setTimeoutEnabled:specifier:" get:"_isTimeoutEnabledForSpecifier:" detail:0 cell:6 edit:0];

  [v8 setIdentifier:@"TimeoutEnabled"];
  [v3 addObject:v8];
  v9 = [(SCATRecipeEditController *)self timeoutSpecifier];

  if (!v9)
  {
    v10 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [(SCATRecipeEditController *)self setTimeoutSpecifier:v10];
  }

  if ([(SCATRecipeEditController *)self _isTimeoutEnabled])
  {
    v11 = [(SCATRecipeEditController *)self timeoutSpecifier];
    [v3 addObject:v11];
  }

  return v3;
}

- (void)_saveRecipeIfApplicable
{
  v6 = +[AXSettings sharedInstance];
  v3 = [(SCATRecipeEditController *)self recipe];
  v4 = [v6 isNewRecipe:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [(SCATRecipeEditController *)self recipe];
    [v6 updateRecipe:v5];
  }
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [(SCATRecipeEditController *)self recipe];
  [v3 timeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = [(SCATRecipeEditController *)self recipe];
  [v6 setTimeout:a4];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_saveRecipeIfApplicable" object:0];

  [(SCATRecipeEditController *)self performSelector:"_saveRecipeIfApplicable" withObject:0 afterDelay:1.0];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATRecipeEditController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end
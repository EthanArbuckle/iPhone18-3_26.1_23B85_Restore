@interface SCATRecipeEditController
- (BOOL)_canShowCreateNewMappingSpecifier;
- (BOOL)_isTimeoutEnabled;
- (BOOL)_shouldAllowEditing;
- (double)valueForSpecifier:(id)specifier;
- (id)_createNewMappingSpecifier;
- (id)_footerTextForNoMappings;
- (id)_isTimeoutEnabledForSpecifier:(id)specifier;
- (id)_mappingActionForSpecifier:(id)specifier;
- (id)_mappingsSpecifiers;
- (id)_recipeNameForSpecifier:(id)specifier;
- (id)_timeoutSpecifiers;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)title;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_saveRecipeIfApplicable;
- (void)_setRecipeName:(id)name specifier:(id)specifier;
- (void)_setTimeoutEnabled:(id)enabled specifier:(id)specifier;
- (void)_showActionsForExistingMapping:(id)mapping forSpecifier:(id)specifier;
- (void)_showActionsForExistingMappingForSpecifier:(id)specifier;
- (void)_showLongPressControllerForExistingMapping:(id)mapping forSpecifier:(id)specifier;
- (void)_showSwitchesForMapping:(id)mapping forSpecifier:(id)specifier;
- (void)_showSwitchesForNewMappingForSpecifier:(id)specifier;
- (void)setRecipe:(id)recipe;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SCATRecipeEditController

- (id)title
{
  recipe = [(SCATRecipeEditController *)self recipe];
  name = [recipe name];

  if (![name length])
  {
    v4 = AXParameterizedLocalizedString();

    name = v4;
  }

  return name;
}

- (void)setRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (self->_recipe != recipeCopy)
  {
    v7 = recipeCopy;
    v6 = +[AXSettings sharedInstance];
    [v6 validateAndUpdateRecipeIfNeeded:v7];

    objc_storeStrong(&self->_recipe, recipe);
    recipeCopy = v7;
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
    _mappingsSpecifiers = [(SCATRecipeEditController *)self _mappingsSpecifiers];
    [v5 addObjectsFromArray:_mappingsSpecifiers];

    _timeoutSpecifiers = [(SCATRecipeEditController *)self _timeoutSpecifiers];
    [v5 addObjectsFromArray:_timeoutSpecifiers];

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
  table = [(SCATRecipeEditController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = SCATRecipeEditController;
  [(SCATRecipeEditController *)&v7 viewWillAppear:appear];
  [(SCATRecipeEditController *)self reloadSpecifiers];
  _shouldAllowEditing = [(SCATRecipeEditController *)self _shouldAllowEditing];
  if (_shouldAllowEditing)
  {
    editButtonItem = [(SCATRecipeEditController *)self editButtonItem];
  }

  else
  {
    editButtonItem = 0;
  }

  navigationItem = [(SCATRecipeEditController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];

  if (_shouldAllowEditing)
  {
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SCATRecipeEditController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"Mapping"];
  if (v9)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v8 propertyForKey:@"NeedsToChooseSwitch"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      [(SCATRecipeEditController *)self _showSwitchesForMapping:v9 forSpecifier:v8];
LABEL_11:

      goto LABEL_12;
    }

    if ([v10 assistiveTouchLongPressEnabled])
    {
      switchUUID = [v9 switchUUID];
      v14 = [v10 switchForUUID:switchUUID];
      if ([v14 supportsLongPress])
      {
        action = [v9 action];
        v16 = [action isEqualToString:AXSwitchRecipeMappingActionHoldAtPoint];

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
  [(SCATRecipeEditController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
LABEL_12:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = SCATRecipeEditController;
  pathCopy = path;
  v7 = [(SCATRecipeEditController *)&v21 tableView:view cellForRowAtIndexPath:pathCopy];
  textLabel = [v7 textLabel];
  textColor = [textLabel textColor];

  v10 = [(SCATRecipeEditController *)self specifierForIndexPath:pathCopy];

  v11 = [v10 propertyForKey:@"NeedsToChooseSwitch"];
  LODWORD(textLabel) = [v11 BOOLValue];

  if (textLabel)
  {
    v12 = [v10 propertyForKey:@"Mapping"];
    if ([v12 isOptional])
    {
      v13 = +[UIColor systemGrayColor];
      font = textColor;
    }

    else
    {
      textLabel2 = [v7 textLabel];
      font = [textLabel2 font];

      if (font)
      {
        [font pointSize];
      }

      else
      {
        v16 = 17.0;
      }

      v17 = [UIFont boldSystemFontOfSize:v16];
      textLabel3 = [v7 textLabel];
      [textLabel3 setFont:v17];

      v13 = +[UIColor systemRedColor];
    }

    textColor = v13;
  }

  textLabel4 = [v7 textLabel];
  [textLabel4 setTextColor:textColor];

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v20 = [(SCATRecipeEditController *)self specifierForIndexPath:path];
    v7 = [v20 propertyForKey:@"Mapping"];
    recipe = [(SCATRecipeEditController *)self recipe];
    mappings = [recipe mappings];
    v10 = [mappings mutableCopy];

    [v10 removeObject:v7];
    recipe2 = [(SCATRecipeEditController *)self recipe];
    [recipe2 setMappings:v10];

    recipe3 = [(SCATRecipeEditController *)self recipe];
    mappings2 = [recipe3 mappings];
    v14 = [mappings2 count];

    if (v14)
    {
      v15 = +[AXSettings sharedInstance];
      recipe4 = [(SCATRecipeEditController *)self recipe];
      [v15 saveRecipe:recipe4];
    }

    else
    {
      v15 = [(SCATRecipeEditController *)self specifierForID:@"MappingsGroup"];
      recipe4 = [(SCATRecipeEditController *)self _footerTextForNoMappings];
      [v15 setProperty:recipe4 forKey:PSFooterTextGroupKey];
    }

    [(SCATRecipeEditController *)self removeSpecifier:v20 animated:1];
    if ([(SCATRecipeEditController *)self _canShowCreateNewMappingSpecifier])
    {
      v17 = [(SCATRecipeEditController *)self specifierForID:@"CreateNewMapping"];

      if (!v17)
      {
        _createNewMappingSpecifier = [(SCATRecipeEditController *)self _createNewMappingSpecifier];
        [(SCATRecipeEditController *)self insertSpecifier:_createNewMappingSpecifier atEndOfGroup:1 animated:1];
      }
    }

    if (![(SCATRecipeEditController *)self _shouldAllowEditing])
    {
      [(SCATRecipeEditController *)self setEditing:0];
      navigationItem = [(SCATRecipeEditController *)self navigationItem];
      [navigationItem setRightBarButtonItem:0];
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(SCATRecipeEditController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"Mapping"];
  v6 = v5 != 0;

  return v6;
}

- (id)_recipeNameForSpecifier:(id)specifier
{
  recipe = [(SCATRecipeEditController *)self recipe];
  name = [recipe name];

  return name;
}

- (void)_setRecipeName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  v5 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v6 = [nameCopy stringByTrimmingCharactersInSet:v5];
  v7 = [v6 length];

  if (v7)
  {
    recipe = [(SCATRecipeEditController *)self recipe];
    [recipe setName:nameCopy];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
  }
}

- (id)_mappingActionForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:@"Mapping"];
  v4 = +[AXSettings sharedInstance];
  if ([v4 assistiveTouchLongPressEnabled] && (objc_msgSend(v3, "longPressAction"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    action = [v3 action];
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

  action2 = [v3 action];
  v9 = AXSwitchRecipeMappingNameForAction();

LABEL_7:

  return v9;
}

- (id)_isTimeoutEnabledForSpecifier:(id)specifier
{
  _isTimeoutEnabled = [(SCATRecipeEditController *)self _isTimeoutEnabled];

  return [NSNumber numberWithBool:_isTimeoutEnabled];
}

- (void)_setTimeoutEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  _isTimeoutEnabled = [(SCATRecipeEditController *)self _isTimeoutEnabled];
  bOOLValue = [enabledCopy BOOLValue];

  if (!bOOLValue || (_isTimeoutEnabled & 1) != 0)
  {
    v9 = AXSwitchRecipeTimeoutNone;
    recipe = [(SCATRecipeEditController *)self recipe];
    [recipe setTimeout:v9];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
    timeoutSpecifier = [(SCATRecipeEditController *)self timeoutSpecifier];
    [SCATRecipeEditController removeSpecifier:"removeSpecifier:animated:" animated:?];
  }

  else
  {
    recipe2 = [(SCATRecipeEditController *)self recipe];
    [recipe2 setTimeout:60.0];

    [(SCATRecipeEditController *)self _saveRecipeIfApplicable];
    timeoutSpecifier = [(SCATRecipeEditController *)self timeoutSpecifier];
    [SCATRecipeEditController insertSpecifier:"insertSpecifier:afterSpecifierID:animated:" afterSpecifierID:? animated:?];
  }
}

- (void)_showSwitchesForNewMappingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = objc_alloc_init(AXSwitchRecipeMapping);
  [(SCATRecipeEditController *)self _showSwitchesForMapping:v5 forSpecifier:specifierCopy];
}

- (void)_showSwitchesForMapping:(id)mapping forSpecifier:(id)specifier
{
  mappingCopy = mapping;
  specifierCopy = specifier;
  v8 = objc_alloc_init(SCATRecipeSwitchesController);
  v9 = AXParameterizedLocalizedString();
  [(SCATRecipeSwitchesController *)v8 setTitle:v9];

  recipe = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeSwitchesController *)v8 setRecipe:recipe];

  [(SCATRecipeSwitchesController *)v8 setMapping:mappingCopy];
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

- (void)_showActionsForExistingMappingForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = [specifierCopy propertyForKey:@"Mapping"];
  [(SCATRecipeEditController *)self _showActionsForExistingMapping:v5 forSpecifier:specifierCopy];
}

- (void)_showActionsForExistingMapping:(id)mapping forSpecifier:(id)specifier
{
  mappingCopy = mapping;
  specifierCopy = specifier;
  v8 = objc_alloc_init(SCATRecipeActionsController);
  recipe = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeActionsController *)v8 setRecipe:recipe];

  [(SCATRecipeActionsController *)v8 setMapping:mappingCopy];
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

- (void)_showLongPressControllerForExistingMapping:(id)mapping forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  mappingCopy = mapping;
  action = [mappingCopy action];
  v9 = [action isEqualToString:AXSwitchRecipeMappingActionHoldAtPoint];

  if (v9)
  {
    _AXAssert();
  }

  v11 = objc_alloc_init(SCATRecipeLongPressController);
  recipe = [(SCATRecipeEditController *)self recipe];
  [(SCATRecipeLongPressController *)v11 setRecipe:recipe];

  [(SCATRecipeLongPressController *)v11 setMapping:mappingCopy];
  [(SCATRecipeEditController *)self showController:v11 withSpecifier:specifierCopy];
}

- (BOOL)_shouldAllowEditing
{
  recipe = [(SCATRecipeEditController *)self recipe];
  mappings = [recipe mappings];
  v4 = [mappings count] != 0;

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
  recipe = [(SCATRecipeEditController *)self recipe];
  mappings = [recipe mappings];
  v4 = [mappings count];
  v5 = +[AXSettings sharedInstance];
  assistiveTouchSwitches = [v5 assistiveTouchSwitches];
  LOBYTE(v4) = v4 < [assistiveTouchSwitches count];

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
  recipe = [(SCATRecipeEditController *)self recipe];
  mappings = [recipe mappings];
  v8 = [mappings count];

  if (!v8)
  {
    _footerTextForNoMappings = [(SCATRecipeEditController *)self _footerTextForNoMappings];
    [v5 setProperty:_footerTextForNoMappings forKey:PSFooterTextGroupKey];
  }

  v30 = v5;
  [v3 addObject:v5];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  recipe2 = [(SCATRecipeEditController *)self recipe];
  mappings2 = [recipe2 mappings];

  obj = mappings2;
  v12 = [mappings2 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
        switchUUID = [v17 switchUUID];
        v20 = [v18 switchForUUID:switchUUID];

        if (v20)
        {
          name = [v20 name];
          remoteDeviceName = [v20 remoteDeviceName];
          v23 = [remoteDeviceName length];

          if (v23)
          {
            remoteDeviceName2 = [v20 remoteDeviceName];
            v24 = AXParameterizedLocalizedString();

            name = v24;
          }
        }

        else
        {
          name = AXParameterizedLocalizedString();
        }

        v25 = [PSSpecifier preferenceSpecifierNamed:name target:selfCopy set:0 get:"_mappingActionForSpecifier:" detail:0 cell:2 edit:0, remoteDeviceName2];
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

  if ([(SCATRecipeEditController *)selfCopy _canShowCreateNewMappingSpecifier])
  {
    _createNewMappingSpecifier = [(SCATRecipeEditController *)selfCopy _createNewMappingSpecifier];
    [v3 addObject:_createNewMappingSpecifier];
  }

  return v3;
}

- (BOOL)_isTimeoutEnabled
{
  recipe = [(SCATRecipeEditController *)self recipe];
  [recipe timeout];
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
  timeoutSpecifier = [(SCATRecipeEditController *)self timeoutSpecifier];

  if (!timeoutSpecifier)
  {
    v10 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    [(SCATRecipeEditController *)self setTimeoutSpecifier:v10];
  }

  if ([(SCATRecipeEditController *)self _isTimeoutEnabled])
  {
    timeoutSpecifier2 = [(SCATRecipeEditController *)self timeoutSpecifier];
    [v3 addObject:timeoutSpecifier2];
  }

  return v3;
}

- (void)_saveRecipeIfApplicable
{
  v6 = +[AXSettings sharedInstance];
  recipe = [(SCATRecipeEditController *)self recipe];
  v4 = [v6 isNewRecipe:recipe];

  if ((v4 & 1) == 0)
  {
    recipe2 = [(SCATRecipeEditController *)self recipe];
    [v6 updateRecipe:recipe2];
  }
}

- (double)valueForSpecifier:(id)specifier
{
  recipe = [(SCATRecipeEditController *)self recipe];
  [recipe timeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  recipe = [(SCATRecipeEditController *)self recipe];
  [recipe setTimeout:value];

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_saveRecipeIfApplicable" object:0];

  [(SCATRecipeEditController *)self performSelector:"_saveRecipeIfApplicable" withObject:0 afterDelay:1.0];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(SCATRecipeEditController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end
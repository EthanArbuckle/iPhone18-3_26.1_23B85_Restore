@interface SCATRecipeActionsController
- (BOOL)_isNewMapping;
- (BOOL)_popToLongPressController;
- (id)_insertLongPressController;
- (id)_rootRecipeEditController;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_handleSelectActionForSpecifier:(id)specifier;
- (void)_removeLongPressController;
- (void)gestureRecorder:(id)recorder savePoint:(CGPoint)point;
- (void)gestureRecorder:(id)recorder saveReplayableGesture:(id)gesture;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SCATRecipeActionsController

- (id)specifiers
{
  selfCopy = self;
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v46 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = AXParameterizedLocalizedString();
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v50 = v4;
    v45 = v6;
    [v4 addObject:v6];
    if ([(SCATRecipeActionsController *)selfCopy forLongPress])
    {
      v7 = AXParameterizedLocalizedString();
      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

      [v4 addObject:v8];
    }

    v61[0] = AXSwitchRecipeMappingActionCenterTap;
    v61[1] = AXSwitchRecipeMappingActionRightToLeftSwipe;
    v9 = AXSwitchRecipeMappingActionHoldAtPoint;
    v61[2] = AXSwitchRecipeMappingActionLeftToRightSwipe;
    v61[3] = AXSwitchRecipeMappingActionHoldAtPoint;
    v10 = AXSwitchRecipeMappingActionGesture;
    v61[4] = AXSwitchRecipeMappingActionGesture;
    v61[5] = AXSwitchRecipeMappingActionExit;
    v61[6] = AXSwitchRecipeMappingActionSelect;
    v11 = [NSArray arrayWithObjects:v61 count:7];
    if ([(SCATRecipeActionsController *)selfCopy forLongPress])
    {
      v12 = [NSPredicate predicateWithBlock:&__block_literal_global_46];
      v13 = [v11 filteredArrayUsingPredicate:v12];

      v11 = v13;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v11;
    v14 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v55 + 1) + 8 * i);
          v19 = AXSwitchRecipeMappingNameForAction();
          v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

          [v20 setProperty:v18 forKey:@"Action"];
          if ([v18 isEqualToString:v10])
          {
            [(SCATRecipeActionsController *)selfCopy setGestureActionSpecifier:v20];
          }

          else if ([v18 isEqualToString:v9])
          {
            [(SCATRecipeActionsController *)selfCopy setHoldPointActionSpecifier:v20];
          }

          [v50 addObject:v20];
        }

        v15 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v15);
    }

    v21 = AXParameterizedLocalizedString();
    v22 = [PSSpecifier groupSpecifierWithName:v21];

    v44 = v22;
    [v50 addObject:v22];
    v23 = 1;
    v49 = AXSwitchRecipeMappingGameControlButtonPress;
    while (1)
    {
      if (v23 <= 0xC)
      {
        v24 = [NSString stringWithFormat:@"GAME_CONTROL_%d", v23];
        v25 = AXParameterizedLocalizedString();
        v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

        v27 = objc_opt_new();
        [v27 setButton:v23];
        [v26 setObject:v49 forKeyedSubscript:@"Action"];
        [v26 setObject:v27 forKeyedSubscript:@"AXGameControlButtonPress"];
        [v50 addObject:v26];

        goto LABEL_40;
      }

      v28 = @"RIGHT";
      if (v23 == 13)
      {
        v28 = @"LEFT";
      }

      v24 = v28;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v29 = [&off_27CBF0 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v29)
      {
        break;
      }

LABEL_40:

      if (++v23 == 15)
      {
        v42 = *&selfCopy->AXUISettingsBaseListController_opaque[v46];
        *&selfCopy->AXUISettingsBaseListController_opaque[v46] = v50;

        v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v46];
        goto LABEL_42;
      }
    }

    v30 = v29;
    v48 = *v52;
LABEL_24:
    v31 = 0;
    while (1)
    {
      if (*v52 != v48)
      {
        objc_enumerationMutation(&off_27CBF0);
      }

      v32 = *(*(&v51 + 1) + 8 * v31);
      v33 = v24;
      v34 = [NSString stringWithFormat:@"%@_JOYSTICK_%@", v24, v32];
      v35 = AXParameterizedLocalizedString();
      v36 = selfCopy;
      v37 = [PSSpecifier preferenceSpecifierNamed:v35 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];

      v38 = objc_opt_new();
      [v38 setButton:v23];
      if ([v32 isEqualToString:@"Up"])
      {
        break;
      }

      if ([v32 isEqualToString:@"Down"])
      {
        LODWORD(v39) = -1.0;
        goto LABEL_31;
      }

      if ([v32 isEqualToString:@"Left"])
      {
        LODWORD(v40) = -1.0;
LABEL_38:
        [v38 setXMagnitude:v40];
        goto LABEL_32;
      }

      if ([v32 isEqualToString:@"Right"])
      {
        LODWORD(v40) = 1.0;
        goto LABEL_38;
      }

LABEL_32:
      [v37 setObject:v49 forKeyedSubscript:@"Action"];
      [v37 setObject:v38 forKeyedSubscript:@"AXGameControlButtonPress"];
      [v37 setIdentifier:v34];
      [v50 addObject:v37];

      v31 = v31 + 1;
      selfCopy = v36;
      v24 = v33;
      if (v30 == v31)
      {
        v41 = [&off_27CBF0 countByEnumeratingWithState:&v51 objects:v59 count:16];
        v30 = v41;
        if (!v41)
        {
          goto LABEL_40;
        }

        goto LABEL_24;
      }
    }

    LODWORD(v39) = 1.0;
LABEL_31:
    [v38 setYMagnitude:v39];
    goto LABEL_32;
  }

LABEL_42:

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v37.receiver = self;
  v37.super_class = SCATRecipeActionsController;
  pathCopy = path;
  v7 = [(SCATRecipeActionsController *)&v37 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATRecipeActionsController *)self specifierForIndexPath:pathCopy];

  mapping = [(SCATRecipeActionsController *)self mapping];
  forLongPress = [(SCATRecipeActionsController *)self forLongPress];
  if (forLongPress)
  {
    [mapping longPressAction];
  }

  else
  {
    [mapping action];
  }
  v11 = ;
  v12 = [v8 propertyForKey:@"Action"];
  v13 = v12;
  if (v11 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = [v12 isEqualToString:v11];
  }

  if ([v13 isEqualToString:AXSwitchRecipeMappingGameControlButtonPress])
  {
    v15 = [v8 objectForKeyedSubscript:@"AXGameControlButtonPress"];
    if (forLongPress)
    {
      [mapping longPressGameControlButtonPress];
    }

    else
    {
      [mapping gameControlButtonPress];
    }
    v16 = ;
    button = [v15 button];
    button2 = [v16 button];
    v14 = button == button2;
    if ([v15 button] != &dword_C + 1 && objc_msgSend(v15, "button") != &dword_C + 2)
    {
      goto LABEL_35;
    }

    v36 = v7;
    button3 = [v15 button];
    v20 = @"RIGHT";
    if (button3 == &dword_C + 1)
    {
      v20 = @"LEFT";
    }

    v21 = [NSString stringWithFormat:@"%@_JOYSTICK", v20];
    if (button == button2)
    {
      identifier = [v8 identifier];
      v23 = [identifier containsString:v21];

      [v16 yMagnitude];
      if (v24 <= 0.0)
      {
        [v16 yMagnitude];
        v29 = (v30 >= 0.0) & v23;
        if (v30 >= 0.0 || ((v23 ^ 1) & 1) != 0)
        {
LABEL_26:
          [v16 xMagnitude];
          if (v31 <= 0.0)
          {
            [v16 xMagnitude];
            v14 = (v33 >= 0.0) & v29;
            if (v33 >= 0.0 || ((v29 ^ 1) & 1) != 0)
            {
              goto LABEL_34;
            }

            v32 = @"_Left";
          }

          else
          {
            if ((v29 & 1) == 0)
            {
              v14 = 0;
              goto LABEL_34;
            }

            v32 = @"_Right";
          }

          identifier2 = [v8 identifier];
          v14 = [identifier2 containsString:v32];

LABEL_34:
          v7 = v36;
LABEL_35:

          goto LABEL_36;
        }

        identifier3 = [v8 identifier];
        v26 = identifier3;
        v27 = @"_Down";
LABEL_25:
        v29 = [identifier3 containsString:v27];

        goto LABEL_26;
      }

      if (v23)
      {
        identifier3 = [v8 identifier];
        v26 = identifier3;
        v27 = @"_Up";
        goto LABEL_25;
      }
    }

    else
    {
      [v16 yMagnitude];
      if (v28 <= 0.0)
      {
        [v16 yMagnitude];
      }
    }

    v29 = 0;
    goto LABEL_26;
  }

LABEL_36:
  [v7 setChecked:v14];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = SCATRecipeActionsController;
  pathCopy = path;
  [(SCATRecipeActionsController *)&v21 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(SCATRecipeActionsController *)self specifierForIndexPath:pathCopy, v21.receiver, v21.super_class];

  v8 = [v7 propertyForKey:@"Action"];
  gestureRecorderNavigationController = self->_gestureRecorderNavigationController;
  self->_gestureRecorderNavigationController = 0;

  v10 = [v8 isEqualToString:AXSwitchRecipeMappingActionGesture];
  v11 = AXSwitchRecipeMappingActionHoldAtPoint;
  if ((v10 & 1) != 0 || [v8 isEqualToString:AXSwitchRecipeMappingActionHoldAtPoint])
  {
    [(AXGestureRecorderMainViewController *)self->_gestureRecorder setDelegate:0];
    if ([v8 isEqualToString:v11])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = [[AXGestureRecorderMainViewController alloc] initWithType:v12];
    gestureRecorder = self->_gestureRecorder;
    self->_gestureRecorder = v13;

    [(AXGestureRecorderMainViewController *)self->_gestureRecorder setDelegate:self];
    v15 = [[UINavigationController alloc] initWithRootViewController:self->_gestureRecorder];
    [(UINavigationController *)v15 setModalPresentationStyle:0];
    [(UINavigationController *)v15 _setIgnoreAppSupportedOrientations:1];
    v16 = self->_gestureRecorderNavigationController;
    self->_gestureRecorderNavigationController = v15;
    v17 = v15;

    [(SCATRecipeActionsController *)self presentViewController:v17 animated:1 completion:0];
  }

  else
  {
    forLongPress = [(SCATRecipeActionsController *)self forLongPress];
    mapping = [(SCATRecipeActionsController *)self mapping];
    v20 = mapping;
    if (forLongPress)
    {
      [mapping setLongPressGesture:0];
    }

    else
    {
      [mapping setGesture:0];
    }

    [(SCATRecipeActionsController *)self _handleSelectActionForSpecifier:v7];
  }
}

- (BOOL)_isNewMapping
{
  recipe = [(SCATRecipeActionsController *)self recipe];
  mappings = [recipe mappings];
  mapping = [(SCATRecipeActionsController *)self mapping];
  v6 = [mappings containsObject:mapping];

  return v6 ^ 1;
}

- (id)_rootRecipeEditController
{
  parentController = [(SCATRecipeActionsController *)self parentController];
  if (parentController)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2ParentController = [parentController parentController];

      parentController = v2ParentController;
    }

    while (v2ParentController);
  }

  return parentController;
}

- (BOOL)_popToLongPressController
{
  _insertLongPressController = [(SCATRecipeActionsController *)self _insertLongPressController];
  if (_insertLongPressController)
  {
    [(SCATRecipeActionsController *)self popToViewController:_insertLongPressController animated:1 destinationClass:objc_opt_class()];
  }

  return _insertLongPressController != 0;
}

- (id)_insertLongPressController
{
  rootController = [(SCATRecipeActionsController *)self rootController];
  viewControllers = [rootController viewControllers];

  v5 = [viewControllers indexOfObjectPassingTest:&__block_literal_global_357];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v7 = v5;
    v6 = objc_alloc_init(SCATRecipeLongPressController);
    recipe = [(SCATRecipeActionsController *)self recipe];
    [(SCATRecipeLongPressController *)v6 setRecipe:recipe];

    mapping = [(SCATRecipeActionsController *)self mapping];
    [(SCATRecipeLongPressController *)v6 setMapping:mapping];

    specifier = [(SCATRecipeActionsController *)self specifier];
    [(SCATRecipeLongPressController *)v6 setSpecifier:specifier];

    v11 = [viewControllers mutableCopy];
    [v11 insertObject:v6 atIndex:v7 + 1];
    rootController2 = [(SCATRecipeActionsController *)self rootController];
    [rootController2 setViewControllers:v11 animated:0];
  }

  return v6;
}

BOOL __57__SCATRecipeActionsController__insertLongPressController__block_invoke(id a1, PSController *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_removeLongPressController
{
  rootController = [(SCATRecipeActionsController *)self rootController];
  viewControllers = [rootController viewControllers];

  v4 = [viewControllers indexOfObjectPassingTest:&__block_literal_global_359];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [viewControllers mutableCopy];
    [v6 removeObjectAtIndex:v5];
    rootController2 = [(SCATRecipeActionsController *)self rootController];
    [rootController2 setViewControllers:v6 animated:0];
  }
}

BOOL __57__SCATRecipeActionsController__removeLongPressController__block_invoke(id a1, PSController *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_handleSelectActionForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v5 = +[AXSettings sharedInstance];
  assistiveTouchLongPressEnabled = [v5 assistiveTouchLongPressEnabled];

  v39 = [(SCATRecipeActionsController *)self indexPathForSpecifier:specifierCopy];
  [(SCATRecipeActionsController *)self updateVisibleCellsWithCheckedSelection:?];
  v7 = [specifierCopy propertyForKey:@"Action"];
  _isNewMapping = [(SCATRecipeActionsController *)self _isNewMapping];
  if ([(SCATRecipeActionsController *)self forLongPress])
  {
    mapping = [(SCATRecipeActionsController *)self mapping];
    [mapping setLongPressAction:v7];
    v10 = 0;
    v11 = 0;
  }

  else
  {
    if (_isNewMapping)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      mapping2 = [(SCATRecipeActionsController *)self mapping];
      action = [mapping2 action];
      v14 = AXSwitchRecipeMappingActionAllowsLongPress();

      v15 = AXSwitchRecipeMappingActionAllowsLongPress();
      v11 = (v14 ^ 1) & v15;
      v10 = v14 & (v15 ^ 1);
    }

    mapping = [(SCATRecipeActionsController *)self mapping];
    [mapping setAction:v7];
  }

  forLongPress = [(SCATRecipeActionsController *)self forLongPress];
  v17 = [specifierCopy objectForKeyedSubscript:@"AXGameControlButtonPress"];
  mapping3 = [(SCATRecipeActionsController *)self mapping];
  v19 = mapping3;
  if (forLongPress)
  {
    [mapping3 setLongPressGameControlButtonPress:v17];
  }

  else
  {
    [mapping3 setGameControlButtonPress:v17];
  }

  if (_isNewMapping)
  {
    recipe = [(SCATRecipeActionsController *)self recipe];
    mappings = [recipe mappings];
    mapping4 = [(SCATRecipeActionsController *)self mapping];
    v23 = [mappings arrayByAddingObject:mapping4];

    if (!v23)
    {
      mapping5 = [(SCATRecipeActionsController *)self mapping];
      v40 = mapping5;
      v23 = [NSArray arrayWithObjects:&v40 count:1];
    }

    recipe2 = [(SCATRecipeActionsController *)self recipe];
    [recipe2 setMappings:v23];

    v26 = +[AXSettings sharedInstance];
    recipe3 = [(SCATRecipeActionsController *)self recipe];
    [v26 saveRecipe:recipe3];

    if (assistiveTouchLongPressEnabled && AXSwitchRecipeMappingActionAllowsLongPress())
    {
      v28 = +[AXSettings sharedInstance];
      mapping6 = [(SCATRecipeActionsController *)self mapping];
      switchUUID = [mapping6 switchUUID];
      v31 = [v28 switchForUUID:switchUUID];

      if ([v31 supportsLongPress])
      {
        _popToLongPressController = [(SCATRecipeActionsController *)self _popToLongPressController];

        if (_popToLongPressController)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    _rootRecipeEditController = [(SCATRecipeActionsController *)self _rootRecipeEditController];
    [(SCATRecipeActionsController *)self popToViewController:_rootRecipeEditController animated:1 destinationClass:objc_opt_class()];

    goto LABEL_24;
  }

  v33 = +[AXSettings sharedInstance];
  recipe4 = [(SCATRecipeActionsController *)self recipe];
  [v33 saveRecipe:recipe4];

  if (v11)
  {
    _insertLongPressController = [(SCATRecipeActionsController *)self _insertLongPressController];
  }

  else if (v10)
  {
    [(SCATRecipeActionsController *)self _removeLongPressController];
  }

LABEL_24:
  gestureRecorderNavigationController = self->_gestureRecorderNavigationController;
  if (gestureRecorderNavigationController)
  {
    [(UINavigationController *)gestureRecorderNavigationController dismissViewControllerAnimated:1 completion:0];
  }

  completion = self->completion;
  if (completion)
  {
    completion[2]();
  }
}

- (void)gestureRecorder:(id)recorder saveReplayableGesture:(id)gesture
{
  gestureCopy = gesture;
  forLongPress = [(SCATRecipeActionsController *)self forLongPress];
  mapping = [(SCATRecipeActionsController *)self mapping];
  v8 = mapping;
  if (forLongPress)
  {
    [mapping setLongPressGesture:gestureCopy];
  }

  else
  {
    [mapping setGesture:gestureCopy];
  }

  gestureActionSpecifier = [(SCATRecipeActionsController *)self gestureActionSpecifier];
  [(SCATRecipeActionsController *)self _handleSelectActionForSpecifier:gestureActionSpecifier];
}

- (void)gestureRecorder:(id)recorder savePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  mapping = [(SCATRecipeActionsController *)self mapping];
  [mapping setHoldPoint:{x, y}];

  holdPointActionSpecifier = [(SCATRecipeActionsController *)self holdPointActionSpecifier];
  [(SCATRecipeActionsController *)self _handleSelectActionForSpecifier:holdPointActionSpecifier];
}

@end
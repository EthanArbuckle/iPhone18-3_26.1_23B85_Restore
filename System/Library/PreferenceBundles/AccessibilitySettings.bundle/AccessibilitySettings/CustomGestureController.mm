@interface CustomGestureController
- (BOOL)_shouldDisableCreateNewGestureButton;
- (BOOL)gestureRecorder:(id)recorder canSaveGestureWithName:(id)name;
- (NSArray)customGestureSpecifiers;
- (id)nameForItem:(id)item;
- (id)setName:(id)name forItem:(id)item;
- (id)specifierForKey:(id)key withSpecifiers:(id)specifiers;
- (id)specifiers;
- (void)_createCustomGesture;
- (void)_disableCreateNewGestureButton:(BOOL)button animated:(BOOL)animated;
- (void)_hideSpecifiersDuringEditing:(BOOL)editing animated:(BOOL)animated;
- (void)gestureRecorder:(id)recorder saveGestureWithPropertyListRepresentation:(id)representation;
- (void)gestureRecorder:(id)recorder saveNamedReplayableGesture:(id)gesture;
- (void)handleExternalSettingsChange;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CustomGestureController

- (id)nameForItem:(id)item
{
  itemCopy = item;
  name = [itemCopy name];
  hasLocalizableName = [itemCopy hasLocalizableName];

  if (hasLocalizableName)
  {
    if (ASTBundle_onceToken != -1)
    {
      [CustomGestureController nameForItem:];
    }

    v6 = [ASTBundle__astBundle localizedStringForKey:name value:&stru_25D420 table:@"LocalizedStrings"];

    name = v6;
  }

  return name;
}

- (id)setName:(id)name forItem:(id)item
{
  itemCopy = item;
  [itemCopy setName:name];
  [itemCopy setHasLocalizableName:0];

  return itemCopy;
}

- (void)handleExternalSettingsChange
{
  if (([(CustomGestureController *)self isEditing]& 1) == 0)
  {
    v3.receiver = self;
    v3.super_class = CustomGestureController;
    [(AXNamedItemsListController *)&v3 handleExternalSettingsChange];
    [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:1];
  }
}

- (NSArray)customGestureSpecifiers
{
  v3 = +[NSMutableArray array];
  customGesturesTitle = [(CustomGestureController *)self customGesturesTitle];
  v5 = [PSSpecifier groupSpecifierWithName:customGesturesTitle];

  v6 = PSKeyNameKey;
  [v5 setProperty:@"CustomGestureHeading" forKey:PSKeyNameKey];
  customGesturesExplanatoryText = [(CustomGestureController *)self customGesturesExplanatoryText];

  if (customGesturesExplanatoryText)
  {
    customGesturesExplanatoryText2 = [(CustomGestureController *)self customGesturesExplanatoryText];
    [v5 setProperty:customGesturesExplanatoryText2 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v5];
  namedItemSpecifiers = [(AXNamedItemsListController *)self namedItemSpecifiers];
  [v3 addObjectsFromArray:namedItemSpecifiers];

  _shouldDisableCreateNewGestureButton = [(CustomGestureController *)self _shouldDisableCreateNewGestureButton];
  v11 = settingsLocString(@"CreateCustomGesture", @"HandSettings");
  if (_shouldDisableCreateNewGestureButton)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  if (_shouldDisableCreateNewGestureButton)
  {
    v13 = &kCFBooleanFalse;
  }

  else
  {
    v13 = &kCFBooleanTrue;
  }

  v14 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:v12 edit:0];

  [v14 setProperty:@"CreateCustomGesture" forKey:v6];
  [v14 setProperty:*v13 forKey:PSEnabledKey];
  [v14 setButtonAction:"_createCustomGesture"];
  v17 = @"path";
  v18 = @"CreateCustomGesture";
  v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v14 setProperty:v15 forKey:@"URLDictionary"];

  [v3 addObject:v14];

  return v3;
}

- (id)specifierForKey:(id)key withSpecifiers:(id)specifiers
{
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  specifiersCopy = specifiers;
  v7 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = PSKeyNameKey;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(specifiersCopy);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 propertyForKey:{v10, v17}];
        v14 = [v13 isEqualToString:keyCopy];

        if (v14)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v8 = [specifiersCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)_shouldDisableCreateNewGestureButton
{
  if ([(CustomGestureController *)self maximumNumberOfCustomGestures])
  {
    _customGestures = [(CustomGestureController *)self _customGestures];
    v4 = [_customGestures count];
    if (v4 >= [(CustomGestureController *)self maximumNumberOfCustomGestures])
    {
      isEditing = 1;
    }

    else
    {
      isEditing = [(CustomGestureController *)self isEditing];
    }

    return isEditing;
  }

  else
  {

    return [(CustomGestureController *)self isEditing];
  }
}

- (void)_disableCreateNewGestureButton:(BOOL)button animated:(BOOL)animated
{
  buttonCopy = button;
  v6 = [(CustomGestureController *)self specifiers:button];
  v12 = [(CustomGestureController *)self specifierForKey:@"CreateCustomGesture" withSpecifiers:v6];

  v7 = [v12 propertyForKey:PSTableCellKey];
  v8 = !buttonCopy;
  v9 = !buttonCopy;
  if (buttonCopy)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  v11 = &kCFBooleanFalse;
  if (v9)
  {
    v11 = &kCFBooleanTrue;
  }

  [v12 setProperty:*v11 forKey:PSEnabledKey];
  [v7 setCellEnabled:v8];
  [v7 setAccessoryType:v8];
  [v12 setCellType:v10];
}

- (void)_hideSpecifiersDuringEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (!self->_hiddenSpecifiers)
  {
    v9 = objc_alloc_init(NSMutableArray);
    hiddenSpecifiers = self->_hiddenSpecifiers;
    self->_hiddenSpecifiers = v9;

    if (editingCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [(NSMutableArray *)self->_hiddenSpecifiers copy];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke_3;
    v15 = &unk_256190;
    selfCopy = self;
    v17 = v11;
    v18 = animatedCopy;
    v8 = v11;
    dispatch_async(&_dispatch_main_q, &v12);
    [(NSMutableArray *)self->_hiddenSpecifiers removeAllObjects:v12];
    [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:animatedCopy];

    goto LABEL_6;
  }

  if (!editing)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:animatedCopy];
  specifiers = [(CustomGestureController *)self specifiers];
  v8 = [NSMutableArray arrayWithArray:specifiers];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke;
  v21[3] = &unk_256D58;
  v21[4] = self;
  [v8 enumerateObjectsUsingBlock:v21];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke_2;
  block[3] = &unk_2554E8;
  block[4] = self;
  v20 = animatedCopy;
  dispatch_async(&_dispatch_main_q, block);
LABEL_6:
}

void __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 propertyForKey:PSKeyNameKey];
  v4 = [*(a1 + 32) _isGestureNameSpecifier:v5];
  if (([v3 isEqualToString:@"CustomGestureHeading"] & 1) == 0 && (v4 & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"CreateCustomGesture") & 1) == 0)
  {
    [*(*(a1 + 32) + 176) addObject:v5];
  }
}

void __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) specifiers];
  v3 = [v2 ax_containsObjectUsingBlock:&__block_literal_global_24];

  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v4 insertContiguousSpecifiers:v5 atIndex:0 animated:v6];
  }
}

BOOL __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke_4(id a1, PSSpecifier *a2)
{
  v2 = [(PSSpecifier *)a2 propertyForKey:PSKeyNameKey];
  v3 = [v2 isEqualToString:@"CustomGestureHeading"];

  return v3;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    customGestureSpecifiers = [(CustomGestureController *)self customGestureSpecifiers];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = customGestureSpecifiers;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_createCustomGesture
{
  if (!self->_gestureRecorderMainViewController)
  {
    v3 = [AXGestureRecorderMainViewController alloc];
    if ([(CustomGestureController *)self shouldRecordRealTimeGesture])
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    v5 = [v3 initWithType:v4];
    gestureRecorderMainViewController = self->_gestureRecorderMainViewController;
    self->_gestureRecorderMainViewController = v5;

    [(AXGestureRecorderMainViewController *)self->_gestureRecorderMainViewController setDelegate:self];
  }

  v7 = [[UINavigationController alloc] initWithRootViewController:self->_gestureRecorderMainViewController];
  [v7 setModalPresentationStyle:0];
  [v7 _setIgnoreAppSupportedOrientations:1];
  [(CustomGestureController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(CustomGestureController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:PSKeyNameKey];
  v10 = [v9 isEqualToString:@"CreateCustomGesture"];

  if (v10)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

    [(CustomGestureController *)self _createCustomGesture];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CustomGestureController;
    [(AXNamedItemsListController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(CustomGestureController *)self willBecomeActive];
  v5.receiver = self;
  v5.super_class = CustomGestureController;
  [(AXNamedItemsListController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(CustomGestureController *)self willResignActive];
  v5.receiver = self;
  v5.super_class = CustomGestureController;
  [(CustomGestureController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(CustomGestureController *)self isEditing]!= editing)
  {
    if (editingCopy)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      table = [(CustomGestureController *)self table];
      visibleCells = [table visibleCells];

      v9 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(visibleCells);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if ([v14 isEditing])
            {
              v11 = 1;
              [v14 setEditing:0 animated:1];
            }
          }

          v10 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);

        if ((v11 & 1) == 0)
        {
          goto LABEL_15;
        }

        visibleCells = [(CustomGestureController *)self table];
        [visibleCells reloadData];
      }
    }

LABEL_15:
    v15.receiver = self;
    v15.super_class = CustomGestureController;
    [(CustomGestureController *)&v15 setEditing:editingCopy animated:animatedCopy];
    [(CustomGestureController *)self _hideSpecifiersDuringEditing:editingCopy animated:animatedCopy];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v6.receiver = self;
  v6.super_class = CustomGestureController;
  [(AXNamedItemsListController *)&v6 tableView:view commitEditingStyle:style forRowAtIndexPath:path];
  [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:0];
}

- (BOOL)gestureRecorder:(id)recorder canSaveGestureWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    [(AXNamedItemsListController *)self valueInSettings];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          name = [*(*(&v15 + 1) + 8 * i) name];
          v12 = [name isEqualToString:nameCopy];

          if (v12)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)gestureRecorder:(id)recorder saveGestureWithPropertyListRepresentation:(id)representation
{
  v8 = [AXNamedReplayableGesture gestureWithLegacyFormatDictionary:representation];
  valueInSettings = [(AXNamedItemsListController *)self valueInSettings];
  if (valueInSettings)
  {
    v6 = valueInSettings;
    v7 = [valueInSettings arrayByAddingObject:v8];
  }

  else
  {
    v7 = [[NSArray alloc] initWithObjects:{v8, 0}];
  }

  [(AXNamedItemsListController *)self setValueInSettings:v7];
}

- (void)gestureRecorder:(id)recorder saveNamedReplayableGesture:(id)gesture
{
  gestureCopy = gesture;
  valueInSettings = [(AXNamedItemsListController *)self valueInSettings];
  if (valueInSettings)
  {
    v7 = valueInSettings;
    v8 = [valueInSettings arrayByAddingObject:gestureCopy];

    gestureCopy = v7;
  }

  else
  {
    v8 = [NSArray arrayWithObject:gestureCopy];
  }

  [(AXNamedItemsListController *)self setValueInSettings:v8];
}

@end
@interface CustomGestureController
- (BOOL)_shouldDisableCreateNewGestureButton;
- (BOOL)gestureRecorder:(id)a3 canSaveGestureWithName:(id)a4;
- (NSArray)customGestureSpecifiers;
- (id)nameForItem:(id)a3;
- (id)setName:(id)a3 forItem:(id)a4;
- (id)specifierForKey:(id)a3 withSpecifiers:(id)a4;
- (id)specifiers;
- (void)_createCustomGesture;
- (void)_disableCreateNewGestureButton:(BOOL)a3 animated:(BOOL)a4;
- (void)_hideSpecifiersDuringEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)gestureRecorder:(id)a3 saveGestureWithPropertyListRepresentation:(id)a4;
- (void)gestureRecorder:(id)a3 saveNamedReplayableGesture:(id)a4;
- (void)handleExternalSettingsChange;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CustomGestureController

- (id)nameForItem:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v3 hasLocalizableName];

  if (v5)
  {
    if (ASTBundle_onceToken != -1)
    {
      [CustomGestureController nameForItem:];
    }

    v6 = [ASTBundle__astBundle localizedStringForKey:v4 value:&stru_25D420 table:@"LocalizedStrings"];

    v4 = v6;
  }

  return v4;
}

- (id)setName:(id)a3 forItem:(id)a4
{
  v5 = a4;
  [v5 setName:a3];
  [v5 setHasLocalizableName:0];

  return v5;
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
  v4 = [(CustomGestureController *)self customGesturesTitle];
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  v6 = PSKeyNameKey;
  [v5 setProperty:@"CustomGestureHeading" forKey:PSKeyNameKey];
  v7 = [(CustomGestureController *)self customGesturesExplanatoryText];

  if (v7)
  {
    v8 = [(CustomGestureController *)self customGesturesExplanatoryText];
    [v5 setProperty:v8 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v5];
  v9 = [(AXNamedItemsListController *)self namedItemSpecifiers];
  [v3 addObjectsFromArray:v9];

  v10 = [(CustomGestureController *)self _shouldDisableCreateNewGestureButton];
  v11 = settingsLocString(@"CreateCustomGesture", @"HandSettings");
  if (v10)
  {
    v12 = 4;
  }

  else
  {
    v12 = 1;
  }

  if (v10)
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

- (id)specifierForKey:(id)a3 withSpecifiers:(id)a4
{
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 propertyForKey:{v10, v17}];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    v3 = [(CustomGestureController *)self _customGestures];
    v4 = [v3 count];
    if (v4 >= [(CustomGestureController *)self maximumNumberOfCustomGestures])
    {
      v5 = 1;
    }

    else
    {
      v5 = [(CustomGestureController *)self isEditing];
    }

    return v5;
  }

  else
  {

    return [(CustomGestureController *)self isEditing];
  }
}

- (void)_disableCreateNewGestureButton:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(CustomGestureController *)self specifiers:a3];
  v12 = [(CustomGestureController *)self specifierForKey:@"CreateCustomGesture" withSpecifiers:v6];

  v7 = [v12 propertyForKey:PSTableCellKey];
  v8 = !v4;
  v9 = !v4;
  if (v4)
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

- (void)_hideSpecifiersDuringEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!self->_hiddenSpecifiers)
  {
    v9 = objc_alloc_init(NSMutableArray);
    hiddenSpecifiers = self->_hiddenSpecifiers;
    self->_hiddenSpecifiers = v9;

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = [(NSMutableArray *)self->_hiddenSpecifiers copy];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __65__CustomGestureController__hideSpecifiersDuringEditing_animated___block_invoke_3;
    v15 = &unk_256190;
    v16 = self;
    v17 = v11;
    v18 = v4;
    v8 = v11;
    dispatch_async(&_dispatch_main_q, &v12);
    [(NSMutableArray *)self->_hiddenSpecifiers removeAllObjects:v12];
    [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:v4];

    goto LABEL_6;
  }

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:v4];
  v7 = [(CustomGestureController *)self specifiers];
  v8 = [NSMutableArray arrayWithArray:v7];

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
  v20 = v4;
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
    v5 = [(CustomGestureController *)self customGestureSpecifiers];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CustomGestureController *)self specifierForIndexPath:v6];
  v9 = [v8 propertyForKey:PSKeyNameKey];
  v10 = [v9 isEqualToString:@"CreateCustomGesture"];

  if (v10)
  {
    [v7 deselectRowAtIndexPath:v6 animated:1];

    [(CustomGestureController *)self _createCustomGesture];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CustomGestureController;
    [(AXNamedItemsListController *)&v11 tableView:v7 didSelectRowAtIndexPath:v6];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(CustomGestureController *)self willBecomeActive];
  v5.receiver = self;
  v5.super_class = CustomGestureController;
  [(AXNamedItemsListController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(CustomGestureController *)self willResignActive];
  v5.receiver = self;
  v5.super_class = CustomGestureController;
  [(CustomGestureController *)&v5 viewWillDisappear:v3];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(CustomGestureController *)self isEditing]!= a3)
  {
    if (v5)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [(CustomGestureController *)self table];
      v8 = [v7 visibleCells];

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if ([v14 isEditing])
            {
              v11 = 1;
              [v14 setEditing:0 animated:1];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);

        if ((v11 & 1) == 0)
        {
          goto LABEL_15;
        }

        v8 = [(CustomGestureController *)self table];
        [v8 reloadData];
      }
    }

LABEL_15:
    v15.receiver = self;
    v15.super_class = CustomGestureController;
    [(CustomGestureController *)&v15 setEditing:v5 animated:v4];
    [(CustomGestureController *)self _hideSpecifiersDuringEditing:v5 animated:v4];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6.receiver = self;
  v6.super_class = CustomGestureController;
  [(AXNamedItemsListController *)&v6 tableView:a3 commitEditingStyle:a4 forRowAtIndexPath:a5];
  [(CustomGestureController *)self _disableCreateNewGestureButton:[(CustomGestureController *)self _shouldDisableCreateNewGestureButton] animated:0];
}

- (BOOL)gestureRecorder:(id)a3 canSaveGestureWithName:(id)a4
{
  v5 = a4;
  if ([v5 length])
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

          v11 = [*(*(&v15 + 1) + 8 * i) name];
          v12 = [v11 isEqualToString:v5];

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

- (void)gestureRecorder:(id)a3 saveGestureWithPropertyListRepresentation:(id)a4
{
  v8 = [AXNamedReplayableGesture gestureWithLegacyFormatDictionary:a4];
  v5 = [(AXNamedItemsListController *)self valueInSettings];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 arrayByAddingObject:v8];
  }

  else
  {
    v7 = [[NSArray alloc] initWithObjects:{v8, 0}];
  }

  [(AXNamedItemsListController *)self setValueInSettings:v7];
}

- (void)gestureRecorder:(id)a3 saveNamedReplayableGesture:(id)a4
{
  v5 = a4;
  v6 = [(AXNamedItemsListController *)self valueInSettings];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 arrayByAddingObject:v5];

    v5 = v7;
  }

  else
  {
    v8 = [NSArray arrayWithObject:v5];
  }

  [(AXNamedItemsListController *)self setValueInSettings:v8];
}

@end
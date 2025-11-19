@interface ASTCustomizeMouseButtonsController
- (ASTCustomizeMouseButtonsController)init;
- (BOOL)_shouldAllowEditing;
- (BOOL)_shouldAllowEditingForRowAtIndexPath:(id)a3;
- (id)_buttonAction:(id)a3;
- (id)_specIdentifierForButtonNumber:(int64_t)a3;
- (id)_updatedMouseForExistingMouse:(id)a3;
- (id)getCurrentActionForHomeActionListController:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addMouseButton:(id)a3 specifier:(id)a4;
- (void)_settingsUpdated;
- (void)_stopFiltering:(id)a3;
- (void)_updateMouse;
- (void)_updateSpecifiersForAutoHideSettingsChange;
- (void)homeActionListController:(id)a3 selectedAction:(id)a4;
- (void)mouseEventListener:(id)a3 customizableMouse:(id)a4 interceptedMouseButton:(int64_t)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive;
@end

@implementation ASTCustomizeMouseButtonsController

- (ASTCustomizeMouseButtonsController)init
{
  v12.receiver = self;
  v12.super_class = ASTCustomizeMouseButtonsController;
  v2 = [(ASTCustomizeMouseButtonsController *)&v12 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[AXSettings sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __42__ASTCustomizeMouseButtonsController_init__block_invoke;
    v9[3] = &unk_255388;
    objc_copyWeak(&v10, &location);
    [v3 registerUpdateBlock:v9 forRetrieveSelector:"assistiveTouchMouseCustomizedClickActions" withListener:v2];

    objc_destroyWeak(&v10);
    v4 = +[AXSettings sharedInstance];
    v2->_showingAutoHideSettings = [v4 assistiveTouchEyeTrackingAutoHideEnabled];

    v5 = +[AXSettings sharedInstance];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __42__ASTCustomizeMouseButtonsController_init__block_invoke_2;
    v7[3] = &unk_255388;
    objc_copyWeak(&v8, &location);
    [v5 registerUpdateBlock:v7 forRetrieveSelector:"assistiveTouchEyeTrackingAutoHideEnabled" withListener:v2];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __42__ASTCustomizeMouseButtonsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _settingsUpdated];
}

void __42__ASTCustomizeMouseButtonsController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpecifiersForAutoHideSettingsChange];
}

- (BOOL)_shouldAllowEditing
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 assistiveTouchMouseCustomizedClickActions];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __57__ASTCustomizeMouseButtonsController__shouldAllowEditing__block_invoke;
  v5[3] = &unk_2567B8;
  v5[4] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

id __57__ASTCustomizeMouseButtonsController__shouldAllowEditing__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 hasCustomActions];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)_shouldAllowEditingForRowAtIndexPath:(id)a3
{
  v3 = [(ASTCustomizeMouseButtonsController *)self specifierForIndexPath:a3];
  v4 = [v3 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
  v5 = v4 != 0;

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ASTCustomizeMouseButtonsController;
  [(ASTCustomizeMouseButtonsController *)&v6 viewWillAppear:a3];
  if ([(ASTCustomizeMouseButtonsController *)self _shouldAllowEditing])
  {
    v4 = [(ASTCustomizeMouseButtonsController *)self editButtonItem];
    v5 = [(ASTCustomizeMouseButtonsController *)self navigationItem];
    [v5 setRightBarButtonItem:v4];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = ASTCustomizeMouseButtonsController;
  [(ASTCustomizeMouseButtonsController *)&v13 viewDidAppear:a3];
  if ([(ASTCustomizeMouseButtonsController *)self shouldShowCustomActionsRequireASTAlert])
  {
    [(ASTCustomizeMouseButtonsController *)self setShouldShowCustomActionsRequireASTAlert:0];
    v4 = +[AXSettings sharedInstance];
    v5 = [v4 laserEnabled];

    if (v5)
    {
      v6 = settingsLocString(@"ASTRequiredForCustomActionsAlertTitle", @"Accessibility-hello");
      v7 = settingsLocString(@"ASTRequiredForCustomActionsAlertMessage", @"Accessibility-hello");
      v8 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];

      v9 = settingsLocString(@"ASTRequiredForCustomActionsAlertCancel", @"Accessibility-hello");
      v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:&__block_literal_global_18];

      [v8 addAction:v10];
      v11 = settingsLocString(@"ASTRequiredForCustomActionsAlertConfirm", @"Accessibility-hello");
      v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&__block_literal_global_315];

      [v8 addAction:v12];
      [(ASTCustomizeMouseButtonsController *)self presentViewController:v8 animated:1 completion:0];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ASTCustomizeMouseButtonsController;
  [(ASTCustomizeMouseButtonsController *)&v4 viewWillDisappear:a3];
  [(ASTCustomizeMouseButtonsController *)self _stopFiltering:0];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = ASTCustomizeMouseButtonsController;
  [(ASTCustomizeMouseButtonsController *)&v3 willResignActive];
  [(ASTCustomizeMouseButtonsController *)self _stopFiltering:0];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASTCustomizeMouseButtonsController;
  [ASTCustomizeMouseButtonsController setEditing:"setEditing:animated:" animated:?];
  [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] setEditing:v5 animated:v4];
  v7 = [(ASTCustomizeMouseButtonsController *)self specifierForID:@"AX_ADD_BUTTON_IDENTIFIER"];
  v8 = [NSNumber numberWithInt:v5 ^ 1];
  [v7 setProperty:v8 forKey:PSEnabledKey];

  [(ASTCustomizeMouseButtonsController *)self reloadSpecifier:v7 animated:1];
}

- (id)specifiers
{
  if (!self->_customizableMouse)
  {
    v3 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
    v4 = [v3 objectForKey:@"AX_CUSTOMIZABLE_MOUSE_KEY"];

    v5 = [(ASTCustomizeMouseButtonsController *)self _updatedMouseForExistingMouse:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
    customizableMouse = self->_customizableMouse;
    self->_customizableMouse = v8;
  }

  if (!self->_mouseEventListener)
  {
    v10 = +[AXMouseEventListener sharedInstance];
    mouseEventListener = self->_mouseEventListener;
    self->_mouseEventListener = v10;

    [(AXMouseEventListener *)self->_mouseEventListener addObserver:self];
  }

  v12 = OBJC_IVAR___PSViewController__specifier;
  v13 = [*&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v14 = [v13 objectForKey:@"AX_CUSTOMIZABLE_MOUSE_BEHAVES_LIKE_EYETRACKER"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = [*&self->AXUISettingsBaseListController_opaque[v12] userInfo];
    v17 = [v16 objectForKey:@"AX_CUSTOMIZABLE_MOUSE_ASSOCIATED_EYETRACKER"];

    if (v17)
    {
      [(ASTCustomizeMouseButtonsController *)self setEyeTracker:v17];
    }
  }

  v18 = OBJC_IVAR___PSListController__specifiers;
  v19 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v19)
  {
    v53 = +[NSMutableArray array];
    v20 = [*&self->AXUISettingsBaseListController_opaque[v12] userInfo];
    v21 = [v20 objectForKey:@"AX_CUSTOMIZABLE_MOUSE_IS_CONNECTED_KEY"];
    v22 = [v21 BOOLValue];

    if (v22)
    {
      v23 = settingsLocString(@"AddNewButtonToCustomize", @"HandSettings");
      v24 = [PSSpecifier preferenceSpecifierNamed:v23 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v24 setButtonAction:"_addMouseButton:specifier:"];
      [v24 setIdentifier:@"AX_ADD_BUTTON_IDENTIFIER"];
      [v53 addObject:v24];
    }

    v25 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
    v26 = +[AXSettings sharedInstance];
    v27 = [v26 laserEnabled];

    if (v27)
    {
      v28 = settingsLocString(@"CustomizeButtonsFooterText", @"Accessibility-hello");
      [v25 setProperty:v28 forKey:PSFooterTextGroupKey];
    }

    [v53 addObject:v25];
    v29 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
    v30 = [v29 hasCustomActions];

    if (v30)
    {
      v51 = v25;
      v52 = v18;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v31 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
      v32 = [v31 buttonsWithCustomActions];

      v33 = [v32 countByEnumeratingWithState:&v54 objects:v58 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v55;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v55 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v54 + 1) + 8 * i);
            v38 = settingsLocString(@"CustomButtonName", @"HandSettings");
            v39 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v38, [v37 integerValue]);

            v40 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:0 get:"_buttonAction:" detail:objc_opt_class() cell:2 edit:0];
            v41 = -[ASTCustomizeMouseButtonsController _specIdentifierForButtonNumber:](self, "_specIdentifierForButtonNumber:", [v37 integerValue]);
            [v40 setIdentifier:v41];

            [v40 setProperty:&off_279D50 forKey:@"HomeAction"];
            [v40 setProperty:v37 forKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
            [v53 addObject:v40];
          }

          v34 = [v32 countByEnumeratingWithState:&v54 objects:v58 count:16];
        }

        while (v34);
      }

      v25 = v51;
      v18 = v52;
    }

    v42 = [(ASTCustomizeMouseButtonsController *)self eyeTracker];

    if (v42)
    {
      v43 = [(ASTCustomizeMouseButtonsController *)self motionTrackingSettingsHelper];

      if (!v43)
      {
        v44 = [ASTMotionTrackingSettingsHelper alloc];
        v45 = [(ASTCustomizeMouseButtonsController *)self eyeTracker];
        v46 = [(ASTMotionTrackingSettingsHelper *)v44 initWithEyeTracker:v45];
        [(ASTCustomizeMouseButtonsController *)self setMotionTrackingSettingsHelper:v46];
      }

      v47 = [(ASTCustomizeMouseButtonsController *)self motionTrackingSettingsHelper];
      v48 = [v47 specifiers];
      [v53 axSafelyAddObjectsFromArray:v48];
    }

    v49 = *&self->AXUISettingsBaseListController_opaque[v18];
    *&self->AXUISettingsBaseListController_opaque[v18] = v53;

    v19 = *&self->AXUISettingsBaseListController_opaque[v18];
  }

  return v19;
}

- (id)selectSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = ASTCustomizeMouseButtonsController;
  v4 = [(ASTCustomizeMouseButtonsController *)&v6 selectSpecifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setDelegate:self];
  }

  return v4;
}

- (id)_buttonAction:(id)a3
{
  v4 = [a3 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
  v5 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
  v6 = [v5 customActionForButtonNumber:{objc_msgSend(v4, "integerValue")}];

  if (v6)
  {
    v7 = AXUIAssistiveTouchStringForName();
    v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  }

  else
  {
    v8 = AXParameterizedLocalizedString();
  }

  return v8;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(ASTCustomizeMouseButtonsController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v10 = [(ASTCustomizeMouseButtonsController *)self specifierForIndexPath:a5];
    v7 = [v10 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
    v8 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
    [v8 setCustomAction:0 forButtonNumber:{objc_msgSend(v7, "integerValue")}];

    [(ASTCustomizeMouseButtonsController *)self _updateMouse];
    [(ASTCustomizeMouseButtonsController *)self removeSpecifier:v10 animated:1];
    if (![(ASTCustomizeMouseButtonsController *)self _shouldAllowEditing])
    {
      v9 = [(ASTCustomizeMouseButtonsController *)self navigationItem];
      [v9 setRightBarButtonItem:0];

      [(ASTCustomizeMouseButtonsController *)self setEditing:0 animated:1];
    }
  }
}

- (id)_specIdentifierForButtonNumber:(int64_t)a3
{
  v4 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
  v5 = [v4 identifier];
  v6 = [NSString stringWithFormat:@"%@-%li", v5, a3];

  return v6;
}

- (void)_addMouseButton:(id)a3 specifier:(id)a4
{
  v5 = settingsLocString(@"AddNewButtonToCustomizeAlertTitle", @"HandSettings");
  v6 = settingsLocString(@"AddNewButtonToCustomizeAlertInstructions", @"HandSettings");
  v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = settingsLocString(@"CANCEL", @"Accessibility");
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __64__ASTCustomizeMouseButtonsController__addMouseButton_specifier___block_invoke;
  v11[3] = &unk_2557A8;
  v11[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v11];

  [v7 addAction:v9];
  v10 = [(ASTCustomizeMouseButtonsController *)self mouseEventListener];
  [v10 beginFilteringButtonEvents];

  [(ASTCustomizeMouseButtonsController *)self presentViewController:v7 animated:1 completion:0];
}

void __64__ASTCustomizeMouseButtonsController__addMouseButton_specifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mouseEventListener];
  [v1 endFilteringButtonEvents];
}

- (void)_stopFiltering:(id)a3
{
  v7 = a3;
  v4 = [(ASTCustomizeMouseButtonsController *)self mouseEventListener];
  [v4 endFilteringButtonEvents];

  v5 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];

  if (v5)
  {
    v6 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];
    [v6 dismissViewControllerAnimated:1 completion:v7];
  }

  else if (v7)
  {
    v7[2]();
  }
}

- (void)_settingsUpdated
{
  v3 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
  obj = [(ASTCustomizeMouseButtonsController *)self _updatedMouseForExistingMouse:v3];

  if (obj)
  {
    objc_storeStrong(&self->_customizableMouse, obj);
  }

  [(ASTCustomizeMouseButtonsController *)self reloadSpecifiers];
}

- (id)_updatedMouseForExistingMouse:(id)a3
{
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = 0;
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 assistiveTouchMouseCustomizedClickActions];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = __68__ASTCustomizeMouseButtonsController__updatedMouseForExistingMouse___block_invoke;
  v14 = &unk_256820;
  v6 = v3;
  v15 = v6;
  v16 = &v17;
  [v5 enumerateObjectsUsingBlock:&v11];

  v7 = v18[5];
  if (!v7)
  {
    v8 = [&__NSDictionary0__struct mutableCopy];
    [v6 setButtonMap:v8];

    v7 = v6;
  }

  v9 = v7;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __68__ASTCustomizeMouseButtonsController__updatedMouseForExistingMouse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqualToMouse:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_updateMouse
{
  v4 = +[AXSettings sharedInstance];
  v3 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
  [v4 updateCustomizableMouse:v3];
}

- (void)_updateSpecifiersForAutoHideSettingsChange
{
  v3 = +[AXSettings sharedInstance];
  if ([v3 assistiveTouchEyeTrackingAutoHideEnabled])
  {
    v4 = [(ASTCustomizeMouseButtonsController *)self showingAutoHideSettings];

    if ((v4 & 1) == 0)
    {
      v5 = [(ASTCustomizeMouseButtonsController *)self motionTrackingSettingsHelper];
      v6 = [v5 autoHideTimeoutAndSliderContiguousSpecs];
      [(ASTCustomizeMouseButtonsController *)self insertContiguousSpecifiers:v6 afterSpecifierID:@"AutoHideSwitchSpecifierKey" animated:1];

      v7 = self;
      v8 = 1;
LABEL_11:

      [(ASTCustomizeMouseButtonsController *)v7 setShowingAutoHideSettings:v8];
      return;
    }
  }

  else
  {
  }

  v12 = +[AXSettings sharedInstance];
  if (([v12 assistiveTouchEyeTrackingAutoHideEnabled] & 1) == 0)
  {
    v9 = [(ASTCustomizeMouseButtonsController *)self showingAutoHideSettings];

    if (!v9)
    {
      return;
    }

    v10 = [(ASTCustomizeMouseButtonsController *)self motionTrackingSettingsHelper];
    v11 = [v10 autoHideTimeoutAndSliderContiguousSpecs];
    [(ASTCustomizeMouseButtonsController *)self removeContiguousSpecifiers:v11 animated:1];

    v7 = self;
    v8 = 0;
    goto LABEL_11;
  }
}

- (void)mouseEventListener:(id)a3 customizableMouse:(id)a4 interceptedMouseButton:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
  v11 = [v10 isEqualToMouse:v9];

  if (v11)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v12 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];
      v15 = [v14 actions];
      v16 = [v15 count];

      if (v16 == &dword_0 + 1)
      {
        v17 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];
        v18 = [v17 view];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke;
        v21[3] = &unk_256848;
        v21[4] = v22;
        [v18 _enumerateDescendentViews:v21];
      }

      else
      {
        v17 = AXLogSettings();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v19 = [(ASTCustomizeMouseButtonsController *)self presentedViewController];
          [ASTCustomizeMouseButtonsController mouseEventListener:v19 customizableMouse:buf interceptedMouseButton:v17];
        }
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke_2;
    v20[3] = &unk_256870;
    v20[4] = self;
    v20[5] = v22;
    v20[6] = a5;
    [(ASTCustomizeMouseButtonsController *)self _stopFiltering:v20];
    _Block_object_dispose(v22, 8);
  }
}

void __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  AXSafeClassFromString();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 safeBoolForKey:@"isHighlighted"];
    *a3 = 1;
  }
}

void __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v2 = [*(a1 + 32) customizableMouse];
    v3 = [v2 customActionForButtonNumber:*(a1 + 48)];

    if (!v3)
    {
      v4 = [*(a1 + 32) customizableMouse];
      [v4 setDefaultActionForButtonNumber:*(a1 + 48)];
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke_3;
    v6[3] = &unk_255B80;
    v5 = *(a1 + 48);
    v6[4] = *(a1 + 32);
    v6[5] = v5;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void __98__ASTCustomizeMouseButtonsController_mouseEventListener_customizableMouse_interceptedMouseButton___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateMouse];
  v4 = [*(a1 + 32) _specIdentifierForButtonNumber:*(a1 + 40)];
  v2 = [*(a1 + 32) specifierForID:?];
  if (v2)
  {
    v3 = [*(a1 + 32) selectSpecifier:v2];
    if (v3)
    {
      [*(a1 + 32) showController:v3 animate:1];
    }
  }
}

- (id)getCurrentActionForHomeActionListController:(id)a3
{
  v4 = a3;
  if ([v4 homeActionType] == &dword_4 + 1)
  {
    v5 = [v4 specifier];
    v6 = [v5 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
    v7 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
    v8 = [v7 customActionForButtonNumber:{objc_msgSend(v6, "integerValue")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)homeActionListController:(id)a3 selectedAction:(id)a4
{
  v16 = a3;
  v6 = a4;
  if ([v16 homeActionType] == &dword_4 + 1)
  {
    v7 = [v16 specifier];
    v8 = [v7 propertyForKey:@"AX_MOUSE_BUTTON_NUMBER_KEY"];
    v9 = [v8 integerValue];

    v10 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
    v11 = [v10 customActionForButtonNumber:v9];
    v12 = [v11 isEqualToString:v6];

    if ((v12 & 1) == 0)
    {
      v13 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
      [v13 setCustomAction:v6 forButtonNumber:v9];

      [(ASTCustomizeMouseButtonsController *)self _updateMouse];
      v14 = [(ASTCustomizeMouseButtonsController *)self customizableMouse];
      if ([v14 customActionsRequireAssistiveTouch])
      {
        v15 = _AXSAssistiveTouchEnabled() == 0;
      }

      else
      {
        v15 = 0;
      }

      [(ASTCustomizeMouseButtonsController *)self setShouldShowCustomActionsRequireASTAlert:v15];
    }
  }
}

- (void)mouseEventListener:(void *)a1 customizableMouse:(uint8_t *)buf interceptedMouseButton:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Unexpected alert shown in customize mouse buttons controller: %@", buf, 0xCu);
}

@end
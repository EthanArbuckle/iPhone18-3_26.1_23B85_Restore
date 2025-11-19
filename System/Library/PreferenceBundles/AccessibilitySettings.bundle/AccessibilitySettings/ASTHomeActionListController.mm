@interface ASTHomeActionListController
- (ASTHomeActionListController)init;
- (ASTHomeActionListControllerDelegate)delegate;
- (BOOL)isTimeoutSection:(int64_t)a3;
- (id)_timeoutValue:(id)a3;
- (id)adjustedASTIndexPath:(id)a3;
- (id)prependedSystemIcons;
- (id)specifiers;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)homeActionType;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ASTHomeActionListController

- (id)prependedSystemIcons
{
  v3 = [NSMutableArray arrayWithObject:@"__NONE__"];
  v4 = [(ASTHomeActionListController *)self homeActionType];
  v5 = &AXAssistiveTouchIconTypeOpenMenu;
  if (v4 == 1)
  {
    v8 = &AXAssistiveTouchIconTypePassThroughToApp;
    goto LABEL_6;
  }

  if (v4 != 5)
  {
    goto LABEL_8;
  }

  [v3 addObject:AXAssistiveTouchIconTypeMousePrimaryClick];
  v6 = +[AXSettings sharedInstance];
  v7 = [v6 laserEnabled];

  v8 = &AXAssistiveTouchIconTypeOpenMenu;
  if (v7)
  {
    v5 = &AXAssistiveTouchIconTypeMouseSecondaryClick;
LABEL_6:
    [v3 addObject:*v5];
  }

  v5 = v8;
LABEL_8:
  [v3 addObject:*v5];

  return v3;
}

- (unint64_t)homeActionType
{
  v2 = [(ASTHomeActionListController *)self specifier];
  v3 = [v2 propertyForKey:@"HomeAction"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (id)_timeoutValue:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  if ([(ASTHomeActionListController *)self homeActionType]== &dword_0 + 2)
  {
    v5 = [v4 assistiveTouchDoubleTapAction];

    if (v5)
    {
      [v4 assistiveTouchDoubleTapActionTimeout];
LABEL_7:
      v7 = AXLocalizedTimeSummary();
      goto LABEL_9;
    }
  }

  if ([(ASTHomeActionListController *)self homeActionType]== &dword_0 + 3)
  {
    v6 = [v4 assistiveTouchLongPressAction];

    if (v6)
    {
      [v4 assistiveTouchLongPressActionDuration];
      goto LABEL_7;
    }
  }

  v7 = settingsLocString(@"OFF", @"Accessibility");
LABEL_9:
  v8 = v7;

  return v8;
}

- (ASTHomeActionListController)init
{
  v8.receiver = self;
  v8.super_class = ASTHomeActionListController;
  v2 = [(ASTHomeActionListController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    v4 = [NSMutableSet setWithArray:&off_27CBA8];
    [v3 setAllowedTrackingTypes:v4];
    v5 = [[AXSSMotionTrackingInputManager alloc] initWithConfiguration:v3];
    motionTrackingInputManager = v2->_motionTrackingInputManager;
    v2->_motionTrackingInputManager = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[AXSiriShortcutsManager sharedManager];
  [v3 unregisterShortcutsDidChangeBlock:self->_siriShortcutToken];

  v4.receiver = self;
  v4.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_37;
  }

  v32 = OBJC_IVAR___PSListController__specifiers;
  v33 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v4 = +[AXSiriShortcutsManager sharedManager];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = __41__ASTHomeActionListController_specifiers__block_invoke;
  v42[3] = &unk_256718;
  objc_copyWeak(&v43, &location);
  v5 = [v4 registerShortcutsDidChangeBlock:v42];
  siriShortcutToken = self->_siriShortcutToken;
  self->_siriShortcutToken = v5;

  if ([(ASTHomeActionListController *)self _supportsTimeout])
  {
    if ([(ASTHomeActionListController *)self homeActionType]== &dword_0 + 2)
    {
      v7 = settingsLocString(@"DOUBLE_TAP_TIMEOUT", @"HandSettings");
      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:"_timeoutValue:" detail:objc_opt_class() cell:2 edit:0];

      [v8 setIdentifier:@"ASTDoubleTapTimeoutSpecifier"];
      [v33 addObject:v8];
      v9 = +[AXSettings sharedInstance];
      v10 = v40;
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = __41__ASTHomeActionListController_specifiers__block_invoke_2;
      v40[3] = &unk_255818;
      v11 = &v41;
      objc_copyWeak(&v41, &location);
      v12 = v8;
      v40[4] = v12;
      [v9 registerUpdateBlock:v40 forRetrieveSelector:"assistiveTouchDoubleTapActionTimeout" withListener:self];
    }

    else
    {
      if ([(ASTHomeActionListController *)self homeActionType]!= &dword_0 + 3)
      {
        goto LABEL_8;
      }

      v13 = settingsLocString(@"LONG_PRESS_DURATION", @"HandSettings");
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_timeoutValue:" detail:objc_opt_class() cell:2 edit:0];

      [v14 setIdentifier:@"ASTLongPressDurationSpecifier"];
      [v33 addObject:v14];
      v9 = +[AXSettings sharedInstance];
      v10 = v38;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = __41__ASTHomeActionListController_specifiers__block_invoke_3;
      v38[3] = &unk_255818;
      v11 = &v39;
      objc_copyWeak(&v39, &location);
      v12 = v14;
      v38[4] = v12;
      [v9 registerUpdateBlock:v38 forRetrieveSelector:"assistiveTouchLongPressActionDuration" withListener:self];
    }

    objc_destroyWeak(v11);
  }

LABEL_8:
  if ([(ASTHomeActionListController *)self homeActionType]== &dword_4 + 2 || [(ASTHomeActionListController *)self homeActionType]== &dword_4 + 3 || [(ASTHomeActionListController *)self homeActionType]== &dword_8 || [(ASTHomeActionListController *)self homeActionType]== &dword_8 + 1)
  {
    v15 = +[AXSettings sharedInstance];
    v31 = [v15 assistiveTouchHeadTrackingEnabled];

    v16 = [(ASTHomeActionListController *)self motionTrackingInputManager];
    v17 = [v16 compatibleInputs];
    v18 = [NSMutableArray arrayWithArray:v17];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v20)
    {
      v21 = *v35;
      while (2)
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v34 + 1) + 8 * i);
          v24 = +[AXSettings sharedInstance];
          v25 = [v24 assistiveTouchMouseOnDeviceEyeTrackingEnabled] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v23, "isCamera") && objc_msgSend(v23, "trackingType") == &dword_0 + 3;

          objc_opt_class();
          v26 = (objc_opt_isKindOfClass() & 1) != 0 && [v23 isHIDDevice] && objc_msgSend(v23, "trackingType") == &dword_0 + 2;
          if (v25 || v26)
          {
            v27 = 1;
            goto LABEL_31;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_31:

    if (v31)
    {
      [(AssistiveTouchCustomizeBaseActionPickerController *)self setPrependHeadTrackingIcons:1];
    }

    if (v27)
    {
      [(AssistiveTouchCustomizeBaseActionPickerController *)self setPrependEyeTrackingIcons:1];
    }
  }

  [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadASTDataSource];
  v28 = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconSpecifiers];
  [v33 addObjectsFromArray:v28];

  v29 = *&self->super.AXUISettingsBaseListController_opaque[v32];
  *&self->super.AXUISettingsBaseListController_opaque[v32] = v33;

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
  v3 = *&self->super.AXUISettingsBaseListController_opaque[v32];
LABEL_37:

  return v3;
}

void __41__ASTHomeActionListController_specifiers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

void __41__ASTHomeActionListController_specifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

void __41__ASTHomeActionListController_specifiers__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifier:*(a1 + 32)];
}

- (void)loadView
{
  v3 = AXAssistiveTouchDisallowedBaseActions();
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __39__ASTHomeActionListController_loadView__block_invoke;
  v6[3] = &unk_257B98;
  v4 = v3;
  v7 = v4;
  objc_copyWeak(&v9, &location);
  v8 = self;
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setIconFilter:v6];
  v5.receiver = self;
  v5.super_class = ASTHomeActionListController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v5 loadView];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

uint64_t __39__ASTHomeActionListController_loadView__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[4] containsObject:v3])
  {
    goto LABEL_2;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = [WeakRetained homeActionType];

  if (v6 != &dword_0 + 1)
  {
LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  if (([v3 isEqualToString:AXAssistiveTouchIconTypePinch] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypeRotate) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypePinchAndRotate) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypeTap) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypeDoubleTap) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypeForceTap) & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", AXAssistiveTouchIconTypeLongPress) & 1) == 0 && (objc_msgSend(v3, "hasPrefix:", AXASTCustomGesturePrefixName) & 1) == 0)
  {
    if ([a1[5] inSetup])
    {
      v4 = [v3 isEqualToString:AXAssistiveTouchIconTypeCommandAndControl] ^ 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_2:
  v4 = 0;
LABEL_15:

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASTHomeActionListController *)self delegate];

  if (v5)
  {
    v6 = [(ASTHomeActionListController *)self delegate];
    v7 = [v6 getCurrentActionForHomeActionListController:self];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v7];
  }

  v8 = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [v8 setDelegate:self];

  v9 = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [v9 startMonitoring];

  v10.receiver = self;
  v10.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v10 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [v5 stopMonitoring];

  v6.receiver = self;
  v6.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v6 viewWillDisappear:v3];
}

- (BOOL)isTimeoutSection:(int64_t)a3
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return [(ASTHomeActionListController *)self _supportsTimeout];
  }
}

- (id)adjustedASTIndexPath:(id)a3
{
  v4 = a3;
  if ([(ASTHomeActionListController *)self _supportsTimeout])
  {
    v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v4 row], -[ASTHomeActionListController adjustedASTSection:](self, "adjustedASTSection:", objc_msgSend(v4, "section")));
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
  if (!-[ASTHomeActionListController isTimeoutSection:](self, "isTimeoutSection:", [v7 section]))
  {
    v8 = [(ASTHomeActionListController *)self adjustedASTIndexPath:v7];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:v6 didSelectRowAtIndexPath:v8];
    v9 = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
    v10 = [(ASTHomeActionListController *)self delegate];

    if (v10)
    {
      v11 = [(ASTHomeActionListController *)self delegate];
      [v11 homeActionListController:self selectedAction:v9];
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if (!-[ASTHomeActionListController isTimeoutSection:](self, "isTimeoutSection:", [v9 section]))
  {
    v10 = [(ASTHomeActionListController *)self adjustedASTIndexPath:v9];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:v11 willDisplayCell:v8 forRowAtIndexPath:v10];
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if ([(ASTHomeActionListController *)self isTimeoutSection:a4])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AssistiveTouchCustomizeBaseActionPickerController *)self astTitleForSection:[(ASTHomeActionListController *)self adjustedASTSection:a4]];
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(ASTHomeActionListController *)self isTimeoutSection:a4])
  {
    return 1;
  }

  v7 = [(ASTHomeActionListController *)self adjustedASTSection:a4];

  return [(AssistiveTouchCustomizeBaseActionPickerController *)self astNumberOfRowsInSection:v7];
}

- (ASTHomeActionListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
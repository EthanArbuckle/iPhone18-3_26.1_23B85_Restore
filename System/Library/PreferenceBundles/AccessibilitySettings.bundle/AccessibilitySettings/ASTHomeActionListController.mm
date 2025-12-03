@interface ASTHomeActionListController
- (ASTHomeActionListController)init;
- (ASTHomeActionListControllerDelegate)delegate;
- (BOOL)isTimeoutSection:(int64_t)section;
- (id)_timeoutValue:(id)value;
- (id)adjustedASTIndexPath:(id)path;
- (id)prependedSystemIcons;
- (id)specifiers;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)homeActionType;
- (void)dealloc;
- (void)loadView;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ASTHomeActionListController

- (id)prependedSystemIcons
{
  v3 = [NSMutableArray arrayWithObject:@"__NONE__"];
  homeActionType = [(ASTHomeActionListController *)self homeActionType];
  v5 = &AXAssistiveTouchIconTypeOpenMenu;
  if (homeActionType == 1)
  {
    v8 = &AXAssistiveTouchIconTypePassThroughToApp;
    goto LABEL_6;
  }

  if (homeActionType != 5)
  {
    goto LABEL_8;
  }

  [v3 addObject:AXAssistiveTouchIconTypeMousePrimaryClick];
  v6 = +[AXSettings sharedInstance];
  laserEnabled = [v6 laserEnabled];

  v8 = &AXAssistiveTouchIconTypeOpenMenu;
  if (laserEnabled)
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
  specifier = [(ASTHomeActionListController *)self specifier];
  v3 = [specifier propertyForKey:@"HomeAction"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)_timeoutValue:(id)value
{
  v4 = +[AXSettings sharedInstance];
  if ([(ASTHomeActionListController *)self homeActionType]== &dword_0 + 2)
  {
    assistiveTouchDoubleTapAction = [v4 assistiveTouchDoubleTapAction];

    if (assistiveTouchDoubleTapAction)
    {
      [v4 assistiveTouchDoubleTapActionTimeout];
LABEL_7:
      v7 = AXLocalizedTimeSummary();
      goto LABEL_9;
    }
  }

  if ([(ASTHomeActionListController *)self homeActionType]== &dword_0 + 3)
  {
    assistiveTouchLongPressAction = [v4 assistiveTouchLongPressAction];

    if (assistiveTouchLongPressAction)
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
    assistiveTouchHeadTrackingEnabled = [v15 assistiveTouchHeadTrackingEnabled];

    motionTrackingInputManager = [(ASTHomeActionListController *)self motionTrackingInputManager];
    compatibleInputs = [motionTrackingInputManager compatibleInputs];
    v18 = [NSMutableArray arrayWithArray:compatibleInputs];

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

    if (assistiveTouchHeadTrackingEnabled)
    {
      [(AssistiveTouchCustomizeBaseActionPickerController *)self setPrependHeadTrackingIcons:1];
    }

    if (v27)
    {
      [(AssistiveTouchCustomizeBaseActionPickerController *)self setPrependEyeTrackingIcons:1];
    }
  }

  [(AssistiveTouchCustomizeBaseActionPickerController *)self reloadASTDataSource];
  iconSpecifiers = [(AssistiveTouchCustomizeBaseActionPickerController *)self iconSpecifiers];
  [v33 addObjectsFromArray:iconSpecifiers];

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
  selfCopy = self;
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

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  delegate = [(ASTHomeActionListController *)self delegate];

  if (delegate)
  {
    delegate2 = [(ASTHomeActionListController *)self delegate];
    v7 = [delegate2 getCurrentActionForHomeActionListController:self];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v7];
  }

  motionTrackingInputManager = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [motionTrackingInputManager setDelegate:self];

  motionTrackingInputManager2 = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [motionTrackingInputManager2 startMonitoring];

  v10.receiver = self;
  v10.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v10 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  motionTrackingInputManager = [(ASTHomeActionListController *)self motionTrackingInputManager];
  [motionTrackingInputManager stopMonitoring];

  v6.receiver = self;
  v6.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v6 viewWillDisappear:disappearCopy];
}

- (BOOL)isTimeoutSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return [(ASTHomeActionListController *)self _supportsTimeout];
  }
}

- (id)adjustedASTIndexPath:(id)path
{
  pathCopy = path;
  if ([(ASTHomeActionListController *)self _supportsTimeout])
  {
    v5 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row], -[ASTHomeActionListController adjustedASTSection:](self, "adjustedASTSection:", objc_msgSend(pathCopy, "section")));
  }

  else
  {
    v5 = pathCopy;
  }

  v6 = v5;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = ASTHomeActionListController;
  [(ASTHomeActionListController *)&v12 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  if (!-[ASTHomeActionListController isTimeoutSection:](self, "isTimeoutSection:", [pathCopy section]))
  {
    v8 = [(ASTHomeActionListController *)self adjustedASTIndexPath:pathCopy];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:viewCopy didSelectRowAtIndexPath:v8];
    selectedPopoverIcon = [(AssistiveTouchCustomizeBaseActionPickerController *)self selectedPopoverIcon];
    delegate = [(ASTHomeActionListController *)self delegate];

    if (delegate)
    {
      delegate2 = [(ASTHomeActionListController *)self delegate];
      [delegate2 homeActionListController:self selectedAction:selectedPopoverIcon];
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  if (!-[ASTHomeActionListController isTimeoutSection:](self, "isTimeoutSection:", [pathCopy section]))
  {
    v10 = [(ASTHomeActionListController *)self adjustedASTIndexPath:pathCopy];
    [(AssistiveTouchCustomizeBaseActionPickerController *)self astTableView:viewCopy willDisplayCell:cellCopy forRowAtIndexPath:v10];
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if ([(ASTHomeActionListController *)self isTimeoutSection:section])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(AssistiveTouchCustomizeBaseActionPickerController *)self astTitleForSection:[(ASTHomeActionListController *)self adjustedASTSection:section]];
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(ASTHomeActionListController *)self isTimeoutSection:section])
  {
    return 1;
  }

  v7 = [(ASTHomeActionListController *)self adjustedASTSection:section];

  return [(AssistiveTouchCustomizeBaseActionPickerController *)self astNumberOfRowsInSection:v7];
}

- (ASTHomeActionListControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
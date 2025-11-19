@interface AssistiveTouchCustomizeController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_iconPickerDone:(id)a3;
- (void)_resetCustomization:(id)a3 specifier:(id)a4;
- (void)customCell:(id)a3 wantsPickerDisplayedForIconKey:(id)a4 andLocation:(id)a5 cell:(id)a6;
- (void)dealloc;
- (void)didUpdateCustomizeCellHeight;
- (void)loadView;
- (void)stepperCellCountChanged:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AssistiveTouchCustomizeController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = settingsLocString(@"CUSTOMIZE_TOP_LEVEL_MENU_NAVIGATION_BAR", @"HandSettings");
    [(AssistiveTouchCustomizeController *)self setTitle:v6];

    v7 = settingsLocString(@"CUSTOMIZE_TITLE", @"HandSettings");
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    [v5 addObject:v8];
    v9 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v10 = objc_opt_class();
    v11 = PSCellClassKey;
    [v9 setProperty:v10 forKey:PSCellClassKey];
    v12 = PSIDKey;
    [v9 setProperty:@"ASTCustomizeCell" forKey:PSIDKey];
    [v5 addObject:v9];
    v13 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v13 setProperty:objc_opt_class() forKey:v11];
    [v13 setProperty:@"ASTStepperCell" forKey:v12];
    [v5 addObject:v13];
    v14 = +[PSSpecifier emptyGroupSpecifier];

    [v5 addObject:v14];
    v15 = settingsLocString(@"RESET_CUSTOMIZE", @"HandSettings");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v16 setProperty:@"Reset" forKey:v12];
    [v16 setButtonAction:"_resetCustomization:specifier:"];
    v17 = [NSNumber numberWithInt:2];
    [v16 setProperty:v17 forKey:PSAlignmentKey];

    [v5 addObject:v16];
    v18 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)loadView
{
  v3 = [NSMutableSet setWithObjects:AXAssistiveTouchIconTypeTap, AXAssistiveTouchIconTypeTorch, AXAssistiveTouchIconTypeAssistiveTouch, AXAssistiveTouchIconTypeClassicInvert, AXAssistiveTouchIconTypeColorFilters, AXAssistiveTouchIconTypeMagnifier, AXAssistiveTouchIconTypeVoiceOver, AXAssistiveTouchIconTypeSmartInvert, AXAssistiveTouchIconTypeZoom, AXAssistiveTouchIconTypeZoomController, AXAssistiveTouchIconTypeSwitchControl, AXAssistiveTouchIconTypeFullKeyboardAccess, AXAssistiveTouchIconTypeConfirmApplePay, AXAssistiveTouchIconTypeEyeTrackingBubbleMode, AXAssistiveTouchIconTypeEyeTrackingAutoHide, AXAssistiveTouchIconTypeHeadTrackingBubbleMode, 0];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__AssistiveTouchCustomizeController_loadView__block_invoke;
  v6[3] = &unk_258870;
  v4 = v3;
  v7 = v4;
  objc_copyWeak(&v8, &location);
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setIconFilter:v6];
  v5.receiver = self;
  v5.super_class = AssistiveTouchCustomizeController;
  [(AssistiveTouchCustomizeBaseActionPickerController *)&v5 loadView];
  [*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] setSeparatorStyle:1];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

id __45__AssistiveTouchCustomizeController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained searchText];
  v7 = [v6 length];

  if (v7)
  {
    v8 = AXUIAssistiveTouchStringForName();
    if (v4)
    {
      v9 = 0;
    }

    else
    {
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 searchText];
      v9 = [v8 localizedCaseInsensitiveContainsString:v11];
    }
  }

  else
  {
    v9 = (v4 ^ 1);
  }

  return v9;
}

- (void)_resetCustomization:(id)a3 specifier:(id)a4
{
  v4 = [AXSettings sharedInstance:a3];
  [v4 setAssistiveTouchMainScreenCustomization:0];

  v5 = +[AXSettings sharedInstance];
  [v5 setAssistiveTouchOrbAction:0];

  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchSingleTapAction:0];

  v7 = +[AXSettings sharedInstance];
  [v7 setAssistiveTouchDoubleTapAction:0];

  v8 = +[AXSettings sharedInstance];
  [v8 setAssistiveTouchLongPressAction:0];
}

- (void)stepperCellCountChanged:(id)a3
{
  v3 = a3;
  v4 = +[AXSettings sharedInstance];
  v7 = [v4 assistiveTouchMainScreenCustomization];

  [v3 buttonCount];
  v5 = AXAssistiveTouchChangeIconCount();
  v6 = +[AXSettings sharedInstance];
  [v6 setAssistiveTouchMainScreenCustomization:v5];
}

- (void)dealloc
{
  [(AssistiveTouchCustomizeController *)self _cleanupIconPickerTableView];
  v3.receiver = self;
  v3.super_class = AssistiveTouchCustomizeController;
  [(AssistiveTouchCustomizeController *)&v3 dealloc];
}

- (void)customCell:(id)a3 wantsPickerDisplayedForIconKey:(id)a4 andLocation:(id)a5 cell:(id)a6
{
  v26 = a3;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  [(AssistiveTouchCustomizeController *)self _cleanupIconPickerTableView];
  v13 = [[ASTIconPickerTableViewController alloc] initWithStyle:2];
  iconPickerTableViewController = self->_iconPickerTableViewController;
  self->_iconPickerTableViewController = v13;

  [(ASTIconPickerTableViewController *)self->_iconPickerTableViewController setIconPickerDelegate:self];
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:v12];

  [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverLocation:v11];
  LODWORD(v11) = AXDeviceIsPad();
  v15 = [UINavigationController alloc];
  if (v11)
  {
    v16 = [v15 initWithRootViewController:self->_iconPickerTableViewController];
    [v16 setModalPresentationStyle:7];
    v17 = [v16 popoverPresentationController];
    iconPickerPopoverController = self->_iconPickerPopoverController;
    self->_iconPickerPopoverController = v17;

    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setSourceView:v26];
    v19 = [v10 borderView];
    v20 = [v10 borderView];
    [v20 bounds];
    [v19 convertRect:v26 toView:?];
    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setSourceRect:?];

    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setPermittedArrowDirections:1];
    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setDelegate:self];
  }

  else
  {
    v16 = [v15 initWithNavigationBarClass:0 toolbarClass:0];
    [v16 pushViewController:self->_iconPickerTableViewController animated:1];
    v21 = [v16 navigationBar];
    v22 = [v21 topItem];
    [v22 setTitle:0];

    v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_iconPickerDone:"];
    v24 = [v16 navigationBar];
    v25 = [v24 topItem];
    [v25 setRightBarButtonItem:v23];

    [v16 setModalPresentationStyle:0];
  }

  [(AssistiveTouchCustomizeController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)didUpdateCustomizeCellHeight
{
  v3 = [(AssistiveTouchCustomizeController *)self table];
  [v3 beginUpdates];

  v4 = [(AssistiveTouchCustomizeController *)self table];
  [v4 endUpdates];
}

- (void)_iconPickerDone:(id)a3
{
  v4 = [(ASTIconPickerTableViewController *)self->_iconPickerTableViewController parentViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __53__AssistiveTouchCustomizeController__iconPickerDone___block_invoke;
  v5[3] = &unk_2553B0;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = AssistiveTouchCustomizeController;
  v8 = [(AssistiveTouchCustomizeController *)&v11 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = __UIAccessibilitySafeClass();

  if (v12 == 1)
  {
    abort();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setStepperDelegate:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setDelegate:self];
      objc_storeStrong(&self->_customizeCell, v9);
    }
  }

  [v9 setCellEnabled:1];

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = AssistiveTouchCustomizeController;
  [(AssistiveTouchCustomizeController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(AssistiveTouchCustomizeController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:PSIDKey];
  if ([v5 isEqualToString:@"Reset"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 propertyForKey:@"HomeAction"];
    v6 = v7 != 0;
  }

  return v6;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AssistiveTouchCustomizeController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:PSIDKey];
  v10 = [v9 isEqualToString:@"ASTCustomizeCell"];

  if (v10)
  {
    v11 = UITableViewAutomaticDimension;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = AssistiveTouchCustomizeController;
    [(AssistiveTouchCustomizeController *)&v14 tableView:v6 heightForRowAtIndexPath:v7];
    v11 = v12;
  }

  return v11;
}

@end
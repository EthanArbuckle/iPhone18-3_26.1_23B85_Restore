@interface AssistiveTouchCustomizeController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_iconPickerDone:(id)done;
- (void)_resetCustomization:(id)customization specifier:(id)specifier;
- (void)customCell:(id)cell wantsPickerDisplayedForIconKey:(id)key andLocation:(id)location cell:(id)a6;
- (void)dealloc;
- (void)didUpdateCustomizeCellHeight;
- (void)loadView;
- (void)stepperCellCountChanged:(id)changed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)_resetCustomization:(id)customization specifier:(id)specifier
{
  v4 = [AXSettings sharedInstance:customization];
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

- (void)stepperCellCountChanged:(id)changed
{
  changedCopy = changed;
  v4 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v4 assistiveTouchMainScreenCustomization];

  [changedCopy buttonCount];
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

- (void)customCell:(id)cell wantsPickerDisplayedForIconKey:(id)key andLocation:(id)location cell:(id)a6
{
  cellCopy = cell;
  v10 = a6;
  locationCopy = location;
  keyCopy = key;
  [(AssistiveTouchCustomizeController *)self _cleanupIconPickerTableView];
  v13 = [[ASTIconPickerTableViewController alloc] initWithStyle:2];
  iconPickerTableViewController = self->_iconPickerTableViewController;
  self->_iconPickerTableViewController = v13;

  [(ASTIconPickerTableViewController *)self->_iconPickerTableViewController setIconPickerDelegate:self];
  [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverIcon:keyCopy];

  [(AssistiveTouchCustomizeBaseActionPickerController *)self setSelectedPopoverLocation:locationCopy];
  LODWORD(locationCopy) = AXDeviceIsPad();
  v15 = [UINavigationController alloc];
  if (locationCopy)
  {
    v16 = [v15 initWithRootViewController:self->_iconPickerTableViewController];
    [v16 setModalPresentationStyle:7];
    popoverPresentationController = [v16 popoverPresentationController];
    iconPickerPopoverController = self->_iconPickerPopoverController;
    self->_iconPickerPopoverController = popoverPresentationController;

    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setSourceView:cellCopy];
    borderView = [v10 borderView];
    borderView2 = [v10 borderView];
    [borderView2 bounds];
    [borderView convertRect:cellCopy toView:?];
    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setSourceRect:?];

    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setPermittedArrowDirections:1];
    [(UIPopoverPresentationController *)self->_iconPickerPopoverController setDelegate:self];
  }

  else
  {
    v16 = [v15 initWithNavigationBarClass:0 toolbarClass:0];
    [v16 pushViewController:self->_iconPickerTableViewController animated:1];
    navigationBar = [v16 navigationBar];
    topItem = [navigationBar topItem];
    [topItem setTitle:0];

    v23 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_iconPickerDone:"];
    navigationBar2 = [v16 navigationBar];
    topItem2 = [navigationBar2 topItem];
    [topItem2 setRightBarButtonItem:v23];

    [v16 setModalPresentationStyle:0];
  }

  [(AssistiveTouchCustomizeController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)didUpdateCustomizeCellHeight
{
  table = [(AssistiveTouchCustomizeController *)self table];
  [table beginUpdates];

  table2 = [(AssistiveTouchCustomizeController *)self table];
  [table2 endUpdates];
}

- (void)_iconPickerDone:(id)done
{
  parentViewController = [(ASTIconPickerTableViewController *)self->_iconPickerTableViewController parentViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __53__AssistiveTouchCustomizeController__iconPickerDone___block_invoke;
  v5[3] = &unk_2553B0;
  v5[4] = self;
  [parentViewController dismissViewControllerAnimated:1 completion:v5];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = AssistiveTouchCustomizeController;
  v8 = [(AssistiveTouchCustomizeController *)&v11 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = AssistiveTouchCustomizeController;
  [(AssistiveTouchCustomizeController *)&v4 tableView:view didSelectRowAtIndexPath:path];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(AssistiveTouchCustomizeController *)self specifierForIndexPath:path];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AssistiveTouchCustomizeController *)self specifierForIndexPath:pathCopy];
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
    [(AssistiveTouchCustomizeController *)&v14 tableView:viewCopy heightForRowAtIndexPath:pathCopy];
    v11 = v12;
  }

  return v11;
}

@end
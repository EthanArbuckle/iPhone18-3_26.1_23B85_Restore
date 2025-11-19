@interface SCATCameraSwitchActionsDwellController
- (double)valueForSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
- (void)viewDidLoad;
@end

@implementation SCATCameraSwitchActionsDwellController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATCameraSwitchActionsDwellController;
  [(SCATCameraSwitchActionsDwellController *)&v6 viewDidLoad];
  v3 = [(SCATCameraSwitchActionsDwellController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = AXParameterizedLocalizedString();
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    v8 = [PSSpecifier ax_stepperSpecifierWithDelegate:self];
    v20[0] = v7;
    v20[1] = v8;
    v9 = [NSArray arrayWithObjects:v20 count:2];
    [v5 addObjectsFromArray:v9];

    v10 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];

    if (!v10)
    {
      v11 = [[ASTDwellMovementToleranceHelper alloc] initWithClientType:1];
      [(SCATCameraSwitchActionsDwellController *)self set_dwellMovementToleranceHelper:v11];

      v12 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
      [v12 setSettingsController:self];

      v13 = settingsLocString(@"MOUSE_POINTER_DWELL_TOLERANCE", @"HandSettings");
      v14 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
      [v14 setToleranceSpecifierGroupTitle:v13];
    }

    v15 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
    v16 = [v15 dwellSpecifiers];
    [v5 axSafelyAddObjectsFromArray:v16];

    v17 = [v5 copy];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (double)valueForSpecifier:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlCameraPointPickerDwellActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlCameraPointPickerDwellActivationTimeout:a4];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(SCATCameraSwitchActionsDwellController *)self valueForSpecifier:a3];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end
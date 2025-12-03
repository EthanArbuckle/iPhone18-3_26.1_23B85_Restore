@interface SCATCameraSwitchActionsDwellController
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
- (void)viewDidLoad;
@end

@implementation SCATCameraSwitchActionsDwellController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SCATCameraSwitchActionsDwellController;
  [(SCATCameraSwitchActionsDwellController *)&v6 viewDidLoad];
  table = [(SCATCameraSwitchActionsDwellController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXUISettingsEditableTableCellWithStepper cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
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

    _dwellMovementToleranceHelper = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];

    if (!_dwellMovementToleranceHelper)
    {
      v11 = [[ASTDwellMovementToleranceHelper alloc] initWithClientType:1];
      [(SCATCameraSwitchActionsDwellController *)self set_dwellMovementToleranceHelper:v11];

      _dwellMovementToleranceHelper2 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
      [_dwellMovementToleranceHelper2 setSettingsController:self];

      v13 = settingsLocString(@"MOUSE_POINTER_DWELL_TOLERANCE", @"HandSettings");
      _dwellMovementToleranceHelper3 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
      [_dwellMovementToleranceHelper3 setToleranceSpecifierGroupTitle:v13];
    }

    _dwellMovementToleranceHelper4 = [(SCATCameraSwitchActionsDwellController *)self _dwellMovementToleranceHelper];
    dwellSpecifiers = [_dwellMovementToleranceHelper4 dwellSpecifiers];
    [v5 axSafelyAddObjectsFromArray:dwellSpecifiers];

    v17 = [v5 copy];
    v18 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v17;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (double)valueForSpecifier:(id)specifier
{
  v3 = +[AXSettings sharedInstance];
  [v3 switchControlCameraPointPickerDwellActivationTimeout];
  v5 = v4;

  return v5;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlCameraPointPickerDwellActivationTimeout:value];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(SCATCameraSwitchActionsDwellController *)self valueForSpecifier:specifier];
  v3 = [NSNumber numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end
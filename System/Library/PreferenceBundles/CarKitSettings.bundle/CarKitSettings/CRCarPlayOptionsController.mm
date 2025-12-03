@interface CRCarPlayOptionsController
- (BOOL)isCarPlayEnabled;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CRCarPlayOptionsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    specifier = [(CRCarPlayOptionsController *)self specifier];
    userInfo = [specifier userInfo];
    [(CRCarPlayOptionsController *)self setVehicleSettingManager:userInfo];

    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"CARPLAY_OPTIONS_PAGE_TITLE" value:&stru_6FD90 table:?];
    [(CRCarPlayOptionsController *)self setTitle:v8];

    v29 = objc_alloc_init(NSMutableArray);
    v9 = [PSSpecifier groupSpecifierWithID:@"OPTIONS_GROUP"];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CARPLAY_OPTIONS_CARPLAY_ULTRA" value:&stru_6FD90 table:@"Localizable"];
    v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v12 setIdentifier:@"OPTIONS_ENABLE"];
    [v12 setProperty:@"ClusterDrawing" forKey:@"CRCarPlayOptionImageNameKey"];
    v13 = objc_opt_class();
    v14 = PSCellClassKey;
    [v12 setProperty:v13 forKey:PSCellClassKey];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CARPLAY_OPTIONS_CARPLAY" value:&stru_6FD90 table:@"Localizable"];
    v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v17 setIdentifier:@"OPTIONS_DISABLE"];
    [v17 setProperty:@"NoClusterDrawing" forKey:@"CRCarPlayOptionImageNameKey"];
    [v17 setProperty:objc_opt_class() forKey:v14];
    vehicleSettingManager = [(CRCarPlayOptionsController *)self vehicleSettingManager];
    isCarPlayUltraEnabled = [vehicleSettingManager isCarPlayUltraEnabled];

    if (isCarPlayUltraEnabled)
    {
      v20 = v12;
    }

    else
    {
      v20 = v17;
    }

    if (isCarPlayUltraEnabled)
    {
      v21 = @"CARPLAY_OPTIONS_CARPLAY_ULTRA_FOOTER";
    }

    else
    {
      v21 = @"CARPLAY_OPTIONS_CARPLAY_FOOTER";
    }

    [v9 setProperty:v20 forKey:PSRadioGroupCheckedSpecifierKey];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v21 value:&stru_6FD90 table:@"Localizable"];

    [v9 setProperty:v23 forKey:PSFooterTextGroupKey];
    v30[0] = v9;
    v30[1] = v12;
    v30[2] = v17;
    v24 = [NSArray arrayWithObjects:v30 count:3];
    optionsSpecifiers = self->_optionsSpecifiers;
    self->_optionsSpecifiers = v24;

    if ([(CRCarPlayOptionsController *)self isCarPlayEnabled])
    {
      [v29 addObjectsFromArray:self->_optionsSpecifiers];
    }

    v26 = [NSArray arrayWithArray:v29];
    v27 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v26;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (BOOL)isCarPlayEnabled
{
  vehicleSettingManager = [(CRCarPlayOptionsController *)self vehicleSettingManager];
  vehicle = [vehicleSettingManager vehicle];

  LOBYTE(vehicleSettingManager) = [vehicle isPaired];
  return vehicleSettingManager;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  vehicleSettingManager = [(CRCarPlayOptionsController *)self vehicleSettingManager];
  isCarPlayUltraEnabled = [vehicleSettingManager isCarPlayUltraEnabled];

  v12 = [(CRCarPlayOptionsController *)self specifierAtIndexPath:pathCopy];

  identifier = [v12 identifier];
  v9 = identifier;
  if ((isCarPlayUltraEnabled & 1) == 0)
  {
    v11 = [identifier isEqualToString:@"OPTIONS_ENABLE"];

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [identifier isEqualToString:@"OPTIONS_DISABLE"];

  if (v10)
  {
LABEL_5:
    [(CRCarPlayOptionsController *)self _showCarPlayUltraConfirmation:isCarPlayUltraEnabled ^ 1];
  }

LABEL_6:
}

@end
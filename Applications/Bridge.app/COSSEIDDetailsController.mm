@interface COSSEIDDetailsController
- (id)SEIDString;
- (id)specifiers;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSSEIDDetailsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    sEIDString = [(COSSEIDDetailsController *)self SEIDString];
    if (sEIDString)
    {
      v6 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:"SEIDString:" detail:0 cell:4 edit:0];
      [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v6 setProperty:&__kCFBooleanTrue forKey:PSCopyableCellKey];
      [v6 setProperty:&__kCFBooleanTrue forKey:PSUseHighLegibilityAlternateKey];
      v10 = v6;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      v8 = *&self->BPSListController_opaque[v3];
      *&self->BPSListController_opaque[v3] = v7;
    }

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (id)SEIDString
{
  device = [(COSSEIDDetailsController *)self device];
  v3 = [device valueForProperty:NRDevicePropertySEID];

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = COSSEIDDetailsController;
  [(COSSEIDDetailsController *)&v16 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"SEID" table:@"About" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"ABOUT" table:@"General" locale:v9 bundleURL:bundleURL];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [v11 initWithKey:@"GENERAL" table:@"Settings" locale:v12 bundleURL:bundleURL];

  v17[0] = v13;
  v17[1] = v10;
  v14 = [NSArray arrayWithObjects:v17 count:2];
  v15 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT/DEVICE_SEID_CELL_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v14 deepLink:v15];
}

@end
@interface COSEIDDetailsController
- (id)EIDString:(id)string;
- (id)specifiers;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSEIDDetailsController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:"EIDString:" detail:0 cell:4 edit:0];
    [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSCopyableCellKey];
    [v5 setProperty:&__kCFBooleanTrue forKey:PSUseHighLegibilityAlternateKey];
    v9 = v5;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7 = *&self->BPSListController_opaque[v3];
    *&self->BPSListController_opaque[v3] = v6;

    v4 = *&self->BPSListController_opaque[v3];
  }

  return v4;
}

- (id)EIDString:(id)string
{
  device = [(COSEIDDetailsController *)self device];
  v4 = [device valueForProperty:NRDevicePropertyCSN];

  if (v4)
  {
    v5 = sub_100052BA8(v4);
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    v5 = [v6 localizedStringForKey:@"N/A" value:&stru_10026E598 table:@"About"];
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = COSEIDDetailsController;
  [(COSEIDDetailsController *)&v16 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"EID" table:@"About" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"ABOUT" table:@"General" locale:v9 bundleURL:bundleURL];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [v11 initWithKey:@"GENERAL" table:@"Settings" locale:v12 bundleURL:bundleURL];

  v17[0] = v13;
  v17[1] = v10;
  v14 = [NSArray arrayWithObjects:v17 count:2];
  v15 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT/EID_CELL_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v14 deepLink:v15];
}

@end
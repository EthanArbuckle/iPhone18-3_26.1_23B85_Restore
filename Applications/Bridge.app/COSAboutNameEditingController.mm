@interface COSAboutNameEditingController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)suspend;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation COSAboutNameEditingController

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = [NSMutableArray arrayWithObject:v6];

    v8 = +[COSAboutDataSource sharedInstance];
    v9 = [PSTextFieldSpecifier preferenceSpecifierNamed:0 target:v8 set:"setDeviceName:specifier:" get:"getDeviceName:" detail:0 cell:8 edit:0];
    textSpecifier = self->_textSpecifier;
    self->_textSpecifier = v9;

    v11 = self->_textSpecifier;
    v12 = +[COSAboutDataSource sharedInstance];
    v13 = [v12 getDeviceName:0];
    [(PSSpecifier *)v11 setPlaceholder:v13];

    [(PSSpecifier *)self->_textSpecifier setProperty:&__kCFBooleanTrue forKey:PSEditableTableCellTextFieldShouldPopOnReturn];
    v14 = sub_10000DB38();
    v15 = [v14 valueForProperty:NRDevicePropertyIsAltAccount];

    LOBYTE(v14) = [v15 BOOLValue];
    v16 = +[MCProfileConnection sharedConnection];
    v17 = [v16 effectiveBoolValueForSetting:MCFeatureDeviceNameModificationAllowed] != 2;

    v18 = self->_textSpecifier;
    v19 = [NSNumber numberWithInt:(v17 | v14) & 1];
    [(PSSpecifier *)v18 setProperty:v19 forKey:PSEnabledKey];

    [v7 addObject:self->_textSpecifier];
    v20 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v7;
    v21 = v7;

    v4 = *&self->BPSListController_opaque[v2];
  }

  return v4;
}

- (void)suspend
{
  firstResponder = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v4.receiver = self;
  v4.super_class = COSAboutNameEditingController;
  [(COSAboutNameEditingController *)&v4 suspend];
}

- (void)viewWillAppear:(BOOL)appear
{
  v16.receiver = self;
  v16.super_class = COSAboutNameEditingController;
  [(COSAboutNameEditingController *)&v16 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"NAME" table:@"About" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"ABOUT" table:@"General" locale:v9 bundleURL:bundleURL];

  v11 = [_NSLocalizedStringResource alloc];
  v12 = +[NSLocale currentLocale];
  v13 = [v11 initWithKey:@"GENERAL" table:@"Settings" locale:v12 bundleURL:bundleURL];

  v17[0] = v13;
  v17[1] = v10;
  v14 = [NSArray arrayWithObjects:v17 count:2];
  v15 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT/NAME_CELL_ID"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v14 deepLink:v15];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  firstResponder = [*&self->BPSListController_opaque[OBJC_IVAR___PSListController__table] firstResponder];
  [firstResponder resignFirstResponder];

  v6 = +[COSAboutDataSource sharedInstance];
  [v6 performUpdatesAnimated:0 usingBlock:&stru_10026B8A8];

  v7.receiver = self;
  v7.super_class = COSAboutNameEditingController;
  [(COSAboutNameEditingController *)&v7 viewWillDisappear:disappearCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = COSAboutNameEditingController;
  v5 = [(COSAboutNameEditingController *)&v8 tableView:view cellForRowAtIndexPath:path];
  editableTextField = [v5 editableTextField];
  [editableTextField setAutocapitalizationType:2];
  [editableTextField setAutocorrectionType:1];
  [editableTextField setAdjustsFontSizeToFitWidth:1];
  [editableTextField setTextAlignment:0];
  [editableTextField setReturnKeyType:9];
  [editableTextField setClearButtonMode:3];
  [v5 setControllerDelegate:self];

  return v5;
}

@end
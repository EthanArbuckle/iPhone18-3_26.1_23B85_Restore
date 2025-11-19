@interface COSAboutController
- (BOOL)shouldDeferPushForSpecifierID:(id)a3;
- (id)device;
- (id)selectSpecifier:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation COSAboutController

- (id)device
{
  v2 = +[COSAboutDataSource sharedInstance];
  v3 = [v2 device];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = COSAboutController;
  v6 = a4;
  [(COSAboutController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(COSAboutController *)self indexForIndexPath:v6, v16.receiver, v16.super_class];

  v8 = [(COSAboutController *)self specifierAtIndex:v7];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"DEVICE_MODEL_CELL_ID"];

  if (v10)
  {
    v11 = +[COSAboutDataSource sharedInstance];
    [v11 updateModelSpecifier:v8];
LABEL_7:

    goto LABEL_8;
  }

  v12 = [v8 identifier];
  v13 = [v12 isEqualToString:@"ICCID_CELL_ID"];

  if (v13)
  {
    v11 = +[COSAboutDataSource sharedInstance];
    [v11 updateICCIDSpecifier:v8];
    goto LABEL_7;
  }

  v14 = [v8 identifier];
  v15 = [v14 isEqualToString:@"DEVICE_DETAIL_CELL_ID"];

  if (v15)
  {
    v11 = +[COSAboutDataSource sharedInstance];
    [v11 updateDeviceDetailSpecifier:v8];
    goto LABEL_7;
  }

LABEL_8:
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = COSAboutController;
  [(COSAboutController *)&v8 viewDidLoad];
  if (_os_feature_enabled_impl())
  {
    v3 = +[COSAboutDataSource sharedInstance];
    v4 = [v3 ndoController];
    [v4 setParentViewController:self];

    v5 = +[COSAboutDataSource sharedInstance];
    v6 = [v5 ndoController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E2764;
    v7[3] = &unk_1002682F0;
    v7[4] = self;
    [v6 updateSpecifiersWithCompletionHandler:v7];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = COSAboutController;
  [(COSAboutController *)&v13 viewWillAppear:a3];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"ABOUT" table:@"General" locale:v6 bundleURL:v4];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"GENERAL" table:@"Settings" locale:v9 bundleURL:v4];

  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)a3
{
  if (![a3 isEqualToString:@"WARRANTY_DESCRIPTION"])
  {
    return 0;
  }

  v4 = [(COSAboutController *)self specifierForID:@"WARRANTY_DESCRIPTION"];
  v5 = v4 == 0;

  return v5;
}

- (id)selectSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = COSAboutController;
  v4 = [(COSAboutController *)&v8 selectSpecifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    v6 = [(COSAboutController *)self device];
    [v5 setDevice:v6];
  }

  return v4;
}

@end
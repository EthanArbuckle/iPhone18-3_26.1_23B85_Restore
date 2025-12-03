@interface COSAboutController
- (BOOL)shouldDeferPushForSpecifierID:(id)d;
- (id)device;
- (id)selectSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSAboutController

- (id)device
{
  v2 = +[COSAboutDataSource sharedInstance];
  device = [v2 device];

  return device;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = COSAboutController;
  pathCopy = path;
  [(COSAboutController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(COSAboutController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];

  v8 = [(COSAboutController *)self specifierAtIndex:v7];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"DEVICE_MODEL_CELL_ID"];

  if (v10)
  {
    v11 = +[COSAboutDataSource sharedInstance];
    [v11 updateModelSpecifier:v8];
LABEL_7:

    goto LABEL_8;
  }

  identifier2 = [v8 identifier];
  v13 = [identifier2 isEqualToString:@"ICCID_CELL_ID"];

  if (v13)
  {
    v11 = +[COSAboutDataSource sharedInstance];
    [v11 updateICCIDSpecifier:v8];
    goto LABEL_7;
  }

  identifier3 = [v8 identifier];
  v15 = [identifier3 isEqualToString:@"DEVICE_DETAIL_CELL_ID"];

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
    ndoController = [v3 ndoController];
    [ndoController setParentViewController:self];

    v5 = +[COSAboutDataSource sharedInstance];
    ndoController2 = [v5 ndoController];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E2764;
    v7[3] = &unk_1002682F0;
    v7[4] = self;
    [ndoController2 updateSpecifiersWithCompletionHandler:v7];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = COSAboutController;
  [(COSAboutController *)&v13 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"ABOUT" table:@"General" locale:v6 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  v10 = [v8 initWithKey:@"GENERAL" table:@"Settings" locale:v9 bundleURL:bundleURL];

  v14 = v10;
  v11 = [NSArray arrayWithObjects:&v14 count:1];
  v12 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK&path=ABOUT"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (BOOL)shouldDeferPushForSpecifierID:(id)d
{
  if (![d isEqualToString:@"WARRANTY_DESCRIPTION"])
  {
    return 0;
  }

  v4 = [(COSAboutController *)self specifierForID:@"WARRANTY_DESCRIPTION"];
  v5 = v4 == 0;

  return v5;
}

- (id)selectSpecifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = COSAboutController;
  v4 = [(COSAboutController *)&v8 selectSpecifier:specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    device = [(COSAboutController *)self device];
    [v5 setDevice:device];
  }

  return v4;
}

@end
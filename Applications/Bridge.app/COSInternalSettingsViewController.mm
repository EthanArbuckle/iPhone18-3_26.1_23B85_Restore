@interface COSInternalSettingsViewController
+ (id)internalSettingsViewController;
- (id)specifiers;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSInternalSettingsViewController

+ (id)internalSettingsViewController
{
  v2 = objc_alloc_init(COSInternalSettingsViewController);
  v3 = [[UINavigationController alloc] initWithRootViewController:v2];

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = COSInternalSettingsViewController;
  [(COSInternalSettingsViewController *)&v7 viewWillAppear:appear];
  [(COSInternalSettingsViewController *)self setTitle:@"Internal Settings"];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismiss"];
  navigationItem = [(COSInternalSettingsViewController *)self navigationItem];
  v8 = v4;
  v6 = [NSArray arrayWithObjects:&v8 count:1];
  [navigationItem setLeftBarButtonItems:v6 animated:1];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_7;
  }

  v21.receiver = self;
  v21.super_class = COSInternalSettingsViewController;
  specifiers = [(COSInternalSettingsViewController *)&v21 specifiers];
  v6 = [specifiers mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  v10 = +[NSFileManager defaultManager];
  v11 = [v10 fileExistsAtPath:@"/AppleInternal/Library/NanoPreferenceBundles/General/CompanionSetupSettings.bundle"];

  if (v11)
  {
    v25[0] = PSTitleKey;
    v25[1] = PSTableCellClassKey;
    v26[0] = @"Internal Settings";
    v26[1] = @"PSLinkCell";
    v25[2] = PSBundlePathKey;
    v25[3] = PSBundleHasIconKey;
    v26[2] = @"CompanionSetupSettings";
    v26[3] = kCFBooleanTrue;
    v25[4] = PSBundleIsControllerKey;
    v25[5] = PSSearchNanoInternalSettingsBundlePath;
    v26[4] = kCFBooleanTrue;
    v26[5] = kCFBooleanTrue;
    v25[6] = PSIDKey;
    v26[6] = @"INTERNAL_SETTINGS";
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:7];
    v22 = v12;
    v23 = @"items";
    v13 = [NSArray arrayWithObjects:&v22 count:1];
    v24 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = +[NSBundle mainBundle];
    v16 = SpecifiersFromPlist();

    v17 = *&self->BPSListController_opaque[v2];
    *&self->BPSListController_opaque[v2] = v16;

    v3 = *&self->BPSListController_opaque[v2];
LABEL_7:
    v9 = v3;
    goto LABEL_8;
  }

  v19 = pbb_bridge_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No internal settings bundle.", buf, 2u);
  }

LABEL_8:

  return v9;
}

@end
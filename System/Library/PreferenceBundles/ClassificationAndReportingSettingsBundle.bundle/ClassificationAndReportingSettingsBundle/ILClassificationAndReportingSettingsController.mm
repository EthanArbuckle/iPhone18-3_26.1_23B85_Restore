@interface ILClassificationAndReportingSettingsController
- (ILClassificationAndReportingSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)createExtensionSpecifiersWithElectedExtension:(id)a3 allExtensions:(id)a4;
- (void)presentAlertForExtensionName:(id)a3 completion:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation ILClassificationAndReportingSettingsController

- (ILClassificationAndReportingSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = ILClassificationAndReportingSettingsController;
  v4 = [(ILClassificationAndReportingSettingsController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    extensionSpecifiers = v4->_extensionSpecifiers;
    v4->_extensionSpecifiers = v5;

    v7 = +[ILClassificationController sharedInstance];
    [v7 addDelegate:v4];

    v8 = +[ILClassificationController sharedInstance];
    [v8 activateWithCompletion:0];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ILClassificationAndReportingSettingsController;
  [(ILClassificationAndReportingSettingsController *)&v4 viewDidLoad];
  v3 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME"];
  [(ILClassificationAndReportingSettingsController *)self setTitle:v3];
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(ILClassificationAndReportingSettingsController *)self extensionSpecifiers];
  [v3 addObjectsFromArray:v4];

  v5 = [v3 copy];
  v6 = OBJC_IVAR___PSListController__specifiers;
  v7 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v5;

  v8 = *&self->PSListController_opaque[v6];
  v9 = v8;

  return v8;
}

- (void)createExtensionSpecifiersWithElectedExtension:(id)a3 allExtensions:(id)a4
{
  v36 = a3;
  v5 = a4;
  v6 = ILDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v46 = v5;
    v47 = 2112;
    v48 = v36;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "gotExtensions: %@ elected extension: %@", buf, 0x16u);
  }

  v7 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME"];
  v8 = [ILClassificationSettingsStrings localizedStringForKey:@"NO_EXTENSION_SELECTED"];
  v9 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME_%@_EXTENSIONS"];
  v10 = [NSString stringWithFormat:v9, v7];

  v11 = [ILClassificationSettingsStrings localizedStringForKey:@"ABOUT_REPORT_EXTENSION_MARKETING_NAME_%@_%@_%@_%@_%@_NO_SELECTION_%@"];
  v33 = v7;
  v12 = [NSString stringWithFormat:v11, v7, v7, v7, v7, v7, v8];

  v13 = +[NSMutableArray array];
  v31 = v10;
  v14 = [PSSpecifier groupSpecifierWithID:@"ClassificationAndReportingReportListGroup" name:v10];
  v30 = v12;
  [v14 setProperty:v12 forKey:PSFooterTextGroupKey];
  v15 = [NSNumber numberWithBool:1];
  [v14 setProperty:v15 forKey:PSIsRadioGroupKey];

  [v13 insertObject:v14 atIndex:0];
  v32 = v8;
  v16 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];
  v34 = PSRadioGroupCheckedSpecifierKey;
  v35 = v14;
  v29 = v16;
  [v14 setProperty:? forKey:?];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    v21 = PSEnabledKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        v24 = [v23 _plugIn];
        v25 = [v24 localizedContainingName];

        v26 = [PSSpecifier preferenceSpecifierNamed:v25 target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v26 setUserInfo:v23];
        v27 = [NSNumber numberWithBool:1];
        [v26 setProperty:v27 forKey:v21];

        if ([v23 isEqual:v36])
        {
          [v35 setProperty:v26 forKey:v34];
        }

        [v13 addObject:v26];
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v19);
  }

  [v13 addObject:v29];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_20BC;
  block[3] = &unk_8370;
  block[4] = self;
  v39 = v13;
  v28 = v13;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24.receiver = self;
  v24.super_class = ILClassificationAndReportingSettingsController;
  v6 = a4;
  [(ILClassificationAndReportingSettingsController *)&v24 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ILClassificationAndReportingSettingsController *)self specifierAtIndexPath:v6];

  v8 = [(ILClassificationAndReportingSettingsController *)self getGroupSpecifierForSpecifier:v7];
  v9 = [v7 userInfo];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_2360;
  v20[3] = &unk_8398;
  v10 = v7;
  v21 = v10;
  v11 = v8;
  v22 = v11;
  v23 = self;
  v12 = objc_retainBlock(v20);
  v13 = v12;
  if (v9)
  {
    v14 = ILDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "presenting election alert for extension: %@", buf, 0xCu);
    }

    v15 = [v9 _plugIn];
    v16 = [v15 localizedContainingName];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_24A4;
    v17[3] = &unk_83C0;
    v18 = v9;
    v19 = v13;
    [(ILClassificationAndReportingSettingsController *)self presentAlertForExtensionName:v16 completion:v17];
  }

  else
  {
    (v12[2])(v12, 0);
  }
}

- (void)presentAlertForExtensionName:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ILClassificationSettingsStrings localizedStringForKey:@"EXTENSION_ENABLE_ALERT_TITLE_MARKETING_NAME_%@_EXTENSION_NAME_%@"];
  v9 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME"];
  v10 = [NSString stringWithFormat:v8, v9, v7];

  v11 = [ILClassificationSettingsStrings localizedStringForKey:@"EXTENSION_ENABLE_ALERT_WARNING_EXTENSION_NAME_%@"];
  v12 = [ILClassificationSettingsStrings localizedStringForKey:@"REPORTING_MARKETING_NAME"];
  v13 = [NSString stringWithFormat:v11, v12];

  v14 = [UIAlertController alertControllerWithTitle:v10 message:v13 preferredStyle:1];
  v15 = [ILClassificationSettingsStrings localizedStringForKey:@"ENABLE_EXTENSION"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_2814;
  v23[3] = &unk_83E8;
  v16 = v6;
  v24 = v16;
  v17 = [UIAlertAction actionWithTitle:v15 style:0 handler:v23];
  [v14 addAction:v17];

  v18 = [ILClassificationSettingsStrings localizedStringForKey:@"CANCEL"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_2828;
  v21[3] = &unk_83E8;
  v22 = v16;
  v19 = v16;
  v20 = [UIAlertAction actionWithTitle:v18 style:1 handler:v21];
  [v14 addAction:v20];

  [(ILClassificationAndReportingSettingsController *)self presentViewController:v14 animated:1 completion:0];
}

@end
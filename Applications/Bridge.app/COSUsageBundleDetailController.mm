@interface COSUsageBundleDetailController
- (id)appBundle;
- (id)appSize:(id)a3;
- (id)docsAndData:(id)a3;
- (id)specifiers;
- (void)confirmDeletion;
- (void)delete;
@end

@implementation COSUsageBundleDetailController

- (id)appBundle
{
  v2 = [(COSUsageBundleDetailController *)self specifier];
  v3 = [v2 userInfo];

  return v3;
}

- (id)appSize:(id)a3
{
  v3 = [(COSUsageBundleDetailController *)self appBundle];
  v4 = [v3 size];
  *&v5 = [v4 fixed];
  v6 = [COSUsageController prettyUsageString:v5];

  return v6;
}

- (id)docsAndData:(id)a3
{
  v3 = [(COSUsageBundleDetailController *)self appBundle];
  v4 = [v3 size];
  *&v5 = [v4 docsAndData];
  v6 = [COSUsageController prettyUsageString:v5];

  return v6;
}

- (id)specifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(COSUsageBundleDetailController *)self appBundle];
  v5 = [COSUsageBundleHeaderTableCell specifierForAppBundle:v4];
  [v3 addObject:v5];
  v6 = [v4 size];
  v7 = [v6 fixed];

  if (v7 >= 1)
  {
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"APP_SIZE" value:&stru_10026E598 table:@"Usage"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:"appSize:" detail:0 cell:4 edit:0];

    [v3 addObject:v10];
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"DOCS_AND_DATA" value:&stru_10026E598 table:@"Usage"];
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:"docsAndData:" detail:0 cell:4 edit:0];

  [v3 addObject:v13];
  v14 = [v4 bundleIdentifier];
  LODWORD(v12) = [v14 isEqualToString:@"com.apple.NanoSettings"];

  if (v12)
  {
    v15 = +[PSSpecifier emptyGroupSpecifier];
    [v3 addObject:v15];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"DELETE_BUTTON" value:&stru_10026E598 table:@"Usage"];
    v18 = [PSSpecifier deleteButtonSpecifierWithName:v17 target:self action:"confirmDeletion"];

    [v3 addObject:v18];
  }

  v19 = OBJC_IVAR___PSListController__specifiers;
  v20 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v21 = v3;

  v22 = [(COSUsageBundleDetailController *)self navigationItem];
  v23 = [v4 name];
  [v22 setTitle:v23];

  v24 = *&self->BPSListController_opaque[v19];
  v25 = v24;

  return v24;
}

- (void)confirmDeletion
{
  v3 = [(COSUsageBundleDetailController *)self appBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.NanoSettings"];

  if (!v5)
  {
    abort();
  }

  v6 = +[NSBundle mainBundle];
  v17 = [v6 localizedStringForKey:@"DELETE_UPDATE_CONFIRMATION_DESCRIPTION" value:&stru_10026E598 table:@"Usage"];

  v7 = [v3 name];
  v16 = [NSString stringWithFormat:v17, v7];

  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v18[0] = PSConfirmationTitleKey;
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"DELETE_CONFIRMATION_TITLE" value:&stru_10026E598 table:@"Usage"];
  v19[0] = v10;
  v19[1] = v16;
  v18[1] = PSConfirmationPromptKey;
  v18[2] = PSConfirmationOKKey;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"DELETE_CONFIRMATION_BUTTON" value:&stru_10026E598 table:@"Usage"];
  v19[2] = v12;
  v18[3] = PSConfirmationCancelKey;
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"Usage"];
  v19[3] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];
  [v8 setupWithDictionary:v15];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v8 setTarget:self];
  [v8 setConfirmationAction:"delete"];
  [(COSUsageBundleDetailController *)self showConfirmationViewForSpecifier:v8];
}

- (void)delete
{
  v3 = [(COSUsageBundleDetailController *)self appBundle];
  v4 = [(COSUsageBundleDetailController *)self specifier];
  v5 = [v4 target];

  v6 = [(COSUsageBundleDetailController *)self view];
  v7 = [v6 window];
  [v7 setUserInteractionEnabled:0];

  v8 = +[PSNavBarSpinnerManager sharedSpinnerManager];
  v9 = [(COSUsageBundleDetailController *)self navigationItem];
  [v8 startAnimatingInNavItem:v9 forIdentifier:@"softwareUpdateDeletion"];

  v10 = sub_10000DB38();
  v11 = [v5 nssManager];
  v12 = [v3 bundleIdentifier];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A0B10;
  v16[3] = &unk_10026A7A0;
  v16[4] = self;
  v17 = v3;
  v18 = v10;
  v19 = v5;
  v13 = v5;
  v14 = v10;
  v15 = v3;
  [v11 purgeUsageBundleWithId:v12 completionHandler:v16];
}

@end
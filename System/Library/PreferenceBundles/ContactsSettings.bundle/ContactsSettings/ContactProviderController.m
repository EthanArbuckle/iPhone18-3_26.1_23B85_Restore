@interface ContactProviderController
- (id)readToggleSwitchSpecifierValue:(id)a3;
- (id)specifiers;
- (void)setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation ContactProviderController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = ContactProviderController;
  [(ContactProviderController *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Providers" value:&stru_14F18 table:@"Contacts"];
  [(ContactProviderController *)self setTitle:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_6C50;
    v28 = sub_6C60;
    v29 = 0;
    v6 = +[PSSpecifier emptyGroupSpecifier];
    v7 = v25[5];
    v25[5] = v6;

    v8 = v25[5];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PROVIDERS_EXPLANATORY" value:&stru_14F18 table:@"Contacts"];
    [v8 setProperty:v10 forKey:PSFooterTextGroupKey];

    [v5 addObject:v25[5]];
    v11 = +[PSSpecifier emptyGroupSpecifier];
    v12 = v25[5];
    v25[5] = v11;

    [v5 addObject:v25[5]];
    v13 = [CNContactProviderSupport allDomainsWithError:0];
    v14 = [v13 _cn_safeSortedArrayUsingComparator:&stru_14BE0];

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_6CDC;
    v19[3] = &unk_14C08;
    v21 = &v24;
    v22 = "setToggleSwitchSpecifierValue:specifier:";
    v19[4] = self;
    v23 = "readToggleSwitchSpecifierValue:";
    v15 = v5;
    v20 = v15;
    [v14 _cn_each:v19];
    v16 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v15;
    v17 = v15;

    _Block_object_dispose(&v24, 8);
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)readToggleSwitchSpecifierValue:(id)a3
{
  v3 = [a3 userInfo];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isEnabled]);

  return v4;
}

- (void)setToggleSwitchSpecifierValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 userInfo];
  v9 = [v7 BOOLValue];

  v10 = [v8 domainIdentifier];
  v11 = [v8 bundleIdentifier];
  if (v9)
  {
    v15 = 0;
    v12 = &v15;
    [CNContactProviderSupport enableDomain:v10 bundleIdentifier:v11 shouldSynchronize:1 error:&v15];
  }

  else
  {
    v14 = 0;
    v12 = &v14;
    [CNContactProviderSupport disableDomain:v10 bundleIdentifier:v11 error:&v14];
  }

  v13 = *v12;

  if (v13)
  {
    [(ContactProviderController *)self reloadSpecifier:v6];
  }

  else
  {
    [v8 setEnabled:v9];
  }
}

@end
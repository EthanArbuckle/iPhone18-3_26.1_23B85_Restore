@interface SafeDomainsPane
- (PSListController)parentListController;
- (id)_domainsListWithSpecifier:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setDomainsList:(id)a3 withSpecifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation SafeDomainsPane

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SafeDomainsPane;
  [(SafeDomainsPane *)&v5 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HIGHLIGHT_ADDRESSES_EDIT_TITLE" value:&stru_3D2B0 table:@"Preferences"];
  [(SafeDomainsPane *)self setTitle:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SafeDomainsPane;
  v8 = [(SafeDomainsPane *)&v15 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = v8;
  if (!self->_textField && [v8 tag] == &dword_8)
  {
    v10 = [v9 textField];
    textField = self->_textField;
    self->_textField = v10;

    [(UITextField *)self->_textField setAutocapitalizationType:0];
    [(UITextField *)self->_textField setAutocorrectionType:1];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"HIGHLIGHT_ADDRESSES_PLACEHOLDER" value:&stru_3D2B0 table:@"Preferences"];
    [(UITextField *)self->_textField setPlaceholder:v13];

    [(UITextField *)self->_textField setKeyboardType:3];
    [(UITextField *)self->_textField setClearButtonMode:1];
  }

  return v9;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"HIGHLIGHT_ADDRESSES_EDIT_HEADER" value:&stru_3D2B0 table:@"Preferences"];
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:"_setDomainsList:withSpecifier:" get:"_domainsListWithSpecifier:" detail:0 cell:8 edit:0];
    v9 = +[MCProfileConnection sharedConnection];
    v10 = [v9 isSettingLockedDownByRestrictions:MCFeatureManagedEmailDomains];

    v11 = [NSNumber numberWithInt:v10 ^ 1];
    [v8 setProperty:v11 forKey:PSEnabledKey];

    v15[0] = v7;
    v15[1] = v8;
    v12 = [NSArray arrayWithObjects:v15 count:2];
    v13 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v12;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)_domainsListWithSpecifier:(id)a3
{
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 managedEmailDomains];

  if (v4)
  {
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setDomainsList:(id)a3 withSpecifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 length])
  {
    v16 = [v5 componentsSeparatedByString:{@", "}];
    v7 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v16;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          v13 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
          v14 = [v12 stringByTrimmingCharactersInSet:v13];

          [v7 addObject:v14];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v15 = +[MCProfileConnection sharedConnection];
  [v15 setManagedEmailDomains:v7];
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentListController);

  return WeakRetained;
}

@end
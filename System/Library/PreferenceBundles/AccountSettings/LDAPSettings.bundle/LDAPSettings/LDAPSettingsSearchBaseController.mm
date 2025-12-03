@interface LDAPSettingsSearchBaseController
- (BOOL)_isNewSearchSettings;
- (BOOL)_searchSettingsAreEmpty;
- (LDAPSettingsAccountsUIController)accountController;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)_checkScopeCell;
- (void)_confirmationView:(id)view clickedButtonAtIndex:(int64_t)index;
- (void)_updateDescriptionFromSearchBase:(id)base;
- (void)confirmDeleteSettings:(id)settings;
- (void)dealloc;
- (void)didConfirmDeleteSettings:(BOOL)settings;
- (void)setAccountIntProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation LDAPSettingsSearchBaseController

- (void)dealloc
{
  [(CalCancelable *)self->_confirmDeleteSettingsSheetOrAlert cancel];
  v3.receiver = self;
  v3.super_class = LDAPSettingsSearchBaseController;
  [(LDAPSettingsSearchBaseController *)&v3 dealloc];
}

- (BOOL)_isNewSearchSettings
{
  specifier = [(LDAPSettingsSearchBaseController *)self specifier];
  v3 = [specifier propertyForKey:@"LDAPSettingsSearchSettingsKey"];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)_searchSettingsAreEmpty
{
  searchSettings = self->_searchSettings;
  if (!searchSettings)
  {
    return 1;
  }

  if ([(LDAPSearchSettings *)searchSettings scope]!= &dword_0 + 2)
  {
    return 0;
  }

  searchBase = [(LDAPSearchSettings *)self->_searchSettings searchBase];
  if ([searchBase length])
  {
    v5 = 0;
  }

  else
  {
    searchDescription = [(LDAPSearchSettings *)self->_searchSettings searchDescription];
    v5 = [searchDescription length] == 0;
  }

  return v5;
}

- (void)_checkScopeCell
{
  searchSettings = self->_searchSettings;
  v4 = @"SUBTREE";
  if (searchSettings)
  {
    scope = [(LDAPSearchSettings *)searchSettings scope];
    v6 = @"ONE_LEVEL";
    if (scope != &dword_0 + 1)
    {
      v6 = @"SUBTREE";
    }

    if (scope)
    {
      v4 = v6;
    }

    else
    {
      v4 = @"BASE";
    }
  }

  v8 = [(LDAPSettingsSearchBaseController *)self specifierForID:v4];
  v7 = [(LDAPSettingsSearchBaseController *)self specifierForID:@"SCOPE_HEADER"];
  [v7 setProperty:v8 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    specifier = [(LDAPSettingsSearchBaseController *)self specifier];
    v7 = [specifier propertyForKey:@"LDAPSettingsAccountKey"];
    account = self->_account;
    self->_account = v7;

    specifier2 = [(LDAPSettingsSearchBaseController *)self specifier];
    v10 = [specifier2 propertyForKey:@"LDAPSettingsSearchSettingsKey"];
    searchSettings = self->_searchSettings;
    self->_searchSettings = v10;

    v12 = OBJC_IVAR___PSViewController__parentController;
    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      sub_3CD8(&self->PSListController_opaque[v12], a2, self);
    }

    v15 = objc_loadWeakRetained(&self->PSListController_opaque[v12]);
    objc_storeWeak(&self->_accountController, v15);

    v16 = [(LDAPSettingsSearchBaseController *)self loadSpecifiersFromPlistName:@"LDAPSearchBase" target:self];
    v17 = [v16 mutableCopy];

    if (self->_searchSettings)
    {
      v18 = +[PSSpecifier emptyGroupSpecifier];
      [v17 addObject:v18];

      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"DELETE_SEARCH_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];
      v21 = [PSSpecifier deleteButtonSpecifierWithName:v20 target:self action:"confirmDeleteSettings:"];

      [v17 addObject:v21];
    }

    v22 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v17;

    [(LDAPSettingsSearchBaseController *)self _checkScopeCell];
    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)_updateDescriptionFromSearchBase:(id)base
{
  baseCopy = base;
  searchBase = [(LDAPSearchSettings *)self->_searchSettings searchBase];
  ldapHumanReadableStringFromSearchBase = [searchBase ldapHumanReadableStringFromSearchBase];

  searchDescription = [(LDAPSearchSettings *)self->_searchSettings searchDescription];
  if (!searchDescription || (v7 = searchDescription, -[LDAPSearchSettings searchDescription](self->_searchSettings, "searchDescription"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:ldapHumanReadableStringFromSearchBase], v8, v7, v9))
  {
    ldapHumanReadableStringFromSearchBase2 = [baseCopy ldapHumanReadableStringFromSearchBase];
    [(LDAPSearchSettings *)self->_searchSettings setSearchDescription:ldapHumanReadableStringFromSearchBase2];
    v11 = OBJC_IVAR___PSListController__specifiers;
    v12 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = [*&self->PSListController_opaque[v11] objectAtIndexedSubscript:v14];
        identifier = [v15 identifier];

        if ([identifier isEqualToString:@"DESCRIPTION"])
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_9;
        }
      }

      table = [(LDAPSettingsSearchBaseController *)self table];
      v18 = [(LDAPSettingsSearchBaseController *)self indexPathForIndex:v14];
      v19 = [table cellForRowAtIndexPath:v18];

      [v19 setValue:ldapHumanReadableStringFromSearchBase2];
    }

LABEL_9:
  }
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  identifier = [specifier identifier];
  if (!self->_searchSettings)
  {
    v7 = objc_opt_new();
    searchSettings = self->_searchSettings;
    self->_searchSettings = v7;

    [(LDAPSearchSettings *)self->_searchSettings setScope:2];
    [(LDAPAccount *)self->_account addSearchSettings:self->_searchSettings];
  }

  if ([identifier isEqualToString:@"SEARCH_BASE"])
  {
    [(LDAPSettingsSearchBaseController *)self _updateDescriptionFromSearchBase:propertyCopy];
    [(LDAPSearchSettings *)self->_searchSettings setSearchBase:propertyCopy];
  }

  else if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    [(LDAPSearchSettings *)self->_searchSettings setSearchDescription:propertyCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_accountController);
  [WeakRetained _markAccountDirty];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"SEARCH_BASE"])
  {
    searchBase = [(LDAPSearchSettings *)self->_searchSettings searchBase];
LABEL_5:
    v6 = searchBase;
    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"DESCRIPTION"])
  {
    searchBase = [(LDAPSearchSettings *)self->_searchSettings searchDescription];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)setAccountIntProperty:(id)property withSpecifier:(id)specifier
{
  v10 = [specifier propertyForKey:@"bundleID"];
  if ([v10 isEqualToString:@"BASE_CELL"])
  {
    v5 = 0;
  }

  else if ([v10 isEqualToString:@"ONE_LEVEL_CELL"])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v5 = &dword_0 + 2;
  }

  searchSettings = self->_searchSettings;
  if (!searchSettings)
  {
    v7 = objc_opt_new();
    v8 = self->_searchSettings;
    self->_searchSettings = v7;

    [(LDAPAccount *)self->_account addSearchSettings:self->_searchSettings];
    goto LABEL_10;
  }

  if ([(LDAPSearchSettings *)searchSettings scope]!= v5)
  {
LABEL_10:
    [(LDAPSearchSettings *)self->_searchSettings setScope:v5];
    WeakRetained = objc_loadWeakRetained(&self->_accountController);
    [WeakRetained _markAccountDirty];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = LDAPSettingsSearchBaseController;
  pathCopy = path;
  viewCopy = view;
  [(LDAPSettingsSearchBaseController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(LDAPSettingsSearchBaseController *)self specifierAtIndex:[(LDAPSettingsSearchBaseController *)self indexForIndexPath:pathCopy]];
  v10.receiver = self;
  v10.super_class = LDAPSettingsSearchBaseController;
  v9 = [(LDAPSettingsSearchBaseController *)&v10 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  if ([v9 type] == &dword_0 + 3)
  {
    [(LDAPSettingsSearchBaseController *)self setAccountIntProperty:0 withSpecifier:v8];
  }
}

- (void)confirmDeleteSettings:(id)settings
{
  v4 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v4 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v23 = [UIAlertView alloc];
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v24 localizedStringForKey:@"LDAP_ACCOUNT" value:&stru_8300 table:@"LDAPAccountSetup"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DELETE_SEARCH_SETTINGS_WARNING" value:&stru_8300 table:@"LDAPAccountSetup"];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"DELETE" value:&stru_8300 table:@"LDAPAccountSetup"];
    v11 = [NSBundle bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"CANCEL" value:&stru_8300 table:@"LDAPAccountSetup"];
    v13 = [v23 initWithTitle:v6 message:v8 delegate:self cancelButtonTitle:0 otherButtonTitles:{v10, v12, 0}];

    [v13 setCancelButtonIndex:1];
    [v13 show];
  }

  else
  {
    v14 = [UIActionSheet alloc];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"DELETE_SEARCH_SETTINGS_WARNING" value:&stru_8300 table:@"LDAPAccountSetup"];
    v17 = [NSBundle bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"DELETE_SEARCH_SETTINGS" value:&stru_8300 table:@"LDAPAccountSetup"];
    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CANCEL" value:&stru_8300 table:@"LDAPAccountSetup"];
    v13 = [v14 initWithTitle:v16 delegate:self cancelButtonTitle:0 destructiveButtonTitle:0 otherButtonTitles:{v18, v20, 0}];

    [v13 setDestructiveButtonIndex:0];
    [v13 setCancelButtonIndex:1];
    view = [(LDAPSettingsSearchBaseController *)self view];
    [v13 showInView:view];
  }

  confirmDeleteSettingsSheetOrAlert = self->_confirmDeleteSettingsSheetOrAlert;
  self->_confirmDeleteSettingsSheetOrAlert = v13;
}

- (void)didConfirmDeleteSettings:(BOOL)settings
{
  if (settings)
  {
    [(LDAPAccount *)self->_account removeSearchSettings:self->_searchSettings];
    WeakRetained = objc_loadWeakRetained(&self->_accountController);
    [WeakRetained _markAccountDirty];

    [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] selectRowAtIndexPath:0 animated:0 scrollPosition:0];
    rootController = [(LDAPSettingsSearchBaseController *)self rootController];
    v5 = [rootController popViewControllerAnimated:1];
  }

  else
  {
    v6 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__table];

    [v6 selectRowAtIndexPath:0 animated:0 scrollPosition:0];
  }
}

- (void)_confirmationView:(id)view clickedButtonAtIndex:(int64_t)index
{
  viewCopy = view;
  cancelButtonIndex = [(CalCancelable *)viewCopy cancelButtonIndex];
  confirmDeleteSettingsSheetOrAlert = self->_confirmDeleteSettingsSheetOrAlert;

  if (confirmDeleteSettingsSheetOrAlert == viewCopy)
  {
    [(LDAPSettingsSearchBaseController *)self didConfirmDeleteSettings:cancelButtonIndex != index];
    v9 = self->_confirmDeleteSettingsSheetOrAlert;
    self->_confirmDeleteSettingsSheetOrAlert = 0;
  }
}

- (LDAPSettingsAccountsUIController)accountController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountController);

  return WeakRetained;
}

@end
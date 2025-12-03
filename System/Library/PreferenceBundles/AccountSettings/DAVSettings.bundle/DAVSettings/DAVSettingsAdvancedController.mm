@interface DAVSettingsAdvancedController
- (DAAccount)account;
- (DAVSettingsAccountsUIController)accountController;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
@end

@implementation DAVSettingsAdvancedController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v6 = OBJC_IVAR___PSViewController__parentController;
    WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      sub_3848(&self->PSListController_opaque[v6], a2, self);
    }

    v9 = objc_loadWeakRetained(&self->PSListController_opaque[v6]);
    objc_storeWeak(&self->_accountController, v9);

    specifier = [(DAVSettingsAdvancedController *)self specifier];
    v11 = [specifier propertyForKey:@"DAVAdvancedControllerAccountKey"];

    v12 = objc_loadWeakRetained(&self->_account);
    if (v11 != v12)
    {
      objc_storeWeak(&self->_account, v11);
    }

    v13 = [(DAVSettingsAdvancedController *)self loadSpecifiersFromPlistName:@"DAVAdvancedSetup" target:self];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    backingAccountInfo = [v11 backingAccountInfo];
    mcBackingProfile = [backingAccountInfo mcBackingProfile];

    if (mcBackingProfile)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v17 = *&self->PSListController_opaque[v3];
      v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v25;
        v21 = PSEnabledKey;
        do
        {
          v22 = 0;
          do
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v24 + 1) + 8 * v22) setProperty:&__kCFBooleanFalse forKey:{v21, v24}];
            v22 = v22 + 1;
          }

          while (v19 != v22);
          v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v19);
      }
    }

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"PORT"])
  {
    intValue = [propertyCopy intValue];
    WeakRetained = objc_loadWeakRetained(&self->_account);
    [WeakRetained setPort:intValue];

    if (!self->_isReloadingProperties)
    {
      self->_isReloadingProperties = 1;
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"ACCOUNT_URL" animated:0];
      self->_isReloadingProperties = 0;
    }
  }

  else if ([identifier isEqualToString:@"ACCOUNT_URL"])
  {
    if (propertyCopy)
    {
      v9 = [NSURL URLWithString:?];
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_loadWeakRetained(&self->_account);
    [v10 setPrincipalURL:v9];

    v11 = objc_loadWeakRetained(&self->_account);
    [v11 setShouldDoInitialAutodiscovery:0];

    if (!self->_isReloadingProperties)
    {
      self->_isReloadingProperties = 1;
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"PORT" animated:0];
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"USE_SSL" animated:0];
      self->_isReloadingProperties = 0;
    }
  }

  v12 = objc_loadWeakRetained(&self->_accountController);
  [v12 setNeedsSave:1];

  v13 = objc_loadWeakRetained(&self->_accountController);
  [v13 setAttemptedValidation:0];
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [property BOOLValue];
  identifier = [specifierCopy identifier];

  if ([identifier isEqualToString:@"USE_SSL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    [WeakRetained setUseSSL:bOOLValue];

    v9 = objc_loadWeakRetained(&self->_account);
    [v9 setPort:0];

    if (!self->_isReloadingProperties)
    {
      self->_isReloadingProperties = 1;
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"PORT" animated:0];
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"ACCOUNT_URL" animated:0];
      self->_isReloadingProperties = 0;
    }
  }

  v10 = objc_loadWeakRetained(&self->_accountController);
  [v10 setNeedsSave:1];

  v11 = objc_loadWeakRetained(&self->_accountController);
  [v11 setAttemptedValidation:0];
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"PORT"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    principalURL = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [WeakRetained port]);
    stringValue = [principalURL stringValue];
LABEL_5:

    goto LABEL_7;
  }

  if ([identifier isEqualToString:@"ACCOUNT_URL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    principalURL = [WeakRetained principalURL];
    da_urlByRemovingUsername = [principalURL da_urlByRemovingUsername];
    stringValue = [da_urlByRemovingUsername absoluteString];

    goto LABEL_5;
  }

  stringValue = 0;
LABEL_7:

  return stringValue;
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"USE_SSL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    useSSL = [WeakRetained useSSL];
  }

  else
  {
    useSSL = 0;
  }

  v7 = [NSNumber numberWithBool:useSSL];

  return v7;
}

- (DAAccount)account
{
  WeakRetained = objc_loadWeakRetained(&self->_account);

  return WeakRetained;
}

- (DAVSettingsAccountsUIController)accountController
{
  WeakRetained = objc_loadWeakRetained(&self->_accountController);

  return WeakRetained;
}

@end
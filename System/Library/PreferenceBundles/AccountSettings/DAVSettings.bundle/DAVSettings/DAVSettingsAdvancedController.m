@interface DAVSettingsAdvancedController
- (DAAccount)account;
- (DAVSettingsAccountsUIController)accountController;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)specifiers;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
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

    v10 = [(DAVSettingsAdvancedController *)self specifier];
    v11 = [v10 propertyForKey:@"DAVAdvancedControllerAccountKey"];

    v12 = objc_loadWeakRetained(&self->_account);
    if (v11 != v12)
    {
      objc_storeWeak(&self->_account, v11);
    }

    v13 = [(DAVSettingsAdvancedController *)self loadSpecifiersFromPlistName:@"DAVAdvancedSetup" target:self];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    v15 = [v11 backingAccountInfo];
    v16 = [v15 mcBackingProfile];

    if (v16)
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

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v14 = a3;
  v6 = [a4 identifier];
  if ([v6 isEqualToString:@"PORT"])
  {
    v7 = [v14 intValue];
    WeakRetained = objc_loadWeakRetained(&self->_account);
    [WeakRetained setPort:v7];

    if (!self->_isReloadingProperties)
    {
      self->_isReloadingProperties = 1;
      [(DAVSettingsAdvancedController *)self reloadSpecifierID:@"ACCOUNT_URL" animated:0];
      self->_isReloadingProperties = 0;
    }
  }

  else if ([v6 isEqualToString:@"ACCOUNT_URL"])
  {
    if (v14)
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

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a4;
  v7 = [a3 BOOLValue];
  v12 = [v6 identifier];

  if ([v12 isEqualToString:@"USE_SSL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    [WeakRetained setUseSSL:v7];

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

- (id)accountPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"PORT"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [WeakRetained port]);
    v7 = [v6 stringValue];
LABEL_5:

    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"ACCOUNT_URL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    v6 = [WeakRetained principalURL];
    v8 = [v6 da_urlByRemovingUsername];
    v7 = [v8 absoluteString];

    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"USE_SSL"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_account);
    v6 = [WeakRetained useSSL];
  }

  else
  {
    v6 = 0;
  }

  v7 = [NSNumber numberWithBool:v6];

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
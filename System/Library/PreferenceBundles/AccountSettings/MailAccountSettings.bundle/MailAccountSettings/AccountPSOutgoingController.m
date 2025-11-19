@interface AccountPSOutgoingController
- (id)_getStatusForServer:(id)a3;
- (id)specifierForDeliveryAccount:(id)a3 isPrimary:(BOOL)a4 isCarrierAccount:(BOOL)a5;
- (id)specifiers;
- (void)canceledAccountSetup;
- (void)finishedAccountSetup;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation AccountPSOutgoingController

- (id)_getStatusForServer:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"OutgoingAccountAccountKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"OutgoingAccountIsCarrierAccountKey"];
  v9 = [v8 BOOLValue];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:@"OutgoingAccountIsPrimaryAccountKey"];
  LODWORD(v8) = [v11 BOOLValue];

  v12 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v13 = [v12 objectForKey:@"ExistingMessageAccount"];

  if (!v8)
  {
    if (v9)
    {
      v15 = [v13 canUseCarrierDeliveryFallback];
    }

    else
    {
      v15 = [v13 canUseDeliveryAccount:v6];
    }

    if (v15)
    {
      goto LABEL_4;
    }

LABEL_9:
    v14 = @"OFF";
    goto LABEL_10;
  }

  if (![v6 isActive] || (objc_msgSend(v13, "isPrimaryDeliveryAccountDisabled") & 1) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = @"ON";
LABEL_10:

  return v14;
}

- (id)specifierForDeliveryAccount:(id)a3 isPrimary:(BOOL)a4 isCarrierAccount:(BOOL)a5
{
  v34 = a5;
  v5 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 displayHostname];
  }

  else
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"NO_PRIMARY_SMTP_SERVER_CONFIGURED" value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  v32 = v5;
  if (v34)
  {
    v10 = +[MFNetworkController sharedInstance];
    v11 = [v10 copyCarrierBundleValue:@"CarrierName"];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    if (v11)
    {
      v13 = [v12 localizedStringForKey:@"CARRIER_SMTP_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];

      v14 = [NSString stringWithFormat:v13, v11];
    }

    else
    {
      v13 = [v12 localizedStringForKey:@"CARRIER_ACCOUNT_STRING" value:&stru_B9FC8 table:@"AccountPreferences"];

      v15 = [NSBundle bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"CELL_DATA_ONLY" value:&stru_B9FC8 table:@"AccountPreferences"];
      v14 = [NSString stringWithFormat:v13, v8, v16];

      v8 = v15;
    }

    v8 = v14;
  }

  v17 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:"_getStatusForServer:" detail:objc_opt_class() cell:2 edit:0];
  v18 = [NSArray arrayWithObjects:@"OFF", @"ON", 0];
  v19 = [NSBundle bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"OFF" value:&stru_B9FC8 table:@"AccountPreferences"];
  v21 = [NSBundle bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"ON" value:&stru_B9FC8 table:@"AccountPreferences"];
  v23 = [NSArray arrayWithObjects:v20, v22, 0];
  [v17 setValues:v18 titles:v23];

  v24 = [v7 uniqueID];
  [v17 setProperty:v24 forKey:PSIDKey];

  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = v25;
  if (v7)
  {
    [v25 setObject:v7 forKey:@"OutgoingAccountAccountKey"];
  }

  v27 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v28 = [v27 objectForKey:@"ExistingMessageAccount"];
  [v26 setObject:v28 forKey:@"OutgoingAccountViewingAccountKey"];

  if (v32)
  {
    v29 = [NSNumber numberWithBool:1];
    [v26 setObject:v29 forKey:@"OutgoingAccountIsPrimaryAccountKey"];
  }

  if (v34)
  {
    v30 = [NSNumber numberWithBool:1];
    [v26 setObject:v30 forKey:@"OutgoingAccountIsCarrierAccountKey"];
  }

  [v17 setUserInfo:v26];

  return v17;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSViewController__specifier;
  v37 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  v38 = [v37 objectForKey:@"ExistingMessageAccount"];
  v42 = [NSMutableArray arrayWithCapacity:6];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PRIMARY_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:0 set:0 get:0 detail:0 cell:0 edit:0];
  [v42 addObject:v5];

  v46 = [v38 deliveryAccount];
  v6 = [(AccountPSOutgoingController *)self specifierForDeliveryAccount:v46 isPrimary:1 isCarrierAccount:0];
  [v42 addObject:v6];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"OTHER_SMTP_SERVERS" value:&stru_B9FC8 table:@"AccountPreferences"];
  v39 = [PSSpecifier groupSpecifierWithName:v8];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OTHER_SMTP_SERVERS_DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
  [v39 setProperty:v10 forKey:PSFooterTextGroupKey];

  [v42 addObject:v39];
  +[DeliveryAccount deliveryAccounts];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  obj = v52 = 0u;
  v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v11)
  {
    v12 = *v52;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v51 + 1) + 8 * i);
        if (([v14 isEqual:v46] & 1) == 0 && objc_msgSend(v14, "canBeFallbackAccount"))
        {
          v15 = [(AccountPSOutgoingController *)self specifierForDeliveryAccount:v14 isPrimary:0 isCarrierAccount:0];
          [v42 addObject:v15];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v11);
  }

  v36 = +[DeliveryAccount carrierDeliveryAccount];
  if (v36)
  {
    v16 = [(AccountPSOutgoingController *)self specifierForDeliveryAccount:v36 isPrimary:0 isCarrierAccount:1];
    [v42 addObject:v16];
  }

  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"ADD_SMTP_SERVER" value:&stru_B9FC8 table:@"AccountPreferences"];
  v40 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  objc_storeStrong(&self->_newOutgoingAccountSpecifier, v40);
  v41 = objc_alloc_init(NSMutableDictionary);
  v19 = [*&self->PSListController_opaque[v2] userInfo];
  v20 = [v19 objectForKey:@"ExistingMessageAccount"];
  [v41 setObject:v20 forKey:@"OutgoingAccountViewingAccountKey"];

  [v41 setObject:kCFBooleanTrue forKey:@"disableForModificationRestrictions"];
  [v40 setUserInfo:v41];
  [v42 addObject:v40];
  v21 = +[MCProfileConnection sharedConnection];
  LODWORD(v19) = [v21 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] == 2;

  if (v19)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v44 = v42;
    v22 = [v44 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v22)
    {
      v23 = *v48;
      v24 = PSEnabledKey;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v44);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          v27 = [v26 userInfo];
          v28 = [v27 objectForKeyedSubscript:@"disableForModificationRestrictions"];
          v29 = [v28 BOOLValue];

          if (v29)
          {
            [v26 setProperty:kCFBooleanFalse forKey:v24];
          }
        }

        v22 = [v44 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v22);
    }
  }

  v30 = OBJC_IVAR___PSListController__specifiers;
  v31 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v42;
  v32 = v42;

  v33 = *&self->PSListController_opaque[v30];
  v34 = v33;

  return v33;
}

- (void)finishedAccountSetup
{
  [(AccountPSOutgoingController *)self reloadOutgoingAccounts];
  v3 = [(AccountPSOutgoingController *)self parentController];
  [v3 reloadSpecifiers];
}

- (void)canceledAccountSetup
{
  v4 = [(AccountPSOutgoingController *)self parentController];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = [(AccountPSOutgoingController *)self parentController];
    [v5 performSelector:"didFinishEditingDeliveryAccount"];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:{-[AccountPSOutgoingController indexForIndexPath:](self, "indexForIndexPath:", v7)}];
  if (self->_newOutgoingAccountSpecifier == v8)
  {
    v9 = [(AccountPSOutgoingController *)self parentController];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(AccountPSOutgoingController *)self parentController];
      [v11 performSelector:"didFinishEditingDeliveryAccount"];
    }
  }

  v12.receiver = self;
  v12.super_class = AccountPSOutgoingController;
  [(AccountPSOutgoingController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
}

@end
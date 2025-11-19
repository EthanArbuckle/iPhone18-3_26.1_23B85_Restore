@interface AccountPSAdvancedController
- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)a3;
- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)a3;
- (BOOL)isPropertyEnabledForIdentityPickerController:(id)a3;
- (BOOL)storeMailboxTypeOnServer:(int64_t)a3;
- (NSDictionary)accountValues;
- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)a3;
- (__SecTrust)copyTrustForIdentityPickerController:(id)a3 identity:(__SecIdentity *)a4;
- (id)accountPropertyWithSpecifier:(id)a3;
- (id)authSchemeTitlesForSpecifier:(id)a3;
- (id)authSchemeValuesForSpecifier:(id)a3;
- (id)copyIdentitiesForIdentityPickerController:(id)a3;
- (id)deleteIntervalString;
- (id)emailAddressesForIdentityPickerController:(id)a3;
- (id)localizedSwitchNameForIdentityPickerController:(id)a3;
- (id)mailbox:(id)a3;
- (id)mailboxUidForType:(int64_t)a3;
- (id)specifiers;
- (unint64_t)configurationOptionsForIdentityPickerController:(id)a3;
- (void)_resetTargetsForSpecifiers:(id)a3;
- (void)_updateArchiveByDefaultSpecifiers;
- (void)identityPickerController:(id)a3 setPropertyEnabled:(BOOL)a4 withIdentity:(__SecIdentity *)a5;
- (void)pickerDidChooseMailbox:(id)a3 forType:(int64_t)a4;
- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4;
- (void)setDeleteIntervalString:(id)a3 withSpecifier:(id)a4;
- (void)setSSLSetting:(id)a3 withSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AccountPSAdvancedController

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AccountPSAdvancedController;
  [(AccountPSAdvancedController *)&v8 viewDidLoad];
  if (!self->_accountValues)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    accountValues = self->_accountValues;
    self->_accountValues = v3;
  }

  if (!self->_originalAccountValues)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    originalAccountValues = self->_originalAccountValues;
    self->_originalAccountValues = v5;
  }

  [(MailAccount *)self->_account copySecureMIMEIdentitiesIntoDictionary:self->_accountValues];
  [(MailAccount *)self->_account copySecureMIMEIdentitiesIntoDictionary:self->_originalAccountValues];
  v7 = OBJC_IVAR___PSListController__specifiers;
  [(MailAccount *)self->_account copyAccountPropertiesForSpecifiers:*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] intoDictionary:self->_accountValues];
  [(MailAccount *)self->_account copyAccountPropertiesForSpecifiers:*&self->PSListController_opaque[v7] intoDictionary:self->_originalAccountValues];
  [(AccountPSAdvancedController *)self _updateArchiveByDefaultSpecifiers];
}

- (id)specifiers
{
  v37 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  obj = [v37 objectForKey:@"ExistingMessageAccount"];
  if (obj)
  {
    v2 = [NSMutableArray alloc];
    v3 = [obj advancedSpecifiers];
    v4 = [v2 initWithArray:v3];

    v35 = v4;
    [(AccountPSAdvancedController *)self _resetTargetsForSpecifiers:v4];
    v5 = [v37 objectForKeyedSubscript:@"values"];
    accountValues = self->_accountValues;
    self->_accountValues = v5;

    v7 = [v37 objectForKeyedSubscript:@"originalValues"];
    originalAccountValues = self->_originalAccountValues;
    self->_originalAccountValues = v7;

    v34 = 136;
    objc_storeStrong(&self->_account, obj);
    if ([(MailAccount *)self->_account isManaged])
    {
      v40 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:0];
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v39 = v4;
      v9 = [v39 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v9)
      {
        v10 = *v47;
        v11 = PSEnabledKey;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v39);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            v14 = [v13 userInfo];
            v15 = [v14 objectForKey:@"disableForManagedAccounts"];
            v16 = [v15 BOOLValue];

            if (v16)
            {
              [v13 setProperty:kCFBooleanFalse forKey:v11];
            }

            if (!*&v13[OBJC_IVAR___PSSpecifier_cellType])
            {
              v17 = v13;

              v40 = v17;
            }
          }

          v9 = [v39 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }

      v18 = [*&self->PSListController_opaque[v34] managedAccountFooterText];
      if (v18)
      {
        [v40 setProperty:v18 forKey:PSFooterTextGroupKey];
      }
    }

    v19 = +[MCProfileConnection sharedConnection];
    v20 = [v19 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] == 2;

    if (v20)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = v35;
      v21 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v21)
      {
        v22 = *v43;
        v23 = PSEnabledKey;
        do
        {
          for (j = 0; j != v21; j = j + 1)
          {
            if (*v43 != v22)
            {
              objc_enumerationMutation(v41);
            }

            v25 = *(*(&v42 + 1) + 8 * j);
            v26 = [v25 userInfo];
            v27 = [v26 objectForKeyedSubscript:@"disableForModificationRestrictions"];
            v28 = [v27 BOOLValue];

            if (v28)
            {
              [v25 setProperty:kCFBooleanFalse forKey:v23];
            }
          }

          v21 = [v41 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v21);
      }
    }

    v29 = OBJC_IVAR___PSListController__specifiers;
    v30 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v35;
    v31 = v35;

    v32 = *&self->PSListController_opaque[v29];
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (NSDictionary)accountValues
{
  v2 = [(NSMutableDictionary *)self->_accountValues copy];

  return v2;
}

- (void)_resetTargetsForSpecifiers:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v8 + 1) + 8 * v7) setTarget:{self, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateArchiveByDefaultSpecifiers
{
  v3 = OBJC_IVAR___PSListController__specifiersByID;
  v8 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiersByID] objectForKey:@"MFArchiveMessagesGroupSpecifierID"];
  v4 = [*&self->PSListController_opaque[v3] objectForKey:@"MFArchiveMessagesTrashMailboxSpecifierID"];
  v5 = [*&self->PSListController_opaque[v3] objectForKey:@"MFArchiveMessagesArchiveMailboxSpecifierID"];
  v6 = [(NSMutableDictionary *)self->_accountValues objectForKey:MFMailAccountArchive];
  if ([v6 BOOLValue])
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
}

- (void)setAccountProperty:(id)a3 withSpecifier:(id)a4
{
  v10 = a3;
  v6 = [a4 propertyForKey:PSKeyNameKey];
  if (v6)
  {
    accountValues = self->_accountValues;
    if (v10)
    {
      if (!accountValues)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_accountValues;
        self->_accountValues = v8;

        accountValues = self->_accountValues;
      }

      [(NSMutableDictionary *)accountValues setObject:v10 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)accountValues removeObjectForKey:v6];
    }
  }
}

- (id)accountPropertyWithSpecifier:(id)a3
{
  accountValues = self->_accountValues;
  v4 = [a3 propertyForKey:PSKeyNameKey];
  v5 = [(NSMutableDictionary *)accountValues objectForKey:v4];

  return v5;
}

- (void)setSSLSetting:(id)a3 withSpecifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(AccountPSAdvancedController *)self specifierForID:@"SERVER_PORT"];
  if ([v13 BOOLValue])
  {
    v8 = [(AccountPSAdvancedController *)self accountPropertyWithSpecifier:v7];
    v9 = [v8 intValue];

    if (v9 == 143)
    {
      v10 = @"993";
LABEL_7:
      [(AccountPSAdvancedController *)self setAccountProperty:v10 withSpecifier:v7];
      goto LABEL_8;
    }
  }

  if (([v13 BOOLValue] & 1) == 0)
  {
    v11 = [(AccountPSAdvancedController *)self accountPropertyWithSpecifier:v7];
    v12 = [v11 intValue];

    if (v12 == 993)
    {
      v10 = @"143";
      goto LABEL_7;
    }
  }

LABEL_8:
  [(AccountPSAdvancedController *)self setAccountProperty:v13 withSpecifier:v6];
  [(AccountPSAdvancedController *)self reloadSpecifiers];
}

- (id)mailbox:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"MailboxType"];
  v6 = [v5 intValue];

  v7 = [MFAccount storeOnServerSettingsForType:v6];
  v8 = [v7 key];
  v9 = [v7 mailboxNameKey];
  v10 = [(NSMutableDictionary *)self->_accountValues objectForKey:v8];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_accountValues objectForKey:v9];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 displayName];
      goto LABEL_7;
    }

    v15 = -[MailAccount specialMailboxNameForType:](self->_account, "specialMailboxNameForType:", [v7 type]);
    v16 = [v15 lastPathComponent];
  }

  else
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ON_MY"];
    v16 = [v13 localizedStringForKey:v15 value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  v14 = v16;

LABEL_7:

  return v14;
}

- (id)authSchemeValuesForSpecifier:(id)a3
{
  v3 = [objc_opt_class() authSchemeValues];

  return v3;
}

- (id)authSchemeTitlesForSpecifier:(id)a3
{
  v3 = [objc_opt_class() authSchemeTitles];

  return v3;
}

- (void)setDeleteIntervalString:(id)a3 withSpecifier:(id)a4
{
  v8 = a3;
  if ([v8 isEqual:@"NEVER"])
  {
    v5 = 0;
    account = self->_account;
LABEL_5:
    [(MailAccount *)account setMessageDeletionPolicy:v5];
    goto LABEL_7;
  }

  v7 = [v8 isEqual:@"AFTER_DELETE"];
  account = self->_account;
  if (v7)
  {
    v5 = 3;
    goto LABEL_5;
  }

  [(MailAccount *)account setMessageDeletionPolicy:2];
  [(MailAccount *)self->_account setDelayedMessageDeletionInterval:7];
LABEL_7:
}

- (id)deleteIntervalString
{
  v2 = [(MailAccount *)self->_account messageDeletionPolicy];
  v3 = @"NEVER";
  if (v2 == &dword_0 + 3)
  {
    v3 = @"AFTER_DELETE";
  }

  if (v2 == &dword_0 + 2)
  {
    return @"7_DAYS";
  }

  else
  {
    return v3;
  }
}

- (id)mailboxUidForType:(int64_t)a3
{
  v4 = [MFAccount storeOnServerSettingsForType:a3];
  accountValues = self->_accountValues;
  v6 = [v4 mailboxNameKey];
  v7 = [(NSMutableDictionary *)accountValues objectForKey:v6];

  return v7;
}

- (BOOL)storeMailboxTypeOnServer:(int64_t)a3
{
  v4 = [MFAccount storeOnServerSettingsForType:a3];
  accountValues = self->_accountValues;
  v6 = [v4 key];
  v7 = [(NSMutableDictionary *)accountValues objectForKey:v6];
  v8 = [v7 BOOLValue];

  return v8;
}

- (void)pickerDidChooseMailbox:(id)a3 forType:(int64_t)a4
{
  v12 = a3;
  v6 = [MFAccount storeOnServerSettingsForType:a4];
  v7 = [v6 key];
  v8 = [v6 mailboxNameKey];
  accountValues = self->_accountValues;
  if (v12)
  {
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)accountValues setObject:v10 forKey:v7];

    [(NSMutableDictionary *)self->_accountValues setObject:v12 forKey:v8];
  }

  else
  {
    v11 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)accountValues setObject:v11 forKey:v7];

    [(NSMutableDictionary *)self->_accountValues removeObjectForKey:v8];
  }

  [(AccountPSAdvancedController *)self reloadSpecifiers];
}

- (BOOL)isPropertyEnabledForIdentityPickerController:(id)a3
{
  accountValues = self->_accountValues;
  v4 = [a3 property];
  v5 = [(NSMutableDictionary *)accountValues objectForKey:v4];
  v6 = [v5 BOOLValue];

  return v6;
}

- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)a3
{
  accountValues = self->_accountValues;
  v4 = [a3 property];
  v5 = sub_DCC4(v4, MFMailAccountSigningIdentity, MFMailAccountEncryptionIdentity);
  v6 = [(NSMutableDictionary *)accountValues objectForKey:v5];

  return v6;
}

- (void)identityPickerController:(id)a3 setPropertyEnabled:(BOOL)a4 withIdentity:(__SecIdentity *)a5
{
  v6 = a4;
  v12 = [a3 property];
  accountValues = self->_accountValues;
  v9 = [NSNumber numberWithBool:v6];
  [(NSMutableDictionary *)accountValues setObject:v9 forKey:v12];

  v10 = sub_DCC4(v12, MFMailAccountSigningIdentity, MFMailAccountEncryptionIdentity);
  v11 = self->_accountValues;
  if (a5)
  {
    [(NSMutableDictionary *)v11 setObject:a5 forKey:v10];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:v10];
  }

  [(AccountPSAdvancedController *)self reload];
}

- (__SecTrust)copyTrustForIdentityPickerController:(id)a3 identity:(__SecIdentity *)a4
{
  v6 = [a3 property];
  v7 = [(MailAccount *)self->_account firstEmailAddress];
  v11 = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(a4, &certificateRef);
  if (certificateRef)
  {
    if (([v6 isEqualToString:MFMailAccountSigningEnabled] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", MFMailAccountEncryptionEnabled))
    {
      v8 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v7, v11];
      if (v8)
      {
        SecTrustCreateWithCertificates(certificateRef, v8, &v11);
        CFRelease(v8);
      }
    }

    CFRelease(certificateRef);
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedSwitchNameForIdentityPickerController:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 property];
  v6 = sub_DCC4(v5, @"ENABLE_SIGNING", @"ENABLE_ENCRYPTION");
  v7 = [v4 localizedStringForKey:v6 value:&stru_B9FC8 table:@"AccountPreferences"];

  return v7;
}

- (id)emailAddressesForIdentityPickerController:(id)a3
{
  v3 = [(MailAccount *)self->_account emailAddressesAndAliasesList];
  v4 = [v3 ef_map:&stru_B8E18];

  return v4;
}

- (id)copyIdentitiesForIdentityPickerController:(id)a3
{
  v4 = [a3 property];
  if ([v4 isEqualToString:MFMailAccountSigningEnabled])
  {
    v5 = [(MailAccount *)self->_account firstEmailAddress];
    v14 = 0;
    v6 = &v14;
    v7 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:v5 error:&v14];
  }

  else
  {
    if (![v4 isEqualToString:MFMailAccountEncryptionEnabled])
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    v5 = [(MailAccount *)self->_account firstEmailAddress];
    v13 = 0;
    v6 = &v13;
    v7 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:v5 error:&v13];
  }

  v8 = v7;
  v9 = *v6;

  if (v9)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v9 ef_publicDescription];
      sub_79594(v11, buf, v10);
    }
  }

LABEL_10:

  return v8;
}

- (unint64_t)configurationOptionsForIdentityPickerController:(id)a3
{
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:MFMailAccountEncryptionEnabled];

  if (v6)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (([(MailAccount *)self->_account isManaged]& 1) != 0)
  {
    v8 = [(AccountPSAdvancedController *)self _allowUserInteractiveSwitchForIdentityPickerController:v4];
    if ([(AccountPSAdvancedController *)self _allowIdentitySelectionForIdentityPickerController:v4])
    {
      v9 = v7 | v8 | 2;
    }

    else
    {
      v9 = v7 | v8;
    }
  }

  else
  {
    v9 = v7 | 3;
  }

  return v9;
}

- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)a3
{
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    v7 = [(AccountPSAdvancedController *)self account];
    v8 = [v7 accountPropertyForKey:MFMailAccountSigningUserOverrideable];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = [v4 property];
    v11 = [v10 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v11)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v7 = [(AccountPSAdvancedController *)self account];
    v8 = [v7 accountPropertyForKey:MFMailAccountEncryptByDefaultUserOverrideable];
    v9 = [v8 BOOLValue];
  }

  v12 = v9;

LABEL_7:
  return v12;
}

- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)a3
{
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    v7 = [(AccountPSAdvancedController *)self account];
    v8 = [v7 accountPropertyForKey:MFMailAccountSigningIdentityUserOverrideable];
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = [v4 property];
    v11 = [v10 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v11)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v7 = [(AccountPSAdvancedController *)self account];
    v8 = [v7 accountPropertyForKey:MFMailAccountEncryptionIdentityUserOverrideable];
    v9 = [v8 BOOLValue];
  }

  v12 = v9;

LABEL_7:
  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = AccountPSAdvancedController;
  [(AccountPSAdvancedController *)&v14 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AccountPSAdvancedController *)self specifierForID:@"MFArchiveMessagesGroupSpecifierID"];
  if (v7)
  {
    v8 = [v6 section];
    v9 = [(AccountPSAdvancedController *)self indexPathForIndex:[(AccountPSAdvancedController *)self indexOfSpecifier:v7]];
    v10 = [v9 section];

    if (v8 == v10)
    {
      v11 = [(AccountPSAdvancedController *)self specifierAtIndex:[(AccountPSAdvancedController *)self indexForIndexPath:v6]];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 propertyForKey:PSValueKey];
      }

      else
      {
        v13 = &__kCFBooleanFalse;
      }

      [(AccountPSAdvancedController *)self setAccountProperty:v13 withSpecifier:v12];
    }
  }
}

@end
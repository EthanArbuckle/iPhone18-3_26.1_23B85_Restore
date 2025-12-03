@interface AccountPSAdvancedController
- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)controller;
- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)controller;
- (BOOL)isPropertyEnabledForIdentityPickerController:(id)controller;
- (BOOL)storeMailboxTypeOnServer:(int64_t)server;
- (NSDictionary)accountValues;
- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)controller;
- (__SecTrust)copyTrustForIdentityPickerController:(id)controller identity:(__SecIdentity *)identity;
- (id)accountPropertyWithSpecifier:(id)specifier;
- (id)authSchemeTitlesForSpecifier:(id)specifier;
- (id)authSchemeValuesForSpecifier:(id)specifier;
- (id)copyIdentitiesForIdentityPickerController:(id)controller;
- (id)deleteIntervalString;
- (id)emailAddressesForIdentityPickerController:(id)controller;
- (id)localizedSwitchNameForIdentityPickerController:(id)controller;
- (id)mailbox:(id)mailbox;
- (id)mailboxUidForType:(int64_t)type;
- (id)specifiers;
- (unint64_t)configurationOptionsForIdentityPickerController:(id)controller;
- (void)_resetTargetsForSpecifiers:(id)specifiers;
- (void)_updateArchiveByDefaultSpecifiers;
- (void)identityPickerController:(id)controller setPropertyEnabled:(BOOL)enabled withIdentity:(__SecIdentity *)identity;
- (void)pickerDidChooseMailbox:(id)mailbox forType:(int64_t)type;
- (void)setAccountProperty:(id)property withSpecifier:(id)specifier;
- (void)setDeleteIntervalString:(id)string withSpecifier:(id)specifier;
- (void)setSSLSetting:(id)setting withSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
  userInfo = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] userInfo];
  obj = [userInfo objectForKey:@"ExistingMessageAccount"];
  if (obj)
  {
    v2 = [NSMutableArray alloc];
    advancedSpecifiers = [obj advancedSpecifiers];
    v4 = [v2 initWithArray:advancedSpecifiers];

    v35 = v4;
    [(AccountPSAdvancedController *)self _resetTargetsForSpecifiers:v4];
    v5 = [userInfo objectForKeyedSubscript:@"values"];
    accountValues = self->_accountValues;
    self->_accountValues = v5;

    v7 = [userInfo objectForKeyedSubscript:@"originalValues"];
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
            userInfo2 = [v13 userInfo];
            v15 = [userInfo2 objectForKey:@"disableForManagedAccounts"];
            bOOLValue = [v15 BOOLValue];

            if (bOOLValue)
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

      managedAccountFooterText = [*&self->PSListController_opaque[v34] managedAccountFooterText];
      if (managedAccountFooterText)
      {
        [v40 setProperty:managedAccountFooterText forKey:PSFooterTextGroupKey];
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
            userInfo3 = [v25 userInfo];
            v27 = [userInfo3 objectForKeyedSubscript:@"disableForModificationRestrictions"];
            bOOLValue2 = [v27 BOOLValue];

            if (bOOLValue2)
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

- (void)_resetTargetsForSpecifiers:(id)specifiers
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  specifiersCopy = specifiers;
  v5 = [specifiersCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(specifiersCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) setTarget:{self, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [specifiersCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)setAccountProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  v6 = [specifier propertyForKey:PSKeyNameKey];
  if (v6)
  {
    accountValues = self->_accountValues;
    if (propertyCopy)
    {
      if (!accountValues)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_accountValues;
        self->_accountValues = v8;

        accountValues = self->_accountValues;
      }

      [(NSMutableDictionary *)accountValues setObject:propertyCopy forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)accountValues removeObjectForKey:v6];
    }
  }
}

- (id)accountPropertyWithSpecifier:(id)specifier
{
  accountValues = self->_accountValues;
  v4 = [specifier propertyForKey:PSKeyNameKey];
  v5 = [(NSMutableDictionary *)accountValues objectForKey:v4];

  return v5;
}

- (void)setSSLSetting:(id)setting withSpecifier:(id)specifier
{
  settingCopy = setting;
  specifierCopy = specifier;
  v7 = [(AccountPSAdvancedController *)self specifierForID:@"SERVER_PORT"];
  if ([settingCopy BOOLValue])
  {
    v8 = [(AccountPSAdvancedController *)self accountPropertyWithSpecifier:v7];
    intValue = [v8 intValue];

    if (intValue == 143)
    {
      v10 = @"993";
LABEL_7:
      [(AccountPSAdvancedController *)self setAccountProperty:v10 withSpecifier:v7];
      goto LABEL_8;
    }
  }

  if (([settingCopy BOOLValue] & 1) == 0)
  {
    v11 = [(AccountPSAdvancedController *)self accountPropertyWithSpecifier:v7];
    intValue2 = [v11 intValue];

    if (intValue2 == 993)
    {
      v10 = @"143";
      goto LABEL_7;
    }
  }

LABEL_8:
  [(AccountPSAdvancedController *)self setAccountProperty:settingCopy withSpecifier:specifierCopy];
  [(AccountPSAdvancedController *)self reloadSpecifiers];
}

- (id)mailbox:(id)mailbox
{
  userInfo = [mailbox userInfo];
  v5 = [userInfo objectForKey:@"MailboxType"];
  intValue = [v5 intValue];

  v7 = [MFAccount storeOnServerSettingsForType:intValue];
  v8 = [v7 key];
  mailboxNameKey = [v7 mailboxNameKey];
  v10 = [(NSMutableDictionary *)self->_accountValues objectForKey:v8];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v12 = [(NSMutableDictionary *)self->_accountValues objectForKey:mailboxNameKey];
    v13 = v12;
    if (v12)
    {
      displayName = [v12 displayName];
      goto LABEL_7;
    }

    v15 = -[MailAccount specialMailboxNameForType:](self->_account, "specialMailboxNameForType:", [v7 type]);
    lastPathComponent = [v15 lastPathComponent];
  }

  else
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ON_MY"];
    lastPathComponent = [v13 localizedStringForKey:v15 value:&stru_B9FC8 table:@"AccountPreferences"];
  }

  displayName = lastPathComponent;

LABEL_7:

  return displayName;
}

- (id)authSchemeValuesForSpecifier:(id)specifier
{
  authSchemeValues = [objc_opt_class() authSchemeValues];

  return authSchemeValues;
}

- (id)authSchemeTitlesForSpecifier:(id)specifier
{
  authSchemeTitles = [objc_opt_class() authSchemeTitles];

  return authSchemeTitles;
}

- (void)setDeleteIntervalString:(id)string withSpecifier:(id)specifier
{
  stringCopy = string;
  if ([stringCopy isEqual:@"NEVER"])
  {
    v5 = 0;
    account = self->_account;
LABEL_5:
    [(MailAccount *)account setMessageDeletionPolicy:v5];
    goto LABEL_7;
  }

  v7 = [stringCopy isEqual:@"AFTER_DELETE"];
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
  messageDeletionPolicy = [(MailAccount *)self->_account messageDeletionPolicy];
  v3 = @"NEVER";
  if (messageDeletionPolicy == &dword_0 + 3)
  {
    v3 = @"AFTER_DELETE";
  }

  if (messageDeletionPolicy == &dword_0 + 2)
  {
    return @"7_DAYS";
  }

  else
  {
    return v3;
  }
}

- (id)mailboxUidForType:(int64_t)type
{
  v4 = [MFAccount storeOnServerSettingsForType:type];
  accountValues = self->_accountValues;
  mailboxNameKey = [v4 mailboxNameKey];
  v7 = [(NSMutableDictionary *)accountValues objectForKey:mailboxNameKey];

  return v7;
}

- (BOOL)storeMailboxTypeOnServer:(int64_t)server
{
  v4 = [MFAccount storeOnServerSettingsForType:server];
  accountValues = self->_accountValues;
  v6 = [v4 key];
  v7 = [(NSMutableDictionary *)accountValues objectForKey:v6];
  bOOLValue = [v7 BOOLValue];

  return bOOLValue;
}

- (void)pickerDidChooseMailbox:(id)mailbox forType:(int64_t)type
{
  mailboxCopy = mailbox;
  v6 = [MFAccount storeOnServerSettingsForType:type];
  v7 = [v6 key];
  mailboxNameKey = [v6 mailboxNameKey];
  accountValues = self->_accountValues;
  if (mailboxCopy)
  {
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)accountValues setObject:v10 forKey:v7];

    [(NSMutableDictionary *)self->_accountValues setObject:mailboxCopy forKey:mailboxNameKey];
  }

  else
  {
    v11 = [NSNumber numberWithBool:0];
    [(NSMutableDictionary *)accountValues setObject:v11 forKey:v7];

    [(NSMutableDictionary *)self->_accountValues removeObjectForKey:mailboxNameKey];
  }

  [(AccountPSAdvancedController *)self reloadSpecifiers];
}

- (BOOL)isPropertyEnabledForIdentityPickerController:(id)controller
{
  accountValues = self->_accountValues;
  property = [controller property];
  v5 = [(NSMutableDictionary *)accountValues objectForKey:property];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)controller
{
  accountValues = self->_accountValues;
  property = [controller property];
  v5 = sub_DCC4(property, MFMailAccountSigningIdentity, MFMailAccountEncryptionIdentity);
  v6 = [(NSMutableDictionary *)accountValues objectForKey:v5];

  return v6;
}

- (void)identityPickerController:(id)controller setPropertyEnabled:(BOOL)enabled withIdentity:(__SecIdentity *)identity
{
  enabledCopy = enabled;
  property = [controller property];
  accountValues = self->_accountValues;
  v9 = [NSNumber numberWithBool:enabledCopy];
  [(NSMutableDictionary *)accountValues setObject:v9 forKey:property];

  v10 = sub_DCC4(property, MFMailAccountSigningIdentity, MFMailAccountEncryptionIdentity);
  v11 = self->_accountValues;
  if (identity)
  {
    [(NSMutableDictionary *)v11 setObject:identity forKey:v10];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:v10];
  }

  [(AccountPSAdvancedController *)self reload];
}

- (__SecTrust)copyTrustForIdentityPickerController:(id)controller identity:(__SecIdentity *)identity
{
  property = [controller property];
  firstEmailAddress = [(MailAccount *)self->_account firstEmailAddress];
  v11 = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(identity, &certificateRef);
  if (certificateRef)
  {
    if (([property isEqualToString:MFMailAccountSigningEnabled] & 1) != 0 || objc_msgSend(property, "isEqualToString:", MFMailAccountEncryptionEnabled))
    {
      v8 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:firstEmailAddress, v11];
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

- (id)localizedSwitchNameForIdentityPickerController:(id)controller
{
  controllerCopy = controller;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  property = [controllerCopy property];
  v6 = sub_DCC4(property, @"ENABLE_SIGNING", @"ENABLE_ENCRYPTION");
  v7 = [v4 localizedStringForKey:v6 value:&stru_B9FC8 table:@"AccountPreferences"];

  return v7;
}

- (id)emailAddressesForIdentityPickerController:(id)controller
{
  emailAddressesAndAliasesList = [(MailAccount *)self->_account emailAddressesAndAliasesList];
  v4 = [emailAddressesAndAliasesList ef_map:&stru_B8E18];

  return v4;
}

- (id)copyIdentitiesForIdentityPickerController:(id)controller
{
  property = [controller property];
  if ([property isEqualToString:MFMailAccountSigningEnabled])
  {
    firstEmailAddress = [(MailAccount *)self->_account firstEmailAddress];
    v14 = 0;
    v6 = &v14;
    v7 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:firstEmailAddress error:&v14];
  }

  else
  {
    if (![property isEqualToString:MFMailAccountEncryptionEnabled])
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    firstEmailAddress = [(MailAccount *)self->_account firstEmailAddress];
    v13 = 0;
    v6 = &v13;
    v7 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:firstEmailAddress error:&v13];
  }

  v8 = v7;
  v9 = *v6;

  if (v9)
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v9 ef_publicDescription];
      sub_79594(ef_publicDescription, buf, v10);
    }
  }

LABEL_10:

  return v8;
}

- (unint64_t)configurationOptionsForIdentityPickerController:(id)controller
{
  controllerCopy = controller;
  property = [controllerCopy property];
  v6 = [property isEqualToString:MFMailAccountEncryptionEnabled];

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
    v8 = [(AccountPSAdvancedController *)self _allowUserInteractiveSwitchForIdentityPickerController:controllerCopy];
    if ([(AccountPSAdvancedController *)self _allowIdentitySelectionForIdentityPickerController:controllerCopy])
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

- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)controller
{
  controllerCopy = controller;
  property = [controllerCopy property];
  v6 = [property isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    account = [(AccountPSAdvancedController *)self account];
    v8 = [account accountPropertyForKey:MFMailAccountSigningUserOverrideable];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    property2 = [controllerCopy property];
    v11 = [property2 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v11)
    {
      v12 = 1;
      goto LABEL_7;
    }

    account = [(AccountPSAdvancedController *)self account];
    v8 = [account accountPropertyForKey:MFMailAccountEncryptByDefaultUserOverrideable];
    bOOLValue = [v8 BOOLValue];
  }

  v12 = bOOLValue;

LABEL_7:
  return v12;
}

- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)controller
{
  controllerCopy = controller;
  property = [controllerCopy property];
  v6 = [property isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    account = [(AccountPSAdvancedController *)self account];
    v8 = [account accountPropertyForKey:MFMailAccountSigningIdentityUserOverrideable];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    property2 = [controllerCopy property];
    v11 = [property2 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v11)
    {
      v12 = 1;
      goto LABEL_7;
    }

    account = [(AccountPSAdvancedController *)self account];
    v8 = [account accountPropertyForKey:MFMailAccountEncryptionIdentityUserOverrideable];
    bOOLValue = [v8 BOOLValue];
  }

  v12 = bOOLValue;

LABEL_7:
  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = AccountPSAdvancedController;
  [(AccountPSAdvancedController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AccountPSAdvancedController *)self specifierForID:@"MFArchiveMessagesGroupSpecifierID"];
  if (v7)
  {
    section = [pathCopy section];
    v9 = [(AccountPSAdvancedController *)self indexPathForIndex:[(AccountPSAdvancedController *)self indexOfSpecifier:v7]];
    section2 = [v9 section];

    if (section == section2)
    {
      v11 = [(AccountPSAdvancedController *)self specifierAtIndex:[(AccountPSAdvancedController *)self indexForIndexPath:pathCopy]];
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
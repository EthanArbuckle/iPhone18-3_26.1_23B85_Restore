@interface ASSettingsAdvancedAccountController
- (ASSettingsAdvancedAccountController)init;
- (BOOL)_accountIsManaged;
- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)controller;
- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)controller;
- (BOOL)accountArchivesMailByDefault;
- (BOOL)isPropertyEnabledForIdentityPickerController:(id)controller;
- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)controller;
- (__SecTrust)copyTrustForIdentityPickerController:(id)controller identity:(__SecIdentity *)identity;
- (id)_persistentRefForIdentity:(__SecIdentity *)identity;
- (id)_smimeEncryptSpecifier;
- (id)_smimeSigningSpecifier;
- (id)accountBooleanPropertyWithSpecifier:(id)specifier;
- (id)copyIdentitiesForIdentityPickerController:(id)controller;
- (id)emailAddressesForIdentityPickerController:(id)controller;
- (id)lastGroupSpecifierInSpecifiers:(id)specifiers;
- (id)localizedSwitchNameForIdentityPickerController:(id)controller;
- (id)specifiers;
- (unint64_t)configurationOptionsForIdentityPickerController:(id)controller;
- (void)_handleTrustFromIdentity:(__SecIdentity *)identity handler:(id)handler;
- (void)dealloc;
- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation ASSettingsAdvancedAccountController

- (ASSettingsAdvancedAccountController)init
{
  v5.receiver = self;
  v5.super_class = ASSettingsAdvancedAccountController;
  v2 = [(ASSettingsAdvancedAccountController *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_accountsChanged:" name:ACAccountStoreDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:ACAccountStoreDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ASSettingsAdvancedAccountController;
  [(ASSettingsAdvancedAccountController *)&v4 dealloc];
}

- (id)specifiers
{
  selfCopy = self;
  specifier = [(ASSettingsAdvancedAccountController *)self specifier];
  v4 = [specifier propertyForKey:@"ASAdvancedControllerAccountKey"];
  [(ASSettingsAdvancedAccountController *)selfCopy setAccount:v4];

  account = [(ASSettingsAdvancedAccountController *)selfCopy account];
  backingAccountInfo = [account backingAccountInfo];
  managingOwnerIdentifier = [backingAccountInfo managingOwnerIdentifier];
  v8 = managingOwnerIdentifier;
  if (managingOwnerIdentifier)
  {
    v9 = managingOwnerIdentifier;
  }

  else
  {
    account2 = [(ASSettingsAdvancedAccountController *)selfCopy account];
    v9 = [account2 objectForKeyedSubscript:ACAccountPropertyConfigurationProfileIdentifier];
  }

  if (v9)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v11, v12))
    {
      account3 = [(ASSettingsAdvancedAccountController *)selfCopy account];
      *buf = 138412546;
      v87 = account3;
      v88 = 2112;
      v89 = v9;
      _os_log_impl(&dword_0, v11, v12, "Disable editing for %@, account is managed by %@", buf, 0x16u);
    }

    v14 = selfCopy;
    v15 = 1;
  }

  else
  {
    v14 = selfCopy;
    v15 = 0;
  }

  [(ASSettingsAdvancedAccountController *)v14 setRemotedManaged:v15];
  v16 = *&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v16)
  {
    v69 = OBJC_IVAR___PSListController__specifiers;
    v17 = [(ASSettingsAdvancedAccountController *)selfCopy loadSpecifiersFromPlistName:@"ASAdvancedAccountSetup" target:selfCopy];
    v18 = +[NSMutableArray array];
    v19 = +[NSMutableArray array];
    v68 = v9;
    if ([(ASSettingsAdvancedAccountController *)selfCopy _accountIsManaged])
    {
      v66 = v19;
      account4 = [(ASSettingsAdvancedAccountController *)selfCopy account];
      backingAccountInfo2 = [account4 backingAccountInfo];
      mcBackingProfile = [backingAccountInfo2 mcBackingProfile];

      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"PROFILE_EXPLANATION_FORMAT" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
      [mcBackingProfile friendlyName];
      v26 = v25 = selfCopy;
      v27 = [NSString stringWithFormat:v24, v26];

      selfCopy = v25;
      v28 = [(ASSettingsAdvancedAccountController *)v25 lastGroupSpecifierInSpecifiers:v17];
      if (!v28)
      {
        v29 = DALoggingwithCategory();
        v30 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v29, v30))
        {
          *buf = 138412290;
          v87 = v17;
          _os_log_impl(&dword_0, v29, v30, "No group found, not setting the profile text.  Specifiers: %@", buf, 0xCu);
        }

        selfCopy = v25;
      }

      [v28 setProperty:v27 forKey:PSFooterTextGroupKey];
      v19 = v66;
      [v66 addObject:@"USE_SSL"];
    }

    account5 = [(ASSettingsAdvancedAccountController *)selfCopy account];
    isHotmailAccount = [account5 isHotmailAccount];

    if (isHotmailAccount)
    {
      [v18 addObjectsFromArray:&off_327A8];
    }

    account6 = [(ASSettingsAdvancedAccountController *)selfCopy account];
    supportsDraftFolderSync = [account6 supportsDraftFolderSync];

    if (supportsDraftFolderSync == 2)
    {
      v85[0] = @"DRAFTS_GROUP";
      v85[1] = @"SERVER_DRAFTS_ENABLED";
      v35 = [NSArray arrayWithObjects:v85 count:2];
      [v18 addObjectsFromArray:v35];
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v36 = v18;
    v37 = [v36 countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v79;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v79 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [v17 specifierForID:*(*(&v78 + 1) + 8 * i)];
          [v17 removeObject:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v38);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v42 = v19;
    v43 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v75;
      v46 = PSEnabledKey;
      do
      {
        for (j = 0; j != v44; j = j + 1)
        {
          if (*v75 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v48 = [v17 specifierForID:*(*(&v74 + 1) + 8 * j)];
          [v48 setProperty:&__kCFBooleanFalse forKey:v46];
        }

        v44 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
      }

      while (v44);
    }

    v49 = [v17 specifierForID:@"ARCHIVE_MAIL_BY_DEFAULT_GROUP"];
    if ([(ASSettingsAdvancedAccountController *)selfCopy accountArchivesMailByDefault])
    {
      v50 = @"ARCHIVE_MAILBOX";
    }

    else
    {
      v50 = @"DELETED_MAILBOX";
    }

    v51 = [v17 specifierForID:v50];
    [v49 setProperty:v51 forKey:PSRadioGroupCheckedSpecifierKey];

    _smimeSigningSpecifier = [(ASSettingsAdvancedAccountController *)selfCopy _smimeSigningSpecifier];
    [v17 addObject:_smimeSigningSpecifier];

    _smimeEncryptSpecifier = [(ASSettingsAdvancedAccountController *)selfCopy _smimeEncryptSpecifier];
    [v17 addObject:_smimeEncryptSpecifier];

    v54 = v69;
    objc_storeStrong(&selfCopy->PSListController_opaque[v69], v17);
    if ([(ASSettingsAdvancedAccountController *)selfCopy remotedManaged])
    {
      v65 = v49;
      v67 = selfCopy;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v55 = v17;
      v56 = [v55 countByEnumeratingWithState:&v70 objects:v82 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v71;
        v59 = PSEnabledKey;
        do
        {
          for (k = 0; k != v57; k = k + 1)
          {
            if (*v71 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v61 = *(*(&v70 + 1) + 8 * k);
            identifier = [v61 identifier];
            if ([@"USE_SSL" isEqualToString:identifier])
            {
              [v61 setProperty:&__kCFBooleanFalse forKey:v59];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v70 objects:v82 count:16];
        }

        while (v57);
      }

      selfCopy = v67;
      v54 = v69;
      v49 = v65;
    }

    v16 = *&selfCopy->PSListController_opaque[v54];
    v9 = v68;
  }

  v63 = v16;

  return v16;
}

- (id)_smimeSigningSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENABLE_SMIME_SIGNING" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAccountBooleanProperty:withSpecifier:" get:"accountBooleanPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v5 setProperty:MFMailAccountSigningEnabled forKey:PSKeyNameKey];
  [v5 setIdentifier:@"ASSpecifierSMIMESignID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NO" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v12[0] = v7;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"YES" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  [v5 setValues:&off_327C0 titles:v10];

  return v5;
}

- (id)_smimeEncryptSpecifier
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ENABLE_SMIME_ENCRYPTION" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAccountBooleanProperty:withSpecifier:" get:"accountBooleanPropertyWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v5 setProperty:MFMailAccountEncryptionEnabled forKey:PSKeyNameKey];
  [v5 setIdentifier:@"ASSpecifierSMIMEEncryptID"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NO" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v12[0] = v7;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"YES" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
  v12[1] = v9;
  v10 = [NSArray arrayWithObjects:v12 count:2];
  [v5 setValues:&off_327D8 titles:v10];

  return v5;
}

- (id)lastGroupSpecifierInSpecifiers:(id)specifiers
{
  [specifiers reverseObjectEnumerator];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (!*&v7[OBJC_IVAR___PSSpecifier_cellType])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = ASSettingsAdvancedAccountController;
  [(ASSettingsAdvancedAccountController *)&v15 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(ASSettingsAdvancedAccountController *)self specifierForID:@"ARCHIVE_MAIL_BY_DEFAULT_GROUP"];
  section = [pathCopy section];
  v9 = [(ASSettingsAdvancedAccountController *)self indexPathForIndex:[(ASSettingsAdvancedAccountController *)self indexOfSpecifier:v7]];
  section2 = [v9 section];

  if (section == section2)
  {
    v11 = [(ASSettingsAdvancedAccountController *)self specifierAtIndex:[(ASSettingsAdvancedAccountController *)self indexForIndexPath:pathCopy]];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 propertyForKey:PSValueKey];
      bOOLValue = [v13 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    [(ASSettingsAdvancedAccountController *)self setAccountArchivesMailByDefault:bOOLValue];
  }
}

- (BOOL)accountArchivesMailByDefault
{
  account = [(ASSettingsAdvancedAccountController *)self account];
  v3 = [account accountBoolPropertyForKey:MFMailAccountArchive];

  return v3;
}

- (void)setAccountBooleanProperty:(id)property withSpecifier:(id)specifier
{
  propertyCopy = property;
  identifier = [specifier identifier];
  bOOLValue = [propertyCopy BOOLValue];

  v8 = [identifier isEqualToString:@"USE_SSL"];
  if (v8)
  {
    account = [(ASSettingsAdvancedAccountController *)self account];
    [account setUseSSL:bOOLValue];
  }

  else
  {
    if (![identifier isEqualToString:@"SERVER_DRAFTS_ENABLED"])
    {
      goto LABEL_6;
    }

    account = [(ASSettingsAdvancedAccountController *)self account];
    [account setAccountBoolProperty:bOOLValue forKey:MFDAMailAccountStoreDraftsOnServer];
  }

LABEL_6:
  [(ASSettingsAdvancedAccountController *)self _setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)specifier
{
  identifier = [specifier identifier];
  if ([identifier isEqualToString:@"USE_SSL"])
  {
    account = [(ASSettingsAdvancedAccountController *)self account];
    useSSL = [account useSSL];
LABEL_3:
    bOOLValue = useSSL;
LABEL_9:

    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"ASSpecifierSMIMESignID"])
  {
    account2 = [(ASSettingsAdvancedAccountController *)self account];
    account = account2;
    v9 = &MFMailAccountSigningEnabled;
LABEL_8:
    v10 = [account2 accountPropertyForKey:*v9];
    bOOLValue = [v10 BOOLValue];

    goto LABEL_9;
  }

  if ([identifier isEqualToString:@"ASSpecifierSMIMEEncryptID"])
  {
    account2 = [(ASSettingsAdvancedAccountController *)self account];
    account = account2;
    v9 = &MFMailAccountEncryptionEnabled;
    goto LABEL_8;
  }

  if ([identifier isEqualToString:@"SERVER_DRAFTS_ENABLED"])
  {
    account3 = [(ASSettingsAdvancedAccountController *)self account];
    account = [account3 accountPropertyForKey:MFDAMailAccountStoreDraftsOnServer];

    if (!account)
    {
      bOOLValue = &dword_0 + 1;
      goto LABEL_9;
    }

    useSSL = [account BOOLValue];
    goto LABEL_3;
  }

  bOOLValue = 0;
LABEL_10:
  v11 = [NSNumber numberWithBool:bOOLValue];

  return v11;
}

- (id)_persistentRefForIdentity:(__SecIdentity *)identity
{
  keys[0] = kSecValueRef;
  keys[1] = kSecReturnPersistentRef;
  values[0] = identity;
  values[1] = kCFBooleanTrue;
  v3 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  result = 0;
  v4 = SecItemCopyMatching(v3, &result);
  v5 = result;
  CFRelease(v3);
  if (!v4)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v6, _CPLog_to_os_log_type[3]))
    {
      *buf = 67109120;
      v11 = 0;
      _os_log_impl(&dword_0, v6, v7, "Could not create persistent ref for identity. %d", buf, 8u);
    }
  }

  return v5;
}

- (void)_handleTrustFromIdentity:(__SecIdentity *)identity handler:(id)handler
{
  if (identity && handler)
  {
    handlerCopy = handler;
    account = [(ASSettingsAdvancedAccountController *)self account];
    emailAddress = [account emailAddress];
    mf_uncommentedAddress = [emailAddress mf_uncommentedAddress];

    v10 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:mf_uncommentedAddress];
    v11 = [[CertUITrustManager alloc] initWithAccessGroup:@"com.apple.mobilemail.smime"];
    cf = 0;
    certificateRef = 0;
    SecIdentityCopyCertificate(identity, &certificateRef);
    SecTrustCreateWithCertificates(certificateRef, v10, &cf);
    handlerCopy[2](handlerCopy, cf, v11, mf_uncommentedAddress);

    if (certificateRef)
    {
      CFRelease(certificateRef);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }
}

- (BOOL)_accountIsManaged
{
  account = [(ASSettingsAdvancedAccountController *)self account];
  backingAccountInfo = [account backingAccountInfo];
  mcBackingPayload = [backingAccountInfo mcBackingPayload];
  v5 = mcBackingPayload != 0;

  return v5;
}

- (BOOL)isPropertyEnabledForIdentityPickerController:(id)controller
{
  specifier = [controller specifier];
  v5 = [specifier propertyForKey:PSKeyNameKey];

  if (v5)
  {
    account = [(ASSettingsAdvancedAccountController *)self account];
    v7 = [account accountPropertyForKey:v5];

    if (v7)
    {
      bOOLValue = [v7 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)controller
{
  specifier = [controller specifier];
  identifier = [specifier identifier];

  if ([identifier isEqualToString:@"ASSpecifierSMIMESignID"])
  {
    account = [(ASSettingsAdvancedAccountController *)self account];
    signingIdentityPersistentReference = [account signingIdentityPersistentReference];
  }

  else
  {
    if (![identifier isEqualToString:@"ASSpecifierSMIMEEncryptID"])
    {
LABEL_12:
      v15 = 0;
      goto LABEL_15;
    }

    account = [(ASSettingsAdvancedAccountController *)self account];
    signingIdentityPersistentReference = [account encryptionIdentityPersistentReference];
  }

  v8 = signingIdentityPersistentReference;

  if (!v8)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v17];
  v10 = v17;
  if (v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v12))
    {
      account2 = [(ASSettingsAdvancedAccountController *)self account];
      emailAddress = [account2 emailAddress];
      *buf = 138412546;
      v19 = emailAddress;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_0, v11, v12, "Error retrieving identity for email address %@ %@", buf, 0x16u);
    }
  }

  if (v9)
  {
    v15 = CFAutorelease(v9);
  }

  else
  {
    v15 = 0;
  }

LABEL_15:
  return v15;
}

- (id)localizedSwitchNameForIdentityPickerController:(id)controller
{
  specifier = [controller specifier];
  name = [specifier name];

  return name;
}

- (id)copyIdentitiesForIdentityPickerController:(id)controller
{
  property = [controller property];
  if ([property isEqualToString:MFMailAccountSigningEnabled])
  {
    account = [(ASSettingsAdvancedAccountController *)self account];
    emailAddress = [account emailAddress];
    v15 = 0;
    v7 = &v15;
    v8 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:emailAddress error:&v15];
  }

  else
  {
    if (![property isEqualToString:MFMailAccountEncryptionEnabled])
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    account = [(ASSettingsAdvancedAccountController *)self account];
    emailAddress = [account emailAddress];
    v14 = 0;
    v7 = &v14;
    v8 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:emailAddress error:&v14];
  }

  v9 = v8;
  v10 = *v7;

  if (v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_0, v11, v12, "%@", buf, 0xCu);
    }
  }

LABEL_10:

  return v9;
}

- (__SecTrust)copyTrustForIdentityPickerController:(id)controller identity:(__SecIdentity *)identity
{
  property = [controller property];
  account = [(ASSettingsAdvancedAccountController *)self account];
  emailAddress = [account emailAddress];

  v13 = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(identity, &certificateRef);
  if (certificateRef)
  {
    if (([property isEqualToString:MFMailAccountSigningEnabled] & 1) != 0 || objc_msgSend(property, "isEqualToString:", MFMailAccountEncryptionEnabled))
    {
      v9 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:emailAddress, v13];
      if (v9)
      {
        v10 = v9;
        SecTrustCreateWithCertificates(certificateRef, v9, &v13);
        CFRelease(v10);
      }
    }

    CFRelease(certificateRef);
    v11 = v13;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)emailAddressesForIdentityPickerController:(id)controller
{
  account = [(ASSettingsAdvancedAccountController *)self account];
  emailAddresses = [account emailAddresses];

  return emailAddresses;
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

  if ([(ASSettingsAdvancedAccountController *)self _accountIsManaged])
  {
    v8 = v7 | [(ASSettingsAdvancedAccountController *)self _allowUserInteractiveSwitchForIdentityPickerController:controllerCopy];
    if ([(ASSettingsAdvancedAccountController *)self _allowIdentitySelectionForIdentityPickerController:controllerCopy])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
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
    v7 = &MFMailAccountSigningUserOverrideable;
  }

  else
  {
    property2 = [controllerCopy property];
    v9 = [property2 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v9)
    {
      bOOLValue = 1;
      goto LABEL_7;
    }

    v7 = &MFMailAccountEncryptByDefaultUserOverrideable;
  }

  account = [(ASSettingsAdvancedAccountController *)self account];
  v11 = [account accountPropertyForKey:*v7];
  bOOLValue = [v11 BOOLValue];

LABEL_7:
  return bOOLValue;
}

- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)controller
{
  controllerCopy = controller;
  property = [controllerCopy property];
  v6 = [property isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    v7 = &MFMailAccountSigningIdentityUserOverrideable;
  }

  else
  {
    property2 = [controllerCopy property];
    v9 = [property2 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v9)
    {
      bOOLValue = 1;
      goto LABEL_7;
    }

    v7 = &MFMailAccountEncryptionIdentityUserOverrideable;
  }

  account = [(ASSettingsAdvancedAccountController *)self account];
  v11 = [account accountPropertyForKey:*v7];
  bOOLValue = [v11 BOOLValue];

LABEL_7:
  return bOOLValue;
}

@end
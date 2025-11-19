@interface ASSettingsAdvancedAccountController
- (ASSettingsAdvancedAccountController)init;
- (BOOL)_accountIsManaged;
- (BOOL)_allowIdentitySelectionForIdentityPickerController:(id)a3;
- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)a3;
- (BOOL)accountArchivesMailByDefault;
- (BOOL)isPropertyEnabledForIdentityPickerController:(id)a3;
- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)a3;
- (__SecTrust)copyTrustForIdentityPickerController:(id)a3 identity:(__SecIdentity *)a4;
- (id)_persistentRefForIdentity:(__SecIdentity *)a3;
- (id)_smimeEncryptSpecifier;
- (id)_smimeSigningSpecifier;
- (id)accountBooleanPropertyWithSpecifier:(id)a3;
- (id)copyIdentitiesForIdentityPickerController:(id)a3;
- (id)emailAddressesForIdentityPickerController:(id)a3;
- (id)lastGroupSpecifierInSpecifiers:(id)a3;
- (id)localizedSwitchNameForIdentityPickerController:(id)a3;
- (id)specifiers;
- (unint64_t)configurationOptionsForIdentityPickerController:(id)a3;
- (void)_handleTrustFromIdentity:(__SecIdentity *)a3 handler:(id)a4;
- (void)dealloc;
- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v2 = self;
  v3 = [(ASSettingsAdvancedAccountController *)self specifier];
  v4 = [v3 propertyForKey:@"ASAdvancedControllerAccountKey"];
  [(ASSettingsAdvancedAccountController *)v2 setAccount:v4];

  v5 = [(ASSettingsAdvancedAccountController *)v2 account];
  v6 = [v5 backingAccountInfo];
  v7 = [v6 managingOwnerIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(ASSettingsAdvancedAccountController *)v2 account];
    v9 = [v10 objectForKeyedSubscript:ACAccountPropertyConfigurationProfileIdentifier];
  }

  if (v9)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [(ASSettingsAdvancedAccountController *)v2 account];
      *buf = 138412546;
      v87 = v13;
      v88 = 2112;
      v89 = v9;
      _os_log_impl(&dword_0, v11, v12, "Disable editing for %@, account is managed by %@", buf, 0x16u);
    }

    v14 = v2;
    v15 = 1;
  }

  else
  {
    v14 = v2;
    v15 = 0;
  }

  [(ASSettingsAdvancedAccountController *)v14 setRemotedManaged:v15];
  v16 = *&v2->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v16)
  {
    v69 = OBJC_IVAR___PSListController__specifiers;
    v17 = [(ASSettingsAdvancedAccountController *)v2 loadSpecifiersFromPlistName:@"ASAdvancedAccountSetup" target:v2];
    v18 = +[NSMutableArray array];
    v19 = +[NSMutableArray array];
    v68 = v9;
    if ([(ASSettingsAdvancedAccountController *)v2 _accountIsManaged])
    {
      v66 = v19;
      v20 = [(ASSettingsAdvancedAccountController *)v2 account];
      v21 = [v20 backingAccountInfo];
      v22 = [v21 mcBackingProfile];

      v23 = [NSBundle bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"PROFILE_EXPLANATION_FORMAT" value:&stru_30C98 table:@"ASAdvancedAccountSetup"];
      [v22 friendlyName];
      v26 = v25 = v2;
      v27 = [NSString stringWithFormat:v24, v26];

      v2 = v25;
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

        v2 = v25;
      }

      [v28 setProperty:v27 forKey:PSFooterTextGroupKey];
      v19 = v66;
      [v66 addObject:@"USE_SSL"];
    }

    v31 = [(ASSettingsAdvancedAccountController *)v2 account];
    v32 = [v31 isHotmailAccount];

    if (v32)
    {
      [v18 addObjectsFromArray:&off_327A8];
    }

    v33 = [(ASSettingsAdvancedAccountController *)v2 account];
    v34 = [v33 supportsDraftFolderSync];

    if (v34 == 2)
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
    if ([(ASSettingsAdvancedAccountController *)v2 accountArchivesMailByDefault])
    {
      v50 = @"ARCHIVE_MAILBOX";
    }

    else
    {
      v50 = @"DELETED_MAILBOX";
    }

    v51 = [v17 specifierForID:v50];
    [v49 setProperty:v51 forKey:PSRadioGroupCheckedSpecifierKey];

    v52 = [(ASSettingsAdvancedAccountController *)v2 _smimeSigningSpecifier];
    [v17 addObject:v52];

    v53 = [(ASSettingsAdvancedAccountController *)v2 _smimeEncryptSpecifier];
    [v17 addObject:v53];

    v54 = v69;
    objc_storeStrong(&v2->PSListController_opaque[v69], v17);
    if ([(ASSettingsAdvancedAccountController *)v2 remotedManaged])
    {
      v65 = v49;
      v67 = v2;
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
            v62 = [v61 identifier];
            if ([@"USE_SSL" isEqualToString:v62])
            {
              [v61 setProperty:&__kCFBooleanFalse forKey:v59];
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v70 objects:v82 count:16];
        }

        while (v57);
      }

      v2 = v67;
      v54 = v69;
      v49 = v65;
    }

    v16 = *&v2->PSListController_opaque[v54];
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

- (id)lastGroupSpecifierInSpecifiers:(id)a3
{
  [a3 reverseObjectEnumerator];
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = ASSettingsAdvancedAccountController;
  [(ASSettingsAdvancedAccountController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ASSettingsAdvancedAccountController *)self specifierForID:@"ARCHIVE_MAIL_BY_DEFAULT_GROUP"];
  v8 = [v6 section];
  v9 = [(ASSettingsAdvancedAccountController *)self indexPathForIndex:[(ASSettingsAdvancedAccountController *)self indexOfSpecifier:v7]];
  v10 = [v9 section];

  if (v8 == v10)
  {
    v11 = [(ASSettingsAdvancedAccountController *)self specifierAtIndex:[(ASSettingsAdvancedAccountController *)self indexForIndexPath:v6]];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 propertyForKey:PSValueKey];
      v14 = [v13 BOOLValue];
    }

    else
    {
      v14 = 0;
    }

    [(ASSettingsAdvancedAccountController *)self setAccountArchivesMailByDefault:v14];
  }
}

- (BOOL)accountArchivesMailByDefault
{
  v2 = [(ASSettingsAdvancedAccountController *)self account];
  v3 = [v2 accountBoolPropertyForKey:MFMailAccountArchive];

  return v3;
}

- (void)setAccountBooleanProperty:(id)a3 withSpecifier:(id)a4
{
  v6 = a3;
  v10 = [a4 identifier];
  v7 = [v6 BOOLValue];

  v8 = [v10 isEqualToString:@"USE_SSL"];
  if (v8)
  {
    v9 = [(ASSettingsAdvancedAccountController *)self account];
    [v9 setUseSSL:v7];
  }

  else
  {
    if (![v10 isEqualToString:@"SERVER_DRAFTS_ENABLED"])
    {
      goto LABEL_6;
    }

    v9 = [(ASSettingsAdvancedAccountController *)self account];
    [v9 setAccountBoolProperty:v7 forKey:MFDAMailAccountStoreDraftsOnServer];
  }

LABEL_6:
  [(ASSettingsAdvancedAccountController *)self _setNeedsSaveAndValidation:v8];
}

- (id)accountBooleanPropertyWithSpecifier:(id)a3
{
  v4 = [a3 identifier];
  if ([v4 isEqualToString:@"USE_SSL"])
  {
    v5 = [(ASSettingsAdvancedAccountController *)self account];
    v6 = [v5 useSSL];
LABEL_3:
    v7 = v6;
LABEL_9:

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"ASSpecifierSMIMESignID"])
  {
    v8 = [(ASSettingsAdvancedAccountController *)self account];
    v5 = v8;
    v9 = &MFMailAccountSigningEnabled;
LABEL_8:
    v10 = [v8 accountPropertyForKey:*v9];
    v7 = [v10 BOOLValue];

    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"ASSpecifierSMIMEEncryptID"])
  {
    v8 = [(ASSettingsAdvancedAccountController *)self account];
    v5 = v8;
    v9 = &MFMailAccountEncryptionEnabled;
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"SERVER_DRAFTS_ENABLED"])
  {
    v13 = [(ASSettingsAdvancedAccountController *)self account];
    v5 = [v13 accountPropertyForKey:MFDAMailAccountStoreDraftsOnServer];

    if (!v5)
    {
      v7 = &dword_0 + 1;
      goto LABEL_9;
    }

    v6 = [v5 BOOLValue];
    goto LABEL_3;
  }

  v7 = 0;
LABEL_10:
  v11 = [NSNumber numberWithBool:v7];

  return v11;
}

- (id)_persistentRefForIdentity:(__SecIdentity *)a3
{
  keys[0] = kSecValueRef;
  keys[1] = kSecReturnPersistentRef;
  values[0] = a3;
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

- (void)_handleTrustFromIdentity:(__SecIdentity *)a3 handler:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = [(ASSettingsAdvancedAccountController *)self account];
    v8 = [v7 emailAddress];
    v9 = [v8 mf_uncommentedAddress];

    v10 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v9];
    v11 = [[CertUITrustManager alloc] initWithAccessGroup:@"com.apple.mobilemail.smime"];
    cf = 0;
    certificateRef = 0;
    SecIdentityCopyCertificate(a3, &certificateRef);
    SecTrustCreateWithCertificates(certificateRef, v10, &cf);
    v6[2](v6, cf, v11, v9);

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
  v2 = [(ASSettingsAdvancedAccountController *)self account];
  v3 = [v2 backingAccountInfo];
  v4 = [v3 mcBackingPayload];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isPropertyEnabledForIdentityPickerController:(id)a3
{
  v4 = [a3 specifier];
  v5 = [v4 propertyForKey:PSKeyNameKey];

  if (v5)
  {
    v6 = [(ASSettingsAdvancedAccountController *)self account];
    v7 = [v6 accountPropertyForKey:v5];

    if (v7)
    {
      v8 = [v7 BOOLValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (__SecIdentity)selectedIdentityForIdentityPickerController:(id)a3
{
  v4 = [a3 specifier];
  v5 = [v4 identifier];

  if ([v5 isEqualToString:@"ASSpecifierSMIMESignID"])
  {
    v6 = [(ASSettingsAdvancedAccountController *)self account];
    v7 = [v6 signingIdentityPersistentReference];
  }

  else
  {
    if (![v5 isEqualToString:@"ASSpecifierSMIMEEncryptID"])
    {
LABEL_12:
      v15 = 0;
      goto LABEL_15;
    }

    v6 = [(ASSettingsAdvancedAccountController *)self account];
    v7 = [v6 encryptionIdentityPersistentReference];
  }

  v8 = v7;

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
      v13 = [(ASSettingsAdvancedAccountController *)self account];
      v14 = [v13 emailAddress];
      *buf = 138412546;
      v19 = v14;
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

- (id)localizedSwitchNameForIdentityPickerController:(id)a3
{
  v3 = [a3 specifier];
  v4 = [v3 name];

  return v4;
}

- (id)copyIdentitiesForIdentityPickerController:(id)a3
{
  v4 = [a3 property];
  if ([v4 isEqualToString:MFMailAccountSigningEnabled])
  {
    v5 = [(ASSettingsAdvancedAccountController *)self account];
    v6 = [v5 emailAddress];
    v15 = 0;
    v7 = &v15;
    v8 = [MFMessageKeychainManager copyAllSigningIdentitiesForAddress:v6 error:&v15];
  }

  else
  {
    if (![v4 isEqualToString:MFMailAccountEncryptionEnabled])
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    v5 = [(ASSettingsAdvancedAccountController *)self account];
    v6 = [v5 emailAddress];
    v14 = 0;
    v7 = &v14;
    v8 = [MFMessageKeychainManager copyAllEncryptionIdentitiesForAddress:v6 error:&v14];
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

- (__SecTrust)copyTrustForIdentityPickerController:(id)a3 identity:(__SecIdentity *)a4
{
  v6 = [a3 property];
  v7 = [(ASSettingsAdvancedAccountController *)self account];
  v8 = [v7 emailAddress];

  v13 = 0;
  certificateRef = 0;
  SecIdentityCopyCertificate(a4, &certificateRef);
  if (certificateRef)
  {
    if (([v6 isEqualToString:MFMailAccountSigningEnabled] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", MFMailAccountEncryptionEnabled))
    {
      v9 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v8, v13];
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

- (id)emailAddressesForIdentityPickerController:(id)a3
{
  v3 = [(ASSettingsAdvancedAccountController *)self account];
  v4 = [v3 emailAddresses];

  return v4;
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

  if ([(ASSettingsAdvancedAccountController *)self _accountIsManaged])
  {
    v8 = v7 | [(ASSettingsAdvancedAccountController *)self _allowUserInteractiveSwitchForIdentityPickerController:v4];
    if ([(ASSettingsAdvancedAccountController *)self _allowIdentitySelectionForIdentityPickerController:v4])
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

- (BOOL)_allowUserInteractiveSwitchForIdentityPickerController:(id)a3
{
  v4 = a3;
  v5 = [v4 property];
  v6 = [v5 isEqualToString:MFMailAccountSigningEnabled];

  if (v6)
  {
    v7 = &MFMailAccountSigningUserOverrideable;
  }

  else
  {
    v8 = [v4 property];
    v9 = [v8 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v9)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v7 = &MFMailAccountEncryptByDefaultUserOverrideable;
  }

  v10 = [(ASSettingsAdvancedAccountController *)self account];
  v11 = [v10 accountPropertyForKey:*v7];
  v12 = [v11 BOOLValue];

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
    v7 = &MFMailAccountSigningIdentityUserOverrideable;
  }

  else
  {
    v8 = [v4 property];
    v9 = [v8 isEqualToString:MFMailAccountEncryptionEnabled];

    if (!v9)
    {
      v12 = 1;
      goto LABEL_7;
    }

    v7 = &MFMailAccountEncryptionIdentityUserOverrideable;
  }

  v10 = [(ASSettingsAdvancedAccountController *)self account];
  v11 = [v10 accountPropertyForKey:*v7];
  v12 = [v11 BOOLValue];

LABEL_7:
  return v12;
}

@end
@interface MFAccount
+ (id)authSchemeTitles;
+ (id)authSchemeValues;
+ (id)profileDisplayNameFromTag:(id)tag;
+ (id)storeOnServerSettingsForKey:(id)key;
+ (id)storeOnServerSettingsForType:(int64_t)type;
- (NSString)managedAccountFooterText;
- (id)valueForSettingsInAccountPropertiesForKey:(id)key;
- (void)_copyBooleanValueInAccountPropertiesForKey:(id)key intoDictionary:(id)dictionary;
- (void)copyAccountPropertiesForSpecifiers:(id)specifiers intoDictionary:(id)dictionary;
- (void)copySecureMIMEIdentitiesIntoDictionary:(id)dictionary;
- (void)setAccountPropertiesWithDictionary:(id)dictionary;
@end

@implementation MFAccount

+ (id)storeOnServerSettingsForType:(int64_t)type
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = sub_8240();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 type] == type)
        {
          lastObject = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v4 = sub_8240();
  lastObject = [v4 lastObject];
LABEL_11:
  v10 = lastObject;

  return v10;
}

+ (id)storeOnServerSettingsForKey:(id)key
{
  keyCopy = key;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = sub_8240();
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 key];
        v10 = [v9 isEqualToString:keyCopy];

        if ((v10 & 1) == 0)
        {
          mailboxNameKey = [v8 mailboxNameKey];
          v12 = [mailboxNameKey isEqualToString:keyCopy];

          if ((v12 & 1) == 0)
          {
            continue;
          }
        }

        lastObject = v8;
        goto LABEL_12;
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v4 = sub_8240();
  lastObject = [v4 lastObject];
LABEL_12:
  v14 = lastObject;

  return v14;
}

- (void)_copyBooleanValueInAccountPropertiesForKey:(id)key intoDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  v7 = [(MFAccount *)self valueForSettingsInAccountPropertiesForKey:keyCopy];
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v10 = [NSNumber numberWithBool:bOOLValue];
  [dictionaryCopy setObject:v10 forKey:keyCopy];
}

- (void)copyAccountPropertiesForSpecifiers:(id)specifiers intoDictionary:(id)dictionary
{
  specifiersCopy = specifiers;
  dictionaryCopy = dictionary;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = specifiersCopy;
  v7 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v7)
  {
    v50 = *v58;
    v49 = PSKeyNameKey;
    v47 = MFMailAccountUsername;
    v46 = MailAccountPassword;
    v45 = MFMailAccountAuthenticationScheme;
    v44 = MailAccountPortNumber;
    v43 = MFMailAccountNumberOfDaysToKeepTrash;
    v42 = MF_POPAccountDeletionPolicy;
    v41 = MailAccountEmailAddresses;
    v38 = MFMailAccountSigningEnabled;
    v34 = MFMailAccountEncryptionEnabled;
    v37 = MFAliasDefaultKey;
    v40 = MF_POPAccountDeleteMessagesRightAwayKey;
    v36 = MF_POPAccountDeleteMessagesWhenTransferredOutOfInboxKey;
    v39 = MF_POPAccountDeleteMessagesAfterIntervalKey;
    v35 = MF_POPAccountNeverDeleteMessagesKey;
    do
    {
      v51 = v7;
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v10 = [v9 propertyForKey:v49];
        if (!v10)
        {
          userInfo = [v9 userInfo];
          v10 = [userInfo valueForKey:@"outgoing_key"];
        }

        v12 = [dictionaryCopy objectForKey:v10];
        v13 = v12 == 0;

        if (v13)
        {
          if ([v10 isEqualToString:@"MailAccountIsActive"])
          {
            displayUsername = [NSNumber numberWithBool:[(MFAccount *)self isActive]];
            [dictionaryCopy setObject:displayUsername forKey:v10];
            goto LABEL_22;
          }

          if ([v10 isEqualToString:v47])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              displayUsername = [(MFAccount *)self displayUsername];
              if (displayUsername)
              {
                [dictionaryCopy setObject:displayUsername forKey:v47];
              }

              goto LABEL_22;
            }
          }

          if ([v10 isEqualToString:v46])
          {
            displayUsername = [(MFAccount *)self password];
            if (!displayUsername)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ![(MFAccount *)self credentialAccessibility])
              {
                [dictionaryCopy setObject:@"********" forKey:v10];
              }

              goto LABEL_22;
            }

            password = [(MFAccount *)self password];
            [dictionaryCopy setObject:password forKey:v10];
          }

          else
          {
            if (![v10 isEqualToString:v45])
            {
              if ([v10 isEqualToString:v44])
              {
                portNumber = [(MFAccount *)self portNumber];
                if (!portNumber)
                {
                  displayUsername = 0;
                  goto LABEL_22;
                }

                displayUsername = [NSString stringWithFormat:@"%u", portNumber];
                if (!displayUsername)
                {
LABEL_22:

                  goto LABEL_23;
                }
              }

              else
              {
                if ([v10 isEqualToString:v43])
                {
                  displayUsername = [NSString stringWithFormat:@"%d", [(MFAccount *)self emptyFrequencyForMailboxType:3]];
                  [dictionaryCopy setObject:displayUsername forKey:v10];
                  goto LABEL_22;
                }

                if ([v10 isEqualToString:v42])
                {
                  messageDeletionPolicy = [(MFAccount *)self messageDeletionPolicy];
                  v28 = v40;
                  if (messageDeletionPolicy != &dword_0 + 1)
                  {
                    v28 = v39;
                    if (messageDeletionPolicy != &dword_0 + 2)
                    {
                      v28 = v36;
                      if (messageDeletionPolicy != &dword_0 + 3)
                      {
                        v28 = v35;
                      }
                    }
                  }

                  displayUsername = v28;
                  [dictionaryCopy setObject:displayUsername forKey:v10];
                  goto LABEL_22;
                }

                if ([v10 isEqualToString:v41])
                {
                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v61[0] = v41;
                  v61[1] = v37;
                  displayUsername = [NSArray arrayWithObjects:v61 count:2];
                  v29 = [displayUsername countByEnumeratingWithState:&v53 objects:v62 count:16];
                  if (v29)
                  {
                    v30 = *v54;
                    do
                    {
                      for (j = 0; j != v29; j = j + 1)
                      {
                        if (*v54 != v30)
                        {
                          objc_enumerationMutation(displayUsername);
                        }

                        v32 = *(*(&v53 + 1) + 8 * j);
                        v33 = [(MFAccount *)self valueForSettingsInAccountPropertiesForKey:v32];
                        if (v33)
                        {
                          [dictionaryCopy setObject:v33 forKey:v32];
                        }
                      }

                      v29 = [displayUsername countByEnumeratingWithState:&v53 objects:v62 count:16];
                    }

                    while (v29);
                  }

                  goto LABEL_22;
                }

                if (([v10 isEqualToString:v38] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", v34))
                {
                  [(MFAccount *)self _copyBooleanValueInAccountPropertiesForKey:v10 intoDictionary:dictionaryCopy];
                  goto LABEL_23;
                }

                displayUsername = [(MFAccount *)self valueForSettingsInAccountPropertiesForKey:v10];
                if (!displayUsername)
                {
                  goto LABEL_22;
                }
              }

              [dictionaryCopy setObject:displayUsername forKey:v10];
              goto LABEL_22;
            }

            preferredAuthScheme = [(MFAccount *)self preferredAuthScheme];
            displayUsername = preferredAuthScheme;
            if (!preferredAuthScheme)
            {
              goto LABEL_22;
            }

            password = [preferredAuthScheme name];
            [dictionaryCopy setObject:password forKey:v10];
          }

          goto LABEL_22;
        }

LABEL_23:
        userInfo2 = [v9 userInfo];
        v18 = [userInfo2 objectForKey:@"MailboxType"];

        if (v18)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            intValue = [v18 intValue];
            v20 = [MFAccount storeOnServerSettingsForType:intValue];
            v21 = [(MFAccount *)self mailboxUidOfType:intValue createIfNeeded:0];
            v22 = [v20 key];
            v23 = [dictionaryCopy objectForKey:v22];
            if (v23)
            {
              goto LABEL_30;
            }

            v24 = [(MFAccount *)self storeMailboxTypeOnServer:intValue];

            if (v24)
            {
              if (v21)
              {
                mailboxNameKey = [v20 mailboxNameKey];
                [dictionaryCopy setObject:v21 forKey:mailboxNameKey];
              }

              v22 = [NSNumber numberWithBool:1];
              v23 = [v20 key];
              [dictionaryCopy setObject:v22 forKey:v23];
LABEL_30:
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v7);
  }
}

- (id)valueForSettingsInAccountPropertiesForKey:(id)key
{
  v3 = [(MFAccount *)self valueInAccountPropertiesForKey:key];

  return v3;
}

- (void)copySecureMIMEIdentitiesIntoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  firstEmailAddress = [(MFAccount *)selfCopy firstEmailAddress];
  emailAddressValue = [firstEmailAddress emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v8 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstEmailAddress stringValue];
  }

  v10 = stringValue;

  v11 = MFMailAccountSigningIdentity;
  v12 = [dictionaryCopy objectForKey:MFMailAccountSigningIdentity];

  if (!v12)
  {
    v13 = [(MFAccount *)selfCopy signingIdentityPersistentReferenceForAddress:v10];
    v14 = [MFMessageKeychainManager copyIdentityForPersistentReference:v13 error:0];
    if (v14)
    {
      [dictionaryCopy setObject:v14 forKey:v11];
    }
  }

  v15 = MFMailAccountEncryptionIdentity;
  v16 = [dictionaryCopy objectForKey:MFMailAccountEncryptionIdentity];

  if (!v16)
  {
    v17 = [(MFAccount *)selfCopy encryptionIdentityPersistentReferenceForAddress:v10];
    v18 = [MFMessageKeychainManager copyIdentityForPersistentReference:v17 error:0];
    if (v18)
    {
      [dictionaryCopy setObject:v18 forKey:v15];
    }
  }
}

- (void)setAccountPropertiesWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v57 = MailAccountPassword;
  password = [dictionaryCopy objectForKey:?];
  if (!password)
  {
    password = [(MFAccount *)self password];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  allKeys = [dictionaryCopy allKeys];
  obj = allKeys;
  v6 = [allKeys countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v6)
  {
    v8 = *v63;
    v56 = MailAccountHostname;
    v55 = MFMailAccountAuthenticationScheme;
    v54 = IMAPServerPathPrefix;
    v53 = MailAccountPortNumber;
    v52 = MFMailAccountNumberOfDaysToKeepTrash;
    v51 = MF_POPAccountDeletionPolicy;
    v44 = MFMailAccountSigningIdentity;
    v40 = MFMailAccountEncryptionIdentity;
    v50 = MF_POPAccountDeleteMessagesAfterIntervalKey;
    v46 = MF_POPAccountDeleteMessagesWhenTransferredOutOfInboxKey;
    v42 = MF_POPAccountDeleteMessagesRightAwayKey;
    *&v7 = 134217984;
    v39 = v7;
    do
    {
      v9 = 0;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v62 + 1) + 8 * v9);
        v11 = [dictionaryCopy objectForKey:{v10, v39}];
        v12 = [MFAccount storeOnServerSettingsForKey:v10];
        if ([v10 isEqualToString:@"MailAccountIsActive"])
        {
          -[MFAccount setActive:](self, "setActive:", [v11 BOOLValue]);
        }

        else if (([v10 isEqualToString:v57] & 1) == 0)
        {
          if ([v10 isEqualToString:v56])
          {
            [(MFAccount *)self setHostname:v11];
          }

          else if ([v10 isEqualToString:v55])
          {
            v13 = [ECAuthenticationScheme schemeWithName:v11];
            [(MFAccount *)self setPreferredAuthScheme:v13];
          }

          else if ([v10 isEqualToString:v54] && (v14 = objc_opt_class(), v14 == objc_opt_class()))
          {
            [(MFAccount *)self setServerPathPrefix:v11];
          }

          else if ([v10 isEqualToString:v53])
          {
            -[MFAccount setPortNumber:](self, "setPortNumber:", [v11 intValue]);
          }

          else if ([v10 isEqualToString:v52])
          {
            -[MFAccount setEmptyFrequency:forMailboxType:](self, "setEmptyFrequency:forMailboxType:", [v11 intValue], 3);
          }

          else if ([v10 isEqualToString:v51])
          {
            if (v50 == v11)
            {
              v15 = 2;
            }

            else if (v46 == v11)
            {
              v15 = 3;
            }

            else
            {
              v15 = v42 == v11;
            }

            [(MFAccount *)self setMessageDeletionPolicy:v15];
          }

          else if ([v12 type] == -500)
          {
            if ([v10 isEqualToString:v44])
            {
              trust = 0;
              certificateRef = 0;
              firstEmailAddress = [(MFAccount *)self firstEmailAddress];
              policies = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:firstEmailAddress];

              SecIdentityCopyCertificate(v11, &certificateRef);
              SecTrustCreateWithCertificates(certificateRef, policies, &trust);
              log = [[CertUITrustManager alloc] initWithAccessGroup:@"com.apple.mobilemail.smime"];
              v17 = trust;
              firstEmailAddress2 = [(MFAccount *)self firstEmailAddress];
              LODWORD(v17) = [log actionForSMIMETrust:v17 sender:firstEmailAddress2];

              if (v17 == 2)
              {
                v19 = trust;
                firstEmailAddress3 = [(MFAccount *)self firstEmailAddress];
                [log addSMIMETrust:v19 sender:firstEmailAddress3];
              }

              keys = kSecValueRef;
              v72 = kSecAttrSynchronizable;
              v73 = kSecReturnPersistentRef;
              values = v11;
              v69 = kSecAttrSynchronizableAny;
              v70 = kCFBooleanTrue;
              v21 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              result = 0;
              cf = v21;
              v22 = SecItemCopyMatching(v21, &result);
              if (v22)
              {
                v23 = MFLogGeneral();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v39;
                  v67 = v22;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "#Warning SecItemCopyMatching returned %ld", buf, 0xCu);
                }
              }

              else
              {
                v32 = result;
                firstEmailAddress4 = [(MFAccount *)self firstEmailAddress];
                v34 = v32;
                v23 = firstEmailAddress4;
                [(MFAccount *)self setSigningIdentityPersistentReference:v34 forAddress:?];
              }

              CFRelease(certificateRef);
              CFRelease(trust);
              CFRelease(policies);
              CFRelease(cf);
              CFRelease(result);
            }

            else if ([v10 isEqualToString:v40])
            {
              keys = kSecValueRef;
              v72 = kSecAttrSynchronizable;
              v73 = kSecReturnPersistentRef;
              values = v11;
              v69 = kSecAttrSynchronizableAny;
              v70 = kCFBooleanTrue;
              v25 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              certificateRef = 0;
              v26 = v25;
              v27 = SecItemCopyMatching(v25, &certificateRef);
              if (v27)
              {
                loga = MFLogGeneral();
                if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v39;
                  v67 = v27;
                  v28 = loga;
                  _os_log_impl(&dword_0, loga, OS_LOG_TYPE_DEFAULT, "#Warning SecItemCopyMatching returned %ld", buf, 0xCu);
                }

                else
                {
                  v28 = loga;
                }
              }

              else
              {
                v35 = certificateRef;
                firstEmailAddress5 = [(MFAccount *)self firstEmailAddress];
                v37 = v35;
                v28 = firstEmailAddress5;
                [(MFAccount *)self setEncryptionIdentityPersistentReference:v37 forAddress:firstEmailAddress5];
              }

              CFRelease(v26);
              if (certificateRef)
              {
                CFRelease(certificateRef);
              }
            }

            else if (v11)
            {
              [(MFAccount *)self setAccountProperty:v11 forKey:v10];
            }
          }

          else
          {
            logb = [v12 key];
            v24 = [v10 isEqualToString:logb];

            if (v24)
            {
              -[MFAccount setStoreMailboxType:onServer:](self, "setStoreMailboxType:onServer:", [v12 type], objc_msgSend(v11, "BOOLValue"));
            }

            else
            {
              mailboxNameKey = [v12 mailboxNameKey];
              v30 = [v10 isEqualToString:mailboxNameKey];

              if (v30)
              {
                v31 = v11;
                -[MFAccount setMailboxUid:forMailboxType:](self, "setMailboxUid:forMailboxType:", v31, [v12 type]);
              }
            }
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      allKeys = obj;
      v38 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
      v6 = v38;
    }

    while (v38);
  }

  [(MFAccount *)self setPassword:password];
}

+ (id)authSchemeValues
{
  authSchemesForAccountClass = [self authSchemesForAccountClass];
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = authSchemesForAccountClass;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canAuthenticateAccountClass:self connection:{0, v12}])
        {
          name = [v9 name];
          [v4 addObject:name];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)authSchemeTitles
{
  authSchemesForAccountClass = [self authSchemesForAccountClass];
  v4 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = authSchemesForAccountClass;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canAuthenticateAccountClass:self connection:{0, v12}])
        {
          humanReadableName = [v9 humanReadableName];
          [v4 addObject:humanReadableName];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v4;
}

- (NSString)managedAccountFooterText
{
  if (![(MFAccount *)self isManaged])
  {
    v8 = 0;
    goto LABEL_9;
  }

  v3 = [(MFAccount *)self accountPropertyForKey:MailAccountManagedTag];
  if ([v3 length])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"PROFILE_ACCOUNT_DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
    v6 = [MFAccount profileDisplayNameFromTag:v3];
    v7 = [NSString stringWithFormat:v5, v6];
  }

  else
  {
    v4 = [(MFAccount *)self accountPropertyForKey:ACAccountPropertyManagingSourceName];
    if (![v4 length])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MANAGED_ACCOUNT_DESCRIPTION" value:&stru_B9FC8 table:@"AccountPreferences"];
    v7 = [NSString stringWithFormat:v6, v4];
  }

  v8 = v7;

LABEL_8:
LABEL_9:

  return v8;
}

+ (id)profileDisplayNameFromTag:(id)tag
{
  tagCopy = tag;
  v4 = [tagCopy rangeOfString:@"|" options:4];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = &stru_B9FC8;
  }

  else
  {
    v5 = [tagCopy substringWithRange:{v4 + 1, objc_msgSend(tagCopy, "length") + ~v4}];
  }

  return v5;
}

@end
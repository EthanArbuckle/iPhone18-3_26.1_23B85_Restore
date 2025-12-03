@interface NEVPNProtocolIPSec
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)needToUpdateKeychain;
- (NEVPNProtocolIPSec)initWithCoder:(id)coder;
- (NEVPNProtocolIPSec)initWithType:(int64_t)type;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences;
- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix;
@end

@implementation NEVPNProtocolIPSec

- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences
{
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  [passwordKeychainItem migrateFromPreferences:preferences];

  sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [sharedSecretKeychainItem migrateFromPreferences:preferences];
}

- (BOOL)needToUpdateKeychain
{
  v8.receiver = self;
  v8.super_class = NEVPNProtocolIPSec;
  if ([(NEVPNProtocol *)&v8 needToUpdateKeychain])
  {
    return 1;
  }

  sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    password = [sharedSecretKeychainItem2 password];
    v3 = [password length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix
{
  configurationCopy = configuration;
  suffixCopy = suffix;
  v10 = suffixCopy;
  if (suffixCopy)
  {
    v11 = [suffixCopy stringByAppendingString:@".XAUTH"];
    v12 = [v10 stringByAppendingString:@".SS"];
    v13 = [v10 stringByAppendingString:@".IDDATA"];
  }

  else
  {
    v12 = @"SS";
    v11 = @"XAUTH";
    v13 = @"IDDATA";
  }

  v58.receiver = self;
  v58.super_class = NEVPNProtocolIPSec;
  [(NEVPNProtocol *)&v58 syncWithKeychainInDomainCommon:domain];
  username = [(NEVPNProtocol *)self username];
  if (username)
  {
    v15 = username;
    passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];

    if (!passwordKeychainItem)
    {
      v56 = v13;
      v17 = MEMORY[0x1E696AEC0];
      identifier = [configurationCopy identifier];
      uUIDString = [identifier UUIDString];
      v20 = [v17 stringWithFormat:@"%@.%@", uUIDString, v11];

      v22 = [NEKeychainItem alloc];
      if (self)
      {
        keychainDomain = self->super._keychainDomain;
        Property = objc_getProperty(self, v21, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v25 = Property;
      v26 = [(NEKeychainItem *)v22 initWithIdentifier:v20 domain:keychainDomain accessGroup:v25];
      [(NEVPNProtocol *)self setPasswordKeychainItem:v26];

      v13 = v56;
    }
  }

  passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (passwordKeychainItem2)
  {
    v28 = passwordKeychainItem2;
    passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
    domain = [passwordKeychainItem3 domain];

    if (domain == domain)
    {
      passwordKeychainItem4 = [(NEVPNProtocol *)self passwordKeychainItem];
      username2 = [(NEVPNProtocol *)self username];
      [passwordKeychainItem4 syncUsingConfiguration:configurationCopy accountName:username2 passwordType:1 identifierSuffix:v11];
    }
  }

  if ([(NEVPNProtocolIPSec *)self authenticationMethod]== NEVPNIKEAuthenticationMethodSharedSecret)
  {
    sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];

    if (!sharedSecretKeychainItem)
    {
      v57 = v13;
      v34 = MEMORY[0x1E696AEC0];
      identifier2 = [configurationCopy identifier];
      uUIDString2 = [identifier2 UUIDString];
      v37 = [v34 stringWithFormat:@"%@.%@", uUIDString2, v12];

      v39 = [NEKeychainItem alloc];
      if (self)
      {
        v40 = self->super._keychainDomain;
        v41 = objc_getProperty(self, v38, 88, 1);
      }

      else
      {
        v40 = 0;
        v41 = 0;
      }

      v42 = v41;
      v43 = [(NEKeychainItem *)v39 initWithIdentifier:v37 domain:v40 accessGroup:v42];
      [(NEVPNProtocolIPSec *)self setSharedSecretKeychainItem:v43];

      v13 = v57;
    }
  }

  sharedSecretKeychainItem2 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  if (sharedSecretKeychainItem2)
  {
    v45 = sharedSecretKeychainItem2;
    sharedSecretKeychainItem3 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    domain2 = [sharedSecretKeychainItem3 domain];

    if (domain2 == domain)
    {
      sharedSecretKeychainItem4 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
      localIdentifier = [(NEVPNProtocolIPSec *)self localIdentifier];
      [sharedSecretKeychainItem4 syncUsingConfiguration:configurationCopy accountName:localIdentifier passwordType:2 identifierSuffix:v12];
    }
  }

  identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  if (identityDataPasswordKeychainItem)
  {
    v51 = identityDataPasswordKeychainItem;
    identityDataPasswordKeychainItem2 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    domain3 = [identityDataPasswordKeychainItem2 domain];

    if (domain3 == domain)
    {
      identityDataPasswordKeychainItem3 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      localIdentifier2 = [(NEVPNProtocolIPSec *)self localIdentifier];
      [identityDataPasswordKeychainItem3 syncUsingConfiguration:configurationCopy accountName:localIdentifier2 passwordType:3 identifierSuffix:v13];
    }
  }
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  v86 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
  v6 = isa_nsuuid(v5);

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
    v8 = [(NEVPNProtocol *)self initWithProtocolIdentifier:v7];

    if (!v8)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v8 = [(NEVPNProtocolIPSec *)self init];
    if (!v8)
    {
      goto LABEL_53;
    }
  }

  v9 = *MEMORY[0x1E6982428];
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982428]];
  v11 = isa_nsstring(v10);

  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:v9];
    [(NEVPNProtocol *)v8 setServerAddress:v12];
  }

  v13 = *MEMORY[0x1E6982448];
  v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982448]];
  v15 = isa_nsstring(v14);

  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    [(NEVPNProtocol *)v8 setUsername:v16];

    [(NEVPNProtocolIPSec *)v8 setUseExtendedAuthentication:1];
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982458]];
  if (isa_nsstring(v17) && [v17 isEqualToString:*MEMORY[0x1E6982890]])
  {
    [(NEVPNProtocolIPSec *)v8 setExtendedAuthPasswordPrompt:1];
  }

  v18 = *MEMORY[0x1E6982450];
  v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982450]];
  v20 = isa_nsstring(v19);

  if (v20)
  {
    if (isa_nsstring(v17) && [v17 isEqualToString:*MEMORY[0x1E6982888]])
    {
      v21 = [NEKeychainItem alloc];
      v22 = [dictionaryCopy objectForKeyedSubscript:v18];
      keychainDomain = v8->super._keychainDomain;
      v25 = objc_getProperty(v8, v24, 88, 1);
      v26 = [(NEKeychainItem *)v21 initWithLegacyIdentifier:v22 domain:keychainDomain accessGroup:v25];
      [(NEVPNProtocol *)v8 setPasswordKeychainItem:v26];
    }

    passwordKeychainItem = [(NEVPNProtocol *)v8 passwordKeychainItem];

    if (!passwordKeychainItem)
    {
      v28 = [NEKeychainItem alloc];
      v29 = [dictionaryCopy objectForKeyedSubscript:v18];
      v30 = v8->super._keychainDomain;
      v32 = objc_getProperty(v8, v31, 88, 1);
      v33 = [(NEKeychainItem *)v28 initWithPassword:v29 domain:v30 accessGroup:v32];
      [(NEVPNProtocol *)v8 setPasswordKeychainItem:v33];
    }

    [(NEVPNProtocolIPSec *)v8 setUseExtendedAuthentication:1];
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"PasswordReference"];
  v35 = isa_nsdata(v34);

  if (v35)
  {
    v36 = [dictionaryCopy objectForKeyedSubscript:@"PasswordReference"];
    [(NEVPNProtocol *)v8 setPasswordReference:v36];
  }

  v37 = *MEMORY[0x1E6982440];
  v38 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982440]];
  v39 = isa_nsnumber(v38);

  if (v39)
  {
    v40 = [dictionaryCopy objectForKeyedSubscript:v37];
    -[NEVPNProtocolIPSec setUseExtendedAuthentication:](v8, "setUseExtendedAuthentication:", [v40 BOOLValue]);
  }

  v41 = *MEMORY[0x1E6982410];
  v42 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982410]];
  v43 = isa_nsdata(v42);

  if (v43)
  {
    v44 = [dictionaryCopy objectForKeyedSubscript:v41];
    [(NEVPNProtocol *)v8 setIdentityReferenceInternal:v44];
  }

  v45 = *MEMORY[0x1E6982430];
  v46 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982430]];
  v47 = isa_nsstring(v46);

  if (v47)
  {
    v48 = [NEKeychainItem alloc];
    v49 = [dictionaryCopy objectForKeyedSubscript:v45];
    v50 = v8->super._keychainDomain;
    v52 = objc_getProperty(v8, v51, 88, 1);
    v53 = [(NEKeychainItem *)v48 initWithLegacyIdentifier:v49 domain:v50 accessGroup:v52];
    sharedSecretKeychainItem = v8->_sharedSecretKeychainItem;
    v8->_sharedSecretKeychainItem = v53;
  }

  v55 = *MEMORY[0x1E6982418];
  v56 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982418]];
  v57 = isa_nsstring(v56);

  if (v57)
  {
    v58 = [dictionaryCopy objectForKeyedSubscript:v55];
    v59 = [v58 copy];
    localIdentifier = v8->_localIdentifier;
    v8->_localIdentifier = v59;
  }

  v61 = *MEMORY[0x1E6982408];
  v62 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982408]];
  v63 = isa_nsstring(v62);

  if (v63)
  {
    v64 = [dictionaryCopy objectForKeyedSubscript:v61];
    if ([v64 isEqualToString:*MEMORY[0x1E6982870]])
    {
      v65 = 2;
    }

    else
    {
      if (![v64 isEqualToString:*MEMORY[0x1E6982868]])
      {
LABEL_36:

        goto LABEL_37;
      }

      v65 = 1;
    }

    v8->_authenticationMethod = v65;
    goto LABEL_36;
  }

  v8->_authenticationMethod = 0;
LABEL_37:
  v66 = [dictionaryCopy objectForKeyedSubscript:@"ExchangeMode"];
  v67 = isa_nsarray(v66);

  if (v67)
  {
    v68 = [dictionaryCopy objectForKeyedSubscript:@"ExchangeMode"];
    [(NEVPNProtocolIPSec *)v8 setLegacyExchangeMode:v68];
  }

  v69 = [dictionaryCopy objectForKeyedSubscript:@"Proposals"];
  v70 = isa_nsarray(v69);

  if (v70)
  {
    array = [MEMORY[0x1E695DF70] array];
    v72 = [dictionaryCopy objectForKeyedSubscript:@"Proposals"];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v73 = [v72 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v82;
      do
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v82 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = [[NEVPNIKEv1ProposalParameters alloc] initFromLegacyDictionary:*(*(&v81 + 1) + 8 * i)];
          if (v77)
          {
            [array addObject:v77];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v74);
    }

    if ([array count])
    {
      [(NEVPNProtocolIPSec *)v8 setLegacyProposals:array];
    }
  }

  [(NEVPNProtocol *)v8 initDisconnectOptions:dictionaryCopy];
  v78 = v8;

LABEL_53:
  v79 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyLegacyDictionary
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serverAddress = [(NEVPNProtocol *)self serverAddress];

  if (serverAddress)
  {
    serverAddress2 = [(NEVPNProtocol *)self serverAddress];
    [v3 setObject:serverAddress2 forKeyedSubscript:*MEMORY[0x1E6982428]];
  }

  if ([(NEVPNProtocolIPSec *)self authenticationMethod]== NEVPNIKEAuthenticationMethodCertificate)
  {
    v6 = MEMORY[0x1E6982868];
  }

  else
  {
    if ([(NEVPNProtocolIPSec *)self authenticationMethod]!= NEVPNIKEAuthenticationMethodSharedSecret)
    {
      goto LABEL_8;
    }

    v6 = MEMORY[0x1E6982870];
  }

  [v3 setObject:*v6 forKeyedSubscript:*MEMORY[0x1E6982408]];
LABEL_8:
  username = [(NEVPNProtocol *)self username];

  if (username)
  {
    username2 = [(NEVPNProtocol *)self username];
    [v3 setObject:username2 forKeyedSubscript:*MEMORY[0x1E6982448]];
  }

  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];

  if (passwordKeychainItem)
  {
    passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
    password = [passwordKeychainItem2 password];

    passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
    identifier2 = passwordKeychainItem3;
    if (password)
    {
      password2 = [passwordKeychainItem3 password];

      identifier2 = password2;
      if (!password2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    identifier = [passwordKeychainItem3 identifier];
    if (!identifier)
    {
      goto LABEL_18;
    }

    v16 = identifier;
    passwordKeychainItem4 = [(NEVPNProtocol *)self passwordKeychainItem];
    persistentReference = [passwordKeychainItem4 persistentReference];

    if (persistentReference)
    {
      passwordKeychainItem5 = [(NEVPNProtocol *)self passwordKeychainItem];
      identifier2 = [passwordKeychainItem5 identifier];

      [v3 setObject:*MEMORY[0x1E6982888] forKeyedSubscript:*MEMORY[0x1E6982458]];
      if (identifier2)
      {
LABEL_13:
        [v3 setObject:identifier2 forKeyedSubscript:*MEMORY[0x1E6982450]];
LABEL_18:
      }
    }
  }

LABEL_19:
  passwordReference = [(NEVPNProtocol *)self passwordReference];

  if (passwordReference)
  {
    passwordReference2 = [(NEVPNProtocol *)self passwordReference];
    [v3 setObject:passwordReference2 forKeyedSubscript:@"PasswordReference"];
  }

  sharedSecretReference = [(NEVPNProtocolIPSec *)self sharedSecretReference];

  if (sharedSecretReference)
  {
    sharedSecretReference2 = [(NEVPNProtocolIPSec *)self sharedSecretReference];
    [v3 setObject:sharedSecretReference2 forKeyedSubscript:@"SharedSecretReference"];
  }

  identityReferenceInternal = [(NEVPNProtocol *)self identityReferenceInternal];

  if (identityReferenceInternal)
  {
    identityReferenceInternal2 = [(NEVPNProtocol *)self identityReferenceInternal];
    [v3 setObject:identityReferenceInternal2 forKeyedSubscript:*MEMORY[0x1E6982410]];
  }

  sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];

  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    password3 = [sharedSecretKeychainItem2 password];

    sharedSecretKeychainItem3 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    identifier4 = sharedSecretKeychainItem3;
    if (password3)
    {
      password4 = [sharedSecretKeychainItem3 password];

      identifier4 = password4;
      if (!password4)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    identifier3 = [sharedSecretKeychainItem3 identifier];
    if (!identifier3)
    {
      goto LABEL_33;
    }

    v33 = identifier3;
    sharedSecretKeychainItem4 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    persistentReference2 = [sharedSecretKeychainItem4 persistentReference];

    if (persistentReference2)
    {
      sharedSecretKeychainItem5 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
      identifier4 = [sharedSecretKeychainItem5 identifier];

      [v3 setObject:*MEMORY[0x1E6982880] forKeyedSubscript:*MEMORY[0x1E6982438]];
      if (identifier4)
      {
LABEL_28:
        [v3 setObject:identifier4 forKeyedSubscript:*MEMORY[0x1E6982430]];
LABEL_33:
      }
    }
  }

LABEL_34:
  identityDataPassword = [(NEVPNProtocol *)self identityDataPassword];

  if (identityDataPassword)
  {
    identityDataPassword2 = [(NEVPNProtocol *)self identityDataPassword];
LABEL_36:
    [v3 setObject:identityDataPassword2 forKeyedSubscript:@"IdentityDataPasswordKeyStr"];
LABEL_37:

    goto LABEL_38;
  }

  identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];

  if (identityDataPasswordKeychainItem)
  {
    identityDataPasswordKeychainItem2 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    identityDataPassword2 = [identityDataPasswordKeychainItem2 password];

    if (!identityDataPassword2)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_38:
  localIdentifier = [(NEVPNProtocolIPSec *)self localIdentifier];

  if (localIdentifier)
  {
    localIdentifier2 = [(NEVPNProtocolIPSec *)self localIdentifier];
    [v3 setObject:localIdentifier2 forKeyedSubscript:*MEMORY[0x1E6982418]];

    [v3 setObject:*MEMORY[0x1E6982878] forKeyedSubscript:*MEMORY[0x1E6982420]];
  }

  remoteIdentifier = [(NEVPNProtocolIPSec *)self remoteIdentifier];

  if (remoteIdentifier)
  {
    remoteIdentifier2 = [(NEVPNProtocolIPSec *)self remoteIdentifier];
    [v3 setObject:remoteIdentifier2 forKeyedSubscript:@"RemoteIdentifier"];
  }

  if ([(NEVPNProtocolIPSec *)self useExtendedAuthentication])
  {
    v43 = &unk_1F38BA718;
  }

  else
  {
    v43 = &unk_1F38BA730;
  }

  [v3 setObject:v43 forKeyedSubscript:*MEMORY[0x1E6982440]];
  legacyExchangeMode = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  v45 = isa_nsarray(legacyExchangeMode);

  if (v45)
  {
    legacyExchangeMode2 = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
    [v3 setObject:legacyExchangeMode2 forKeyedSubscript:@"ExchangeMode"];
  }

  legacyProposals = [(NEVPNProtocolIPSec *)self legacyProposals];

  if (legacyProposals)
  {
    array = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    legacyProposals2 = [(NEVPNProtocolIPSec *)self legacyProposals];
    v50 = [legacyProposals2 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v60;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(legacyProposals2);
          }

          copyLegacyDictionary = [*(*(&v59 + 1) + 8 * i) copyLegacyDictionary];
          if (copyLegacyDictionary)
          {
            [array addObject:copyLegacyDictionary];
          }
        }

        v51 = [legacyProposals2 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v51);
    }

    [v3 setObject:array forKeyedSubscript:@"Proposals"];
  }

  if ([(NEVPNProtocolIPSec *)self extendedAuthPasswordPrompt])
  {
    [v3 setObject:*MEMORY[0x1E6982890] forKeyedSubscript:*MEMORY[0x1E6982458]];
  }

  [(NEVPNProtocol *)self addDisconnectOptions:v3];
  v55 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v13.receiver = self;
  v13.super_class = NEVPNProtocolIPSec;
  v5 = [(NEVPNProtocol *)&v13 checkValidityAndCollectErrors:errorsCopy];
  if ([(NEVPNProtocolIPSec *)self authenticationMethod])
  {
    if ([(NEVPNProtocolIPSec *)self authenticationMethod]== NEVPNIKEAuthenticationMethodCertificate)
    {
      identityReferenceInternal = [(NEVPNProtocol *)self identityReferenceInternal];
      if (identityReferenceInternal)
      {

        goto LABEL_13;
      }

      identityDataInternal = [(NEVPNProtocol *)self identityDataInternal];
      if (identityDataInternal || [(NEVPNProtocolIPSec *)self useExtendedAuthentication]&& [(NEVPNProtocol *)self type]== 5)
      {

        goto LABEL_13;
      }

      extensibleSSOProvider = [(NEVPNProtocol *)self extensibleSSOProvider];
      if (!extensibleSSOProvider || (v11 = extensibleSSOProvider, v12 = [(NEVPNProtocol *)self type], v11, v12 != 5))
      {
        v7 = @"Missing identity";
        goto LABEL_7;
      }
    }
  }

  else if ([(NEVPNProtocol *)self type]== 1 || [(NEVPNProtocol *)self type]== 5 && ![(NEVPNProtocolIPSec *)self useExtendedAuthentication])
  {
    v7 = @"Unsupported authenticationMethod";
LABEL_7:
    [NEConfiguration addError:v7 toList:errorsCopy];
    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NEVPNProtocolIPSec;
  v4 = [(NEVPNProtocol *)&v12 copyWithZone:zone];
  [v4 setAuthenticationMethod:{-[NEVPNProtocolIPSec authenticationMethod](self, "authenticationMethod")}];
  sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [v4 setSharedSecretKeychainItem:sharedSecretKeychainItem];

  sharedSecretReference = [(NEVPNProtocolIPSec *)self sharedSecretReference];
  [v4 setSharedSecretReference:sharedSecretReference];

  localIdentifier = [(NEVPNProtocolIPSec *)self localIdentifier];
  [v4 setLocalIdentifier:localIdentifier];

  remoteIdentifier = [(NEVPNProtocolIPSec *)self remoteIdentifier];
  [v4 setRemoteIdentifier:remoteIdentifier];

  [v4 setUseExtendedAuthentication:{-[NEVPNProtocolIPSec useExtendedAuthentication](self, "useExtendedAuthentication")}];
  legacyProposals = [(NEVPNProtocolIPSec *)self legacyProposals];
  [v4 setLegacyProposals:legacyProposals];

  legacyExchangeMode = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  [v4 setLegacyExchangeMode:legacyExchangeMode];

  [v4 setExtendedAuthPasswordPrompt:{-[NEVPNProtocolIPSec extendedAuthPasswordPrompt](self, "extendedAuthPasswordPrompt")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = NEVPNProtocolIPSec;
  coderCopy = coder;
  [(NEVPNProtocol *)&v11 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[NEVPNProtocolIPSec authenticationMethod](self forKey:{"authenticationMethod", v11.receiver, v11.super_class), @"AuthenticationMethod"}];
  sharedSecretKeychainItem = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [coderCopy encodeObject:sharedSecretKeychainItem forKey:@"SharedSecret"];

  sharedSecretReference = [(NEVPNProtocolIPSec *)self sharedSecretReference];
  [coderCopy encodeObject:sharedSecretReference forKey:@"SharedSecretReference"];

  localIdentifier = [(NEVPNProtocolIPSec *)self localIdentifier];
  [coderCopy encodeObject:localIdentifier forKey:@"LocalIdentifier"];

  remoteIdentifier = [(NEVPNProtocolIPSec *)self remoteIdentifier];
  [coderCopy encodeObject:remoteIdentifier forKey:@"RemoteIdentifier"];

  [coderCopy encodeBool:-[NEVPNProtocolIPSec useExtendedAuthentication](self forKey:{"useExtendedAuthentication"), @"UseExtendedAuthentication"}];
  legacyProposals = [(NEVPNProtocolIPSec *)self legacyProposals];
  [coderCopy encodeObject:legacyProposals forKey:@"LegacyProposals"];

  legacyExchangeMode = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  [coderCopy encodeObject:legacyExchangeMode forKey:@"LegacyExchangeMode"];

  [coderCopy encodeBool:-[NEVPNProtocolIPSec extendedAuthPasswordPrompt](self forKey:{"extendedAuthPasswordPrompt"), @"ExtendedAuthPasswordPrompt"}];
}

- (NEVPNProtocolIPSec)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = NEVPNProtocolIPSec;
  v5 = [(NEVPNProtocol *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_authenticationMethod = [coderCopy decodeInt32ForKey:@"AuthenticationMethod"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecret"];
    sharedSecretKeychainItem = v5->_sharedSecretKeychainItem;
    v5->_sharedSecretKeychainItem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecretReference"];
    sharedSecretReference = v5->_sharedSecretReference;
    v5->_sharedSecretReference = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteIdentifier"];
    remoteIdentifier = v5->_remoteIdentifier;
    v5->_remoteIdentifier = v12;

    v5->_useExtendedAuthentication = [coderCopy decodeBoolForKey:@"UseExtendedAuthentication"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"LegacyProposals"];
    legacyProposals = v5->_legacyProposals;
    v5->_legacyProposals = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"LegacyExchangeMode"];
    legacyExchangeMode = v5->_legacyExchangeMode;
    v5->_legacyExchangeMode = v22;

    v5->_extendedAuthPasswordPrompt = [coderCopy decodeBoolForKey:@"ExtendedAuthPasswordPrompt"];
  }

  return v5;
}

- (NEVPNProtocolIPSec)initWithType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = NEVPNProtocolIPSec;
  v3 = [(NEVPNProtocol *)&v6 initWithType:type];
  v4 = v3;
  if (v3)
  {
    v3->super._keychainDomain = 0;
    [(NEVPNProtocol *)v3 setDisconnectOnWake:1];
    v4->_authenticationMethod = 0;
    v4->_useExtendedAuthentication = 1;
    v4->_extendedAuthPasswordPrompt = 0;
  }

  return v4;
}

@end
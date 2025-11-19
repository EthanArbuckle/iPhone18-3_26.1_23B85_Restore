@interface NEVPNProtocolIPSec
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)needToUpdateKeychain;
- (NEVPNProtocolIPSec)initWithCoder:(id)a3;
- (NEVPNProtocolIPSec)initWithType:(int64_t)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3;
- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5;
@end

@implementation NEVPNProtocolIPSec

- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3
{
  v5 = [(NEVPNProtocol *)self passwordKeychainItem];
  [v5 migrateFromPreferences:a3];

  v6 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [v6 migrateFromPreferences:a3];
}

- (BOOL)needToUpdateKeychain
{
  v8.receiver = self;
  v8.super_class = NEVPNProtocolIPSec;
  if ([(NEVPNProtocol *)&v8 needToUpdateKeychain])
  {
    return 1;
  }

  v4 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  if (v4)
  {
    v5 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    v6 = [v5 password];
    v3 = [v6 length] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 stringByAppendingString:@".XAUTH"];
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
  [(NEVPNProtocol *)&v58 syncWithKeychainInDomainCommon:a3];
  v14 = [(NEVPNProtocol *)self username];
  if (v14)
  {
    v15 = v14;
    v16 = [(NEVPNProtocol *)self passwordKeychainItem];

    if (!v16)
    {
      v56 = v13;
      v17 = MEMORY[0x1E696AEC0];
      v18 = [v8 identifier];
      v19 = [v18 UUIDString];
      v20 = [v17 stringWithFormat:@"%@.%@", v19, v11];

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

  v27 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (v27)
  {
    v28 = v27;
    v29 = [(NEVPNProtocol *)self passwordKeychainItem];
    v30 = [v29 domain];

    if (v30 == a3)
    {
      v31 = [(NEVPNProtocol *)self passwordKeychainItem];
      v32 = [(NEVPNProtocol *)self username];
      [v31 syncUsingConfiguration:v8 accountName:v32 passwordType:1 identifierSuffix:v11];
    }
  }

  if ([(NEVPNProtocolIPSec *)self authenticationMethod]== NEVPNIKEAuthenticationMethodSharedSecret)
  {
    v33 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];

    if (!v33)
    {
      v57 = v13;
      v34 = MEMORY[0x1E696AEC0];
      v35 = [v8 identifier];
      v36 = [v35 UUIDString];
      v37 = [v34 stringWithFormat:@"%@.%@", v36, v12];

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

  v44 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  if (v44)
  {
    v45 = v44;
    v46 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    v47 = [v46 domain];

    if (v47 == a3)
    {
      v48 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
      v49 = [(NEVPNProtocolIPSec *)self localIdentifier];
      [v48 syncUsingConfiguration:v8 accountName:v49 passwordType:2 identifierSuffix:v12];
    }
  }

  v50 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  if (v50)
  {
    v51 = v50;
    v52 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    v53 = [v52 domain];

    if (v53 == a3)
    {
      v54 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      v55 = [(NEVPNProtocolIPSec *)self localIdentifier];
      [v54 syncUsingConfiguration:v8 accountName:v55 passwordType:3 identifierSuffix:v13];
    }
  }
}

- (id)initFromLegacyDictionary:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
  v6 = isa_nsuuid(v5);

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
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
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982428]];
  v11 = isa_nsstring(v10);

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:v9];
    [(NEVPNProtocol *)v8 setServerAddress:v12];
  }

  v13 = *MEMORY[0x1E6982448];
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982448]];
  v15 = isa_nsstring(v14);

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:v13];
    [(NEVPNProtocol *)v8 setUsername:v16];

    [(NEVPNProtocolIPSec *)v8 setUseExtendedAuthentication:1];
  }

  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982458]];
  if (isa_nsstring(v17) && [v17 isEqualToString:*MEMORY[0x1E6982890]])
  {
    [(NEVPNProtocolIPSec *)v8 setExtendedAuthPasswordPrompt:1];
  }

  v18 = *MEMORY[0x1E6982450];
  v19 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982450]];
  v20 = isa_nsstring(v19);

  if (v20)
  {
    if (isa_nsstring(v17) && [v17 isEqualToString:*MEMORY[0x1E6982888]])
    {
      v21 = [NEKeychainItem alloc];
      v22 = [v4 objectForKeyedSubscript:v18];
      keychainDomain = v8->super._keychainDomain;
      v25 = objc_getProperty(v8, v24, 88, 1);
      v26 = [(NEKeychainItem *)v21 initWithLegacyIdentifier:v22 domain:keychainDomain accessGroup:v25];
      [(NEVPNProtocol *)v8 setPasswordKeychainItem:v26];
    }

    v27 = [(NEVPNProtocol *)v8 passwordKeychainItem];

    if (!v27)
    {
      v28 = [NEKeychainItem alloc];
      v29 = [v4 objectForKeyedSubscript:v18];
      v30 = v8->super._keychainDomain;
      v32 = objc_getProperty(v8, v31, 88, 1);
      v33 = [(NEKeychainItem *)v28 initWithPassword:v29 domain:v30 accessGroup:v32];
      [(NEVPNProtocol *)v8 setPasswordKeychainItem:v33];
    }

    [(NEVPNProtocolIPSec *)v8 setUseExtendedAuthentication:1];
  }

  v34 = [v4 objectForKeyedSubscript:@"PasswordReference"];
  v35 = isa_nsdata(v34);

  if (v35)
  {
    v36 = [v4 objectForKeyedSubscript:@"PasswordReference"];
    [(NEVPNProtocol *)v8 setPasswordReference:v36];
  }

  v37 = *MEMORY[0x1E6982440];
  v38 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982440]];
  v39 = isa_nsnumber(v38);

  if (v39)
  {
    v40 = [v4 objectForKeyedSubscript:v37];
    -[NEVPNProtocolIPSec setUseExtendedAuthentication:](v8, "setUseExtendedAuthentication:", [v40 BOOLValue]);
  }

  v41 = *MEMORY[0x1E6982410];
  v42 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982410]];
  v43 = isa_nsdata(v42);

  if (v43)
  {
    v44 = [v4 objectForKeyedSubscript:v41];
    [(NEVPNProtocol *)v8 setIdentityReferenceInternal:v44];
  }

  v45 = *MEMORY[0x1E6982430];
  v46 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982430]];
  v47 = isa_nsstring(v46);

  if (v47)
  {
    v48 = [NEKeychainItem alloc];
    v49 = [v4 objectForKeyedSubscript:v45];
    v50 = v8->super._keychainDomain;
    v52 = objc_getProperty(v8, v51, 88, 1);
    v53 = [(NEKeychainItem *)v48 initWithLegacyIdentifier:v49 domain:v50 accessGroup:v52];
    sharedSecretKeychainItem = v8->_sharedSecretKeychainItem;
    v8->_sharedSecretKeychainItem = v53;
  }

  v55 = *MEMORY[0x1E6982418];
  v56 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982418]];
  v57 = isa_nsstring(v56);

  if (v57)
  {
    v58 = [v4 objectForKeyedSubscript:v55];
    v59 = [v58 copy];
    localIdentifier = v8->_localIdentifier;
    v8->_localIdentifier = v59;
  }

  v61 = *MEMORY[0x1E6982408];
  v62 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982408]];
  v63 = isa_nsstring(v62);

  if (v63)
  {
    v64 = [v4 objectForKeyedSubscript:v61];
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
  v66 = [v4 objectForKeyedSubscript:@"ExchangeMode"];
  v67 = isa_nsarray(v66);

  if (v67)
  {
    v68 = [v4 objectForKeyedSubscript:@"ExchangeMode"];
    [(NEVPNProtocolIPSec *)v8 setLegacyExchangeMode:v68];
  }

  v69 = [v4 objectForKeyedSubscript:@"Proposals"];
  v70 = isa_nsarray(v69);

  if (v70)
  {
    v71 = [MEMORY[0x1E695DF70] array];
    v72 = [v4 objectForKeyedSubscript:@"Proposals"];
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
            [v71 addObject:v77];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v74);
    }

    if ([v71 count])
    {
      [(NEVPNProtocolIPSec *)v8 setLegacyProposals:v71];
    }
  }

  [(NEVPNProtocol *)v8 initDisconnectOptions:v4];
  v78 = v8;

LABEL_53:
  v79 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)copyLegacyDictionary
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NEVPNProtocol *)self serverAddress];

  if (v4)
  {
    v5 = [(NEVPNProtocol *)self serverAddress];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6982428]];
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
  v7 = [(NEVPNProtocol *)self username];

  if (v7)
  {
    v8 = [(NEVPNProtocol *)self username];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982448]];
  }

  v9 = [(NEVPNProtocol *)self passwordKeychainItem];

  if (v9)
  {
    v10 = [(NEVPNProtocol *)self passwordKeychainItem];
    v11 = [v10 password];

    v12 = [(NEVPNProtocol *)self passwordKeychainItem];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 password];

      v13 = v14;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v15 = [v12 identifier];
    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = v15;
    v17 = [(NEVPNProtocol *)self passwordKeychainItem];
    v18 = [v17 persistentReference];

    if (v18)
    {
      v19 = [(NEVPNProtocol *)self passwordKeychainItem];
      v13 = [v19 identifier];

      [v3 setObject:*MEMORY[0x1E6982888] forKeyedSubscript:*MEMORY[0x1E6982458]];
      if (v13)
      {
LABEL_13:
        [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6982450]];
LABEL_18:
      }
    }
  }

LABEL_19:
  v20 = [(NEVPNProtocol *)self passwordReference];

  if (v20)
  {
    v21 = [(NEVPNProtocol *)self passwordReference];
    [v3 setObject:v21 forKeyedSubscript:@"PasswordReference"];
  }

  v22 = [(NEVPNProtocolIPSec *)self sharedSecretReference];

  if (v22)
  {
    v23 = [(NEVPNProtocolIPSec *)self sharedSecretReference];
    [v3 setObject:v23 forKeyedSubscript:@"SharedSecretReference"];
  }

  v24 = [(NEVPNProtocol *)self identityReferenceInternal];

  if (v24)
  {
    v25 = [(NEVPNProtocol *)self identityReferenceInternal];
    [v3 setObject:v25 forKeyedSubscript:*MEMORY[0x1E6982410]];
  }

  v26 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];

  if (v26)
  {
    v27 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    v28 = [v27 password];

    v29 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    v30 = v29;
    if (v28)
    {
      v31 = [v29 password];

      v30 = v31;
      if (!v31)
      {
        goto LABEL_34;
      }

      goto LABEL_28;
    }

    v32 = [v29 identifier];
    if (!v32)
    {
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
    v35 = [v34 persistentReference];

    if (v35)
    {
      v36 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
      v30 = [v36 identifier];

      [v3 setObject:*MEMORY[0x1E6982880] forKeyedSubscript:*MEMORY[0x1E6982438]];
      if (v30)
      {
LABEL_28:
        [v3 setObject:v30 forKeyedSubscript:*MEMORY[0x1E6982430]];
LABEL_33:
      }
    }
  }

LABEL_34:
  v37 = [(NEVPNProtocol *)self identityDataPassword];

  if (v37)
  {
    v38 = [(NEVPNProtocol *)self identityDataPassword];
LABEL_36:
    [v3 setObject:v38 forKeyedSubscript:@"IdentityDataPasswordKeyStr"];
LABEL_37:

    goto LABEL_38;
  }

  v57 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];

  if (v57)
  {
    v58 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    v38 = [v58 password];

    if (!v38)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_38:
  v39 = [(NEVPNProtocolIPSec *)self localIdentifier];

  if (v39)
  {
    v40 = [(NEVPNProtocolIPSec *)self localIdentifier];
    [v3 setObject:v40 forKeyedSubscript:*MEMORY[0x1E6982418]];

    [v3 setObject:*MEMORY[0x1E6982878] forKeyedSubscript:*MEMORY[0x1E6982420]];
  }

  v41 = [(NEVPNProtocolIPSec *)self remoteIdentifier];

  if (v41)
  {
    v42 = [(NEVPNProtocolIPSec *)self remoteIdentifier];
    [v3 setObject:v42 forKeyedSubscript:@"RemoteIdentifier"];
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
  v44 = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  v45 = isa_nsarray(v44);

  if (v45)
  {
    v46 = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
    [v3 setObject:v46 forKeyedSubscript:@"ExchangeMode"];
  }

  v47 = [(NEVPNProtocolIPSec *)self legacyProposals];

  if (v47)
  {
    v48 = [MEMORY[0x1E695DF70] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v49 = [(NEVPNProtocolIPSec *)self legacyProposals];
    v50 = [v49 countByEnumeratingWithState:&v59 objects:v63 count:16];
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
            objc_enumerationMutation(v49);
          }

          v54 = [*(*(&v59 + 1) + 8 * i) copyLegacyDictionary];
          if (v54)
          {
            [v48 addObject:v54];
          }
        }

        v51 = [v49 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v51);
    }

    [v3 setObject:v48 forKeyedSubscript:@"Proposals"];
  }

  if ([(NEVPNProtocolIPSec *)self extendedAuthPasswordPrompt])
  {
    [v3 setObject:*MEMORY[0x1E6982890] forKeyedSubscript:*MEMORY[0x1E6982458]];
  }

  [(NEVPNProtocol *)self addDisconnectOptions:v3];
  v55 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NEVPNProtocolIPSec;
  v5 = [(NEVPNProtocol *)&v13 checkValidityAndCollectErrors:v4];
  if ([(NEVPNProtocolIPSec *)self authenticationMethod])
  {
    if ([(NEVPNProtocolIPSec *)self authenticationMethod]== NEVPNIKEAuthenticationMethodCertificate)
    {
      v6 = [(NEVPNProtocol *)self identityReferenceInternal];
      if (v6)
      {

        goto LABEL_13;
      }

      v8 = [(NEVPNProtocol *)self identityDataInternal];
      if (v8 || [(NEVPNProtocolIPSec *)self useExtendedAuthentication]&& [(NEVPNProtocol *)self type]== 5)
      {

        goto LABEL_13;
      }

      v10 = [(NEVPNProtocol *)self extensibleSSOProvider];
      if (!v10 || (v11 = v10, v12 = [(NEVPNProtocol *)self type], v11, v12 != 5))
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
    [NEConfiguration addError:v7 toList:v4];
    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = NEVPNProtocolIPSec;
  v4 = [(NEVPNProtocol *)&v12 copyWithZone:a3];
  [v4 setAuthenticationMethod:{-[NEVPNProtocolIPSec authenticationMethod](self, "authenticationMethod")}];
  v5 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [v4 setSharedSecretKeychainItem:v5];

  v6 = [(NEVPNProtocolIPSec *)self sharedSecretReference];
  [v4 setSharedSecretReference:v6];

  v7 = [(NEVPNProtocolIPSec *)self localIdentifier];
  [v4 setLocalIdentifier:v7];

  v8 = [(NEVPNProtocolIPSec *)self remoteIdentifier];
  [v4 setRemoteIdentifier:v8];

  [v4 setUseExtendedAuthentication:{-[NEVPNProtocolIPSec useExtendedAuthentication](self, "useExtendedAuthentication")}];
  v9 = [(NEVPNProtocolIPSec *)self legacyProposals];
  [v4 setLegacyProposals:v9];

  v10 = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  [v4 setLegacyExchangeMode:v10];

  [v4 setExtendedAuthPasswordPrompt:{-[NEVPNProtocolIPSec extendedAuthPasswordPrompt](self, "extendedAuthPasswordPrompt")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = NEVPNProtocolIPSec;
  v4 = a3;
  [(NEVPNProtocol *)&v11 encodeWithCoder:v4];
  [v4 encodeInt32:-[NEVPNProtocolIPSec authenticationMethod](self forKey:{"authenticationMethod", v11.receiver, v11.super_class), @"AuthenticationMethod"}];
  v5 = [(NEVPNProtocolIPSec *)self sharedSecretKeychainItem];
  [v4 encodeObject:v5 forKey:@"SharedSecret"];

  v6 = [(NEVPNProtocolIPSec *)self sharedSecretReference];
  [v4 encodeObject:v6 forKey:@"SharedSecretReference"];

  v7 = [(NEVPNProtocolIPSec *)self localIdentifier];
  [v4 encodeObject:v7 forKey:@"LocalIdentifier"];

  v8 = [(NEVPNProtocolIPSec *)self remoteIdentifier];
  [v4 encodeObject:v8 forKey:@"RemoteIdentifier"];

  [v4 encodeBool:-[NEVPNProtocolIPSec useExtendedAuthentication](self forKey:{"useExtendedAuthentication"), @"UseExtendedAuthentication"}];
  v9 = [(NEVPNProtocolIPSec *)self legacyProposals];
  [v4 encodeObject:v9 forKey:@"LegacyProposals"];

  v10 = [(NEVPNProtocolIPSec *)self legacyExchangeMode];
  [v4 encodeObject:v10 forKey:@"LegacyExchangeMode"];

  [v4 encodeBool:-[NEVPNProtocolIPSec extendedAuthPasswordPrompt](self forKey:{"extendedAuthPasswordPrompt"), @"ExtendedAuthPasswordPrompt"}];
}

- (NEVPNProtocolIPSec)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = NEVPNProtocolIPSec;
  v5 = [(NEVPNProtocol *)&v25 initWithCoder:v4];
  if (v5)
  {
    v5->_authenticationMethod = [v4 decodeInt32ForKey:@"AuthenticationMethod"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecret"];
    sharedSecretKeychainItem = v5->_sharedSecretKeychainItem;
    v5->_sharedSecretKeychainItem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecretReference"];
    sharedSecretReference = v5->_sharedSecretReference;
    v5->_sharedSecretReference = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RemoteIdentifier"];
    remoteIdentifier = v5->_remoteIdentifier;
    v5->_remoteIdentifier = v12;

    v5->_useExtendedAuthentication = [v4 decodeBoolForKey:@"UseExtendedAuthentication"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"LegacyProposals"];
    legacyProposals = v5->_legacyProposals;
    v5->_legacyProposals = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"LegacyExchangeMode"];
    legacyExchangeMode = v5->_legacyExchangeMode;
    v5->_legacyExchangeMode = v22;

    v5->_extendedAuthPasswordPrompt = [v4 decodeBoolForKey:@"ExtendedAuthPasswordPrompt"];
  }

  return v5;
}

- (NEVPNProtocolIPSec)initWithType:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = NEVPNProtocolIPSec;
  v3 = [(NEVPNProtocol *)&v6 initWithType:a3];
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
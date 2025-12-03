@interface NEVPNProtocol
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)needToUpdateKeychain;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service;
- (NEVPNProtocol)initWithCoder:(id)coder;
- (NEVPNProtocol)initWithProtocolIdentifier:(id)identifier;
- (NEVPNProtocol)initWithType:(int64_t)type;
- (NSData)identityReferenceInternal;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)addDisconnectOptions:(id)options;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain;
- (void)encodeWithCoder:(id)coder;
- (void)initDisconnectOptions:(id)options;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences;
- (void)removeKeychainItemsInDomain:(int64_t)domain keepIdentity:(BOOL)identity;
- (void)setIdentityData:(NSData *)identityData;
- (void)setIdentityReferenceInternal:(id)internal;
- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix;
- (void)syncWithKeychainInDomainCommon:(int64_t)common;
@end

@implementation NEVPNProtocol

- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain
{
  if (!domain)
  {
    proxySettings = [(NEVPNProtocol *)self proxySettings];
    [proxySettings copyPasswordsFromKeychain];

    identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];

    if (identityDataPasswordKeychainItem)
    {
      identityDataPasswordKeychainItem2 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      copyPassword = [identityDataPasswordKeychainItem2 copyPassword];
      [(NEVPNProtocol *)self setIdentityDataPassword:copyPassword];
    }
  }
}

- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences
{
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  [passwordKeychainItem migrateFromPreferences:preferences];
}

- (void)removeKeychainItemsInDomain:(int64_t)domain keepIdentity:(BOOL)identity
{
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  if (passwordKeychainItem)
  {
    v8 = passwordKeychainItem;
    passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
    domain = [passwordKeychainItem2 domain];

    if (domain == domain)
    {
      passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
      [passwordKeychainItem3 setIdentifier:0];
    }
  }

  if (!domain)
  {
    proxySettings = [(NEVPNProtocol *)self proxySettings];
    v13 = proxySettings;
    if (proxySettings)
    {
      hTTPServer = [proxySettings HTTPServer];
      [(NEProxyServer *)hTTPServer removeFromKeychain];

      hTTPSServer = [v13 HTTPSServer];
      [(NEProxyServer *)hTTPSServer removeFromKeychain];

      fTPServer = [v13 FTPServer];
      [(NEProxyServer *)fTPServer removeFromKeychain];

      rTSPServer = [v13 RTSPServer];
      [(NEProxyServer *)rTSPServer removeFromKeychain];

      gopherServer = [v13 gopherServer];
      [(NEProxyServer *)gopherServer removeFromKeychain];

      sOCKSServer = [v13 SOCKSServer];
      [(NEProxyServer *)sOCKSServer removeFromKeychain];
    }
  }

  identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  if (identityDataPasswordKeychainItem)
  {
    v22 = identityDataPasswordKeychainItem;
    identityDataPasswordKeychainItem2 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    domain2 = [identityDataPasswordKeychainItem2 domain];

    if (domain2 == domain)
    {
      identityDataPasswordKeychainItem3 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      [identityDataPasswordKeychainItem3 setIdentifier:0];
    }
  }

  if (!identity && self && objc_getProperty(self, v21, 96, 1))
  {
    [objc_getProperty(self v26];

    [(NEVPNProtocol *)self setIdentityData:0];
  }
}

- (BOOL)needToUpdateKeychain
{
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  if (passwordKeychainItem)
  {
    v4 = passwordKeychainItem;
    passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
    password = [passwordKeychainItem2 password];
    if (password)
    {
      v7 = password;
      passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
      password2 = [passwordKeychainItem3 password];
      v10 = [password2 length];

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  proxySettings = [(NEVPNProtocol *)self proxySettings];
  v13 = proxySettings;
  if (proxySettings)
  {
    hTTPServer = [proxySettings HTTPServer];
    updated = [(NEProxyServer *)hTTPServer needToUpdateKeychain];

    if (updated)
    {
      goto LABEL_12;
    }

    hTTPSServer = [v13 HTTPSServer];
    needToUpdateKeychain = [(NEProxyServer *)hTTPSServer needToUpdateKeychain];

    if (needToUpdateKeychain)
    {
      goto LABEL_12;
    }

    fTPServer = [v13 FTPServer];
    needToUpdateKeychain2 = [(NEProxyServer *)fTPServer needToUpdateKeychain];

    if (needToUpdateKeychain2)
    {
      goto LABEL_12;
    }

    rTSPServer = [v13 RTSPServer];
    needToUpdateKeychain3 = [(NEProxyServer *)rTSPServer needToUpdateKeychain];

    if (needToUpdateKeychain3 || ([v13 gopherServer], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NEProxyServer needToUpdateKeychain](v22), v22, v23))
    {
LABEL_12:
      needToUpdateKeychain4 = 1;
    }

    else
    {
      sOCKSServer = [v13 SOCKSServer];
      needToUpdateKeychain4 = [(NEProxyServer *)sOCKSServer needToUpdateKeychain];
    }
  }

  else
  {
    needToUpdateKeychain4 = 0;
  }

  return needToUpdateKeychain4;
}

- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix
{
  configurationCopy = configuration;
  suffixCopy = suffix;
  [(NEVPNProtocol *)self syncWithKeychainInDomainCommon:domain];
  username = [(NEVPNProtocol *)self username];
  if (username)
  {
    v10 = username;
    passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];

    if (!passwordKeychainItem)
    {
      v12 = [NEKeychainItem alloc];
      identifier = [configurationCopy identifier];
      uUIDString = [identifier UUIDString];
      if (self)
      {
        keychainDomain = self->_keychainDomain;
        Property = objc_getProperty(self, v14, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v18 = [(NEKeychainItem *)v12 initWithIdentifier:uUIDString domain:keychainDomain accessGroup:Property];
      [(NEVPNProtocol *)self setPasswordKeychainItem:v18];
    }
  }

  passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (passwordKeychainItem2)
  {
    v20 = passwordKeychainItem2;
    passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
    domain = [passwordKeychainItem3 domain];

    if (domain == domain)
    {
      passwordKeychainItem4 = [(NEVPNProtocol *)self passwordKeychainItem];
      username2 = [(NEVPNProtocol *)self username];
      [passwordKeychainItem4 syncUsingConfiguration:configurationCopy accountName:username2 passwordType:0 identifierSuffix:suffixCopy];
    }
  }
}

- (void)syncWithKeychainInDomainCommon:(int64_t)common
{
  if (self)
  {
    v5 = objc_getProperty(self, a2, 96, 1);
    if (v5)
    {
      v7 = v5;
      v8 = [objc_getProperty(self v6];

      if (v8 == common)
      {
        [objc_getProperty(self v9];
      }
    }
  }

  if (!common)
  {
    proxySettings = [(NEVPNProtocol *)self proxySettings];
    v11 = proxySettings;
    if (proxySettings)
    {
      hTTPServer = [proxySettings HTTPServer];
      [(NEProxyServer *)hTTPServer syncWithKeychain];

      hTTPSServer = [v11 HTTPSServer];
      [(NEProxyServer *)hTTPSServer syncWithKeychain];

      fTPServer = [v11 FTPServer];
      [(NEProxyServer *)fTPServer syncWithKeychain];

      rTSPServer = [v11 RTSPServer];
      [(NEProxyServer *)rTSPServer syncWithKeychain];

      gopherServer = [v11 gopherServer];
      [(NEProxyServer *)gopherServer syncWithKeychain];

      sOCKSServer = [v11 SOCKSServer];
      [(NEProxyServer *)sOCKSServer syncWithKeychain];
    }

    [(NEVPNProtocol *)self setIdentityDataPassword:0];
  }
}

- (void)setIdentityData:(NSData *)identityData
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = identityData;
  [(NEVPNProtocol *)self setIdentityDataInternal:v4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  if (v4)
  {
    CC_SHA1_Init(&v7);
    CC_SHA1_Update(&v7, [(NSData *)v4 bytes], [(NSData *)v4 length]);
    CC_SHA1_Final(md, &v7);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:20];
    [(NEVPNProtocol *)self setIdentityDataHash:v5];
  }

  else
  {
    [(NEVPNProtocol *)self setIdentityDataHash:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (NSData)identityReferenceInternal
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && objc_getProperty(selfCopy, v3, 96, 1))
  {
    v5 = objc_getProperty(selfCopy, v4, 96, 1);
    persistentReference = [v5 persistentReference];
  }

  else
  {
    persistentReference = 0;
  }

  objc_sync_exit(selfCopy);

  return persistentReference;
}

- (void)setIdentityReferenceInternal:(id)internal
{
  internalCopy = internal;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (internalCopy)
  {
    if (selfCopy && objc_getProperty(selfCopy, v5, 96, 1))
    {
      v7 = objc_getProperty(selfCopy, v6, 96, 1);
      [v7 setPersistentReference:internalCopy];
    }

    else
    {
      v9 = [NEIdentityKeychainItem alloc];
      if (selfCopy)
      {
        keychainDomain = selfCopy->_keychainDomain;
        Property = objc_getProperty(selfCopy, v8, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v7 = Property;
      v13 = [(NEKeychainItem *)v9 initWithPersistentReference:internalCopy domain:keychainDomain accessGroup:v7];
      if (selfCopy)
      {
        objc_setProperty_atomic(selfCopy, v12, v13, 96);
      }
    }
  }

  else if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v5, 0, 96);
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service
{
  v5 = [NEConfiguration copyConfigurationForProtocol:service inService:?];
  if (v5)
  {
    v6 = v5;
    v7 = [[NEProxySettings alloc] initFromLegacyDictionary:v5];
    [(NEVPNProtocol *)self setProxySettings:v7];

    CFRelease(v6);
  }

  v8 = [NEConfiguration copyConfigurationForProtocol:service inService:?];
  if (v8)
  {
    v9 = v8;
    v10 = [[NEDNSSettings alloc] initFromLegacyDictionary:v8];
    [(NEVPNProtocol *)self setDNSSettings:v10];

    CFRelease(v9);
  }

  return 1;
}

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service
{
  proxySettings = [(NEVPNProtocol *)self proxySettings];

  if (proxySettings)
  {
    proxySettings2 = [(NEVPNProtocol *)self proxySettings];
    proxySettings = [proxySettings2 copyLegacyDictionary];
  }

  v7 = [NEConfiguration setConfiguration:proxySettings forProtocol:*MEMORY[0x1E69823B0] inService:service];
  if (proxySettings)
  {
    CFRelease(proxySettings);
  }

  if (!v7)
  {
    return 0;
  }

  dNSSettings = [(NEVPNProtocol *)self DNSSettings];

  if (dNSSettings)
  {
    dNSSettings2 = [(NEVPNProtocol *)self DNSSettings];
    copyLegacyDictionary = [dNSSettings2 copyLegacyDictionary];
  }

  else
  {
    copyLegacyDictionary = 0;
  }

  v11 = [NEConfiguration setConfiguration:copyLegacyDictionary forProtocol:*MEMORY[0x1E6982398] inService:service];
  if (copyLegacyDictionary)
  {
    CFRelease(copyLegacyDictionary);
  }

  return v11;
}

- (void)initDisconnectOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6982770]];
  if (isa_nsnumber(v4))
  {
    self->_disconnectOnIdle = [v4 BOOLValue];
  }

  v5 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6982778]];

  if (isa_nsnumber(v5))
  {
    self->_disconnectOnIdleTimeout = [v5 intValue];
  }

  v6 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6982788]];

  if (isa_nsnumber(v6))
  {
    self->_disconnectOnSleep = [v6 BOOLValue];
  }

  v7 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6982790]];

  if (isa_nsnumber(v7))
  {
    self->_disconnectOnWake = [v7 BOOLValue];
  }

  v8 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E6982798]];

  if (isa_nsnumber(v8))
  {
    self->_disconnectOnWakeTimeout = [v8 intValue];
  }
}

- (void)addDisconnectOptions:(id)options
{
  optionsCopy = options;
  if ([(NEVPNProtocol *)self disconnectOnIdle])
  {
    v5 = &unk_1F38BA6A0;
  }

  else
  {
    v5 = &unk_1F38BA6B8;
  }

  [optionsCopy setObject:v5 forKeyedSubscript:*MEMORY[0x1E6982770]];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocol disconnectOnIdleTimeout](self, "disconnectOnIdleTimeout")}];
  [optionsCopy setObject:v6 forKeyedSubscript:*MEMORY[0x1E6982778]];

  if ([(NEVPNProtocol *)self disconnectOnSleep])
  {
    v7 = &unk_1F38BA6A0;
  }

  else
  {
    v7 = &unk_1F38BA6B8;
  }

  [optionsCopy setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982788]];
  if ([(NEVPNProtocol *)self disconnectOnWake])
  {
    v8 = &unk_1F38BA6A0;
  }

  else
  {
    v8 = &unk_1F38BA6B8;
  }

  [optionsCopy setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982790]];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocol disconnectOnWakeTimeout](self, "disconnectOnWakeTimeout")}];
  [optionsCopy setObject:v9 forKeyedSubscript:*MEMORY[0x1E6982798]];
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
  v6 = isa_nsuuid(v5);

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
    v8 = [(NEVPNProtocol *)self initWithProtocolIdentifier:v7];

    if (!v8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v8 = [(NEVPNProtocol *)self init];
    if (!v8)
    {
      goto LABEL_27;
    }
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolType"];
  v10 = isa_nsnumber(v9);

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolType"];
    v8->_type = [v11 intValue];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
  v13 = isa_nsnumber(v12);

  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
    v8->_keychainDomain = [v14 intValue];
  }

  v15 = *MEMORY[0x1E6982850];
  v16 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982850]];
  v17 = isa_nsstring(v16);

  if (v17)
  {
    v18 = [dictionaryCopy objectForKeyedSubscript:v15];
    v19 = [v18 copy];
    serverAddress = v8->_serverAddress;
    v8->_serverAddress = v19;
  }

  else
  {
    v18 = v8->_serverAddress;
    v8->_serverAddress = &stru_1F3880810;
  }

  v21 = *MEMORY[0x1E6982738];
  v22 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982738]];
  v23 = isa_nsstring(v22);

  if (v23)
  {
    v24 = [dictionaryCopy objectForKeyedSubscript:v21];
    v25 = [v24 copy];
    username = v8->_username;
    v8->_username = v25;
  }

  v27 = *MEMORY[0x1E6982740];
  v28 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982740]];
  v29 = isa_nsstring(v28);

  if (v29)
  {
    v30 = *MEMORY[0x1E6982748];
    v31 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982748]];
    v32 = isa_nsstring(v31);

    if (v32)
    {
      v33 = [dictionaryCopy objectForKeyedSubscript:v30];
      passwordEncryption = v8->_passwordEncryption;
      v8->_passwordEncryption = v33;

      if ([(NSString *)v8->_passwordEncryption isEqualToString:*MEMORY[0x1E6982950]])
      {
        v35 = [NEKeychainItem alloc];
        v36 = [dictionaryCopy objectForKeyedSubscript:v27];
        v37 = [(NEKeychainItem *)v35 initWithLegacyIdentifier:v36 domain:v8->_keychainDomain accessGroup:v8->_keychainAccessGroup];
        passwordKeychainItem = v8->_passwordKeychainItem;
        v8->_passwordKeychainItem = v37;
      }
    }

    if (!v8->_passwordKeychainItem)
    {
      v39 = [NEKeychainItem alloc];
      v40 = [dictionaryCopy objectForKeyedSubscript:v27];
      v41 = [(NEKeychainItem *)v39 initWithPassword:v40 domain:v8->_keychainDomain accessGroup:v8->_keychainAccessGroup];
      v42 = v8->_passwordKeychainItem;
      v8->_passwordKeychainItem = v41;
    }
  }

  v43 = [dictionaryCopy objectForKeyedSubscript:@"PasswordReference"];
  v44 = isa_nsdata(v43);

  if (v44)
  {
    v45 = [dictionaryCopy objectForKeyedSubscript:@"PasswordReference"];
    [(NEVPNProtocol *)v8 setPasswordReference:v45];
  }

  v46 = *MEMORY[0x1E69827A0];
  v47 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827A0]];
  v48 = isa_nsdata(v47);

  if (v48)
  {
    v49 = [NEIdentityKeychainItem alloc];
    v50 = [dictionaryCopy objectForKeyedSubscript:v46];
    v52 = [(NEKeychainItem *)v49 initWithPersistentReference:v50 domain:v8->_keychainDomain accessGroup:objc_getProperty(v8, v51, 88, 1)];
    objc_setProperty_atomic(v8, v53, v52, 96);
  }

  [(NEVPNProtocol *)v8 initDisconnectOptions:dictionaryCopy];
  v54 = *MEMORY[0x1E6982360];
  v55 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982360]];
  v56 = isa_nsdictionary(v55);

  if (v56)
  {
    v57 = [NEProxySettings alloc];
    v58 = [dictionaryCopy objectForKeyedSubscript:v54];
    v59 = [(NEProxySettings *)v57 initFromLegacyDictionary:v58];
    proxySettings = v8->_proxySettings;
    v8->_proxySettings = v59;
  }

  v61 = v8;
LABEL_27:

  return v8;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  serverAddress = [(NEVPNProtocol *)self serverAddress];

  if (serverAddress)
  {
    serverAddress2 = [(NEVPNProtocol *)self serverAddress];
    [v3 setObject:serverAddress2 forKeyedSubscript:*MEMORY[0x1E6982850]];
  }

  username = [(NEVPNProtocol *)self username];

  if (username)
  {
    username2 = [(NEVPNProtocol *)self username];
    [v3 setObject:username2 forKeyedSubscript:*MEMORY[0x1E6982738]];
  }

  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];

  if (passwordKeychainItem)
  {
    passwordEncryption = [(NEVPNProtocol *)self passwordEncryption];
    v10 = [passwordEncryption isEqualToString:*MEMORY[0x1E6982950]];

    passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
    v12 = passwordKeychainItem2;
    if (v10)
    {
      [passwordKeychainItem2 identifier];
    }

    else
    {
      [passwordKeychainItem2 password];
    }
    v13 = ;

    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6982740]];
    }
  }

  passwordReference = [(NEVPNProtocol *)self passwordReference];

  if (passwordReference)
  {
    passwordReference2 = [(NEVPNProtocol *)self passwordReference];
    [v3 setObject:passwordReference2 forKeyedSubscript:@"PasswordReference"];
  }

  passwordEncryption2 = [(NEVPNProtocol *)self passwordEncryption];

  if (passwordEncryption2)
  {
    passwordEncryption3 = [(NEVPNProtocol *)self passwordEncryption];
    [v3 setObject:passwordEncryption3 forKeyedSubscript:*MEMORY[0x1E6982748]];
  }

  if (self && objc_getProperty(self, v17, 96, 1))
  {
    v20 = [objc_getProperty(self v19];
    [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69827A0]];
  }

  [(NEVPNProtocol *)self addDisconnectOptions:v3];
  proxySettings = [(NEVPNProtocol *)self proxySettings];

  if (proxySettings)
  {
    proxySettings2 = [(NEVPNProtocol *)self proxySettings];
    copyLegacyDictionary = [proxySettings2 copyLegacyDictionary];
    [v3 setObject:copyLegacyDictionary forKeyedSubscript:*MEMORY[0x1E6982360]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  if ([(NEVPNProtocol *)self type]== 2 || ([(NEVPNProtocol *)self serverAddress], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  proxySettings = [(NEVPNProtocol *)self proxySettings];
  if (proxySettings)
  {
    v7 = proxySettings;
    proxySettings2 = [(NEVPNProtocol *)self proxySettings];
    v9 = [proxySettings2 checkValidityAndCollectErrors:errorsCopy];

    LOBYTE(v5) = v5 & v9;
  }

  dNSSettings = [(NEVPNProtocol *)self DNSSettings];
  if (dNSSettings)
  {
    v11 = dNSSettings;
    dNSSettings2 = [(NEVPNProtocol *)self DNSSettings];
    v13 = [dNSSettings2 checkValidityAndCollectErrors:errorsCopy];

    LOBYTE(v5) = v5 & v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(NEVPNProtocol *)self identifier];
  v6 = [v4 initWithProtocolIdentifier:identifier];

  serverAddress = [(NEVPNProtocol *)self serverAddress];
  [v6 setServerAddress:serverAddress];

  username = [(NEVPNProtocol *)self username];
  [v6 setUsername:username];

  passwordReference = [(NEVPNProtocol *)self passwordReference];
  [v6 setPasswordReference:passwordReference];

  if (self)
  {
    Property = objc_getProperty(self, v10, 96, 1);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Property = 0;
  if (v6)
  {
LABEL_3:
    objc_setProperty_atomic(v6, v10, Property, 96);
  }

LABEL_4:
  identityDataInternal = [(NEVPNProtocol *)self identityDataInternal];
  [v6 setIdentityDataInternal:identityDataInternal];

  identityDataPassword = [(NEVPNProtocol *)self identityDataPassword];
  [v6 setIdentityDataPassword:identityDataPassword];

  identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  [v6 setIdentityDataPasswordKeychainItem:identityDataPasswordKeychainItem];

  [v6 setIdentityDataImported:{-[NEVPNProtocol identityDataImported](self, "identityDataImported")}];
  identityDataHash = [(NEVPNProtocol *)self identityDataHash];
  [v6 setIdentityDataHash:identityDataHash];

  proxySettings = [(NEVPNProtocol *)self proxySettings];
  [v6 setProxySettings:proxySettings];

  [v6 setDisconnectOnIdle:{-[NEVPNProtocol disconnectOnIdle](self, "disconnectOnIdle")}];
  [v6 setDisconnectOnIdleTimeout:{-[NEVPNProtocol disconnectOnIdleTimeout](self, "disconnectOnIdleTimeout")}];
  [v6 setDisconnectOnSleep:{-[NEVPNProtocol disconnectOnSleep](self, "disconnectOnSleep")}];
  [v6 setDisconnectOnWake:{-[NEVPNProtocol disconnectOnWake](self, "disconnectOnWake")}];
  [v6 setDisconnectOnWakeTimeout:{-[NEVPNProtocol disconnectOnWakeTimeout](self, "disconnectOnWakeTimeout")}];
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  [v6 setPasswordKeychainItem:passwordKeychainItem];

  passwordEncryption = [(NEVPNProtocol *)self passwordEncryption];
  [v6 setPasswordEncryption:passwordEncryption];

  if (!self)
  {
    keychainDomain = 0;
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  keychainDomain = self->_keychainDomain;
  if (v6)
  {
LABEL_6:
    v6[10] = keychainDomain;
  }

LABEL_7:
  dNSSettings = [(NEVPNProtocol *)self DNSSettings];
  [v6 setDNSSettings:dNSSettings];

  [v6 setIncludeAllNetworks:{-[NEVPNProtocol includeAllNetworks](self, "includeAllNetworks")}];
  [v6 setExcludeLocalNetworks:{-[NEVPNProtocol excludeLocalNetworks](self, "excludeLocalNetworks")}];
  [v6 setExcludeCellularServices:{-[NEVPNProtocol excludeCellularServices](self, "excludeCellularServices")}];
  [v6 setExcludeAPNs:{-[NEVPNProtocol excludeAPNs](self, "excludeAPNs")}];
  [v6 setExcludeDeviceCommunication:{-[NEVPNProtocol excludeDeviceCommunication](self, "excludeDeviceCommunication")}];
  [v6 setEnforceRoutes:{-[NEVPNProtocol enforceRoutes](self, "enforceRoutes")}];
  extensibleSSOProvider = [(NEVPNProtocol *)self extensibleSSOProvider];
  [v6 setExtensibleSSOProvider:extensibleSSOProvider];

  sliceUUID = [(NEVPNProtocol *)self sliceUUID];
  [v6 setSliceUUID:sliceUUID];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NEVPNProtocol type](self forKey:{"type"), @"Type"}];
  identifier = [(NEVPNProtocol *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  passwordReference = [(NEVPNProtocol *)self passwordReference];
  [coderCopy encodeObject:passwordReference forKey:@"PasswordReference"];

  serverAddress = [(NEVPNProtocol *)self serverAddress];
  [coderCopy encodeObject:serverAddress forKey:@"ServerAddress"];

  username = [(NEVPNProtocol *)self username];
  [coderCopy encodeObject:username forKey:@"Username"];

  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  [coderCopy encodeObject:passwordKeychainItem forKey:@"Password"];

  passwordEncryption = [(NEVPNProtocol *)self passwordEncryption];
  [coderCopy encodeObject:passwordEncryption forKey:@"PasswordEncryption"];

  if (self)
  {
    Property = objc_getProperty(self, v10, 96, 1);
  }

  else
  {
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"Identity"];
  identityDataInternal = [(NEVPNProtocol *)self identityDataInternal];
  [coderCopy encodeObject:identityDataInternal forKey:@"IdentityData"];

  identityDataPassword = [(NEVPNProtocol *)self identityDataPassword];
  [coderCopy encodeObject:identityDataPassword forKey:@"IdentityDataPassword"];

  identityDataPasswordKeychainItem = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  [coderCopy encodeObject:identityDataPasswordKeychainItem forKey:@"IdentityDataPasswordKeychainItem"];

  [coderCopy encodeBool:-[NEVPNProtocol identityDataImported](self forKey:{"identityDataImported"), @"IdentityDataImported"}];
  identityDataHash = [(NEVPNProtocol *)self identityDataHash];
  [coderCopy encodeObject:identityDataHash forKey:@"IdentityDataHash"];

  proxySettings = [(NEVPNProtocol *)self proxySettings];
  [coderCopy encodeObject:proxySettings forKey:@"ProxySettings"];

  [coderCopy encodeBool:-[NEVPNProtocol disconnectOnIdle](self forKey:{"disconnectOnIdle"), @"DisconnectOnIdle"}];
  [coderCopy encodeInt32:-[NEVPNProtocol disconnectOnIdleTimeout](self forKey:{"disconnectOnIdleTimeout"), @"DisconnectOnIdleTimeout"}];
  [coderCopy encodeBool:-[NEVPNProtocol disconnectOnSleep](self forKey:{"disconnectOnSleep"), @"DisconnectOnSleep"}];
  [coderCopy encodeBool:-[NEVPNProtocol disconnectOnWake](self forKey:{"disconnectOnWake"), @"DisconnectOnWake"}];
  [coderCopy encodeInt32:-[NEVPNProtocol disconnectOnWakeTimeout](self forKey:{"disconnectOnWakeTimeout"), @"DisconnectOnWakeTimeout"}];
  dNSSettings = [(NEVPNProtocol *)self DNSSettings];
  [coderCopy encodeObject:dNSSettings forKey:@"DNSSettings"];

  [coderCopy encodeBool:-[NEVPNProtocol includeAllNetworks](self forKey:{"includeAllNetworks"), @"IncludeAllNetworks"}];
  [coderCopy encodeBool:-[NEVPNProtocol excludeLocalNetworks](self forKey:{"excludeLocalNetworks"), @"ExcludeLocalNetworks"}];
  [coderCopy encodeBool:-[NEVPNProtocol excludeCellularServices](self forKey:{"excludeCellularServices"), @"ExcludeCellularServices"}];
  [coderCopy encodeBool:-[NEVPNProtocol excludeAPNs](self forKey:{"excludeAPNs"), @"ExcludeAPNs"}];
  [coderCopy encodeBool:-[NEVPNProtocol excludeDeviceCommunication](self forKey:{"excludeDeviceCommunication"), @"ExcludeDeviceCommunication"}];
  [coderCopy encodeBool:-[NEVPNProtocol enforceRoutes](self forKey:{"enforceRoutes"), @"EnforceRoutes"}];
  extensibleSSOProvider = [(NEVPNProtocol *)self extensibleSSOProvider];
  [coderCopy encodeObject:extensibleSSOProvider forKey:@"ExtensibleSSOProvider"];

  sliceUUID = [(NEVPNProtocol *)self sliceUUID];
  [coderCopy encodeObject:sliceUUID forKey:@"CellularSliceUUID"];
}

- (NEVPNProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEVPNProtocol *)self init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt32ForKey:@"Type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
      identifier = v5->_identifier;
      v5->_identifier = v8;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PasswordReference"];
    passwordReference = v5->_passwordReference;
    v5->_passwordReference = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAddress"];
    serverAddress = v5->_serverAddress;
    v5->_serverAddress = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    passwordKeychainItem = v5->_passwordKeychainItem;
    v5->_passwordKeychainItem = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PasswordEncryption"];
    passwordEncryption = v5->_passwordEncryption;
    v5->_passwordEncryption = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identity = v5->_identity;
    v5->_identity = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityData"];
    identityDataInternal = v5->_identityDataInternal;
    v5->_identityDataInternal = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPassword"];
    identityDataPassword = v5->_identityDataPassword;
    v5->_identityDataPassword = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPasswordKeychainItem"];
    identityDataPasswordKeychainItem = v5->_identityDataPasswordKeychainItem;
    v5->_identityDataPasswordKeychainItem = v26;

    v5->_identityDataImported = [coderCopy decodeBoolForKey:@"IdentityDataImported"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataHash"];
    identityDataHash = v5->_identityDataHash;
    v5->_identityDataHash = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxySettings"];
    proxySettings = v5->_proxySettings;
    v5->_proxySettings = v30;

    v5->_disconnectOnIdle = [coderCopy decodeBoolForKey:@"DisconnectOnIdle"];
    v5->_disconnectOnIdleTimeout = [coderCopy decodeInt32ForKey:@"DisconnectOnIdleTimeout"];
    v5->_disconnectOnSleep = [coderCopy decodeBoolForKey:@"DisconnectOnSleep"];
    v5->_disconnectOnWake = [coderCopy decodeBoolForKey:@"DisconnectOnWake"];
    v5->_disconnectOnWakeTimeout = [coderCopy decodeInt32ForKey:@"DisconnectOnWakeTimeout"];
    v5->_disconnectOnUserSwitch = [coderCopy decodeBoolForKey:@"DisconnectOnUserSwitch"];
    v5->_disconnectOnLogout = [coderCopy decodeBoolForKey:@"DisconnectOnLogoutKey"];
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNSSettings"];
    DNSSettings = v5->_DNSSettings;
    v5->_DNSSettings = v32;

    v5->_includeAllNetworks = [coderCopy decodeBoolForKey:@"IncludeAllNetworks"];
    if ([coderCopy containsValueForKey:@"ExcludeLocalNetworks"])
    {
      v5->_excludeLocalNetworks = [coderCopy decodeBoolForKey:@"ExcludeLocalNetworks"];
    }

    if ([coderCopy containsValueForKey:@"ExcludeCellularServices"])
    {
      v5->_excludeCellularServices = [coderCopy decodeBoolForKey:@"ExcludeCellularServices"];
    }

    if ([coderCopy containsValueForKey:@"ExcludeAPNs"])
    {
      v5->_excludeAPNs = [coderCopy decodeBoolForKey:@"ExcludeAPNs"];
    }

    if ([coderCopy containsValueForKey:@"ExcludeDeviceCommunication"])
    {
      v5->_excludeDeviceCommunication = [coderCopy decodeBoolForKey:@"ExcludeDeviceCommunication"];
    }

    v5->_enforceRoutes = [coderCopy decodeBoolForKey:@"EnforceRoutes"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExtensibleSSOProvider"];
    extensibleSSOProvider = v5->_extensibleSSOProvider;
    v5->_extensibleSSOProvider = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CellularSliceUUID"];
    sliceUUID = v5->_sliceUUID;
    v5->_sliceUUID = v36;
  }

  return v5;
}

- (NEVPNProtocol)initWithProtocolIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NEVPNProtocol *)self init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    *&v5->_excludeLocalNetworks = 16843009;
  }

  return v5;
}

- (NEVPNProtocol)initWithType:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = NEVPNProtocol;
  v4 = [(NEVPNProtocol *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_keychainDomain = 0;
    v4->_type = type;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = uUID;

    *&v5->_excludeLocalNetworks = 16843009;
  }

  return v5;
}

@end
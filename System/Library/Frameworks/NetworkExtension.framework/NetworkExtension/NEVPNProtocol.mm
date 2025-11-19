@interface NEVPNProtocol
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)needToUpdateKeychain;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3;
- (NEVPNProtocol)initWithCoder:(id)a3;
- (NEVPNProtocol)initWithProtocolIdentifier:(id)a3;
- (NEVPNProtocol)initWithType:(int64_t)a3;
- (NSData)identityReferenceInternal;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)addDisconnectOptions:(id)a3;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initDisconnectOptions:(id)a3;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3;
- (void)removeKeychainItemsInDomain:(int64_t)a3 keepIdentity:(BOOL)a4;
- (void)setIdentityData:(NSData *)identityData;
- (void)setIdentityReferenceInternal:(id)a3;
- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5;
- (void)syncWithKeychainInDomainCommon:(int64_t)a3;
@end

@implementation NEVPNProtocol

- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3
{
  if (!a3)
  {
    v4 = [(NEVPNProtocol *)self proxySettings];
    [v4 copyPasswordsFromKeychain];

    v5 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];

    if (v5)
    {
      v7 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      v6 = [v7 copyPassword];
      [(NEVPNProtocol *)self setIdentityDataPassword:v6];
    }
  }
}

- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3
{
  v4 = [(NEVPNProtocol *)self passwordKeychainItem];
  [v4 migrateFromPreferences:a3];
}

- (void)removeKeychainItemsInDomain:(int64_t)a3 keepIdentity:(BOOL)a4
{
  v7 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(NEVPNProtocol *)self passwordKeychainItem];
    v10 = [v9 domain];

    if (v10 == a3)
    {
      v11 = [(NEVPNProtocol *)self passwordKeychainItem];
      [v11 setIdentifier:0];
    }
  }

  if (!a3)
  {
    v12 = [(NEVPNProtocol *)self proxySettings];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 HTTPServer];
      [(NEProxyServer *)v14 removeFromKeychain];

      v15 = [v13 HTTPSServer];
      [(NEProxyServer *)v15 removeFromKeychain];

      v16 = [v13 FTPServer];
      [(NEProxyServer *)v16 removeFromKeychain];

      v17 = [v13 RTSPServer];
      [(NEProxyServer *)v17 removeFromKeychain];

      v18 = [v13 gopherServer];
      [(NEProxyServer *)v18 removeFromKeychain];

      v19 = [v13 SOCKSServer];
      [(NEProxyServer *)v19 removeFromKeychain];
    }
  }

  v20 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  if (v20)
  {
    v22 = v20;
    v23 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
    v24 = [v23 domain];

    if (v24 == a3)
    {
      v25 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
      [v25 setIdentifier:0];
    }
  }

  if (!a4 && self && objc_getProperty(self, v21, 96, 1))
  {
    [objc_getProperty(self v26];

    [(NEVPNProtocol *)self setIdentityData:0];
  }
}

- (BOOL)needToUpdateKeychain
{
  v3 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (v3)
  {
    v4 = v3;
    v5 = [(NEVPNProtocol *)self passwordKeychainItem];
    v6 = [v5 password];
    if (v6)
    {
      v7 = v6;
      v8 = [(NEVPNProtocol *)self passwordKeychainItem];
      v9 = [v8 password];
      v10 = [v9 length];

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v12 = [(NEVPNProtocol *)self proxySettings];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 HTTPServer];
    updated = [(NEProxyServer *)v14 needToUpdateKeychain];

    if (updated)
    {
      goto LABEL_12;
    }

    v16 = [v13 HTTPSServer];
    v17 = [(NEProxyServer *)v16 needToUpdateKeychain];

    if (v17)
    {
      goto LABEL_12;
    }

    v18 = [v13 FTPServer];
    v19 = [(NEProxyServer *)v18 needToUpdateKeychain];

    if (v19)
    {
      goto LABEL_12;
    }

    v20 = [v13 RTSPServer];
    v21 = [(NEProxyServer *)v20 needToUpdateKeychain];

    if (v21 || ([v13 gopherServer], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NEProxyServer needToUpdateKeychain](v22), v22, v23))
    {
LABEL_12:
      v11 = 1;
    }

    else
    {
      v25 = [v13 SOCKSServer];
      v11 = [(NEProxyServer *)v25 needToUpdateKeychain];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5
{
  v25 = a4;
  v8 = a5;
  [(NEVPNProtocol *)self syncWithKeychainInDomainCommon:a3];
  v9 = [(NEVPNProtocol *)self username];
  if (v9)
  {
    v10 = v9;
    v11 = [(NEVPNProtocol *)self passwordKeychainItem];

    if (!v11)
    {
      v12 = [NEKeychainItem alloc];
      v13 = [v25 identifier];
      v15 = [v13 UUIDString];
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

      v18 = [(NEKeychainItem *)v12 initWithIdentifier:v15 domain:keychainDomain accessGroup:Property];
      [(NEVPNProtocol *)self setPasswordKeychainItem:v18];
    }
  }

  v19 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (v19)
  {
    v20 = v19;
    v21 = [(NEVPNProtocol *)self passwordKeychainItem];
    v22 = [v21 domain];

    if (v22 == a3)
    {
      v23 = [(NEVPNProtocol *)self passwordKeychainItem];
      v24 = [(NEVPNProtocol *)self username];
      [v23 syncUsingConfiguration:v25 accountName:v24 passwordType:0 identifierSuffix:v8];
    }
  }
}

- (void)syncWithKeychainInDomainCommon:(int64_t)a3
{
  if (self)
  {
    v5 = objc_getProperty(self, a2, 96, 1);
    if (v5)
    {
      v7 = v5;
      v8 = [objc_getProperty(self v6];

      if (v8 == a3)
      {
        [objc_getProperty(self v9];
      }
    }
  }

  if (!a3)
  {
    v10 = [(NEVPNProtocol *)self proxySettings];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 HTTPServer];
      [(NEProxyServer *)v12 syncWithKeychain];

      v13 = [v11 HTTPSServer];
      [(NEProxyServer *)v13 syncWithKeychain];

      v14 = [v11 FTPServer];
      [(NEProxyServer *)v14 syncWithKeychain];

      v15 = [v11 RTSPServer];
      [(NEProxyServer *)v15 syncWithKeychain];

      v16 = [v11 gopherServer];
      [(NEProxyServer *)v16 syncWithKeychain];

      v17 = [v11 SOCKSServer];
      [(NEProxyServer *)v17 syncWithKeychain];
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && objc_getProperty(v2, v3, 96, 1))
  {
    v5 = objc_getProperty(v2, v4, 96, 1);
    v6 = [v5 persistentReference];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (void)setIdentityReferenceInternal:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v14)
  {
    if (v4 && objc_getProperty(v4, v5, 96, 1))
    {
      v7 = objc_getProperty(v4, v6, 96, 1);
      [v7 setPersistentReference:v14];
    }

    else
    {
      v9 = [NEIdentityKeychainItem alloc];
      if (v4)
      {
        keychainDomain = v4->_keychainDomain;
        Property = objc_getProperty(v4, v8, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v7 = Property;
      v13 = [(NEKeychainItem *)v9 initWithPersistentReference:v14 domain:keychainDomain accessGroup:v7];
      if (v4)
      {
        objc_setProperty_atomic(v4, v12, v13, 96);
      }
    }
  }

  else if (v4)
  {
    objc_setProperty_atomic(v4, v5, 0, 96);
  }

  objc_sync_exit(v4);
}

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3
{
  v5 = [NEConfiguration copyConfigurationForProtocol:a3 inService:?];
  if (v5)
  {
    v6 = v5;
    v7 = [[NEProxySettings alloc] initFromLegacyDictionary:v5];
    [(NEVPNProtocol *)self setProxySettings:v7];

    CFRelease(v6);
  }

  v8 = [NEConfiguration copyConfigurationForProtocol:a3 inService:?];
  if (v8)
  {
    v9 = v8;
    v10 = [[NEDNSSettings alloc] initFromLegacyDictionary:v8];
    [(NEVPNProtocol *)self setDNSSettings:v10];

    CFRelease(v9);
  }

  return 1;
}

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3
{
  v5 = [(NEVPNProtocol *)self proxySettings];

  if (v5)
  {
    v6 = [(NEVPNProtocol *)self proxySettings];
    v5 = [v6 copyLegacyDictionary];
  }

  v7 = [NEConfiguration setConfiguration:v5 forProtocol:*MEMORY[0x1E69823B0] inService:a3];
  if (v5)
  {
    CFRelease(v5);
  }

  if (!v7)
  {
    return 0;
  }

  v8 = [(NEVPNProtocol *)self DNSSettings];

  if (v8)
  {
    v9 = [(NEVPNProtocol *)self DNSSettings];
    v10 = [v9 copyLegacyDictionary];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NEConfiguration setConfiguration:v10 forProtocol:*MEMORY[0x1E6982398] inService:a3];
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

- (void)initDisconnectOptions:(id)a3
{
  v9 = a3;
  v4 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6982770]];
  if (isa_nsnumber(v4))
  {
    self->_disconnectOnIdle = [v4 BOOLValue];
  }

  v5 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6982778]];

  if (isa_nsnumber(v5))
  {
    self->_disconnectOnIdleTimeout = [v5 intValue];
  }

  v6 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6982788]];

  if (isa_nsnumber(v6))
  {
    self->_disconnectOnSleep = [v6 BOOLValue];
  }

  v7 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6982790]];

  if (isa_nsnumber(v7))
  {
    self->_disconnectOnWake = [v7 BOOLValue];
  }

  v8 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6982798]];

  if (isa_nsnumber(v8))
  {
    self->_disconnectOnWakeTimeout = [v8 intValue];
  }
}

- (void)addDisconnectOptions:(id)a3
{
  v4 = a3;
  if ([(NEVPNProtocol *)self disconnectOnIdle])
  {
    v5 = &unk_1F38BA6A0;
  }

  else
  {
    v5 = &unk_1F38BA6B8;
  }

  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6982770]];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocol disconnectOnIdleTimeout](self, "disconnectOnIdleTimeout")}];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6982778]];

  if ([(NEVPNProtocol *)self disconnectOnSleep])
  {
    v7 = &unk_1F38BA6A0;
  }

  else
  {
    v7 = &unk_1F38BA6B8;
  }

  [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982788]];
  if ([(NEVPNProtocol *)self disconnectOnWake])
  {
    v8 = &unk_1F38BA6A0;
  }

  else
  {
    v8 = &unk_1F38BA6B8;
  }

  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982790]];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[NEVPNProtocol disconnectOnWakeTimeout](self, "disconnectOnWakeTimeout")}];
  [v4 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6982798]];
}

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
  v6 = isa_nsuuid(v5);

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolIdentifier"];
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

  v9 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolType"];
  v10 = isa_nsnumber(v9);

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolType"];
    v8->_type = [v11 intValue];
  }

  v12 = [v4 objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
  v13 = isa_nsnumber(v12);

  if (v13)
  {
    v14 = [v4 objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
    v8->_keychainDomain = [v14 intValue];
  }

  v15 = *MEMORY[0x1E6982850];
  v16 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982850]];
  v17 = isa_nsstring(v16);

  if (v17)
  {
    v18 = [v4 objectForKeyedSubscript:v15];
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
  v22 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982738]];
  v23 = isa_nsstring(v22);

  if (v23)
  {
    v24 = [v4 objectForKeyedSubscript:v21];
    v25 = [v24 copy];
    username = v8->_username;
    v8->_username = v25;
  }

  v27 = *MEMORY[0x1E6982740];
  v28 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982740]];
  v29 = isa_nsstring(v28);

  if (v29)
  {
    v30 = *MEMORY[0x1E6982748];
    v31 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982748]];
    v32 = isa_nsstring(v31);

    if (v32)
    {
      v33 = [v4 objectForKeyedSubscript:v30];
      passwordEncryption = v8->_passwordEncryption;
      v8->_passwordEncryption = v33;

      if ([(NSString *)v8->_passwordEncryption isEqualToString:*MEMORY[0x1E6982950]])
      {
        v35 = [NEKeychainItem alloc];
        v36 = [v4 objectForKeyedSubscript:v27];
        v37 = [(NEKeychainItem *)v35 initWithLegacyIdentifier:v36 domain:v8->_keychainDomain accessGroup:v8->_keychainAccessGroup];
        passwordKeychainItem = v8->_passwordKeychainItem;
        v8->_passwordKeychainItem = v37;
      }
    }

    if (!v8->_passwordKeychainItem)
    {
      v39 = [NEKeychainItem alloc];
      v40 = [v4 objectForKeyedSubscript:v27];
      v41 = [(NEKeychainItem *)v39 initWithPassword:v40 domain:v8->_keychainDomain accessGroup:v8->_keychainAccessGroup];
      v42 = v8->_passwordKeychainItem;
      v8->_passwordKeychainItem = v41;
    }
  }

  v43 = [v4 objectForKeyedSubscript:@"PasswordReference"];
  v44 = isa_nsdata(v43);

  if (v44)
  {
    v45 = [v4 objectForKeyedSubscript:@"PasswordReference"];
    [(NEVPNProtocol *)v8 setPasswordReference:v45];
  }

  v46 = *MEMORY[0x1E69827A0];
  v47 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69827A0]];
  v48 = isa_nsdata(v47);

  if (v48)
  {
    v49 = [NEIdentityKeychainItem alloc];
    v50 = [v4 objectForKeyedSubscript:v46];
    v52 = [(NEKeychainItem *)v49 initWithPersistentReference:v50 domain:v8->_keychainDomain accessGroup:objc_getProperty(v8, v51, 88, 1)];
    objc_setProperty_atomic(v8, v53, v52, 96);
  }

  [(NEVPNProtocol *)v8 initDisconnectOptions:v4];
  v54 = *MEMORY[0x1E6982360];
  v55 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982360]];
  v56 = isa_nsdictionary(v55);

  if (v56)
  {
    v57 = [NEProxySettings alloc];
    v58 = [v4 objectForKeyedSubscript:v54];
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
  v4 = [(NEVPNProtocol *)self serverAddress];

  if (v4)
  {
    v5 = [(NEVPNProtocol *)self serverAddress];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E6982850]];
  }

  v6 = [(NEVPNProtocol *)self username];

  if (v6)
  {
    v7 = [(NEVPNProtocol *)self username];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982738]];
  }

  v8 = [(NEVPNProtocol *)self passwordKeychainItem];

  if (v8)
  {
    v9 = [(NEVPNProtocol *)self passwordEncryption];
    v10 = [v9 isEqualToString:*MEMORY[0x1E6982950]];

    v11 = [(NEVPNProtocol *)self passwordKeychainItem];
    v12 = v11;
    if (v10)
    {
      [v11 identifier];
    }

    else
    {
      [v11 password];
    }
    v13 = ;

    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6982740]];
    }
  }

  v14 = [(NEVPNProtocol *)self passwordReference];

  if (v14)
  {
    v15 = [(NEVPNProtocol *)self passwordReference];
    [v3 setObject:v15 forKeyedSubscript:@"PasswordReference"];
  }

  v16 = [(NEVPNProtocol *)self passwordEncryption];

  if (v16)
  {
    v18 = [(NEVPNProtocol *)self passwordEncryption];
    [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6982748]];
  }

  if (self && objc_getProperty(self, v17, 96, 1))
  {
    v20 = [objc_getProperty(self v19];
    [v3 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69827A0]];
  }

  [(NEVPNProtocol *)self addDisconnectOptions:v3];
  v21 = [(NEVPNProtocol *)self proxySettings];

  if (v21)
  {
    v22 = [(NEVPNProtocol *)self proxySettings];
    v23 = [v22 copyLegacyDictionary];
    [v3 setObject:v23 forKeyedSubscript:*MEMORY[0x1E6982360]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  if ([(NEVPNProtocol *)self type]== 2 || ([(NEVPNProtocol *)self serverAddress], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v6 = [(NEVPNProtocol *)self proxySettings];
  if (v6)
  {
    v7 = v6;
    v8 = [(NEVPNProtocol *)self proxySettings];
    v9 = [v8 checkValidityAndCollectErrors:v4];

    LOBYTE(v5) = v5 & v9;
  }

  v10 = [(NEVPNProtocol *)self DNSSettings];
  if (v10)
  {
    v11 = v10;
    v12 = [(NEVPNProtocol *)self DNSSettings];
    v13 = [v12 checkValidityAndCollectErrors:v4];

    LOBYTE(v5) = v5 & v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NEVPNProtocol *)self identifier];
  v6 = [v4 initWithProtocolIdentifier:v5];

  v7 = [(NEVPNProtocol *)self serverAddress];
  [v6 setServerAddress:v7];

  v8 = [(NEVPNProtocol *)self username];
  [v6 setUsername:v8];

  v9 = [(NEVPNProtocol *)self passwordReference];
  [v6 setPasswordReference:v9];

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
  v12 = [(NEVPNProtocol *)self identityDataInternal];
  [v6 setIdentityDataInternal:v12];

  v13 = [(NEVPNProtocol *)self identityDataPassword];
  [v6 setIdentityDataPassword:v13];

  v14 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  [v6 setIdentityDataPasswordKeychainItem:v14];

  [v6 setIdentityDataImported:{-[NEVPNProtocol identityDataImported](self, "identityDataImported")}];
  v15 = [(NEVPNProtocol *)self identityDataHash];
  [v6 setIdentityDataHash:v15];

  v16 = [(NEVPNProtocol *)self proxySettings];
  [v6 setProxySettings:v16];

  [v6 setDisconnectOnIdle:{-[NEVPNProtocol disconnectOnIdle](self, "disconnectOnIdle")}];
  [v6 setDisconnectOnIdleTimeout:{-[NEVPNProtocol disconnectOnIdleTimeout](self, "disconnectOnIdleTimeout")}];
  [v6 setDisconnectOnSleep:{-[NEVPNProtocol disconnectOnSleep](self, "disconnectOnSleep")}];
  [v6 setDisconnectOnWake:{-[NEVPNProtocol disconnectOnWake](self, "disconnectOnWake")}];
  [v6 setDisconnectOnWakeTimeout:{-[NEVPNProtocol disconnectOnWakeTimeout](self, "disconnectOnWakeTimeout")}];
  v17 = [(NEVPNProtocol *)self passwordKeychainItem];
  [v6 setPasswordKeychainItem:v17];

  v18 = [(NEVPNProtocol *)self passwordEncryption];
  [v6 setPasswordEncryption:v18];

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
  v20 = [(NEVPNProtocol *)self DNSSettings];
  [v6 setDNSSettings:v20];

  [v6 setIncludeAllNetworks:{-[NEVPNProtocol includeAllNetworks](self, "includeAllNetworks")}];
  [v6 setExcludeLocalNetworks:{-[NEVPNProtocol excludeLocalNetworks](self, "excludeLocalNetworks")}];
  [v6 setExcludeCellularServices:{-[NEVPNProtocol excludeCellularServices](self, "excludeCellularServices")}];
  [v6 setExcludeAPNs:{-[NEVPNProtocol excludeAPNs](self, "excludeAPNs")}];
  [v6 setExcludeDeviceCommunication:{-[NEVPNProtocol excludeDeviceCommunication](self, "excludeDeviceCommunication")}];
  [v6 setEnforceRoutes:{-[NEVPNProtocol enforceRoutes](self, "enforceRoutes")}];
  v21 = [(NEVPNProtocol *)self extensibleSSOProvider];
  [v6 setExtensibleSSOProvider:v21];

  v22 = [(NEVPNProtocol *)self sliceUUID];
  [v6 setSliceUUID:v22];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  [v20 encodeInt32:-[NEVPNProtocol type](self forKey:{"type"), @"Type"}];
  v4 = [(NEVPNProtocol *)self identifier];
  [v20 encodeObject:v4 forKey:@"Identifier"];

  v5 = [(NEVPNProtocol *)self passwordReference];
  [v20 encodeObject:v5 forKey:@"PasswordReference"];

  v6 = [(NEVPNProtocol *)self serverAddress];
  [v20 encodeObject:v6 forKey:@"ServerAddress"];

  v7 = [(NEVPNProtocol *)self username];
  [v20 encodeObject:v7 forKey:@"Username"];

  v8 = [(NEVPNProtocol *)self passwordKeychainItem];
  [v20 encodeObject:v8 forKey:@"Password"];

  v9 = [(NEVPNProtocol *)self passwordEncryption];
  [v20 encodeObject:v9 forKey:@"PasswordEncryption"];

  if (self)
  {
    Property = objc_getProperty(self, v10, 96, 1);
  }

  else
  {
    Property = 0;
  }

  [v20 encodeObject:Property forKey:@"Identity"];
  v12 = [(NEVPNProtocol *)self identityDataInternal];
  [v20 encodeObject:v12 forKey:@"IdentityData"];

  v13 = [(NEVPNProtocol *)self identityDataPassword];
  [v20 encodeObject:v13 forKey:@"IdentityDataPassword"];

  v14 = [(NEVPNProtocol *)self identityDataPasswordKeychainItem];
  [v20 encodeObject:v14 forKey:@"IdentityDataPasswordKeychainItem"];

  [v20 encodeBool:-[NEVPNProtocol identityDataImported](self forKey:{"identityDataImported"), @"IdentityDataImported"}];
  v15 = [(NEVPNProtocol *)self identityDataHash];
  [v20 encodeObject:v15 forKey:@"IdentityDataHash"];

  v16 = [(NEVPNProtocol *)self proxySettings];
  [v20 encodeObject:v16 forKey:@"ProxySettings"];

  [v20 encodeBool:-[NEVPNProtocol disconnectOnIdle](self forKey:{"disconnectOnIdle"), @"DisconnectOnIdle"}];
  [v20 encodeInt32:-[NEVPNProtocol disconnectOnIdleTimeout](self forKey:{"disconnectOnIdleTimeout"), @"DisconnectOnIdleTimeout"}];
  [v20 encodeBool:-[NEVPNProtocol disconnectOnSleep](self forKey:{"disconnectOnSleep"), @"DisconnectOnSleep"}];
  [v20 encodeBool:-[NEVPNProtocol disconnectOnWake](self forKey:{"disconnectOnWake"), @"DisconnectOnWake"}];
  [v20 encodeInt32:-[NEVPNProtocol disconnectOnWakeTimeout](self forKey:{"disconnectOnWakeTimeout"), @"DisconnectOnWakeTimeout"}];
  v17 = [(NEVPNProtocol *)self DNSSettings];
  [v20 encodeObject:v17 forKey:@"DNSSettings"];

  [v20 encodeBool:-[NEVPNProtocol includeAllNetworks](self forKey:{"includeAllNetworks"), @"IncludeAllNetworks"}];
  [v20 encodeBool:-[NEVPNProtocol excludeLocalNetworks](self forKey:{"excludeLocalNetworks"), @"ExcludeLocalNetworks"}];
  [v20 encodeBool:-[NEVPNProtocol excludeCellularServices](self forKey:{"excludeCellularServices"), @"ExcludeCellularServices"}];
  [v20 encodeBool:-[NEVPNProtocol excludeAPNs](self forKey:{"excludeAPNs"), @"ExcludeAPNs"}];
  [v20 encodeBool:-[NEVPNProtocol excludeDeviceCommunication](self forKey:{"excludeDeviceCommunication"), @"ExcludeDeviceCommunication"}];
  [v20 encodeBool:-[NEVPNProtocol enforceRoutes](self forKey:{"enforceRoutes"), @"EnforceRoutes"}];
  v18 = [(NEVPNProtocol *)self extensibleSSOProvider];
  [v20 encodeObject:v18 forKey:@"ExtensibleSSOProvider"];

  v19 = [(NEVPNProtocol *)self sliceUUID];
  [v20 encodeObject:v19 forKey:@"CellularSliceUUID"];
}

- (NEVPNProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEVPNProtocol *)self init];
  if (v5)
  {
    v5->_type = [v4 decodeInt32ForKey:@"Type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 copy];
      identifier = v5->_identifier;
      v5->_identifier = v8;
    }

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PasswordReference"];
    passwordReference = v5->_passwordReference;
    v5->_passwordReference = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAddress"];
    serverAddress = v5->_serverAddress;
    v5->_serverAddress = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Username"];
    username = v5->_username;
    v5->_username = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Password"];
    passwordKeychainItem = v5->_passwordKeychainItem;
    v5->_passwordKeychainItem = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PasswordEncryption"];
    passwordEncryption = v5->_passwordEncryption;
    v5->_passwordEncryption = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
    identity = v5->_identity;
    v5->_identity = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityData"];
    identityDataInternal = v5->_identityDataInternal;
    v5->_identityDataInternal = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPassword"];
    identityDataPassword = v5->_identityDataPassword;
    v5->_identityDataPassword = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataPasswordKeychainItem"];
    identityDataPasswordKeychainItem = v5->_identityDataPasswordKeychainItem;
    v5->_identityDataPasswordKeychainItem = v26;

    v5->_identityDataImported = [v4 decodeBoolForKey:@"IdentityDataImported"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentityDataHash"];
    identityDataHash = v5->_identityDataHash;
    v5->_identityDataHash = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxySettings"];
    proxySettings = v5->_proxySettings;
    v5->_proxySettings = v30;

    v5->_disconnectOnIdle = [v4 decodeBoolForKey:@"DisconnectOnIdle"];
    v5->_disconnectOnIdleTimeout = [v4 decodeInt32ForKey:@"DisconnectOnIdleTimeout"];
    v5->_disconnectOnSleep = [v4 decodeBoolForKey:@"DisconnectOnSleep"];
    v5->_disconnectOnWake = [v4 decodeBoolForKey:@"DisconnectOnWake"];
    v5->_disconnectOnWakeTimeout = [v4 decodeInt32ForKey:@"DisconnectOnWakeTimeout"];
    v5->_disconnectOnUserSwitch = [v4 decodeBoolForKey:@"DisconnectOnUserSwitch"];
    v5->_disconnectOnLogout = [v4 decodeBoolForKey:@"DisconnectOnLogoutKey"];
    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNSSettings"];
    DNSSettings = v5->_DNSSettings;
    v5->_DNSSettings = v32;

    v5->_includeAllNetworks = [v4 decodeBoolForKey:@"IncludeAllNetworks"];
    if ([v4 containsValueForKey:@"ExcludeLocalNetworks"])
    {
      v5->_excludeLocalNetworks = [v4 decodeBoolForKey:@"ExcludeLocalNetworks"];
    }

    if ([v4 containsValueForKey:@"ExcludeCellularServices"])
    {
      v5->_excludeCellularServices = [v4 decodeBoolForKey:@"ExcludeCellularServices"];
    }

    if ([v4 containsValueForKey:@"ExcludeAPNs"])
    {
      v5->_excludeAPNs = [v4 decodeBoolForKey:@"ExcludeAPNs"];
    }

    if ([v4 containsValueForKey:@"ExcludeDeviceCommunication"])
    {
      v5->_excludeDeviceCommunication = [v4 decodeBoolForKey:@"ExcludeDeviceCommunication"];
    }

    v5->_enforceRoutes = [v4 decodeBoolForKey:@"EnforceRoutes"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExtensibleSSOProvider"];
    extensibleSSOProvider = v5->_extensibleSSOProvider;
    v5->_extensibleSSOProvider = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CellularSliceUUID"];
    sliceUUID = v5->_sliceUUID;
    v5->_sliceUUID = v36;
  }

  return v5;
}

- (NEVPNProtocol)initWithProtocolIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NEVPNProtocol *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    *&v5->_excludeLocalNetworks = 16843009;
  }

  return v5;
}

- (NEVPNProtocol)initWithType:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = NEVPNProtocol;
  v4 = [(NEVPNProtocol *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_keychainDomain = 0;
    v4->_type = a3;
    v6 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    *&v5->_excludeLocalNetworks = 16843009;
  }

  return v5;
}

@end
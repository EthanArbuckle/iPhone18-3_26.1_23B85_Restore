@interface NEVPNProtocolL2TP
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)needToUpdateKeychain;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service;
- (NEVPNProtocolL2TP)init;
- (NEVPNProtocolL2TP)initWithCoder:(id)coder;
- (NSData)machineIdentityReference;
- (NSData)sharedSecretReference;
- (__SCNetworkInterface)createInterface;
- (id)copyLegacyIPSecDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences;
- (void)setIPSecSettingsFromLegacyDictionary:(id)dictionary;
- (void)setMachineIdentityReference:(id)reference;
- (void)setSharedSecretReference:(id)reference;
- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix;
@end

@implementation NEVPNProtocolL2TP

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service
{
  v9.receiver = self;
  v9.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v9 updateWithServiceProtocolsFromService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      ExtendedConfiguration = SCNetworkInterfaceGetExtendedConfiguration(Interface, *MEMORY[0x1E6982378]);
      if (ExtendedConfiguration)
      {
        [(NEVPNProtocolL2TP *)self setIPSecSettingsFromLegacyDictionary:ExtendedConfiguration];
      }
    }
  }

  return v5;
}

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v18 setServiceProtocolsInService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(service);
    if (Interface)
    {
      v7 = Interface;
      v8 = *MEMORY[0x1E6982378];
      copyLegacyIPSecDictionary = [(NEVPNProtocolL2TP *)self copyLegacyIPSecDictionary];
      LODWORD(v7) = SCNetworkInterfaceSetExtendedConfiguration(v7, v8, copyLegacyIPSecDictionary);

      if (v7)
      {
        LOBYTE(v5) = 1;
        goto LABEL_9;
      }

      v10 = ne_log_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_8:

        LOBYTE(v5) = 0;
        goto LABEL_9;
      }

      v15 = SCError();
      v16 = SCErrorString(v15);
      *buf = 136315138;
      v20 = v16;
      v11 = "SCNetworkInterfaceSetExtendedConfiguration failed: %s";
      v12 = v10;
      v13 = 12;
    }

    else
    {
      v10 = ne_log_obj();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v11 = "Cannot set IPSec settings in service, interface is NULL";
      v12 = v10;
      v13 = 2;
    }

    _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    goto LABEL_8;
  }

LABEL_9:
  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (__SCNetworkInterface)createInterface
{
  result = SCNetworkInterfaceCreateWithInterface(*MEMORY[0x1E6982370], *MEMORY[0x1E6982380]);
  if (result)
  {
    v3 = result;
    v4 = SCNetworkInterfaceCreateWithInterface(result, *MEMORY[0x1E6982388]);
    CFRelease(v3);
    return v4;
  }

  return result;
}

- (void)setIPSecSettingsFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = *MEMORY[0x1E6982430];
  v29 = dictionaryCopy;
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982430]];
  v7 = isa_nsstring(v6);

  if (v7)
  {
    v8 = [NEKeychainItem alloc];
    v10 = [v29 objectForKeyedSubscript:v5];
    if (self)
    {
      keychainDomain = self->super.super._keychainDomain;
      Property = objc_getProperty(self, v9, 88, 1);
    }

    else
    {
      keychainDomain = 0;
      Property = 0;
    }

    v13 = Property;
    v14 = [(NEKeychainItem *)v8 initWithLegacyIdentifier:v10 domain:keychainDomain accessGroup:v13];
    [(NEVPNProtocolL2TP *)self setSharedSecretKeychainItem:v14];

    v15 = 1;
  }

  else
  {
    v16 = *MEMORY[0x1E6982410];
    v17 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6982410]];
    v18 = isa_nsdata(v17);

    if (!v18)
    {
      goto LABEL_8;
    }

    v10 = [v29 objectForKeyedSubscript:v16];
    [(NEVPNProtocolL2TP *)self setMachineIdentityReference:v10];
    v15 = 2;
  }

  [(NEVPNProtocolL2TP *)self setMachineAuthenticationMethod:v15];
LABEL_8:
  v19 = *MEMORY[0x1E6982418];
  v20 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6982418]];
  v21 = isa_nsstring(v20);

  if (v21)
  {
    v22 = [v29 objectForKeyedSubscript:v19];
    v23 = [v22 copy];
    [(NEVPNProtocolL2TP *)self setLocalIdentifier:v23];
  }

  v24 = *MEMORY[0x1E6982408];
  v25 = [v29 objectForKeyedSubscript:*MEMORY[0x1E6982408]];
  v26 = isa_nsstring(v25);

  if (v26)
  {
    v27 = [v29 objectForKeyedSubscript:v24];
    if ([v27 isEqualToString:*MEMORY[0x1E6982870]])
    {
      v28 = 1;
    }

    else
    {
      if (![v27 isEqualToString:*MEMORY[0x1E6982868]])
      {
LABEL_16:

        goto LABEL_17;
      }

      v28 = 2;
    }

    [(NEVPNProtocolL2TP *)self setMachineAuthenticationMethod:v28];
    goto LABEL_16;
  }

LABEL_17:
}

- (id)copyLegacyIPSecDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  machineIdentityReference = [(NEVPNProtocolL2TP *)self machineIdentityReference];

  if (machineIdentityReference)
  {
    if (self)
    {
      Property = objc_getProperty(self, v5, 248, 1);
    }

    else
    {
      Property = 0;
    }

    persistentReference = [Property persistentReference];
    [v3 setObject:persistentReference forKeyedSubscript:*MEMORY[0x1E6982410]];

    v8 = MEMORY[0x1E6982868];
  }

  else
  {
    v8 = MEMORY[0x1E6982870];
  }

  [v3 setObject:*v8 forKeyedSubscript:*MEMORY[0x1E6982408]];
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];

  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    password = [sharedSecretKeychainItem2 password];

    sharedSecretKeychainItem3 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    sharedSecretKeychainItem4 = sharedSecretKeychainItem3;
    if (password)
    {
      password2 = [sharedSecretKeychainItem3 password];
    }

    else
    {
      identifier = [sharedSecretKeychainItem3 identifier];

      if (!identifier)
      {
        goto LABEL_13;
      }

      sharedSecretKeychainItem4 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      password2 = [sharedSecretKeychainItem4 identifier];
    }

    v16 = password2;

    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982430]];
      [v3 setObject:*MEMORY[0x1E6982880] forKeyedSubscript:*MEMORY[0x1E6982438]];
    }
  }

LABEL_13:
  localIdentifier = [(NEVPNProtocolL2TP *)self localIdentifier];

  if (localIdentifier)
  {
    localIdentifier2 = [(NEVPNProtocolL2TP *)self localIdentifier];
    [v3 setObject:localIdentifier2 forKeyedSubscript:*MEMORY[0x1E6982418]];

    [v3 setObject:*MEMORY[0x1E6982878] forKeyedSubscript:*MEMORY[0x1E6982420]];
  }

  return v3;
}

- (void)migratePasswordsFromPreferences:(__SCPreferences *)preferences
{
  v6.receiver = self;
  v6.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocol *)&v6 migratePasswordsFromPreferences:?];
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [sharedSecretKeychainItem migrateFromPreferences:preferences];
}

- (BOOL)needToUpdateKeychain
{
  v10.receiver = self;
  v10.super_class = NEVPNProtocolL2TP;
  if ([(NEVPNProtocol *)&v10 needToUpdateKeychain])
  {
    return 1;
  }

  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    password = [sharedSecretKeychainItem2 password];
    if (password)
    {
      sharedSecretKeychainItem3 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      password2 = [sharedSecretKeychainItem3 password];
      v3 = [password2 length] != 0;
    }

    else
    {
      v3 = 0;
    }
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
    v11 = [suffixCopy stringByAppendingString:@".SS"];
  }

  else
  {
    v11 = @"SS";
  }

  v35.receiver = self;
  v35.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocol *)&v35 syncWithKeychainInDomain:domain configuration:configurationCopy suffix:v10];
  if (self)
  {
    v13 = objc_getProperty(self, v12, 248, 1);
    if (v13)
    {
      v15 = v13;
      v16 = [objc_getProperty(self v14];

      if (v16 == domain)
      {
        [objc_getProperty(self v17];
      }
    }
  }

  if ([(NEVPNProtocolL2TP *)self machineAuthenticationMethod]== 1)
  {
    sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];

    if (!sharedSecretKeychainItem)
    {
      v19 = MEMORY[0x1E696AEC0];
      identifier = [configurationCopy identifier];
      uUIDString = [identifier UUIDString];
      v22 = [v19 stringWithFormat:@"%@.%@", uUIDString, v11];

      v24 = [NEKeychainItem alloc];
      if (self)
      {
        keychainDomain = self->super.super._keychainDomain;
        Property = objc_getProperty(self, v23, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v27 = Property;
      v28 = [(NEKeychainItem *)v24 initWithIdentifier:v22 domain:keychainDomain accessGroup:v27];
      [(NEVPNProtocolL2TP *)self setSharedSecretKeychainItem:v28];
    }
  }

  sharedSecretKeychainItem2 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  if (sharedSecretKeychainItem2)
  {
    v30 = sharedSecretKeychainItem2;
    sharedSecretKeychainItem3 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    domain = [sharedSecretKeychainItem3 domain];

    if (domain == domain)
    {
      sharedSecretKeychainItem4 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      localIdentifier = [(NEVPNProtocolL2TP *)self localIdentifier];
      [sharedSecretKeychainItem4 syncUsingConfiguration:configurationCopy accountName:localIdentifier passwordType:2 identifierSuffix:v11];
    }
  }
}

- (NSData)machineIdentityReference
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy && objc_getProperty(selfCopy, v3, 248, 1))
  {
    v5 = objc_getProperty(selfCopy, v4, 248, 1);
    persistentReference = [v5 persistentReference];
  }

  else
  {
    persistentReference = 0;
  }

  objc_sync_exit(selfCopy);

  return persistentReference;
}

- (void)setMachineIdentityReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (referenceCopy)
  {
    if (selfCopy && objc_getProperty(selfCopy, v5, 248, 1))
    {
      v7 = objc_getProperty(selfCopy, v6, 248, 1);
      [v7 setPersistentReference:referenceCopy];
    }

    else
    {
      v9 = [NEIdentityKeychainItem alloc];
      if (selfCopy)
      {
        keychainDomain = selfCopy->super.super._keychainDomain;
        Property = objc_getProperty(selfCopy, v8, 88, 1);
      }

      else
      {
        keychainDomain = 0;
        Property = 0;
      }

      v7 = Property;
      v13 = [(NEKeychainItem *)v9 initWithPersistentReference:referenceCopy domain:keychainDomain accessGroup:v7];
      if (selfCopy)
      {
        objc_setProperty_atomic(selfCopy, v12, v13, 248);
      }
    }
  }

  else if (selfCopy)
  {
    objc_setProperty_atomic(selfCopy, v5, 0, 248);
  }

  objc_sync_exit(selfCopy);
}

- (NSData)sharedSecretReference
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)selfCopy sharedSecretKeychainItem];

  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolL2TP *)selfCopy sharedSecretKeychainItem];
    sharedSecretKeychainItem = [sharedSecretKeychainItem2 persistentReference];
  }

  objc_sync_exit(selfCopy);

  return sharedSecretKeychainItem;
}

- (void)setSharedSecretReference:(id)reference
{
  referenceCopy = reference;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)selfCopy sharedSecretKeychainItem];

  if (sharedSecretKeychainItem)
  {
    sharedSecretKeychainItem2 = [(NEVPNProtocolL2TP *)selfCopy sharedSecretKeychainItem];
    [sharedSecretKeychainItem2 setPersistentReference:referenceCopy];
  }

  else
  {
    v8 = [NEKeychainItem alloc];
    if (selfCopy)
    {
      keychainDomain = selfCopy->super.super._keychainDomain;
      Property = objc_getProperty(selfCopy, v7, 88, 1);
    }

    else
    {
      keychainDomain = 0;
      Property = 0;
    }

    sharedSecretKeychainItem2 = Property;
    v11 = [(NEKeychainItem *)v8 initWithPersistentReference:referenceCopy domain:keychainDomain accessGroup:sharedSecretKeychainItem2];
    [(NEVPNProtocolL2TP *)selfCopy setSharedSecretKeychainItem:v11];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v22 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v20.receiver = self;
  v20.super_class = NEVPNProtocolL2TP;
  v6 = [(NEVPNProtocolPPP *)&v20 checkValidityAndCollectErrors:errorsCopy];
  if (self && ((v7 = objc_getProperty(self, v5, 248, 1)) != 0 || (v7 = objc_getProperty(self, v8, 256, 1)) != 0))
  {
  }

  else if ([(NEVPNProtocolL2TP *)self machineAuthenticationMethod]== 2)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v6 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  userPreferences = [(NEVPNProtocolL2TP *)self userPreferences];
  v10 = [userPreferences countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(userPreferences);
        }

        v6 &= [*(*(&v16 + 1) + 8 * i) checkValidityAndCollectErrors:errorsCopy];
      }

      v11 = [userPreferences countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = NEVPNProtocolL2TP;
  v4 = [(NEVPNProtocolPPP *)&v13 copyWithZone:zone];
  [v4 setMachineAuthenticationMethod:{-[NEVPNProtocolL2TP machineAuthenticationMethod](self, "machineAuthenticationMethod")}];
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [v4 setSharedSecretKeychainItem:sharedSecretKeychainItem];

  if (self)
  {
    Property = objc_getProperty(self, v6, 248, 1);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  Property = 0;
  if (v4)
  {
LABEL_3:
    objc_setProperty_atomic(v4, v6, Property, 248);
  }

LABEL_4:
  if (self)
  {
    v8 = objc_getProperty(self, v6, 256, 1);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  if (v4)
  {
LABEL_6:
    objc_setProperty_atomic_copy(v4, v6, v8, 256);
  }

LABEL_7:
  if (!self)
  {
    machineIdentityDataImported = 0;
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  machineIdentityDataImported = self->_machineIdentityDataImported;
  if (v4)
  {
LABEL_9:
    v4[208] = machineIdentityDataImported;
  }

LABEL_10:
  localIdentifier = [(NEVPNProtocolL2TP *)self localIdentifier];
  [v4 setLocalIdentifier:localIdentifier];

  userPreferences = [(NEVPNProtocolL2TP *)self userPreferences];
  [v4 setUserPreferences:userPreferences];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocolPPP *)&v10 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[NEVPNProtocolL2TP machineAuthenticationMethod](self forKey:{"machineAuthenticationMethod"), @"MachineAuthenticationMethod"}];
  sharedSecretKeychainItem = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [coderCopy encodeObject:sharedSecretKeychainItem forKey:@"SharedSecret"];

  if (self)
  {
    [coderCopy encodeObject:objc_getProperty(self forKey:{v6, 248, 1), @"MachineIdentity"}];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v7, 256, 1), @"MachineIdentityData"}];
    machineIdentityDataImported = self->_machineIdentityDataImported;
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"MachineIdentity"];
    [coderCopy encodeObject:0 forKey:@"MachineIdentityData"];
    machineIdentityDataImported = 0;
  }

  [coderCopy encodeBool:machineIdentityDataImported forKey:@"MachineIdentityDataImported"];
  localIdentifier = [(NEVPNProtocolL2TP *)self localIdentifier];
  [coderCopy encodeObject:localIdentifier forKey:@"LocalIdentifier"];
}

- (NEVPNProtocolL2TP)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_machineAuthenticationMethod = [coderCopy decodeInt32ForKey:@"MachineAuthenticationMethod"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecret"];
    sharedSecretKeychainItem = v5->_sharedSecretKeychainItem;
    v5->_sharedSecretKeychainItem = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MachineIdentity"];
    machineIdentity = v5->_machineIdentity;
    v5->_machineIdentity = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MachineIdentityData"];
    machineIdentityDataInternal = v5->_machineIdentityDataInternal;
    v5->_machineIdentityDataInternal = v10;

    v5->_machineIdentityDataImported = [coderCopy decodeBoolForKey:@"MachineIdentityDataImported"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalIdentifier"];
    localIdentifier = v5->_localIdentifier;
    v5->_localIdentifier = v12;
  }

  return v5;
}

- (NEVPNProtocolL2TP)init
{
  v3.receiver = self;
  v3.super_class = NEVPNProtocolL2TP;
  return [(NEVPNProtocolPPP *)&v3 initWithType:2];
}

@end
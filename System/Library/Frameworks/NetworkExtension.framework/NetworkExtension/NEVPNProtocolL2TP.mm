@interface NEVPNProtocolL2TP
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)needToUpdateKeychain;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3;
- (NEVPNProtocolL2TP)init;
- (NEVPNProtocolL2TP)initWithCoder:(id)a3;
- (NSData)machineIdentityReference;
- (NSData)sharedSecretReference;
- (__SCNetworkInterface)createInterface;
- (id)copyLegacyIPSecDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3;
- (void)setIPSecSettingsFromLegacyDictionary:(id)a3;
- (void)setMachineIdentityReference:(id)a3;
- (void)setSharedSecretReference:(id)a3;
- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5;
@end

@implementation NEVPNProtocolL2TP

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3
{
  v9.receiver = self;
  v9.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v9 updateWithServiceProtocolsFromService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(a3);
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

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v18 setServiceProtocolsInService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(a3);
    if (Interface)
    {
      v7 = Interface;
      v8 = *MEMORY[0x1E6982378];
      v9 = [(NEVPNProtocolL2TP *)self copyLegacyIPSecDictionary];
      LODWORD(v7) = SCNetworkInterfaceSetExtendedConfiguration(v7, v8, v9);

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

- (void)setIPSecSettingsFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6982430];
  v29 = v4;
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982430]];
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
  v4 = [(NEVPNProtocolL2TP *)self machineIdentityReference];

  if (v4)
  {
    if (self)
    {
      Property = objc_getProperty(self, v5, 248, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = [Property persistentReference];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982410]];

    v8 = MEMORY[0x1E6982868];
  }

  else
  {
    v8 = MEMORY[0x1E6982870];
  }

  [v3 setObject:*v8 forKeyedSubscript:*MEMORY[0x1E6982408]];
  v9 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];

  if (v9)
  {
    v10 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    v11 = [v10 password];

    v12 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    v13 = v12;
    if (v11)
    {
      v14 = [v12 password];
    }

    else
    {
      v15 = [v12 identifier];

      if (!v15)
      {
        goto LABEL_13;
      }

      v13 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      v14 = [v13 identifier];
    }

    v16 = v14;

    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982430]];
      [v3 setObject:*MEMORY[0x1E6982880] forKeyedSubscript:*MEMORY[0x1E6982438]];
    }
  }

LABEL_13:
  v17 = [(NEVPNProtocolL2TP *)self localIdentifier];

  if (v17)
  {
    v18 = [(NEVPNProtocolL2TP *)self localIdentifier];
    [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x1E6982418]];

    [v3 setObject:*MEMORY[0x1E6982878] forKeyedSubscript:*MEMORY[0x1E6982420]];
  }

  return v3;
}

- (void)migratePasswordsFromPreferences:(__SCPreferences *)a3
{
  v6.receiver = self;
  v6.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocol *)&v6 migratePasswordsFromPreferences:?];
  v5 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [v5 migrateFromPreferences:a3];
}

- (BOOL)needToUpdateKeychain
{
  v10.receiver = self;
  v10.super_class = NEVPNProtocolL2TP;
  if ([(NEVPNProtocol *)&v10 needToUpdateKeychain])
  {
    return 1;
  }

  v4 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  if (v4)
  {
    v5 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    v6 = [v5 password];
    if (v6)
    {
      v7 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      v8 = [v7 password];
      v3 = [v8 length] != 0;
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

- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 stringByAppendingString:@".SS"];
  }

  else
  {
    v11 = @"SS";
  }

  v35.receiver = self;
  v35.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocol *)&v35 syncWithKeychainInDomain:a3 configuration:v8 suffix:v10];
  if (self)
  {
    v13 = objc_getProperty(self, v12, 248, 1);
    if (v13)
    {
      v15 = v13;
      v16 = [objc_getProperty(self v14];

      if (v16 == a3)
      {
        [objc_getProperty(self v17];
      }
    }
  }

  if ([(NEVPNProtocolL2TP *)self machineAuthenticationMethod]== 1)
  {
    v18 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];

    if (!v18)
    {
      v19 = MEMORY[0x1E696AEC0];
      v20 = [v8 identifier];
      v21 = [v20 UUIDString];
      v22 = [v19 stringWithFormat:@"%@.%@", v21, v11];

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

  v29 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  if (v29)
  {
    v30 = v29;
    v31 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
    v32 = [v31 domain];

    if (v32 == a3)
    {
      v33 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
      v34 = [(NEVPNProtocolL2TP *)self localIdentifier];
      [v33 syncUsingConfiguration:v8 accountName:v34 passwordType:2 identifierSuffix:v11];
    }
  }
}

- (NSData)machineIdentityReference
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2 && objc_getProperty(v2, v3, 248, 1))
  {
    v5 = objc_getProperty(v2, v4, 248, 1);
    v6 = [v5 persistentReference];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

  return v6;
}

- (void)setMachineIdentityReference:(id)a3
{
  v14 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v14)
  {
    if (v4 && objc_getProperty(v4, v5, 248, 1))
    {
      v7 = objc_getProperty(v4, v6, 248, 1);
      [v7 setPersistentReference:v14];
    }

    else
    {
      v9 = [NEIdentityKeychainItem alloc];
      if (v4)
      {
        keychainDomain = v4->super.super._keychainDomain;
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
        objc_setProperty_atomic(v4, v12, v13, 248);
      }
    }
  }

  else if (v4)
  {
    objc_setProperty_atomic(v4, v5, 0, 248);
  }

  objc_sync_exit(v4);
}

- (NSData)sharedSecretReference
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NEVPNProtocolL2TP *)v2 sharedSecretKeychainItem];

  if (v3)
  {
    v4 = [(NEVPNProtocolL2TP *)v2 sharedSecretKeychainItem];
    v3 = [v4 persistentReference];
  }

  objc_sync_exit(v2);

  return v3;
}

- (void)setSharedSecretReference:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NEVPNProtocolL2TP *)v4 sharedSecretKeychainItem];

  if (v5)
  {
    v6 = [(NEVPNProtocolL2TP *)v4 sharedSecretKeychainItem];
    [v6 setPersistentReference:v12];
  }

  else
  {
    v8 = [NEKeychainItem alloc];
    if (v4)
    {
      keychainDomain = v4->super.super._keychainDomain;
      Property = objc_getProperty(v4, v7, 88, 1);
    }

    else
    {
      keychainDomain = 0;
      Property = 0;
    }

    v6 = Property;
    v11 = [(NEKeychainItem *)v8 initWithPersistentReference:v12 domain:keychainDomain accessGroup:v6];
    [(NEVPNProtocolL2TP *)v4 setSharedSecretKeychainItem:v11];
  }

  objc_sync_exit(v4);
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NEVPNProtocolL2TP;
  v6 = [(NEVPNProtocolPPP *)&v20 checkValidityAndCollectErrors:v4];
  if (self && ((v7 = objc_getProperty(self, v5, 248, 1)) != 0 || (v7 = objc_getProperty(self, v8, 256, 1)) != 0))
  {
  }

  else if ([(NEVPNProtocolL2TP *)self machineAuthenticationMethod]== 2)
  {
    [NEConfiguration addError:v4 toList:?];
    v6 = 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(NEVPNProtocolL2TP *)self userPreferences];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v6 &= [*(*(&v16 + 1) + 8 * i) checkValidityAndCollectErrors:v4];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = NEVPNProtocolL2TP;
  v4 = [(NEVPNProtocolPPP *)&v13 copyWithZone:a3];
  [v4 setMachineAuthenticationMethod:{-[NEVPNProtocolL2TP machineAuthenticationMethod](self, "machineAuthenticationMethod")}];
  v5 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [v4 setSharedSecretKeychainItem:v5];

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
  v10 = [(NEVPNProtocolL2TP *)self localIdentifier];
  [v4 setLocalIdentifier:v10];

  v11 = [(NEVPNProtocolL2TP *)self userPreferences];
  [v4 setUserPreferences:v11];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NEVPNProtocolL2TP;
  [(NEVPNProtocolPPP *)&v10 encodeWithCoder:v4];
  [v4 encodeInt32:-[NEVPNProtocolL2TP machineAuthenticationMethod](self forKey:{"machineAuthenticationMethod"), @"MachineAuthenticationMethod"}];
  v5 = [(NEVPNProtocolL2TP *)self sharedSecretKeychainItem];
  [v4 encodeObject:v5 forKey:@"SharedSecret"];

  if (self)
  {
    [v4 encodeObject:objc_getProperty(self forKey:{v6, 248, 1), @"MachineIdentity"}];
    [v4 encodeObject:objc_getProperty(self forKey:{v7, 256, 1), @"MachineIdentityData"}];
    machineIdentityDataImported = self->_machineIdentityDataImported;
  }

  else
  {
    [v4 encodeObject:0 forKey:@"MachineIdentity"];
    [v4 encodeObject:0 forKey:@"MachineIdentityData"];
    machineIdentityDataImported = 0;
  }

  [v4 encodeBool:machineIdentityDataImported forKey:@"MachineIdentityDataImported"];
  v9 = [(NEVPNProtocolL2TP *)self localIdentifier];
  [v4 encodeObject:v9 forKey:@"LocalIdentifier"];
}

- (NEVPNProtocolL2TP)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEVPNProtocolL2TP;
  v5 = [(NEVPNProtocolPPP *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_machineAuthenticationMethod = [v4 decodeInt32ForKey:@"MachineAuthenticationMethod"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SharedSecret"];
    sharedSecretKeychainItem = v5->_sharedSecretKeychainItem;
    v5->_sharedSecretKeychainItem = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MachineIdentity"];
    machineIdentity = v5->_machineIdentity;
    v5->_machineIdentity = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MachineIdentityData"];
    machineIdentityDataInternal = v5->_machineIdentityDataInternal;
    v5->_machineIdentityDataInternal = v10;

    v5->_machineIdentityDataImported = [v4 decodeBoolForKey:@"MachineIdentityDataImported"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalIdentifier"];
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
@interface NETunnelProviderProtocol
+ (BOOL)isLegacyPluginType:(id)a3;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3;
- (NETunnelProviderProtocol)init;
- (NETunnelProviderProtocol)initWithCoder:(id)a3;
- (NETunnelProviderProtocol)initWithPluginType:(id)a3;
- (__SCNetworkInterface)createInterface;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setPluginType:(id)a3;
- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5;
@end

@implementation NETunnelProviderProtocol

- (void)syncWithKeychainInDomain:(int64_t)a3 configuration:(id)a4 suffix:(id)a5
{
  v14.receiver = self;
  v14.super_class = NETunnelProviderProtocol;
  [(NEVPNProtocol *)&v14 syncWithKeychainInDomain:a3 configuration:a4 suffix:a5];
  if (a3 == 1)
  {
    v7 = [(NEVPNProtocol *)self passwordKeychainItem];
    if (v7)
    {
      v8 = v7;
      v9 = [(NEVPNProtocol *)self passwordKeychainItem];
      if ([v9 domain] == 1)
      {
        v10 = [(NEVPNProtocol *)self passwordKeychainItem];
        v11 = [v10 persistentReference];
        if (v11)
        {
          v12 = v11;
          v13 = [(NEVPNProtocol *)self passwordReference];

          if (v13)
          {
            return;
          }

          v8 = [(NEVPNProtocol *)self passwordKeychainItem];
          v9 = [v8 persistentReference];
          [(NEVPNProtocol *)self setPasswordReference:v9];
        }

        else
        {
        }
      }
    }
  }
}

- (void)copyPasswordsFromKeychainInDomain:(int64_t)a3
{
  v16.receiver = self;
  v16.super_class = NETunnelProviderProtocol;
  [(NEVPNProtocol *)&v16 copyPasswordsFromKeychainInDomain:?];
  v5 = [(NEVPNProtocol *)self passwordKeychainItem];
  if (v5)
  {
    v6 = v5;
    v7 = [(NEVPNProtocol *)self passwordKeychainItem];
    v8 = [v7 domain];

    if (v8 == a3)
    {
      v9 = [(NEVPNProtocol *)self passwordEncryption];
      if (!v9 || (v10 = v9, -[NEVPNProtocol passwordEncryption](self, "passwordEncryption"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:*MEMORY[0x1E6982950]], v11, v10, (v12 & 1) == 0))
      {
        v13 = [(NEVPNProtocol *)self passwordKeychainItem];
        v14 = [v13 copyData];
        v15 = [(NEVPNProtocol *)self passwordKeychainItem];
        [v15 setData:v14];
      }
    }
  }
}

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3
{
  v9.receiver = self;
  v9.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v9 updateWithServiceProtocolsFromService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(a3);
    if (Interface)
    {
      v7 = SCNetworkInterfaceGetInterface(Interface);
      if (v7)
      {
        [(NETunnelProviderProtocol *)self setProviderConfiguration:SCNetworkInterfaceGetConfiguration(v7)];
      }
    }
  }

  return v5;
}

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v15 setServiceProtocolsInService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(a3);
    if (Interface && (v7 = SCNetworkInterfaceGetInterface(Interface)) != 0 && (v8 = v7, [(NETunnelProviderProtocol *)self providerConfiguration], v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v8) = SCNetworkInterfaceSetConfiguration(v8, v9), v9, !v8))
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = SCError();
        v13 = SCErrorString(v12);
        *buf = 136315394;
        v17 = "[NETunnelProviderProtocol setServiceProtocolsInService:]";
        v18 = 2080;
        v19 = v13;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "%s: SCNetworkInterfaceSetConfiguration failed: %s", buf, 0x16u);
      }

      LOBYTE(v5) = 0;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (__SCNetworkInterface)createInterface
{
  v2 = *MEMORY[0x1E6982370];
  v3 = [(NETunnelProviderProtocol *)self pluginType];
  v4 = SCNetworkInterfaceCreateWithInterface(v2, v3);

  if (!v4)
  {
    return 0;
  }

  v5 = SCNetworkInterfaceCreateWithInterface(v4, *MEMORY[0x1E6982390]);
  CFRelease(v4);
  return v5;
}

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v24 initFromLegacyDictionary:v4];
  if (!v5)
  {
    goto LABEL_15;
  }

  if (initFromLegacyDictionary__initOurKeys != -1)
  {
    dispatch_once(&initFromLegacyDictionary__initOurKeys, &__block_literal_global_24038);
  }

  v6 = [v4 objectForKeyedSubscript:@"__NEVPNPluginType"];
  [v5 setPluginType:v6];

  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982758]];
  if (isa_nsstring(v7))
  {
    if ([v7 isEqualToString:*MEMORY[0x1E6982960]])
    {
      v8 = 0;
LABEL_9:
      v5[28] = v8;
      goto LABEL_10;
    }

    if ([v7 isEqualToString:*MEMORY[0x1E6982958]])
    {
      v8 = 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v9 = *MEMORY[0x1E6982750];
  v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982750]];
  v11 = isa_nsstring(v10);

  if (v11)
  {
    v12 = [v4 objectForKeyedSubscript:v9];
    v13 = [v12 copy];
    v14 = v5[26];
    v5[26] = v13;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
  [v15 removeObjectsForKeys:initFromLegacyDictionary__nsprotocolkeys];
  if (![v15 count])
  {

    v15 = 0;
  }

  v16 = v5[27];
  v5[27] = v15;
  v17 = v15;

  v18 = [v4 objectForKeyedSubscript:@"NEProviderBundleIdentifier"];
  v19 = v5[23];
  v5[23] = v18;

  v20 = [v4 objectForKeyedSubscript:@"DesignatedRequirement"];
  v21 = v5[25];
  v5[25] = v20;

  v22 = v5;
LABEL_15:

  return v5;
}

void __53__NETunnelProviderProtocol_initFromLegacyDictionary___block_invoke()
{
  v17[36] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6982730];
  v17[0] = *MEMORY[0x1E6982728];
  v17[1] = v0;
  v1 = *MEMORY[0x1E6982740];
  v17[2] = *MEMORY[0x1E6982738];
  v17[3] = v1;
  v2 = *MEMORY[0x1E6982750];
  v17[4] = *MEMORY[0x1E6982748];
  v17[5] = v2;
  v3 = *MEMORY[0x1E6982760];
  v17[6] = *MEMORY[0x1E6982758];
  v17[7] = v3;
  v4 = *MEMORY[0x1E6982770];
  v17[8] = *MEMORY[0x1E6982768];
  v17[9] = v4;
  v5 = *MEMORY[0x1E6982780];
  v17[10] = *MEMORY[0x1E6982778];
  v17[11] = v5;
  v6 = *MEMORY[0x1E6982790];
  v17[12] = *MEMORY[0x1E6982788];
  v17[13] = v6;
  v7 = *MEMORY[0x1E69827A0];
  v17[14] = *MEMORY[0x1E6982798];
  v17[15] = v7;
  v8 = *MEMORY[0x1E69827B0];
  v17[16] = *MEMORY[0x1E69827A8];
  v17[17] = v8;
  v9 = *MEMORY[0x1E69827C0];
  v17[18] = *MEMORY[0x1E69827B8];
  v17[19] = v9;
  v10 = *MEMORY[0x1E69827D8];
  v17[20] = *MEMORY[0x1E69827C8];
  v17[21] = v10;
  v11 = *MEMORY[0x1E6982838];
  v17[22] = *MEMORY[0x1E69827D0];
  v17[23] = v11;
  v12 = *MEMORY[0x1E6982848];
  v17[24] = *MEMORY[0x1E6982840];
  v17[25] = v12;
  v13 = *MEMORY[0x1E6982858];
  v17[26] = *MEMORY[0x1E6982850];
  v17[27] = v13;
  v17[28] = *MEMORY[0x1E6982860];
  v17[29] = @"ReassertionTimer";
  v17[30] = *MEMORY[0x1E6982360];
  v17[31] = @"__NEVPNProtocolType";
  v17[32] = @"__NEVPNPluginType";
  v17[33] = @"__NEVPNProtocolIdentifier";
  v17[34] = @"NEProviderBundleIdentifier";
  v17[35] = @"DesignatedRequirement";
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:36];
  v15 = initFromLegacyDictionary__nsprotocolkeys;
  initFromLegacyDictionary__nsprotocolkeys = v14;

  v16 = *MEMORY[0x1E69E9840];
}

- (id)copyLegacyDictionary
{
  v12.receiver = self;
  v12.super_class = NETunnelProviderProtocol;
  v3 = [(NEVPNProtocol *)&v12 copyLegacyDictionary];
  v4 = [(NETunnelProviderProtocol *)self authenticationMethod];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E6982958];
  }

  else
  {
    v5 = MEMORY[0x1E6982960];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x1E6982758]];
LABEL_6:
  v6 = [(NETunnelProviderProtocol *)self authenticationPluginType];

  if (v6)
  {
    v7 = [(NETunnelProviderProtocol *)self authenticationPluginType];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6982750]];
  }

  v8 = [(NETunnelProviderProtocol *)self vendorInfo];

  if (v8)
  {
    [v3 addEntriesFromDictionary:self->_vendorInfo];
  }

  v9 = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [v3 setObject:v9 forKeyedSubscript:@"NEProviderBundleIdentifier"];

  v10 = [(NETunnelProviderProtocol *)self designatedRequirement];
  [v3 setObject:v10 forKeyedSubscript:@"DesignatedRequirement"];

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 checkValidityAndCollectErrors:v4];
  v6 = [(NETunnelProviderProtocol *)self pluginType];

  if (!v6)
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = NETunnelProviderProtocol;
  v4 = [(NEVPNProtocol *)&v16 copyWithZone:a3];
  v5 = [(NETunnelProviderProtocol *)self pluginType];
  [v4 setPluginType:v5];

  v6 = [(NETunnelProviderProtocol *)self vendorInfo];
  [v4 setVendorInfo:v6];

  v7 = [(NETunnelProviderProtocol *)self authenticationPluginType];
  [v4 setAuthenticationPluginType:v7];

  [v4 setAuthenticationMethod:{-[NETunnelProviderProtocol authenticationMethod](self, "authenticationMethod")}];
  v8 = [(NETunnelProviderProtocol *)self providerConfiguration];
  [v4 setProviderConfiguration:v8];

  if (self)
  {
    Property = objc_getProperty(self, v9, 88, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;
  if (v4)
  {
    objc_setProperty_atomic(v4, v11, v12, 88);
  }

  v13 = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [v4 setProviderBundleIdentifier:v13];

  v14 = [(NETunnelProviderProtocol *)self designatedRequirement];
  [v4 setDesignatedRequirement:v14];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = NETunnelProviderProtocol;
  v4 = a3;
  [(NEVPNProtocol *)&v11 encodeWithCoder:v4];
  v5 = [(NETunnelProviderProtocol *)self pluginType:v11.receiver];
  [v4 encodeObject:v5 forKey:@"PluginType"];

  v6 = [(NETunnelProviderProtocol *)self vendorInfo];
  [v4 encodeObject:v6 forKey:@"VendorInfo"];

  v7 = [(NETunnelProviderProtocol *)self authenticationPluginType];
  [v4 encodeObject:v7 forKey:@"AuthenticationPluginType"];

  [v4 encodeInt32:-[NETunnelProviderProtocol authenticationMethod](self forKey:{"authenticationMethod"), @"AuthenticationMethod"}];
  v8 = [(NETunnelProviderProtocol *)self providerConfiguration];
  [v4 encodeObject:v8 forKey:@"VendorConfiguration"];

  v9 = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"NEProviderBundleIdentifier"];

  v10 = [(NETunnelProviderProtocol *)self designatedRequirement];
  [v4 encodeObject:v10 forKey:@"DesignatedRequirement"];
}

- (NETunnelProviderProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    [(NETunnelProviderProtocol *)v5 setPluginType:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"VendorInfo"];
    vendorInfo = v5->_vendorInfo;
    v5->_vendorInfo = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AuthenticationPluginType"];
    authenticationPluginType = v5->_authenticationPluginType;
    v5->_authenticationPluginType = v15;

    v5->_authenticationMethod = [v4 decodeInt32ForKey:@"AuthenticationMethod"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"VendorConfiguration"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NEProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DesignatedRequirement"];
    designatedRequirement = v5->_designatedRequirement;
    v5->_designatedRequirement = v27;
  }

  return v5;
}

- (NETunnelProviderProtocol)initWithPluginType:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 initWithType:4];
  v6 = v5;
  if (v5)
  {
    [(NETunnelProviderProtocol *)v5 setPluginType:v4];
    v6->_authenticationMethod = 0;
  }

  return v6;
}

- (NETunnelProviderProtocol)init
{
  v3.receiver = self;
  v3.super_class = NETunnelProviderProtocol;
  result = [(NEVPNProtocol *)&v3 initWithType:4];
  if (result)
  {
    result->super._keychainDomain = 0;
  }

  return result;
}

- (void)setPluginType:(id)a3
{
  v11 = a3;
  if (!self->_pluginType)
  {
    v4 = [v11 copy];
    pluginType = self->_pluginType;
    self->_pluginType = v4;
  }

  v6 = [(NETunnelProviderProtocol *)self pluginType];
  v7 = [NETunnelProviderProtocol isLegacyPluginType:v6];

  if (v7)
  {
    self->super._keychainDomain = 0;
    v9 = self;
    v10 = 0;
  }

  else
  {
    self->super._keychainDomain = 1;
    v10 = @"com.apple.managed.vpn.shared";
    v9 = self;
  }

  objc_setProperty_atomic(v9, v8, v10, 88);
}

+ (BOOL)isLegacyPluginType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.cisco.anyconnect.applevpn.plugin"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ac-otc-authen.vpn.plugin") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"net.juniper.sslvpn"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasSuffix:@".vpnplugin"];
  }

  return v4;
}

@end
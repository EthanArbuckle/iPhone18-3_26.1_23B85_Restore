@interface NETunnelProviderProtocol
+ (BOOL)isLegacyPluginType:(id)type;
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service;
- (NETunnelProviderProtocol)init;
- (NETunnelProviderProtocol)initWithCoder:(id)coder;
- (NETunnelProviderProtocol)initWithPluginType:(id)type;
- (__SCNetworkInterface)createInterface;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain;
- (void)encodeWithCoder:(id)coder;
- (void)setPluginType:(id)type;
- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix;
@end

@implementation NETunnelProviderProtocol

- (void)syncWithKeychainInDomain:(int64_t)domain configuration:(id)configuration suffix:(id)suffix
{
  v14.receiver = self;
  v14.super_class = NETunnelProviderProtocol;
  [(NEVPNProtocol *)&v14 syncWithKeychainInDomain:domain configuration:configuration suffix:suffix];
  if (domain == 1)
  {
    passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
    if (passwordKeychainItem)
    {
      passwordKeychainItem4 = passwordKeychainItem;
      passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
      if ([passwordKeychainItem2 domain] == 1)
      {
        passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
        persistentReference = [passwordKeychainItem3 persistentReference];
        if (persistentReference)
        {
          v12 = persistentReference;
          passwordReference = [(NEVPNProtocol *)self passwordReference];

          if (passwordReference)
          {
            return;
          }

          passwordKeychainItem4 = [(NEVPNProtocol *)self passwordKeychainItem];
          passwordKeychainItem2 = [passwordKeychainItem4 persistentReference];
          [(NEVPNProtocol *)self setPasswordReference:passwordKeychainItem2];
        }

        else
        {
        }
      }
    }
  }
}

- (void)copyPasswordsFromKeychainInDomain:(int64_t)domain
{
  v16.receiver = self;
  v16.super_class = NETunnelProviderProtocol;
  [(NEVPNProtocol *)&v16 copyPasswordsFromKeychainInDomain:?];
  passwordKeychainItem = [(NEVPNProtocol *)self passwordKeychainItem];
  if (passwordKeychainItem)
  {
    v6 = passwordKeychainItem;
    passwordKeychainItem2 = [(NEVPNProtocol *)self passwordKeychainItem];
    domain = [passwordKeychainItem2 domain];

    if (domain == domain)
    {
      passwordEncryption = [(NEVPNProtocol *)self passwordEncryption];
      if (!passwordEncryption || (v10 = passwordEncryption, -[NEVPNProtocol passwordEncryption](self, "passwordEncryption"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:*MEMORY[0x1E6982950]], v11, v10, (v12 & 1) == 0))
      {
        passwordKeychainItem3 = [(NEVPNProtocol *)self passwordKeychainItem];
        copyData = [passwordKeychainItem3 copyData];
        passwordKeychainItem4 = [(NEVPNProtocol *)self passwordKeychainItem];
        [passwordKeychainItem4 setData:copyData];
      }
    }
  }
}

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)service
{
  v9.receiver = self;
  v9.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v9 updateWithServiceProtocolsFromService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(service);
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

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)service
{
  v20 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v15 setServiceProtocolsInService:?];
  if (v5)
  {
    Interface = SCNetworkServiceGetInterface(service);
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
  pluginType = [(NETunnelProviderProtocol *)self pluginType];
  v4 = SCNetworkInterfaceCreateWithInterface(v2, pluginType);

  if (!v4)
  {
    return 0;
  }

  v5 = SCNetworkInterfaceCreateWithInterface(v4, *MEMORY[0x1E6982390]);
  CFRelease(v4);
  return v5;
}

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v24 initFromLegacyDictionary:dictionaryCopy];
  if (!v5)
  {
    goto LABEL_15;
  }

  if (initFromLegacyDictionary__initOurKeys != -1)
  {
    dispatch_once(&initFromLegacyDictionary__initOurKeys, &__block_literal_global_24038);
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNPluginType"];
  [v5 setPluginType:v6];

  v7 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982758]];
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
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982750]];
  v11 = isa_nsstring(v10);

  if (v11)
  {
    v12 = [dictionaryCopy objectForKeyedSubscript:v9];
    v13 = [v12 copy];
    v14 = v5[26];
    v5[26] = v13;
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:dictionaryCopy];
  [v15 removeObjectsForKeys:initFromLegacyDictionary__nsprotocolkeys];
  if (![v15 count])
  {

    v15 = 0;
  }

  v16 = v5[27];
  v5[27] = v15;
  v17 = v15;

  v18 = [dictionaryCopy objectForKeyedSubscript:@"NEProviderBundleIdentifier"];
  v19 = v5[23];
  v5[23] = v18;

  v20 = [dictionaryCopy objectForKeyedSubscript:@"DesignatedRequirement"];
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
  copyLegacyDictionary = [(NEVPNProtocol *)&v12 copyLegacyDictionary];
  authenticationMethod = [(NETunnelProviderProtocol *)self authenticationMethod];
  if (authenticationMethod)
  {
    if (authenticationMethod != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E6982958];
  }

  else
  {
    v5 = MEMORY[0x1E6982960];
  }

  [copyLegacyDictionary setObject:*v5 forKeyedSubscript:*MEMORY[0x1E6982758]];
LABEL_6:
  authenticationPluginType = [(NETunnelProviderProtocol *)self authenticationPluginType];

  if (authenticationPluginType)
  {
    authenticationPluginType2 = [(NETunnelProviderProtocol *)self authenticationPluginType];
    [copyLegacyDictionary setObject:authenticationPluginType2 forKeyedSubscript:*MEMORY[0x1E6982750]];
  }

  vendorInfo = [(NETunnelProviderProtocol *)self vendorInfo];

  if (vendorInfo)
  {
    [copyLegacyDictionary addEntriesFromDictionary:self->_vendorInfo];
  }

  providerBundleIdentifier = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [copyLegacyDictionary setObject:providerBundleIdentifier forKeyedSubscript:@"NEProviderBundleIdentifier"];

  designatedRequirement = [(NETunnelProviderProtocol *)self designatedRequirement];
  [copyLegacyDictionary setObject:designatedRequirement forKeyedSubscript:@"DesignatedRequirement"];

  return copyLegacyDictionary;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v8.receiver = self;
  v8.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 checkValidityAndCollectErrors:errorsCopy];
  pluginType = [(NETunnelProviderProtocol *)self pluginType];

  if (!pluginType)
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = NETunnelProviderProtocol;
  v4 = [(NEVPNProtocol *)&v16 copyWithZone:zone];
  pluginType = [(NETunnelProviderProtocol *)self pluginType];
  [v4 setPluginType:pluginType];

  vendorInfo = [(NETunnelProviderProtocol *)self vendorInfo];
  [v4 setVendorInfo:vendorInfo];

  authenticationPluginType = [(NETunnelProviderProtocol *)self authenticationPluginType];
  [v4 setAuthenticationPluginType:authenticationPluginType];

  [v4 setAuthenticationMethod:{-[NETunnelProviderProtocol authenticationMethod](self, "authenticationMethod")}];
  providerConfiguration = [(NETunnelProviderProtocol *)self providerConfiguration];
  [v4 setProviderConfiguration:providerConfiguration];

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

  providerBundleIdentifier = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [v4 setProviderBundleIdentifier:providerBundleIdentifier];

  designatedRequirement = [(NETunnelProviderProtocol *)self designatedRequirement];
  [v4 setDesignatedRequirement:designatedRequirement];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = NETunnelProviderProtocol;
  coderCopy = coder;
  [(NEVPNProtocol *)&v11 encodeWithCoder:coderCopy];
  v5 = [(NETunnelProviderProtocol *)self pluginType:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"PluginType"];

  vendorInfo = [(NETunnelProviderProtocol *)self vendorInfo];
  [coderCopy encodeObject:vendorInfo forKey:@"VendorInfo"];

  authenticationPluginType = [(NETunnelProviderProtocol *)self authenticationPluginType];
  [coderCopy encodeObject:authenticationPluginType forKey:@"AuthenticationPluginType"];

  [coderCopy encodeInt32:-[NETunnelProviderProtocol authenticationMethod](self forKey:{"authenticationMethod"), @"AuthenticationMethod"}];
  providerConfiguration = [(NETunnelProviderProtocol *)self providerConfiguration];
  [coderCopy encodeObject:providerConfiguration forKey:@"VendorConfiguration"];

  providerBundleIdentifier = [(NETunnelProviderProtocol *)self providerBundleIdentifier];
  [coderCopy encodeObject:providerBundleIdentifier forKey:@"NEProviderBundleIdentifier"];

  designatedRequirement = [(NETunnelProviderProtocol *)self designatedRequirement];
  [coderCopy encodeObject:designatedRequirement forKey:@"DesignatedRequirement"];
}

- (NETunnelProviderProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginType"];
    [(NETunnelProviderProtocol *)v5 setPluginType:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"VendorInfo"];
    vendorInfo = v5->_vendorInfo;
    v5->_vendorInfo = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AuthenticationPluginType"];
    authenticationPluginType = v5->_authenticationPluginType;
    v5->_authenticationPluginType = v15;

    v5->_authenticationMethod = [coderCopy decodeInt32ForKey:@"AuthenticationMethod"];
    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v17 setWithObjects:{v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"VendorConfiguration"];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NEProviderBundleIdentifier"];
    providerBundleIdentifier = v5->_providerBundleIdentifier;
    v5->_providerBundleIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DesignatedRequirement"];
    designatedRequirement = v5->_designatedRequirement;
    v5->_designatedRequirement = v27;
  }

  return v5;
}

- (NETunnelProviderProtocol)initWithPluginType:(id)type
{
  typeCopy = type;
  v8.receiver = self;
  v8.super_class = NETunnelProviderProtocol;
  v5 = [(NEVPNProtocol *)&v8 initWithType:4];
  v6 = v5;
  if (v5)
  {
    [(NETunnelProviderProtocol *)v5 setPluginType:typeCopy];
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

- (void)setPluginType:(id)type
{
  typeCopy = type;
  if (!self->_pluginType)
  {
    v4 = [typeCopy copy];
    pluginType = self->_pluginType;
    self->_pluginType = v4;
  }

  pluginType = [(NETunnelProviderProtocol *)self pluginType];
  v7 = [NETunnelProviderProtocol isLegacyPluginType:pluginType];

  if (v7)
  {
    self->super._keychainDomain = 0;
    selfCopy2 = self;
    v10 = 0;
  }

  else
  {
    self->super._keychainDomain = 1;
    v10 = @"com.apple.managed.vpn.shared";
    selfCopy2 = self;
  }

  objc_setProperty_atomic(selfCopy2, v8, v10, 88);
}

+ (BOOL)isLegacyPluginType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.cisco.anyconnect.applevpn.plugin"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"com.apple.ac-otc-authen.vpn.plugin") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"net.juniper.sslvpn"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy hasSuffix:@".vpnplugin"];
  }

  return v4;
}

@end
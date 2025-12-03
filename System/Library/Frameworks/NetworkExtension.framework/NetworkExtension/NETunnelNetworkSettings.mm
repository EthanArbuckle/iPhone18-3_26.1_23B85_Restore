@interface NETunnelNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NETunnelNetworkSettings)initWithCoder:(id)coder;
- (NETunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NETunnelNetworkSettings

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy || (v6 = CFDICTIONARY_TYPE, CFGetTypeID(dictionaryCopy) != v6))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Legacy dictionary is not a valid dictionary";
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v7 = NEGetValueWithType(v5, *MEMORY[0x1E6982368], CFDICTIONARY_TYPE);
  if (!v7)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Legacy dictionary is missing a VPN dictionary";
      goto LABEL_23;
    }

LABEL_15:

    v11 = 0;
    goto LABEL_16;
  }

  v8 = NEGetValueWithType(v7, *MEMORY[0x1E6982850], CFSTRING_TYPE);
  if (!v8 || (v9 = v8, !NEGetAddressFamilyFromString(v8)))
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v19 = "Legacy dictionary does not have a remote address string in its VPN dictionary";
LABEL_23:
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, v19, buf, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v22.receiver = self;
  v22.super_class = NETunnelNetworkSettings;
  v10 = [(NETunnelNetworkSettings *)&v22 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_tunnelRemoteAddress, v9);
    v12 = NEGetValueWithType(v5, *MEMORY[0x1E6982330], CFDICTIONARY_TYPE);
    if (v12)
    {
      v13 = v12;
      if (CFDictionaryGetCount(v12) >= 1)
      {
        if (CFDictionaryContainsKey(v13, *MEMORY[0x1E69823D8]) || (v20 = *MEMORY[0x1E69823D0], CFDictionaryContainsKey(v13, *MEMORY[0x1E69823D0])) && (v21 = NEGetValueWithType(v13, v20, CFARRAY_TYPE)) != 0 && CFArrayGetCount(v21))
        {
          v14 = [[NEDNSSettings alloc] initFromLegacyDictionary:v13];
          [(NETunnelNetworkSettings *)v11 setDNSSettings:v14];
        }
      }
    }

    v15 = NEGetValueWithType(v5, *MEMORY[0x1E6982360], CFDICTIONARY_TYPE);
    if (v15)
    {
      v16 = v15;
      if (CFDictionaryGetCount(v15) >= 1)
      {
        self = [[NEProxySettings alloc] initFromLegacyDictionary:v16];
        [(NETunnelNetworkSettings *)v11 setProxySettings:self];
LABEL_16:
      }
    }
  }

  return v11;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  tunnelRemoteAddress = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];

  if (tunnelRemoteAddress)
  {
    tunnelRemoteAddress2 = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
    v7 = NEGetAddressFamilyFromString(tunnelRemoteAddress2);

    if (v7)
    {
      v8 = 1;
      goto LABEL_7;
    }

    v9 = @"Invalid NETunnelNetworkSettings tunnelRemoteAddress";
  }

  else
  {
    v9 = @"Missing NETunnelNetworkSettings tunnelRemoteAddress";
  }

  [NEConfiguration addError:v9 toList:errorsCopy];
  v8 = 0;
LABEL_7:
  dNSSettings = [(NETunnelNetworkSettings *)self DNSSettings];
  if (dNSSettings)
  {
    v11 = dNSSettings;
    dNSSettings2 = [(NETunnelNetworkSettings *)self DNSSettings];
    v13 = [dNSSettings2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v13;
  }

  proxySettings = [(NETunnelNetworkSettings *)self proxySettings];
  if (proxySettings)
  {
    v15 = proxySettings;
    proxySettings2 = [(NETunnelNetworkSettings *)self proxySettings];
    v17 = [proxySettings2 checkValidityAndCollectErrors:errorsCopy];

    v8 &= v17;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  tunnelRemoteAddress = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
  v6 = [v4 initWithTunnelRemoteAddress:tunnelRemoteAddress];

  dNSSettings = [(NETunnelNetworkSettings *)self DNSSettings];
  [v6 setDNSSettings:dNSSettings];

  proxySettings = [(NETunnelNetworkSettings *)self proxySettings];
  [v6 setProxySettings:proxySettings];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tunnelRemoteAddress = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
  [coderCopy encodeObject:tunnelRemoteAddress forKey:@"tunnelRemoteAddress"];

  dNSSettings = [(NETunnelNetworkSettings *)self DNSSettings];
  [coderCopy encodeObject:dNSSettings forKey:@"DNSSettings"];

  proxySettings = [(NETunnelNetworkSettings *)self proxySettings];
  [coderCopy encodeObject:proxySettings forKey:@"proxySettings"];
}

- (NETunnelNetworkSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NETunnelNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tunnelRemoteAddress"];
    tunnelRemoteAddress = v5->_tunnelRemoteAddress;
    v5->_tunnelRemoteAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DNSSettings"];
    DNSSettings = v5->_DNSSettings;
    v5->_DNSSettings = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxySettings"];
    proxySettings = v5->_proxySettings;
    v5->_proxySettings = v10;
  }

  return v5;
}

- (NETunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address
{
  v5 = address;
  v9.receiver = self;
  v9.super_class = NETunnelNetworkSettings;
  v6 = [(NETunnelNetworkSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tunnelRemoteAddress, address);
  }

  return v7;
}

@end
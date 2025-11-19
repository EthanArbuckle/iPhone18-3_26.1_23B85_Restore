@interface NETunnelNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NETunnelNetworkSettings)initWithCoder:(id)a3;
- (NETunnelNetworkSettings)initWithTunnelRemoteAddress:(NSString *)address;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NETunnelNetworkSettings

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v6 = CFDICTIONARY_TYPE, CFGetTypeID(v4) != v6))
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

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];

  if (v5)
  {
    v6 = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
    v7 = NEGetAddressFamilyFromString(v6);

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

  [NEConfiguration addError:v9 toList:v4];
  v8 = 0;
LABEL_7:
  v10 = [(NETunnelNetworkSettings *)self DNSSettings];
  if (v10)
  {
    v11 = v10;
    v12 = [(NETunnelNetworkSettings *)self DNSSettings];
    v13 = [v12 checkValidityAndCollectErrors:v4];

    v8 &= v13;
  }

  v14 = [(NETunnelNetworkSettings *)self proxySettings];
  if (v14)
  {
    v15 = v14;
    v16 = [(NETunnelNetworkSettings *)self proxySettings];
    v17 = [v16 checkValidityAndCollectErrors:v4];

    v8 &= v17;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
  v6 = [v4 initWithTunnelRemoteAddress:v5];

  v7 = [(NETunnelNetworkSettings *)self DNSSettings];
  [v6 setDNSSettings:v7];

  v8 = [(NETunnelNetworkSettings *)self proxySettings];
  [v6 setProxySettings:v8];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NETunnelNetworkSettings *)self tunnelRemoteAddress];
  [v4 encodeObject:v5 forKey:@"tunnelRemoteAddress"];

  v6 = [(NETunnelNetworkSettings *)self DNSSettings];
  [v4 encodeObject:v6 forKey:@"DNSSettings"];

  v7 = [(NETunnelNetworkSettings *)self proxySettings];
  [v4 encodeObject:v7 forKey:@"proxySettings"];
}

- (NETunnelNetworkSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETunnelNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tunnelRemoteAddress"];
    tunnelRemoteAddress = v5->_tunnelRemoteAddress;
    v5->_tunnelRemoteAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DNSSettings"];
    DNSSettings = v5->_DNSSettings;
    v5->_DNSSettings = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proxySettings"];
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
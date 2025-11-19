@interface NEPacketTunnelNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEPacketTunnelNetworkSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEPacketTunnelNetworkSettings

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = NEPacketTunnelNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v29 initFromLegacyDictionary:v4];
  if (!v5)
  {
LABEL_13:
    v18 = 0;
    goto LABEL_22;
  }

  v6 = NEGetValueWithType(v4, *MEMORY[0x1E6982368], CFDICTIONARY_TYPE);
  if (!v6)
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "legacy dictionary is missing a VPN dictionary", v28, 2u);
    }

    goto LABEL_13;
  }

  v7 = v6;
  v8 = *MEMORY[0x1E69827B0];
  if (NEGetValueWithType(v6, *MEMORY[0x1E69827B0], CFNUMBER_TYPE))
  {
    v9 = NEGetValueWithType(v7, v8, CFNUMBER_TYPE);
    v10 = v5[7];
    v5[7] = v9;
  }

  v11 = NEGetValueWithType(v4, *MEMORY[0x1E6982338], CFDICTIONARY_TYPE);
  if (v11)
  {
    v12 = v11;
    if (CFDictionaryGetCount(v11) >= 1)
    {
      v13 = *MEMORY[0x1E6982488];
      if (CFDictionaryContainsKey(v12, *MEMORY[0x1E6982488]))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v12);
        if (MutableCopy)
        {
          v15 = MutableCopy;
          CFDictionaryRemoveValue(MutableCopy, v13);
          v16 = [[NEIPv4Settings alloc] initFromLegacyDictionary:v15];
          [v5 setIPv4Settings:v16];

          CFRelease(v15);
        }
      }

      else
      {
        v19 = [[NEIPv4Settings alloc] initFromLegacyDictionary:v12];
        [v5 setIPv4Settings:v19];
      }
    }
  }

  v20 = NEGetValueWithType(v4, *MEMORY[0x1E6982340], CFDICTIONARY_TYPE);
  if (v20)
  {
    v21 = v20;
    if (CFDictionaryGetCount(v20) >= 1)
    {
      v22 = *MEMORY[0x1E69824E0];
      if (CFDictionaryContainsKey(v21, *MEMORY[0x1E69824E0]))
      {
        v23 = CFDictionaryCreateMutableCopy(0, 0, v21);
        if (v23)
        {
          v24 = v23;
          CFDictionaryRemoveValue(v23, v22);
          v25 = [[NEIPv6Settings alloc] initFromLegacyDictionary:v24];
          [v5 setIPv6Settings:v25];

          CFRelease(v24);
        }
      }

      else
      {
        v26 = [[NEIPv6Settings alloc] initFromLegacyDictionary:v21];
        [v5 setIPv6Settings:v26];
      }
    }
  }

  v18 = v5;
LABEL_22:

  return v18;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"{"];
  v4 = [(NEPacketTunnelNetworkSettings *)self descriptionWithIndent:0 options:0];
  [v3 appendString:v4];

  [v3 appendString:@"\n}"];

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEPacketTunnelNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v15 checkValidityAndCollectErrors:v4];
  v6 = [(NEPacketTunnelNetworkSettings *)self IPv4Settings];
  if (v6)
  {
    v7 = v6;
    v8 = [(NEPacketTunnelNetworkSettings *)self IPv4Settings];
    v9 = [v8 checkValidityAndCollectErrors:v4];

    v5 &= v9;
  }

  v10 = [(NEPacketTunnelNetworkSettings *)self IPv6Settings];
  if (v10)
  {
    v11 = v10;
    v12 = [(NEPacketTunnelNetworkSettings *)self IPv6Settings];
    v13 = [v12 checkValidityAndCollectErrors:v4];

    v5 &= v13;
  }

  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = NEPacketTunnelNetworkSettings;
  v4 = [(NETunnelNetworkSettings *)&v10 copyWithZone:a3];
  v5 = [(NEPacketTunnelNetworkSettings *)self IPv4Settings];
  [v4 setIPv4Settings:v5];

  v6 = [(NEPacketTunnelNetworkSettings *)self IPv6Settings];
  [v4 setIPv6Settings:v6];

  v7 = [(NEPacketTunnelNetworkSettings *)self tunnelOverheadBytes];
  [v4 setTunnelOverheadBytes:v7];

  v8 = [(NEPacketTunnelNetworkSettings *)self MTU];
  [v4 setMTU:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = NEPacketTunnelNetworkSettings;
  v4 = a3;
  [(NETunnelNetworkSettings *)&v9 encodeWithCoder:v4];
  v5 = [(NEPacketTunnelNetworkSettings *)self IPv4Settings:v9.receiver];
  [v4 encodeObject:v5 forKey:@"IPv4Settings"];

  v6 = [(NEPacketTunnelNetworkSettings *)self IPv6Settings];
  [v4 encodeObject:v6 forKey:@"IPv6Settings"];

  v7 = [(NEPacketTunnelNetworkSettings *)self tunnelOverheadBytes];
  [v4 encodeObject:v7 forKey:@"TunnelOverheadBytes"];

  v8 = [(NEPacketTunnelNetworkSettings *)self MTU];
  [v4 encodeObject:v8 forKey:@"MTU"];
}

- (NEPacketTunnelNetworkSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NEPacketTunnelNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv4Settings"];
    IPv4Settings = v5->_IPv4Settings;
    v5->_IPv4Settings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv6Settings"];
    IPv6Settings = v5->_IPv6Settings;
    v5->_IPv6Settings = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TunnelOverheadBytes"];
    tunnelOverheadBytes = v5->_tunnelOverheadBytes;
    v5->_tunnelOverheadBytes = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MTU"];
    MTU = v5->_MTU;
    v5->_MTU = v12;
  }

  return v5;
}

@end
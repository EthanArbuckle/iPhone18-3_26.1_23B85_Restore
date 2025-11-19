@interface NEVPNProtocolPPP
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3;
- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3;
- (NEVPNProtocolPPP)initWithCoder:(id)a3;
- (NEVPNProtocolPPP)initWithType:(int64_t)a3;
- (id)copyLegacyDictionaryComplete:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEVPNProtocolPPP

- (BOOL)updateWithServiceProtocolsFromService:(__SCNetworkService *)a3
{
  v13.receiver = self;
  v13.super_class = NEVPNProtocolPPP;
  v5 = [(NEVPNProtocol *)&v13 updateWithServiceProtocolsFromService:?];
  if (v5)
  {
    v6 = [NEConfiguration copyConfigurationForProtocol:a3 inService:?];
    if (v6)
    {
      v7 = v6;
      v8 = [[NEIPv4Settings alloc] initFromLegacyDictionary:v6];
      [(NEVPNProtocolPPP *)self setIPv4Settings:v8];

      CFRelease(v7);
    }

    v9 = [NEConfiguration copyConfigurationForProtocol:a3 inService:?];
    if (v9)
    {
      v10 = v9;
      v11 = [[NEIPv6Settings alloc] initFromLegacyDictionary:v9];
      [(NEVPNProtocolPPP *)self setIPv6Settings:v11];

      CFRelease(v10);
    }
  }

  return v5;
}

- (BOOL)setServiceProtocolsInService:(__SCNetworkService *)a3
{
  v13.receiver = self;
  v13.super_class = NEVPNProtocolPPP;
  if (![(NEVPNProtocol *)&v13 setServiceProtocolsInService:?])
  {
    return 0;
  }

  v5 = [(NEVPNProtocolPPP *)self IPv4Settings];

  if (v5)
  {
    v6 = [(NEVPNProtocolPPP *)self IPv4Settings];
    v5 = [v6 copyLegacyDictionary];
  }

  v7 = [NEConfiguration setConfiguration:v5 forProtocol:*MEMORY[0x1E69823A0] inService:a3];
  if (v5)
  {
    CFRelease(v5);
  }

  if (!v7)
  {
    return 0;
  }

  v8 = [(NEVPNProtocolPPP *)self IPv6Settings];

  if (v8)
  {
    v9 = [(NEVPNProtocolPPP *)self IPv6Settings];
    v10 = [v9 copyLegacyDictionary];
  }

  else
  {
    v10 = 0;
  }

  v11 = [NEConfiguration setConfiguration:v10 forProtocol:*MEMORY[0x1E69823A8] inService:a3];
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
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
      goto LABEL_25;
    }
  }

  else
  {
    v8 = [(NEVPNProtocolPPP *)self init];
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  v9 = [v4 objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
  v10 = isa_nsnumber(v9);

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"__NEVPNKeychainDomain"];
    v8->super._keychainDomain = [v11 intValue];
  }

  v12 = *MEMORY[0x1E69825B0];
  v13 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69825B0]];
  v14 = isa_nsstring(v13);

  if (v14)
  {
    v15 = [v4 objectForKeyedSubscript:v12];
    [(NEVPNProtocol *)v8 setServerAddress:v15];
  }

  v16 = *MEMORY[0x1E6982570];
  v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982570]];
  v18 = isa_nsstring(v17);

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:v16];
    [(NEVPNProtocol *)v8 setUsername:v19];
  }

  v8->_authenticationMethod = 1;
  v20 = *MEMORY[0x1E6982578];
  v21 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982578]];
  v22 = isa_nsstring(v21);

  if (v22)
  {
    v23 = [NEKeychainItem alloc];
    v24 = [v4 objectForKeyedSubscript:v20];
    keychainDomain = v8->super._keychainDomain;
    v27 = objc_getProperty(v8, v26, 88, 1);
    v28 = [(NEKeychainItem *)v23 initWithLegacyIdentifier:v24 domain:keychainDomain accessGroup:v27];
    [(NEVPNProtocol *)v8 setPasswordKeychainItem:v28];
    goto LABEL_13;
  }

  v24 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982588]];
  if (!isa_nsarray(v24) || ![v24 containsObject:*MEMORY[0x1E6982900]])
  {
    goto LABEL_22;
  }

  v27 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982568]];
  if (isa_nsarray(v27) && [v27 count])
  {
    v28 = [v27 objectAtIndexedSubscript:0];
    if (isa_nsstring(v28))
    {
      if (([(NEKeychainItem *)v28 isEqualToString:@"EAP-RSA"]& 1) != 0)
      {
        v29 = 2;
      }

      else if (([(NEKeychainItem *)v28 isEqualToString:@"EAP-TLS"]& 1) != 0)
      {
        v29 = 3;
      }

      else
      {
        if (![(NEKeychainItem *)v28 isEqualToString:@"EAP-KRB"])
        {
          goto LABEL_13;
        }

        v29 = 4;
      }

      v8->_authenticationMethod = v29;
    }

LABEL_13:
  }

LABEL_22:
  v30 = *MEMORY[0x1E69825F8];
  v31 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69825F8]];
  v32 = isa_nsnumber(v31);

  if (v32)
  {
    v33 = [v4 objectForKeyedSubscript:v30];
    v8->_verboseLoggingEnabled = [v33 BOOLValue];
  }

  [(NEVPNProtocol *)v8 initDisconnectOptions:v4];
LABEL_25:

  return v8;
}

- (id)copyLegacyDictionaryComplete:(BOOL)a3
{
  v3 = a3;
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(NEVPNProtocol *)self serverAddress];

  if (v6)
  {
    v7 = [(NEVPNProtocol *)self serverAddress];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69825B0]];
  }

  v8 = [(NEVPNProtocol *)self username];

  if (v8)
  {
    v9 = [(NEVPNProtocol *)self username];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6982570]];
  }

  if ([(NEVPNProtocolPPP *)self authenticationMethod]== 1 && ([(NEVPNProtocol *)self passwordKeychainItem], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(NEVPNProtocol *)self passwordKeychainItem];
    v12 = [v11 password];

    v13 = [(NEVPNProtocol *)self passwordKeychainItem];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 password];
    }

    else
    {
      v21 = [v13 identifier];

      if (!v21)
      {
        goto LABEL_22;
      }

      v14 = [(NEVPNProtocol *)self passwordKeychainItem];
      v15 = [v14 identifier];
    }

    v22 = v15;

    if (v22)
    {
      [v5 setObject:v22 forKeyedSubscript:*MEMORY[0x1E6982578]];
      [v5 setObject:*MEMORY[0x1E69828F8] forKeyedSubscript:*MEMORY[0x1E6982580]];
    }
  }

  else
  {
    if ([(NEVPNProtocolPPP *)self authenticationMethod]== 2)
    {
      v28[0] = *MEMORY[0x1E6982900];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
      [v5 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982588]];

      v17 = *MEMORY[0x1E6982568];
      v18 = &unk_1F38BA8F8;
    }

    else if ([(NEVPNProtocolPPP *)self authenticationMethod]== 3)
    {
      v27 = *MEMORY[0x1E6982900];
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [v5 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6982588]];

      v17 = *MEMORY[0x1E6982568];
      v18 = &unk_1F38BA910;
    }

    else if ([(NEVPNProtocolPPP *)self authenticationMethod]== 4)
    {
      v26 = *MEMORY[0x1E6982900];
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
      [v5 setObject:v20 forKeyedSubscript:*MEMORY[0x1E6982588]];

      v17 = *MEMORY[0x1E6982568];
      v18 = &unk_1F38BA928;
    }

    else
    {
      if ([(NEVPNProtocolPPP *)self authenticationMethod]!= 5)
      {
        goto LABEL_22;
      }

      v18 = &unk_1F38BA748;
      v17 = @"TokenCard";
    }

    [v5 setObject:v18 forKeyedSubscript:v17];
  }

LABEL_22:
  if (v3)
  {
    if ([(NEVPNProtocolPPP *)self verboseLoggingEnabled])
    {
      v23 = &unk_1F38BA748;
    }

    else
    {
      v23 = &unk_1F38BA760;
    }

    [v5 setObject:v23 forKeyedSubscript:*MEMORY[0x1E69825F8]];
    [(NEVPNProtocol *)self addDisconnectOptions:v5];
    [v5 setObject:&unk_1F38BA748 forKeyedSubscript:*MEMORY[0x1E6982560]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E6982590]];
    [v5 setObject:&unk_1F38BA748 forKeyedSubscript:*MEMORY[0x1E6982598]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E69825A0]];
    [v5 setObject:&unk_1F38BA778 forKeyedSubscript:*MEMORY[0x1E69825A8]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E69825B8]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E69825C0]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E69825C8]];
    [v5 setObject:&unk_1F38BA760 forKeyedSubscript:*MEMORY[0x1E69825D0]];
    [v5 setObject:&unk_1F38BA790 forKeyedSubscript:*MEMORY[0x1E69825D8]];
    [v5 setObject:&unk_1F38BA748 forKeyedSubscript:*MEMORY[0x1E69825E0]];
    [v5 setObject:&unk_1F38BA7A8 forKeyedSubscript:*MEMORY[0x1E69825E8]];
    [v5 setObject:&unk_1F38BA7C0 forKeyedSubscript:*MEMORY[0x1E69825F0]];
    [v5 setObject:@"/var/log/ppp.log" forKeyedSubscript:@"Logfile"];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NEVPNProtocolPPP;
  if ([-[NEVPNProtocolPPP class](&v17 class)])
  {
    v16.receiver = self;
    v16.super_class = NEVPNProtocolPPP;
    v5 = [(NEVPNProtocol *)&v16 checkValidityAndCollectErrors:v4];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(NEVPNProtocolPPP *)self IPv4Settings];
  if (v6)
  {
    v7 = v6;
    v8 = [(NEVPNProtocolPPP *)self IPv4Settings];
    v9 = [v8 checkValidityAndCollectErrors:v4];

    v5 &= v9;
  }

  v10 = [(NEVPNProtocolPPP *)self IPv6Settings];
  if (v10)
  {
    v11 = v10;
    v12 = [(NEVPNProtocolPPP *)self IPv6Settings];
    v13 = [v12 checkValidityAndCollectErrors:v4];

    v5 &= v13;
  }

  if ([(NEVPNProtocolPPP *)self authenticationMethod]== 3)
  {
    v14 = [(NEVPNProtocol *)self identityReferenceInternal];

    if (!v14)
    {
      [NEConfiguration addError:v4 toList:?];
      v5 = 0;
    }
  }

  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NEVPNProtocolPPP;
  v4 = [(NEVPNProtocol *)&v8 copyWithZone:a3];
  [v4 setAuthenticationMethod:{-[NEVPNProtocolPPP authenticationMethod](self, "authenticationMethod")}];
  [v4 setVerboseLoggingEnabled:{-[NEVPNProtocolPPP verboseLoggingEnabled](self, "verboseLoggingEnabled")}];
  v5 = [(NEVPNProtocolPPP *)self IPv4Settings];
  [v4 setIPv4Settings:v5];

  v6 = [(NEVPNProtocolPPP *)self IPv6Settings];
  [v4 setIPv6Settings:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NEVPNProtocolPPP;
  v4 = a3;
  [(NEVPNProtocol *)&v7 encodeWithCoder:v4];
  [v4 encodeInt32:-[NEVPNProtocolPPP authenticationMethod](self forKey:{"authenticationMethod", v7.receiver, v7.super_class), @"AuthenticationMethod"}];
  [v4 encodeBool:-[NEVPNProtocolPPP verboseLoggingEnabled](self forKey:{"verboseLoggingEnabled"), @"VerboseLoggingEnabled"}];
  v5 = [(NEVPNProtocolPPP *)self IPv4Settings];
  [v4 encodeObject:v5 forKey:@"IPv4Settings"];

  v6 = [(NEVPNProtocolPPP *)self IPv6Settings];
  [v4 encodeObject:v6 forKey:@"IPv6Settings"];
}

- (NEVPNProtocolPPP)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEVPNProtocolPPP;
  v5 = [(NEVPNProtocol *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_authenticationMethod = [v4 decodeInt32ForKey:@"AuthenticationMethod"];
    v5->_verboseLoggingEnabled = [v4 decodeBoolForKey:@"VerboseLoggingEnabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv4Settings"];
    IPv4Settings = v5->_IPv4Settings;
    v5->_IPv4Settings = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IPv6Settings"];
    IPv6Settings = v5->_IPv6Settings;
    v5->_IPv6Settings = v8;
  }

  return v5;
}

- (NEVPNProtocolPPP)initWithType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = NEVPNProtocolPPP;
  v3 = [(NEVPNProtocol *)&v10 initWithType:a3];
  v4 = v3;
  if (v3)
  {
    v3->_authenticationMethod = 1;
    v5 = [[NEIPv4Settings alloc] initWithConfigMethod:2];
    IPv4Settings = v4->_IPv4Settings;
    v4->_IPv4Settings = v5;

    v7 = [[NEIPv6Settings alloc] initWithConfigMethod:1];
    IPv6Settings = v4->_IPv6Settings;
    v4->_IPv6Settings = v7;
  }

  return v4;
}

@end
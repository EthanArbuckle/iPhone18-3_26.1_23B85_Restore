@interface AppleEthernetIPv4Configurator
- (AppleEthernetIPv4Configurator)init;
- (void)removeManualIPv4ConfigurationSettings:(id)a3;
- (void)setIPv4ConfigMethodForConfig:(id)a3 fromSettingsDictionary:(id)a4;
- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4;
- (void)updateClientIDForNewConfig:(id)a3 inSettings:(id)a4;
- (void)updateIPv4ConfigurationMethodFromCurrentConfig:(id)a3 toNewConfig:(id)a4 inSettings:(id)a5;
- (void)updateManualIPv4Settings:(id)a3 forConfig:(id)a4;
- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5;
@end

@implementation AppleEthernetIPv4Configurator

- (AppleEthernetIPv4Configurator)init
{
  v5.receiver = self;
  v5.super_class = AppleEthernetIPv4Configurator;
  v2 = [(AppleEthernetIPv4Configurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppleEthernetProtocolConfigurator *)v2 setProtocol:kSCEntNetIPv4];
    v3->_forceManualConfiguration = 0;
  }

  return v3;
}

- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  [(AppleEthernetIPv4Configurator *)self updateIPv4ConfigurationMethodFromCurrentConfig:v8 toNewConfig:v9 inSettings:v10];
  [(AppleEthernetIPv4Configurator *)self updateClientIDForNewConfig:v9 inSettings:v10];
  if ([v9 ipv4Config] == &dword_0 + 2)
  {
    [(AppleEthernetIPv4Configurator *)self updateManualIPv4Settings:v10 forConfig:v9];
  }

  else if ([v8 ipv4Config] == &dword_0 + 2)
  {
    [(AppleEthernetIPv4Configurator *)self removeManualIPv4ConfigurationSettings:v10];
  }
}

- (void)updateClientIDForNewConfig:(id)a3 inSettings:(id)a4
{
  v9 = a3;
  v5 = a4;
  if ([v9 ipv4Config] || (objc_msgSend(v9, "dhcpClientID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    [v5 removeObjectForKey:kSCPropNetIPv4DHCPClientID];
  }

  else
  {
    v8 = [v9 dhcpClientID];
    [v5 setObject:v8 forKeyedSubscript:kSCPropNetIPv4DHCPClientID];
  }
}

- (void)updateManualIPv4Settings:(id)a3 forConfig:(id)a4
{
  v13 = a3;
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v8 = [v5 ipv4AddressManual];

  if (v8)
  {
    v9 = [v5 ipv4AddressManual];
    [v6 addObject:v9];
  }

  [v13 setObject:v6 forKeyedSubscript:kSCPropNetIPv4Addresses];
  v10 = [v5 ipv4SubnetMaskManual];

  if (v10)
  {
    v11 = [v5 ipv4SubnetMaskManual];
    [v7 addObject:v11];
  }

  [v13 setObject:v7 forKeyedSubscript:kSCPropNetIPv4SubnetMasks];
  v12 = [v5 ipv4RouterAddressManual];
  [v13 setObject:v12 forKeyedSubscript:kSCPropNetIPv4Router];
}

- (void)removeManualIPv4ConfigurationSettings:(id)a3
{
  v3 = a3;
  [v3 removeObjectForKey:kSCPropNetIPv4Addresses];
  [v3 removeObjectForKey:kSCPropNetIPv4SubnetMasks];
  [v3 removeObjectForKey:kSCPropNetIPv4Router];
}

- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4
{
  v55 = a3;
  v6 = [(AppleEthernetProtocolConfigurator *)self delegate];
  sub_3018();
  v8 = [v7 getPersistentSettingsForKey:? inService:?];

  [(AppleEthernetIPv4Configurator *)self setIPv4ConfigMethodForConfig:v55 fromSettingsDictionary:v8];
  v9 = [v55 ipv4Config];
  v10 = [(AppleEthernetProtocolConfigurator *)self delegate];
  if (v9 == &dword_0 + 2)
  {
    sub_3018();
    v12 = [v11 getManualSettingsForKey:? inService:?];

    v13 = [v12 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
    if ([v13 count])
    {
      v14 = [v13 objectAtIndex:0];
      [sub_3008(v14 v15];
    }

    v22 = [v12 objectForKeyedSubscript:kSCPropNetIPv4SubnetMasks];
    if ([v22 count])
    {
      v23 = [v22 objectAtIndex:0];
      [sub_3008(v23 v24];
    }

    v31 = [v12 objectForKeyedSubscript:kSCPropNetIPv4Router];
    [sub_3008(v31 v32];
    goto LABEL_13;
  }

  sub_3018();
  v12 = [v39 getDynamicSettingsForKey:? inService:?];

  v13 = [v12 objectForKeyedSubscript:kSCPropNetIPv4Addresses];
  if ([v13 count])
  {
    v40 = [v13 objectAtIndex:0];
    [v55 setIpv4Address:v40];
  }

  v22 = [v12 objectForKeyedSubscript:kSCPropNetIPv4SubnetMasks];
  if ([v22 count])
  {
    v41 = [v22 objectAtIndex:0];
    [v55 setIpv4SubnetMask:v41];
  }

  v42 = [v12 objectForKeyedSubscript:kSCPropNetIPv4Router];
  [v55 setIpv4RouterAddress:v42];

  if (![v55 ipv4Config])
  {
    v43 = [(AppleEthernetProtocolConfigurator *)self delegate];
    sub_3018();
    v45 = [v44 getManualSettingsForKey:? inService:?];

    v46 = [v45 objectForKeyedSubscript:kSCPropNetIPv4DHCPClientID];
    [sub_3008(v46 v47];
    v12 = v45;
LABEL_13:
  }
}

- (void)setIPv4ConfigMethodForConfig:(id)a3 fromSettingsDictionary:(id)a4
{
  v10 = a3;
  v6 = [a4 objectForKeyedSubscript:kSCPropNetIPv4ConfigMethod];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:kSCValNetIPv4ConfigMethodDHCP])
    {
      v8 = v10;
      v9 = 0;
LABEL_8:
      [v8 setIpv4Config:v9];
      goto LABEL_9;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodManual])
    {
      v8 = v10;
      v9 = 2;
      goto LABEL_8;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodBOOTP])
    {
      v8 = v10;
      v9 = 1;
      goto LABEL_8;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodINFORM])
    {
      [v10 setIpv4Config:2];
      self->_forceManualConfiguration = 1;
    }
  }

LABEL_9:
}

- (void)updateIPv4ConfigurationMethodFromCurrentConfig:(id)a3 toNewConfig:(id)a4 inSettings:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (self->_forceManualConfiguration)
  {
    [v9 setObject:kSCValNetIPv4ConfigMethodManual forKeyedSubscript:kSCPropNetIPv4ConfigMethod];
    self->_forceManualConfiguration = 0;
  }

  v11 = [v15 ipv4Config];
  if (v11 != [v8 ipv4Config])
  {
    v12 = [v8 ipv4Config];
    v13 = &kSCValNetIPv4ConfigMethodBOOTP;
    if (v12 != &dword_0 + 1)
    {
      v13 = &kSCValNetIPv4ConfigMethodDHCP;
    }

    if (v12 == &dword_0 + 2)
    {
      v13 = &kSCValNetIPv4ConfigMethodManual;
    }

    v14 = *v13;
    [v10 setObject:v14 forKeyedSubscript:kSCPropNetIPv4ConfigMethod];
  }
}

@end
@interface AppleEthernetIPv4Configurator
- (AppleEthernetIPv4Configurator)init;
- (void)removeManualIPv4ConfigurationSettings:(id)settings;
- (void)setIPv4ConfigMethodForConfig:(id)config fromSettingsDictionary:(id)dictionary;
- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service;
- (void)updateClientIDForNewConfig:(id)config inSettings:(id)settings;
- (void)updateIPv4ConfigurationMethodFromCurrentConfig:(id)config toNewConfig:(id)newConfig inSettings:(id)settings;
- (void)updateManualIPv4Settings:(id)settings forConfig:(id)config;
- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig;
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

- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig
{
  settingsCopy = settings;
  configCopy = config;
  newConfigCopy = newConfig;
  [(AppleEthernetIPv4Configurator *)self updateIPv4ConfigurationMethodFromCurrentConfig:configCopy toNewConfig:newConfigCopy inSettings:settingsCopy];
  [(AppleEthernetIPv4Configurator *)self updateClientIDForNewConfig:newConfigCopy inSettings:settingsCopy];
  if ([newConfigCopy ipv4Config] == &dword_0 + 2)
  {
    [(AppleEthernetIPv4Configurator *)self updateManualIPv4Settings:settingsCopy forConfig:newConfigCopy];
  }

  else if ([configCopy ipv4Config] == &dword_0 + 2)
  {
    [(AppleEthernetIPv4Configurator *)self removeManualIPv4ConfigurationSettings:settingsCopy];
  }
}

- (void)updateClientIDForNewConfig:(id)config inSettings:(id)settings
{
  configCopy = config;
  settingsCopy = settings;
  if ([configCopy ipv4Config] || (objc_msgSend(configCopy, "dhcpClientID"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    [settingsCopy removeObjectForKey:kSCPropNetIPv4DHCPClientID];
  }

  else
  {
    dhcpClientID = [configCopy dhcpClientID];
    [settingsCopy setObject:dhcpClientID forKeyedSubscript:kSCPropNetIPv4DHCPClientID];
  }
}

- (void)updateManualIPv4Settings:(id)settings forConfig:(id)config
{
  settingsCopy = settings;
  configCopy = config;
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  ipv4AddressManual = [configCopy ipv4AddressManual];

  if (ipv4AddressManual)
  {
    ipv4AddressManual2 = [configCopy ipv4AddressManual];
    [v6 addObject:ipv4AddressManual2];
  }

  [settingsCopy setObject:v6 forKeyedSubscript:kSCPropNetIPv4Addresses];
  ipv4SubnetMaskManual = [configCopy ipv4SubnetMaskManual];

  if (ipv4SubnetMaskManual)
  {
    ipv4SubnetMaskManual2 = [configCopy ipv4SubnetMaskManual];
    [v7 addObject:ipv4SubnetMaskManual2];
  }

  [settingsCopy setObject:v7 forKeyedSubscript:kSCPropNetIPv4SubnetMasks];
  ipv4RouterAddressManual = [configCopy ipv4RouterAddressManual];
  [settingsCopy setObject:ipv4RouterAddressManual forKeyedSubscript:kSCPropNetIPv4Router];
}

- (void)removeManualIPv4ConfigurationSettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy removeObjectForKey:kSCPropNetIPv4Addresses];
  [settingsCopy removeObjectForKey:kSCPropNetIPv4SubnetMasks];
  [settingsCopy removeObjectForKey:kSCPropNetIPv4Router];
}

- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service
{
  configCopy = config;
  delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
  sub_3018();
  v8 = [v7 getPersistentSettingsForKey:? inService:?];

  [(AppleEthernetIPv4Configurator *)self setIPv4ConfigMethodForConfig:configCopy fromSettingsDictionary:v8];
  ipv4Config = [configCopy ipv4Config];
  delegate2 = [(AppleEthernetProtocolConfigurator *)self delegate];
  if (ipv4Config == &dword_0 + 2)
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
    [configCopy setIpv4Address:v40];
  }

  v22 = [v12 objectForKeyedSubscript:kSCPropNetIPv4SubnetMasks];
  if ([v22 count])
  {
    v41 = [v22 objectAtIndex:0];
    [configCopy setIpv4SubnetMask:v41];
  }

  v42 = [v12 objectForKeyedSubscript:kSCPropNetIPv4Router];
  [configCopy setIpv4RouterAddress:v42];

  if (![configCopy ipv4Config])
  {
    delegate3 = [(AppleEthernetProtocolConfigurator *)self delegate];
    sub_3018();
    v45 = [v44 getManualSettingsForKey:? inService:?];

    v46 = [v45 objectForKeyedSubscript:kSCPropNetIPv4DHCPClientID];
    [sub_3008(v46 v47];
    v12 = v45;
LABEL_13:
  }
}

- (void)setIPv4ConfigMethodForConfig:(id)config fromSettingsDictionary:(id)dictionary
{
  configCopy = config;
  v6 = [dictionary objectForKeyedSubscript:kSCPropNetIPv4ConfigMethod];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToString:kSCValNetIPv4ConfigMethodDHCP])
    {
      v8 = configCopy;
      v9 = 0;
LABEL_8:
      [v8 setIpv4Config:v9];
      goto LABEL_9;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodManual])
    {
      v8 = configCopy;
      v9 = 2;
      goto LABEL_8;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodBOOTP])
    {
      v8 = configCopy;
      v9 = 1;
      goto LABEL_8;
    }

    if ([v7 isEqualToString:kSCValNetIPv4ConfigMethodINFORM])
    {
      [configCopy setIpv4Config:2];
      self->_forceManualConfiguration = 1;
    }
  }

LABEL_9:
}

- (void)updateIPv4ConfigurationMethodFromCurrentConfig:(id)config toNewConfig:(id)newConfig inSettings:(id)settings
{
  configCopy = config;
  newConfigCopy = newConfig;
  settingsCopy = settings;
  v10 = settingsCopy;
  if (self->_forceManualConfiguration)
  {
    [settingsCopy setObject:kSCValNetIPv4ConfigMethodManual forKeyedSubscript:kSCPropNetIPv4ConfigMethod];
    self->_forceManualConfiguration = 0;
  }

  ipv4Config = [configCopy ipv4Config];
  if (ipv4Config != [newConfigCopy ipv4Config])
  {
    ipv4Config2 = [newConfigCopy ipv4Config];
    v13 = &kSCValNetIPv4ConfigMethodBOOTP;
    if (ipv4Config2 != &dword_0 + 1)
    {
      v13 = &kSCValNetIPv4ConfigMethodDHCP;
    }

    if (ipv4Config2 == &dword_0 + 2)
    {
      v13 = &kSCValNetIPv4ConfigMethodManual;
    }

    v14 = *v13;
    [v10 setObject:v14 forKeyedSubscript:kSCPropNetIPv4ConfigMethod];
  }
}

@end
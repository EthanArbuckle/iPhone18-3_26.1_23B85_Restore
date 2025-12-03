@interface AppleEthernetPrivateRelayConfigurator
- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service;
- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig;
- (void)updateSettingsFromCurrentConfig:(id)config toNewConfig:(id)newConfig forService:(__SCNetworkService *)service;
@end

@implementation AppleEthernetPrivateRelayConfigurator

- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service
{
  configCopy = config;
  delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
  LODWORD(service) = [delegate getPrivateRelayDisabledForService:service];

  [configCopy setPrivacyProxyEnabled:service ^ 1];
}

- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_5E3C();
  }
}

- (void)updateSettingsFromCurrentConfig:(id)config toNewConfig:(id)newConfig forService:(__SCNetworkService *)service
{
  newConfigCopy = newConfig;
  LODWORD(config) = [config privacyProxyEnabled];
  if (config != [newConfigCopy privacyProxyEnabled])
  {
    v9 = [newConfigCopy privacyProxyEnabled] ^ 1;
    delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
    v11 = [delegate setPrivateRelayDisabledForService:service withPrivateRelayDisabled:v9];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v12[0] = 67109376;
      v12[1] = v9;
      v13 = 1024;
      v14 = v11;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "setPrivateRelayDisabledForService %d returned %d\n", v12, 0xEu);
    }
  }
}

@end
@interface AppleEthernetProtocolConfigurator
- (AppleEthernetProtocolConfiguratorDelegate)delegate;
- (void)updateSettingsFromCurrentConfig:(id)config toNewConfig:(id)newConfig forService:(__SCNetworkService *)service;
@end

@implementation AppleEthernetProtocolConfigurator

- (AppleEthernetProtocolConfiguratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSettingsFromCurrentConfig:(id)config toNewConfig:(id)newConfig forService:(__SCNetworkService *)service
{
  configCopy = config;
  newConfigCopy = newConfig;
  v9 = SCNetworkServiceCopyProtocol(service, self->_protocol);
  if (v9)
  {
    v10 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained getPersistentSettingsForKey:self->_protocol inService:service];
    v13 = [v12 mutableCopy];

    if (!v13)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      if (!v14)
      {
LABEL_6:
        CFRelease(v10);
        goto LABEL_7;
      }

      v13 = v14;
    }

    [(AppleEthernetProtocolConfigurator *)self updateSettings:v13 fromCurrentConfig:configCopy toNewConfig:newConfigCopy];
    SCNetworkProtocolSetConfiguration(v10, v13);

    goto LABEL_6;
  }

LABEL_7:
}

@end
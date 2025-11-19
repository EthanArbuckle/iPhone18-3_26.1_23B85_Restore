@interface AppleEthernetProtocolConfigurator
- (AppleEthernetProtocolConfiguratorDelegate)delegate;
- (void)updateSettingsFromCurrentConfig:(id)a3 toNewConfig:(id)a4 forService:(__SCNetworkService *)a5;
@end

@implementation AppleEthernetProtocolConfigurator

- (AppleEthernetProtocolConfiguratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateSettingsFromCurrentConfig:(id)a3 toNewConfig:(id)a4 forService:(__SCNetworkService *)a5
{
  v15 = a3;
  v8 = a4;
  v9 = SCNetworkServiceCopyProtocol(a5, self->_protocol);
  if (v9)
  {
    v10 = v9;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained getPersistentSettingsForKey:self->_protocol inService:a5];
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

    [(AppleEthernetProtocolConfigurator *)self updateSettings:v13 fromCurrentConfig:v15 toNewConfig:v8];
    SCNetworkProtocolSetConfiguration(v10, v13);

    goto LABEL_6;
  }

LABEL_7:
}

@end
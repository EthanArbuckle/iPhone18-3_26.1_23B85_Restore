@interface AppleEthernetPrivateRelayConfigurator
- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4;
- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5;
- (void)updateSettingsFromCurrentConfig:(id)a3 toNewConfig:(id)a4 forService:(__SCNetworkService *)a5;
@end

@implementation AppleEthernetPrivateRelayConfigurator

- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4
{
  v7 = a3;
  v6 = [(AppleEthernetProtocolConfigurator *)self delegate];
  LODWORD(a4) = [v6 getPrivateRelayDisabledForService:a4];

  [v7 setPrivacyProxyEnabled:a4 ^ 1];
}

- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_5E3C();
  }
}

- (void)updateSettingsFromCurrentConfig:(id)a3 toNewConfig:(id)a4 forService:(__SCNetworkService *)a5
{
  v8 = a4;
  LODWORD(a3) = [a3 privacyProxyEnabled];
  if (a3 != [v8 privacyProxyEnabled])
  {
    v9 = [v8 privacyProxyEnabled] ^ 1;
    v10 = [(AppleEthernetProtocolConfigurator *)self delegate];
    v11 = [v10 setPrivateRelayDisabledForService:a5 withPrivateRelayDisabled:v9];

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
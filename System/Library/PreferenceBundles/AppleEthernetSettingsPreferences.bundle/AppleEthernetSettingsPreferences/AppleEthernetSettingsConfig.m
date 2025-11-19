@interface AppleEthernetSettingsConfig
- (AppleEthernetSettingsConfig)init;
- (void)_updatePrivacyProxyFeatureEnabled;
@end

@implementation AppleEthernetSettingsConfig

- (AppleEthernetSettingsConfig)init
{
  v5.receiver = self;
  v5.super_class = AppleEthernetSettingsConfig;
  v2 = [(AppleEthernetSettingsConfig *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppleEthernetSettingsConfig *)v2 setCurrent:1];
    [(AppleEthernetSettingsConfig *)v3 setForgetable:0];
    [(AppleEthernetSettingsConfig *)v3 setJoinable:0];
    [(AppleEthernetSettingsConfig *)v3 setManageable:0];
    [(AppleEthernetSettingsConfig *)v3 setCloudSyncable:0];
    [(AppleEthernetSettingsConfig *)v3 setAutoJoinConfigurable:0];
    [(AppleEthernetSettingsConfig *)v3 setAutoJoinEnabled:0];
    [(AppleEthernetSettingsConfig *)v3 setAutoLoginConfigurable:0];
    [(AppleEthernetSettingsConfig *)v3 setIpv4Config:0];
    [(AppleEthernetSettingsConfig *)v3 setIpv6Config:0];
    [(AppleEthernetSettingsConfig *)v3 setDnsConfig:0];
    [(AppleEthernetSettingsConfig *)v3 setCanRenewLease:0];
    [(AppleEthernetSettingsConfig *)v3 setHttpProxyConfigurable:1];
    [(AppleEthernetSettingsConfig *)v3 setHttpProxyConfig:0];
    [(AppleEthernetSettingsConfig *)v3 _updatePrivacyProxyFeatureEnabled];
  }

  return v3;
}

- (void)_updatePrivacyProxyFeatureEnabled
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_get_global_queue(33, 0);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_43D8;
  v18[3] = &unk_10648;
  v20 = &v25;
  v5 = v3;
  v19 = v5;
  [PrivacyProxyClient getStatus:v4 completionHandler:v18];

  v6 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v5, v6);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_43EC;
  v15 = &unk_10670;
  v17 = &v21;
  v7 = v5;
  v16 = v7;
  [PrivacyProxyClient getUserTier:v4 completionHandler:&v12];

  v8 = dispatch_time(0, 15000000000);
  dispatch_semaphore_wait(v7, v8);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v9 = *(v26 + 24);
    v10 = v22[3];
    *buf = 136315650;
    v30 = "[AppleEthernetSettingsConfig _updatePrivacyProxyFeatureEnabled]";
    v31 = 1024;
    v32 = v9;
    v33 = 1024;
    v34 = v10;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "%s: proxyEnabled %d, userTier %d\n", buf, 0x18u);
  }

  if (*(v26 + 24) == 1)
  {
    if (v22[3] == 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    v11 = 0;
  }

  [(AppleEthernetSettingsConfig *)self setPrivacyProxyTierStatus:v11, v12, v13, v14, v15];
  [(AppleEthernetSettingsConfig *)self setPrivacyProxyEnabled:1];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

@end
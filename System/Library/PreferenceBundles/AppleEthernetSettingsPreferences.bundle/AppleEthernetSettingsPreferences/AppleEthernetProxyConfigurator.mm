@interface AppleEthernetProxyConfigurator
- (AppleEthernetProxyConfigurator)init;
- (void)removeAutomaticProxySettings:(id)settings;
- (void)removeManualProxySettings:(id)settings;
- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service;
- (void)updateAutomaticProxySettings:(id)settings withConfig:(id)config;
- (void)updateManualProxySettings:(id)settings withConfig:(id)config;
- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig;
@end

@implementation AppleEthernetProxyConfigurator

- (AppleEthernetProxyConfigurator)init
{
  v5.receiver = self;
  v5.super_class = AppleEthernetProxyConfigurator;
  v2 = [(AppleEthernetProxyConfigurator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AppleEthernetProtocolConfigurator *)v2 setProtocol:kSCEntNetProxies];
  }

  return v3;
}

- (void)updateSettings:(id)settings fromCurrentConfig:(id)config toNewConfig:(id)newConfig
{
  settingsCopy = settings;
  configCopy = config;
  newConfigCopy = newConfig;
  httpProxyConfig = [configCopy httpProxyConfig];
  if (httpProxyConfig != [newConfigCopy httpProxyConfig])
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [newConfigCopy httpProxyConfig]);
    [settingsCopy setObject:v11 forKeyedSubscript:@"HTTPProxyType"];
  }

  if ([newConfigCopy httpProxyConfig])
  {
    if ([newConfigCopy httpProxyConfig] == &dword_0 + 1)
    {
      if ([configCopy httpProxyConfig] == &dword_0 + 2)
      {
        [(AppleEthernetProxyConfigurator *)self removeAutomaticProxySettings:settingsCopy];
      }

      [settingsCopy setObject:&off_10AA0 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
      [settingsCopy setObject:&off_10AA0 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
      [(AppleEthernetProxyConfigurator *)self updateManualProxySettings:settingsCopy withConfig:newConfigCopy];
    }

    else if ([newConfigCopy httpProxyConfig] == &dword_0 + 2)
    {
      if ([configCopy httpProxyConfig] == &dword_0 + 1)
      {
        [settingsCopy setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
        [settingsCopy setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
        [(AppleEthernetProxyConfigurator *)self removeManualProxySettings:settingsCopy];
      }

      [(AppleEthernetProxyConfigurator *)self updateAutomaticProxySettings:settingsCopy withConfig:newConfigCopy];
    }
  }

  else
  {
    if ([configCopy httpProxyConfig] == &dword_0 + 1)
    {
      [(AppleEthernetProxyConfigurator *)self removeManualProxySettings:settingsCopy];
    }

    else if ([configCopy httpProxyConfig] == &dword_0 + 2)
    {
      [(AppleEthernetProxyConfigurator *)self removeAutomaticProxySettings:settingsCopy];
    }

    [settingsCopy setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
    [settingsCopy setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
  }
}

- (void)updateManualProxySettings:(id)settings withConfig:(id)config
{
  settingsCopy = settings;
  configCopy = config;
  httpProxyServerAddress = [configCopy httpProxyServerAddress];
  [settingsCopy setObject:httpProxyServerAddress forKeyedSubscript:kSCPropNetProxiesHTTPProxy];

  httpProxyServerAddress2 = [configCopy httpProxyServerAddress];
  [settingsCopy setObject:httpProxyServerAddress2 forKeyedSubscript:kSCPropNetProxiesHTTPSProxy];

  httpProxyServerPort = [configCopy httpProxyServerPort];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [httpProxyServerPort integerValue]);
  [settingsCopy setObject:v9 forKeyedSubscript:kSCPropNetProxiesHTTPPort];

  httpProxyServerPort2 = [configCopy httpProxyServerPort];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [httpProxyServerPort2 integerValue]);
  [settingsCopy setObject:v11 forKeyedSubscript:kSCPropNetProxiesHTTPSPort];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configCopy httpProxyAuthenticationRequired]);
  [settingsCopy setObject:v12 forKeyedSubscript:@"HTTPProxyAuthenticated"];

  if ([configCopy httpProxyAuthenticationRequired])
  {
    httpProxyUsername = [configCopy httpProxyUsername];
    [settingsCopy setObject:httpProxyUsername forKeyedSubscript:@"HTTPProxyUsername"];
  }

  else
  {
    [settingsCopy setObject:0 forKeyedSubscript:@"HTTPProxyUsername"];
  }

  if ([configCopy httpProxyAuthenticationRequired] && (objc_msgSend(configCopy, "httpProxyPassword"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    httpProxyPassword = [configCopy httpProxyPassword];
    httpProxyServerAddress3 = [configCopy httpProxyServerAddress];
    httpProxyUsername2 = [configCopy httpProxyUsername];
    httpProxyServerPort3 = [configCopy httpProxyServerPort];
    +[AppleEthernetKeychainUtilities setPassword:forHost:username:port:](AppleEthernetKeychainUtilities, "setPassword:forHost:username:port:", httpProxyPassword, httpProxyServerAddress3, httpProxyUsername2, [httpProxyServerPort3 intValue]);
  }

  else
  {
    httpProxyPassword = [configCopy httpProxyServerAddress];
    httpProxyServerAddress3 = [configCopy httpProxyUsername];
    httpProxyUsername2 = [configCopy httpProxyServerPort];
    +[AppleEthernetKeychainUtilities removePasswordForHost:username:port:](AppleEthernetKeychainUtilities, "removePasswordForHost:username:port:", httpProxyPassword, httpProxyServerAddress3, [httpProxyUsername2 intValue]);
  }
}

- (void)removeManualProxySettings:(id)settings
{
  settingsCopy = settings;
  v3 = [settingsCopy objectForKeyedSubscript:@"HTTPProxyAuthenticated"];
  bOOLValue = [v3 BOOLValue];

  if (bOOLValue)
  {
    v5 = [settingsCopy objectForKeyedSubscript:kSCPropNetProxiesHTTPProxy];
    v6 = [settingsCopy objectForKeyedSubscript:@"HTTPProxyUsername"];
    v7 = kSCPropNetProxiesHTTPPort;
    v8 = [settingsCopy objectForKeyedSubscript:kSCPropNetProxiesHTTPPort];
    intValue = [v8 intValue];

    [AppleEthernetKeychainUtilities removePasswordForHost:v5 username:v6 port:intValue];
    [settingsCopy removeObjectForKey:@"HTTPProxyUsername"];
  }

  else
  {
    v7 = kSCPropNetProxiesHTTPPort;
  }

  [settingsCopy removeObjectForKey:kSCPropNetProxiesHTTPProxy];
  [settingsCopy removeObjectForKey:kSCPropNetProxiesHTTPSProxy];
  [settingsCopy removeObjectForKey:v7];
  [settingsCopy removeObjectForKey:kSCPropNetProxiesHTTPSPort];
  [settingsCopy removeObjectForKey:@"HTTPProxyAuthenticated"];
}

- (void)updateAutomaticProxySettings:(id)settings withConfig:(id)config
{
  settingsCopy = settings;
  configCopy = config;
  httpProxyConfigPAC = [configCopy httpProxyConfigPAC];
  [settingsCopy setObject:httpProxyConfigPAC forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];

  httpProxyConfigPAC2 = [configCopy httpProxyConfigPAC];

  v8 = [httpProxyConfigPAC2 length];
  if (v8)
  {
    v9 = &off_10AA0;
  }

  else
  {
    v9 = &off_10A88;
  }

  if (v8)
  {
    v10 = &off_10A88;
  }

  else
  {
    v10 = &off_10AA0;
  }

  [settingsCopy setObject:v9 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
  [settingsCopy setObject:v10 forKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
}

- (void)removeAutomaticProxySettings:(id)settings
{
  settingsCopy = settings;
  [settingsCopy removeObjectForKey:kSCPropNetProxiesProxyAutoConfigEnable];
  [settingsCopy removeObjectForKey:kSCPropNetProxiesProxyAutoDiscoveryEnable];
  [settingsCopy removeObjectForKey:kSCPropNetProxiesProxyAutoConfigURLString];
}

- (void)setValuesForConfig:(id)config fromService:(__SCNetworkService *)service
{
  configCopy = config;
  delegate = [(AppleEthernetProtocolConfigurator *)self delegate];
  v7 = [delegate getPersistentSettingsForKey:kSCEntNetProxies inService:service];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"HTTPProxyType"];
    [configCopy setHttpProxyConfig:{objc_msgSend(v8, "integerValue")}];

    httpProxyConfig = [configCopy httpProxyConfig];
    if (httpProxyConfig == &dword_0 + 2)
    {
      v40 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
      bOOLValue = [v40 BOOLValue];

      v42 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
      bOOLValue2 = [v42 BOOLValue];

      if ((bOOLValue & 1) != 0 || bOOLValue2)
      {
        v43 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];
        [sub_3F78(v43 v44];
        goto LABEL_9;
      }
    }

    else if (httpProxyConfig == &dword_0 + 1)
    {
      v10 = [v7 objectForKeyedSubscript:kSCPropNetProxiesHTTPProxy];
      [sub_3F78(v10 v11];

      v18 = [v7 objectForKeyedSubscript:kSCPropNetProxiesHTTPPort];
      v19 = [NSString stringWithFormat:@"%@"];
      [sub_3F78(v19 v20];

      v27 = [v7 objectForKeyedSubscript:@"HTTPProxyAuthenticated"];
      [configCopy setHttpProxyAuthenticationRequired:{objc_msgSend(v27, "BOOLValue")}];

      if ([configCopy httpProxyAuthenticationRequired])
      {
        v28 = [v7 objectForKeyedSubscript:@"HTTPProxyUsername"];
        [sub_3F78(v28 v29];

        bOOLValue2 = [configCopy httpProxyServerAddress];
        httpProxyUsername = [configCopy httpProxyUsername];
        httpProxyServerPort = [configCopy httpProxyServerPort];
        v39 = +[AppleEthernetKeychainUtilities passwordForHost:username:port:](AppleEthernetKeychainUtilities, "passwordForHost:username:port:", bOOLValue2, httpProxyUsername, [httpProxyServerPort intValue]);
        [configCopy setHttpProxyPassword:v39];

LABEL_9:
      }
    }
  }
}

@end
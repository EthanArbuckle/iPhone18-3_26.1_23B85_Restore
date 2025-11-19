@interface AppleEthernetProxyConfigurator
- (AppleEthernetProxyConfigurator)init;
- (void)removeAutomaticProxySettings:(id)a3;
- (void)removeManualProxySettings:(id)a3;
- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4;
- (void)updateAutomaticProxySettings:(id)a3 withConfig:(id)a4;
- (void)updateManualProxySettings:(id)a3 withConfig:(id)a4;
- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5;
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

- (void)updateSettings:(id)a3 fromCurrentConfig:(id)a4 toNewConfig:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 httpProxyConfig];
  if (v10 != [v9 httpProxyConfig])
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 httpProxyConfig]);
    [v12 setObject:v11 forKeyedSubscript:@"HTTPProxyType"];
  }

  if ([v9 httpProxyConfig])
  {
    if ([v9 httpProxyConfig] == &dword_0 + 1)
    {
      if ([v8 httpProxyConfig] == &dword_0 + 2)
      {
        [(AppleEthernetProxyConfigurator *)self removeAutomaticProxySettings:v12];
      }

      [v12 setObject:&off_10AA0 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
      [v12 setObject:&off_10AA0 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
      [(AppleEthernetProxyConfigurator *)self updateManualProxySettings:v12 withConfig:v9];
    }

    else if ([v9 httpProxyConfig] == &dword_0 + 2)
    {
      if ([v8 httpProxyConfig] == &dword_0 + 1)
      {
        [v12 setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
        [v12 setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
        [(AppleEthernetProxyConfigurator *)self removeManualProxySettings:v12];
      }

      [(AppleEthernetProxyConfigurator *)self updateAutomaticProxySettings:v12 withConfig:v9];
    }
  }

  else
  {
    if ([v8 httpProxyConfig] == &dword_0 + 1)
    {
      [(AppleEthernetProxyConfigurator *)self removeManualProxySettings:v12];
    }

    else if ([v8 httpProxyConfig] == &dword_0 + 2)
    {
      [(AppleEthernetProxyConfigurator *)self removeAutomaticProxySettings:v12];
    }

    [v12 setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPEnable];
    [v12 setObject:&off_10A88 forKeyedSubscript:kSCPropNetProxiesHTTPSEnable];
  }
}

- (void)updateManualProxySettings:(id)a3 withConfig:(id)a4
{
  v20 = a3;
  v5 = a4;
  v6 = [v5 httpProxyServerAddress];
  [v20 setObject:v6 forKeyedSubscript:kSCPropNetProxiesHTTPProxy];

  v7 = [v5 httpProxyServerAddress];
  [v20 setObject:v7 forKeyedSubscript:kSCPropNetProxiesHTTPSProxy];

  v8 = [v5 httpProxyServerPort];
  v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 integerValue]);
  [v20 setObject:v9 forKeyedSubscript:kSCPropNetProxiesHTTPPort];

  v10 = [v5 httpProxyServerPort];
  v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue]);
  [v20 setObject:v11 forKeyedSubscript:kSCPropNetProxiesHTTPSPort];

  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 httpProxyAuthenticationRequired]);
  [v20 setObject:v12 forKeyedSubscript:@"HTTPProxyAuthenticated"];

  if ([v5 httpProxyAuthenticationRequired])
  {
    v13 = [v5 httpProxyUsername];
    [v20 setObject:v13 forKeyedSubscript:@"HTTPProxyUsername"];
  }

  else
  {
    [v20 setObject:0 forKeyedSubscript:@"HTTPProxyUsername"];
  }

  if ([v5 httpProxyAuthenticationRequired] && (objc_msgSend(v5, "httpProxyPassword"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v15))
  {
    v16 = [v5 httpProxyPassword];
    v17 = [v5 httpProxyServerAddress];
    v18 = [v5 httpProxyUsername];
    v19 = [v5 httpProxyServerPort];
    +[AppleEthernetKeychainUtilities setPassword:forHost:username:port:](AppleEthernetKeychainUtilities, "setPassword:forHost:username:port:", v16, v17, v18, [v19 intValue]);
  }

  else
  {
    v16 = [v5 httpProxyServerAddress];
    v17 = [v5 httpProxyUsername];
    v18 = [v5 httpProxyServerPort];
    +[AppleEthernetKeychainUtilities removePasswordForHost:username:port:](AppleEthernetKeychainUtilities, "removePasswordForHost:username:port:", v16, v17, [v18 intValue]);
  }
}

- (void)removeManualProxySettings:(id)a3
{
  v10 = a3;
  v3 = [v10 objectForKeyedSubscript:@"HTTPProxyAuthenticated"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v10 objectForKeyedSubscript:kSCPropNetProxiesHTTPProxy];
    v6 = [v10 objectForKeyedSubscript:@"HTTPProxyUsername"];
    v7 = kSCPropNetProxiesHTTPPort;
    v8 = [v10 objectForKeyedSubscript:kSCPropNetProxiesHTTPPort];
    v9 = [v8 intValue];

    [AppleEthernetKeychainUtilities removePasswordForHost:v5 username:v6 port:v9];
    [v10 removeObjectForKey:@"HTTPProxyUsername"];
  }

  else
  {
    v7 = kSCPropNetProxiesHTTPPort;
  }

  [v10 removeObjectForKey:kSCPropNetProxiesHTTPProxy];
  [v10 removeObjectForKey:kSCPropNetProxiesHTTPSProxy];
  [v10 removeObjectForKey:v7];
  [v10 removeObjectForKey:kSCPropNetProxiesHTTPSPort];
  [v10 removeObjectForKey:@"HTTPProxyAuthenticated"];
}

- (void)updateAutomaticProxySettings:(id)a3 withConfig:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v5 httpProxyConfigPAC];
  [v11 setObject:v6 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];

  v7 = [v5 httpProxyConfigPAC];

  v8 = [v7 length];
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

  [v11 setObject:v9 forKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
  [v11 setObject:v10 forKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
}

- (void)removeAutomaticProxySettings:(id)a3
{
  v3 = a3;
  [v3 removeObjectForKey:kSCPropNetProxiesProxyAutoConfigEnable];
  [v3 removeObjectForKey:kSCPropNetProxiesProxyAutoDiscoveryEnable];
  [v3 removeObjectForKey:kSCPropNetProxiesProxyAutoConfigURLString];
}

- (void)setValuesForConfig:(id)a3 fromService:(__SCNetworkService *)a4
{
  v53 = a3;
  v6 = [(AppleEthernetProtocolConfigurator *)self delegate];
  v7 = [v6 getPersistentSettingsForKey:kSCEntNetProxies inService:a4];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"HTTPProxyType"];
    [v53 setHttpProxyConfig:{objc_msgSend(v8, "integerValue")}];

    v9 = [v53 httpProxyConfig];
    if (v9 == &dword_0 + 2)
    {
      v40 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoConfigEnable];
      v41 = [v40 BOOLValue];

      v42 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoDiscoveryEnable];
      v36 = [v42 BOOLValue];

      if ((v41 & 1) != 0 || v36)
      {
        v43 = [v7 objectForKeyedSubscript:kSCPropNetProxiesProxyAutoConfigURLString];
        [sub_3F78(v43 v44];
        goto LABEL_9;
      }
    }

    else if (v9 == &dword_0 + 1)
    {
      v10 = [v7 objectForKeyedSubscript:kSCPropNetProxiesHTTPProxy];
      [sub_3F78(v10 v11];

      v18 = [v7 objectForKeyedSubscript:kSCPropNetProxiesHTTPPort];
      v19 = [NSString stringWithFormat:@"%@"];
      [sub_3F78(v19 v20];

      v27 = [v7 objectForKeyedSubscript:@"HTTPProxyAuthenticated"];
      [v53 setHttpProxyAuthenticationRequired:{objc_msgSend(v27, "BOOLValue")}];

      if ([v53 httpProxyAuthenticationRequired])
      {
        v28 = [v7 objectForKeyedSubscript:@"HTTPProxyUsername"];
        [sub_3F78(v28 v29];

        v36 = [v53 httpProxyServerAddress];
        v37 = [v53 httpProxyUsername];
        v38 = [v53 httpProxyServerPort];
        v39 = +[AppleEthernetKeychainUtilities passwordForHost:username:port:](AppleEthernetKeychainUtilities, "passwordForHost:username:port:", v36, v37, [v38 intValue]);
        [v53 setHttpProxyPassword:v39];

LABEL_9:
      }
    }
  }
}

@end
@interface AppleEthernetConfigurator
- (AppleEthernetConfigurator)initWithInterface:(id)a3;
- (BOOL)getPrivateRelayDisabledForService:(__SCNetworkService *)a3;
- (BOOL)setNotificationKeys;
- (BOOL)setPrivateRelayDisabledForService:(__SCNetworkService *)a3 withPrivateRelayDisabled:(BOOL)a4;
- (BOOL)updatePreferencesForService:(__SCNetworkService *)a3 withConfig:(id)a4;
- (SettingsDelegate)settingsDelegate;
- (__SCNetworkService)findServiceForInterface:(id)a3;
- (id)currentConfig;
- (id)getPersistentSettingsForKey:(__CFString *)a3 inService:(__SCNetworkService *)a4;
- (id)getSettingsForKey:(__CFString *)a3 inService:(__SCNetworkService *)a4 withManualMode:(BOOL)a5;
- (int)commitAndApplyChangesToPreferences;
- (int)lockPreferences;
- (int)unlockPreferences;
- (void)dealloc;
- (void)renewLease;
- (void)saveConfig:(id)a3;
@end

@implementation AppleEthernetConfigurator

- (AppleEthernetConfigurator)initWithInterface:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = AppleEthernetConfigurator;
  v6 = [(AppleEthernetConfigurator *)&v36 init];
  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = objc_alloc_init(AppleEthernetIPv4Configurator);
  v8 = objc_alloc_init(AppleEthernetIPv6Configurator);
  v9 = objc_alloc_init(AppleEthernetDNSConfigurator);
  v10 = objc_alloc_init(AppleEthernetProxyConfigurator);
  v11 = objc_alloc_init(AppleEthernetPrivateRelayConfigurator);
  v12 = [NSArray arrayWithObjects:v7, v8, v9, v10, v11, 0];
  configurators = v6->_configurators;
  v6->_configurators = v12;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v6->_configurators;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      v18 = 0;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v32 + 1) + 8 * v18) setDelegate:v6];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }

  objc_storeStrong(&v6->_interface, a3);
  previousState = v6->_previousState;
  v6->_previousState = 0;

  v20 = [v5 BSDName];
  v21 = dispatch_queue_create([v20 UTF8String], 0);
  queue = v6->_queue;
  v6->_queue = v21;

  v23 = v6->_queue;
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = v6;
  dispatch_set_context(v23, v24);
  v25 = [NSString stringWithFormat:@"%s-%@", getprogname(), @"AppleEthernetController"];
  if (!v25)
  {
LABEL_16:
    v23 = 0;
LABEL_17:

    v24 = 0;
    goto LABEL_18;
  }

  v26 = v25;
  v27 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, v25, 0, 0);
  v24->_preferences = v27;
  if (!v27)
  {
    v23 = v26;
    goto LABEL_17;
  }

  v28 = [(AppleEthernetInterface *)v6->_interface BSDName];
  v23 = [NSString stringWithFormat:@"%@-%@", @"AppleEthernetConfigurator", v28];

  if (!v23)
  {
    goto LABEL_17;
  }

  memset(&context, 0, sizeof(context));
  context.info = v6->_queue;
  v29 = SCDynamicStoreCreate(kCFAllocatorDefault, v23, sub_52B8, &context);
  v24->_dynamicStore = v29;
  if (!v29 || ![(AppleEthernetConfigurator *)v24 setNotificationKeys])
  {
    goto LABEL_17;
  }

  SCDynamicStoreSetDispatchQueue(v24->_dynamicStore, v6->_queue);
LABEL_18:

  return v24;
}

- (void)dealloc
{
  preferences = self->_preferences;
  if (preferences)
  {
    CFRelease(preferences);
  }

  self->_preferences = 0;
  SCDynamicStoreSetDispatchQueue(self->_dynamicStore, 0);
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  self->_dynamicStore = 0;
  v5.receiver = self;
  v5.super_class = AppleEthernetConfigurator;
  [(AppleEthernetConfigurator *)&v5 dealloc];
}

- (void)renewLease
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5744;
  block[3] = &unk_105F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)saveConfig:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_57D8;
  v7[3] = &unk_10620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (int)lockPreferences
{
  if (SCPreferencesLock(self->_preferences, 1u))
  {
    return 0;
  }

  SCPreferencesSynchronize(self->_preferences);
  if (SCPreferencesLock(self->_preferences, 1u))
  {
    return 0;
  }

  return SCError();
}

- (int)unlockPreferences
{
  if (SCPreferencesUnlock(self->_preferences))
  {
    return 0;
  }

  return SCError();
}

- (int)commitAndApplyChangesToPreferences
{
  if (SCPreferencesCommitChanges(self->_preferences) && SCPreferencesApplyChanges(self->_preferences))
  {
    return 0;
  }

  return SCError();
}

- (SettingsDelegate)settingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_settingsDelegate);

  return WeakRetained;
}

- (BOOL)setNotificationKeys
{
  v3 = +[NSMutableArray array];
  if ([(AppleEthernetConfigurator *)self lockPreferences])
  {
    goto LABEL_16;
  }

  v4 = [(AppleEthernetConfigurator *)self findServiceForInterface:self->_interface];
  if (!v4)
  {
    [(AppleEthernetConfigurator *)self unlockPreferences];
LABEL_16:
    v32 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  ServiceID = SCNetworkServiceGetServiceID(v4);
  if (!ServiceID)
  {
    v35 = 0;
    v12 = 0;
    v8 = 0;
    v19 = 0;
    v23 = 0;
    v27 = 0;
    v32 = 0;
    goto LABEL_13;
  }

  v7 = ServiceID;
  v34 = v5;
  v8 = SCDynamicStoreKeyCreate(kCFAllocatorDefault, kSCDynamicStoreDomainSetup);
  if (!v8)
  {
    v35 = 0;
    v12 = 0;
    goto LABEL_20;
  }

  v9 = [v3 addObject:v8];
  v12 = sub_296C(v9, v10, v11, kSCEntNetIPv4);
  v35 = v8;
  if (!v12)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v13 = [v3 addObject:v12];
  v8 = sub_296C(v13, v14, v15, kSCEntNetIPv6);
  if (!v8)
  {
LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  v16 = [v3 addObject:v8];
  v19 = sub_296C(v16, v17, v18, kSCEntNetDHCP);
  if (!v19)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_22;
  }

  v20 = [v3 addObject:v19];
  v23 = sub_296C(v20, v21, v22, kSCEntNetDNS);
  if (!v23)
  {
LABEL_22:
    v27 = 0;
LABEL_23:
    v32 = 0;
    goto LABEL_12;
  }

  v24 = [v3 addObject:v23];
  v27 = sub_296C(v24, v25, v26, kSCEntNetProxies);
  if (!v27)
  {
    goto LABEL_23;
  }

  [v3 addObject:v27];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainSetup, v7, kSCCompAnyRegex);
  if (!NetworkServiceEntity)
  {
    goto LABEL_23;
  }

  v29 = NetworkServiceEntity;
  dynamicStore = self->_dynamicStore;
  v36 = NetworkServiceEntity;
  v31 = [NSArray arrayWithObjects:&v36 count:1];
  v32 = SCDynamicStoreSetNotificationKeys(dynamicStore, v3, v31) != 0;

LABEL_12:
  v5 = v34;
LABEL_13:
  [(AppleEthernetConfigurator *)self unlockPreferences];
  CFRelease(v5);

LABEL_14:
  return v32;
}

- (id)currentConfig
{
  v3 = objc_alloc_init(AppleEthernetSettingsConfig);
  v4 = [(AppleEthernetInterface *)self->_interface displayName];
  [(AppleEthernetSettingsConfig *)v3 setSsid:v4];

  if (![(AppleEthernetConfigurator *)self lockPreferences])
  {
    v5 = [(AppleEthernetConfigurator *)self findServiceForInterface:self->_interface];
    if (v5)
    {
      v6 = v5;
      v7 = self->_configurators;
      sub_2988();
      v9 = [v8 countByEnumeratingWithState:0 objects:? count:?];
      if (v9)
      {
        v10 = v9;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            [*(8 * i) setValuesForConfig:v3 fromService:v6];
          }

          sub_2988();
          v10 = [NSArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v10);
      }

      [(AppleEthernetConfigurator *)self unlockPreferences];
      CFRelease(v6);
    }

    else
    {
      [(AppleEthernetConfigurator *)self unlockPreferences];
    }
  }

  objc_storeStrong(&self->_previousState, v3);

  return v3;
}

- (BOOL)updatePreferencesForService:(__SCNetworkService *)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (a3 && v6)
  {
    if (self->_previousState || (v9 = objc_alloc_init(AppleEthernetSettingsConfig), previousState = self->_previousState, self->_previousState = v9, previousState, self->_previousState))
    {
      v11 = self->_configurators;
      sub_2988();
      v13 = [v12 countByEnumeratingWithState:0 objects:? count:?];
      if (v13)
      {
        v14 = v13;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            [*(8 * i) updateSettingsFromCurrentConfig:self->_previousState toNewConfig:v7 forService:a3];
          }

          sub_2988();
          v14 = [NSArray countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
        }

        while (v14);
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)getPersistentSettingsForKey:(__CFString *)a3 inService:(__SCNetworkService *)a4
{
  v4 = SCNetworkServiceCopyProtocol(a4, a3);
  if (v4)
  {
    v5 = v4;
    v6 = SCNetworkProtocolGetConfiguration(v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getSettingsForKey:(__CFString *)a3 inService:(__SCNetworkService *)a4 withManualMode:(BOOL)a5
{
  v5 = a5;
  v9 = SCNetworkServiceCopyProtocol(a4, a3);
  if (v9)
  {
    v10 = v9;
    ServiceID = SCNetworkServiceGetServiceID(a4);
    if (!ServiceID)
    {
      goto LABEL_11;
    }

    v12 = &kSCDynamicStoreDomainState;
    if (v5)
    {
      v12 = &kSCDynamicStoreDomainSetup;
    }

    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, *v12, ServiceID, a3);
    if (NetworkServiceEntity)
    {
      v14 = NetworkServiceEntity;
      v15 = SCDynamicStoreCopyValue(self->_dynamicStore, NetworkServiceEntity);
      CFRelease(v10);
      v10 = v14;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)getPrivateRelayDisabledForService:(__SCNetworkService *)a3
{
  Interface = SCNetworkServiceGetInterface(a3);
  if (Interface)
  {
    LOBYTE(Interface) = SCNetworkInterfaceGetDisablePrivateRelay() != 0;
  }

  return Interface;
}

- (BOOL)setPrivateRelayDisabledForService:(__SCNetworkService *)a3 withPrivateRelayDisabled:(BOOL)a4
{
  Interface = SCNetworkServiceGetInterface(a3);
  if (Interface)
  {
    LOBYTE(Interface) = SCNetworkInterfaceSetDisablePrivateRelay() != 0;
  }

  return Interface;
}

- (__SCNetworkService)findServiceForInterface:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = SCNetworkSetCopyCurrent(self->_preferences)) != 0)
  {
    v6 = v5;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = SCNetworkSetCopyServices(v5);
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v21;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v20 + 1) + 8 * v12);
        Interface = SCNetworkServiceGetInterface(v13);
        if (Interface)
        {
          v15 = SCNetworkInterfaceGetBSDName(Interface);

          if (!v15)
          {
            v10 = 0;
            if (!v13)
            {
              goto LABEL_13;
            }

LABEL_12:
            CFRelease(v13);
            goto LABEL_13;
          }

          v16 = [v4 BSDName];
          v17 = [v16 isEqualToString:v15];

          v10 = v15;
          if (v17)
          {
            v10 = v15;
            goto LABEL_21;
          }
        }

        if (v13)
        {
          goto LABEL_12;
        }

LABEL_13:
        if (v9 == ++v12)
        {
          v18 = [(__CFArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          v9 = v18;
          if (!v18)
          {
            v13 = 0;
            goto LABEL_21;
          }

          goto LABEL_5;
        }
      }
    }

    v13 = 0;
    v10 = 0;
LABEL_21:

    CFRelease(v6);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
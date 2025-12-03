@interface MTSXPCServer
+ (id)logCategory;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MTSAuthorizationServerInterface)authorizationServer;
- (MTSDevicePairingServerInterface)devicePairingServer;
- (MTSNetworkCredentialServerInterface)networkCredentialServer;
- (MTSSystemCommissionerPairingServerInterface)systemCommissionerPairingServer;
- (MTSXPCDeviceSetupClientProxyDelegate)deviceSetupServer;
- (MTSXPCServer)init;
- (MTSXPCServer)initWithListener:(id)listener clientProxyFactory:(id)factory;
- (void)clientProxy:(id)proxy checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler;
- (void)clientProxy:(id)proxy fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)clientProxy:(id)proxy fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)clientProxy:(id)proxy openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)clientProxy:(id)proxy performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler;
- (void)clientProxy:(id)proxy readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)clientProxy:(id)proxy removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)clientProxy:(id)proxy removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)clientProxy:(id)proxy removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
- (void)clientProxy:(id)proxy retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
- (void)showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:(id)proxy;
- (void)start;
@end

@implementation MTSXPCServer

- (MTSNetworkCredentialServerInterface)networkCredentialServer
{
  WeakRetained = objc_loadWeakRetained(&self->_networkCredentialServer);

  return WeakRetained;
}

- (MTSAuthorizationServerInterface)authorizationServer
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationServer);

  return WeakRetained;
}

- (MTSSystemCommissionerPairingServerInterface)systemCommissionerPairingServer
{
  WeakRetained = objc_loadWeakRetained(&self->_systemCommissionerPairingServer);

  return WeakRetained;
}

- (MTSXPCDeviceSetupClientProxyDelegate)deviceSetupServer
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceSetupServer);

  return WeakRetained;
}

- (MTSDevicePairingServerInterface)devicePairingServer
{
  WeakRetained = objc_loadWeakRetained(&self->_devicePairingServer);

  return WeakRetained;
}

- (void)showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:(id)proxy
{
  v16 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  if ([proxyCopy hasPrivateHomeKitEntitlement])
  {
    authorizationServer = [(MTSXPCServer *)self authorizationServer];
    if (!authorizationServer)
    {
      _HMFPreconditionFailure();
    }

    v6 = authorizationServer;
    [authorizationServer showRestrictedCharacteristicsAccessWarningAlert];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = @"com.apple.private.homekit";
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not showing restricted characteristics access warning because process is missing entitlement: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  handlerCopy = handler;
  if ([proxyCopy hasPrivateHomeKitEntitlement])
  {
    authorizationServer = [(MTSXPCServer *)self authorizationServer];
    if (!authorizationServer)
    {
      _HMFPreconditionFailure();
    }

    v9 = authorizationServer;
    [authorizationServer checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:handlerCopy];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = @"com.apple.private.homekit";
      _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_ERROR, "%{public}@Returning NO to check restricted characteristics access allowed because process is missing entitlement: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    handlerCopy[2](handlerCopy, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  datasetCopy = dataset;
  handlerCopy = handler;
  if (([proxyCopy hasThreadCredentialsEntitlement] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.thread-credentials"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v16;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Disallowing retrieve preferred Thread credentials because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v12];
    goto LABEL_8;
  }

  networkCredentialServer = [(MTSXPCServer *)self networkCredentialServer];
  v12 = networkCredentialServer;
  if (!networkCredentialServer)
  {
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
LABEL_8:
    v18 = v17;
    handlerCopy[2](handlerCopy, 0, v17);

    goto LABEL_9;
  }

  [networkCredentialServer retrievePreferredThreadCredentialsOrCreateWithDataset:datasetCopy completionHandler:handlerCopy];
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    systemCommissionerPairingServer = [(MTSXPCServer *)self systemCommissionerPairingServer];
    if (!systemCommissionerPairingServer)
    {
      _HMFPreconditionFailure();
    }

    v12 = systemCommissionerPairingServer;
    [systemCommissionerPairingServer removeSystemCommissionerPairingWithUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Disallowing remove system commissioner pairing request because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v12];
    handlerCopy[2](handlerCopy, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    systemCommissionerPairingServer = [(MTSXPCServer *)self systemCommissionerPairingServer];
    if (!systemCommissionerPairingServer)
    {
      _HMFPreconditionFailure();
    }

    v9 = systemCommissionerPairingServer;
    [systemCommissionerPairingServer fetchSystemCommissionerPairingsWithCompletionHandler:handlerCopy];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_ERROR, "%{public}@Disallowing fetch system commissioner pairings request because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v9];
    handlerCopy[2](handlerCopy, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler
{
  proxyCopy = proxy;
  requestCopy = request;
  handlerCopy = handler;
  deviceSetupServer = [(MTSXPCServer *)self deviceSetupServer];
  if (deviceSetupServer)
  {
    v11 = deviceSetupServer;
    [deviceSetupServer clientProxy:proxyCopy performDeviceSetupUsingRequest:requestCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    [(MTSXPCServer *)v12 clientProxy:v13 readCommissioningWindowStatusForSystemCommissionerPairingUUID:v14 completionHandler:v15, v16];
  }
}

- (void)clientProxy:(id)proxy readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    devicePairingServer = [(MTSXPCServer *)self devicePairingServer];
    if (!devicePairingServer)
    {
      _HMFPreconditionFailure();
    }

    v12 = devicePairingServer;
    [devicePairingServer readCommissioningWindowStatusForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Disallowing reading commissioning window status because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v12];
    handlerCopy[2](handlerCopy, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    devicePairingServer = [(MTSXPCServer *)self devicePairingServer];
    if (!devicePairingServer)
    {
      _HMFPreconditionFailure();
    }

    v14 = devicePairingServer;
    [devicePairingServer openCommissioningWindowForSystemCommissionerPairingUUID:dCopy duration:handlerCopy completionHandler:duration];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_239824000, v17, OS_LOG_TYPE_ERROR, "%{public}@Disallowing opening commissioning window because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v14];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    devicePairingServer = [(MTSXPCServer *)self devicePairingServer];
    if (!devicePairingServer)
    {
      _HMFPreconditionFailure();
    }

    v12 = devicePairingServer;
    [devicePairingServer removeAllDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Disallowing remove all device pairings because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v12];
    handlerCopy[2](handlerCopy, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    devicePairingServer = [(MTSXPCServer *)self devicePairingServer];
    if (!devicePairingServer)
    {
      _HMFPreconditionFailure();
    }

    v15 = devicePairingServer;
    [devicePairingServer removeDevicePairingWithUUID:dCopy forSystemCommissionerPairingUUID:iDCopy completionHandler:handlerCopy];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_239824000, v18, OS_LOG_TYPE_ERROR, "%{public}@Disallowing remove device pairing request because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v15];
    handlerCopy[2](handlerCopy, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)proxy fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  proxyCopy = proxy;
  dCopy = d;
  handlerCopy = handler;
  if ([proxyCopy hasDevicePairingEntitlement])
  {
    devicePairingServer = [(MTSXPCServer *)self devicePairingServer];
    if (!devicePairingServer)
    {
      _HMFPreconditionFailure();
    }

    v12 = devicePairingServer;
    [devicePairingServer fetchDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Disallowing fetch device pairings request because %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5 reason:v12];
    handlerCopy[2](handlerCopy, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v29 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  clientProxyFactory = [(MTSXPCServer *)self clientProxyFactory];
  v9 = (clientProxyFactory)[2](clientProxyFactory, connectionCopy);

  [v9 setDelegate:self];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v13;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_239824000, v12, OS_LOG_TYPE_INFO, "%{public}@Accepting new client proxy: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  mts_clientInterface = [MEMORY[0x277CCAE90] mts_clientInterface];
  [connectionCopy setRemoteObjectInterface:mts_clientInterface];

  mts_serverInterface = [MEMORY[0x277CCAE90] mts_serverInterface];
  [connectionCopy setExportedInterface:mts_serverInterface];

  [connectionCopy setExportedObject:v9];
  objc_initWeak(buf, v9);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__MTSXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v22 = &unk_278AA1A40;
  objc_copyWeak(&v24, buf);
  v23 = selfCopy;
  [connectionCopy setInvalidationHandler:&v19];
  os_unfair_lock_lock_with_options();
  v16 = [(MTSXPCServer *)selfCopy clientProxies:v19];
  [v16 addObject:v9];

  os_unfair_lock_unlock(&selfCopy->_lock);
  [connectionCopy resume];
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

void __51__MTSXPCServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = WeakRetained;
      _os_log_impl(&dword_239824000, v5, OS_LOG_TYPE_INFO, "%{public}@Client proxy invalidated: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v7 = *(a1 + 32);
    os_unfair_lock_lock_with_options();
    v8 = [*(a1 + 32) clientProxies];
    [v8 removeObject:WeakRetained];

    os_unfair_lock_unlock(v7 + 2);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  listener = [(MTSXPCServer *)self listener];
  [listener setDelegate:self];

  listener2 = [(MTSXPCServer *)self listener];
  [listener2 start];
}

- (MTSXPCServer)initWithListener:(id)listener clientProxyFactory:(id)factory
{
  listenerCopy = listener;
  factoryCopy = factory;
  if (!listenerCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = factoryCopy;
  if (!factoryCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    return [(MTSXPCServer *)v17 init];
  }

  v19.receiver = self;
  v19.super_class = MTSXPCServer;
  v10 = [(MTSXPCServer *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v10->_listener, listener);
    v12 = _Block_copy(v9);
    clientProxyFactory = v11->_clientProxyFactory;
    v11->_clientProxyFactory = v12;

    v14 = [MEMORY[0x277CBEB58] set];
    clientProxies = v11->_clientProxies;
    v11->_clientProxies = v14;
  }

  return v11;
}

- (MTSXPCServer)init
{
  v3 = [MTSXPCListener alloc];
  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.matter.support.xpc"];
  v5 = [(MTSXPCListener *)v3 initWithXPCListener:v4];

  v6 = [(MTSXPCServer *)self initWithListener:v5 clientProxyFactory:&__block_literal_global_2403];
  return v6;
}

MTSXPCClientProxy *__20__MTSXPCServer_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTSXPCClientProxy alloc] initWithConnection:v2];

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t15_2409 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t15_2409, &__block_literal_global_28);
  }

  v3 = logCategory__hmf_once_v16_2410;

  return v3;
}

uint64_t __27__MTSXPCServer_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v16_2410 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
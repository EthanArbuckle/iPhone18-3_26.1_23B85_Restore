@interface MTSXPCServer
+ (id)logCategory;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MTSAuthorizationServerInterface)authorizationServer;
- (MTSDevicePairingServerInterface)devicePairingServer;
- (MTSNetworkCredentialServerInterface)networkCredentialServer;
- (MTSSystemCommissionerPairingServerInterface)systemCommissionerPairingServer;
- (MTSXPCDeviceSetupClientProxyDelegate)deviceSetupServer;
- (MTSXPCServer)init;
- (MTSXPCServer)initWithListener:(id)a3 clientProxyFactory:(id)a4;
- (void)clientProxy:(id)a3 checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a4;
- (void)clientProxy:(id)a3 fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5;
- (void)clientProxy:(id)a3 fetchSystemCommissionerPairingsWithCompletionHandler:(id)a4;
- (void)clientProxy:(id)a3 openCommissioningWindowForSystemCommissionerPairingUUID:(id)a4 duration:(double)a5 completionHandler:(id)a6;
- (void)clientProxy:(id)a3 performDeviceSetupUsingRequest:(id)a4 completionHandler:(id)a5;
- (void)clientProxy:(id)a3 readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5;
- (void)clientProxy:(id)a3 removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5;
- (void)clientProxy:(id)a3 removeDevicePairingWithUUID:(id)a4 forSystemCommissionerPairingUUID:(id)a5 completionHandler:(id)a6;
- (void)clientProxy:(id)a3 removeSystemCommissionerPairingWithUUID:(id)a4 completionHandler:(id)a5;
- (void)clientProxy:(id)a3 retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a4 completionHandler:(id)a5;
- (void)showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:(id)a3;
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

- (void)showRestrictedCharacteristicsAccessWarningAlertWithClientProxy:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hasPrivateHomeKitEntitlement])
  {
    v5 = [(MTSXPCServer *)self authorizationServer];
    if (!v5)
    {
      _HMFPreconditionFailure();
    }

    v6 = v5;
    [v5 showRestrictedCharacteristicsAccessWarningAlert];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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

- (void)clientProxy:(id)a3 checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hasPrivateHomeKitEntitlement])
  {
    v8 = [(MTSXPCServer *)self authorizationServer];
    if (!v8)
    {
      _HMFPreconditionFailure();
    }

    v9 = v8;
    [v8 checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v7[2](v7, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 retrievePreferredThreadCredentialsOrCreateWithDataset:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 hasThreadCredentialsEntitlement] & 1) == 0)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.thread-credentials"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

  v11 = [(MTSXPCServer *)self networkCredentialServer];
  v12 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
LABEL_8:
    v18 = v17;
    v10[2](v10, 0, v17);

    goto LABEL_9;
  }

  [v11 retrievePreferredThreadCredentialsOrCreateWithDataset:v9 completionHandler:v10];
LABEL_9:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 removeSystemCommissionerPairingWithUUID:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hasDevicePairingEntitlement])
  {
    v11 = [(MTSXPCServer *)self systemCommissionerPairingServer];
    if (!v11)
    {
      _HMFPreconditionFailure();
    }

    v12 = v11;
    [v11 removeSystemCommissionerPairingWithUUID:v9 completionHandler:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v10[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 fetchSystemCommissionerPairingsWithCompletionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 hasDevicePairingEntitlement])
  {
    v8 = [(MTSXPCServer *)self systemCommissionerPairingServer];
    if (!v8)
    {
      _HMFPreconditionFailure();
    }

    v9 = v8;
    [v8 fetchSystemCommissionerPairingsWithCompletionHandler:v7];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
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
    v7[2](v7, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 performDeviceSetupUsingRequest:(id)a4 completionHandler:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MTSXPCServer *)self deviceSetupServer];
  if (v10)
  {
    v11 = v10;
    [v10 clientProxy:v17 performDeviceSetupUsingRequest:v8 completionHandler:v9];
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    [(MTSXPCServer *)v12 clientProxy:v13 readCommissioningWindowStatusForSystemCommissionerPairingUUID:v14 completionHandler:v15, v16];
  }
}

- (void)clientProxy:(id)a3 readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hasDevicePairingEntitlement])
  {
    v11 = [(MTSXPCServer *)self devicePairingServer];
    if (!v11)
    {
      _HMFPreconditionFailure();
    }

    v12 = v11;
    [v11 readCommissioningWindowStatusForSystemCommissionerPairingUUID:v9 completionHandler:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v10[2](v10, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 openCommissioningWindowForSystemCommissionerPairingUUID:(id)a4 duration:(double)a5 completionHandler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 hasDevicePairingEntitlement])
  {
    v13 = [(MTSXPCServer *)self devicePairingServer];
    if (!v13)
    {
      _HMFPreconditionFailure();
    }

    v14 = v13;
    [v13 openCommissioningWindowForSystemCommissionerPairingUUID:v11 duration:v12 completionHandler:a5];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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
    (*(v12 + 2))(v12, 0, 0, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hasDevicePairingEntitlement])
  {
    v11 = [(MTSXPCServer *)self devicePairingServer];
    if (!v11)
    {
      _HMFPreconditionFailure();
    }

    v12 = v11;
    [v11 removeAllDevicePairingsForSystemCommissionerPairingUUID:v9 completionHandler:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v10[2](v10, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 removeDevicePairingWithUUID:(id)a4 forSystemCommissionerPairingUUID:(id)a5 completionHandler:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 hasDevicePairingEntitlement])
  {
    v14 = [(MTSXPCServer *)self devicePairingServer];
    if (!v14)
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    [v14 removeDevicePairingWithUUID:v11 forSystemCommissionerPairingUUID:v12 completionHandler:v13];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
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
    v13[2](v13, v20);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clientProxy:(id)a3 fetchDevicePairingsForSystemCommissionerPairingUUID:(id)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 hasDevicePairingEntitlement])
  {
    v11 = [(MTSXPCServer *)self devicePairingServer];
    if (!v11)
    {
      _HMFPreconditionFailure();
    }

    v12 = v11;
    [v11 fetchDevicePairingsForSystemCommissionerPairingUUID:v9 completionHandler:v10];
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process is missing entitlement: %@", @"com.apple.matter.support.xpc.device-pairing"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v10[2](v10, 0, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MTSXPCServer *)self clientProxyFactory];
  v9 = (v8)[2](v8, v7);

  [v9 setDelegate:self];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
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
  v14 = [MEMORY[0x277CCAE90] mts_clientInterface];
  [v7 setRemoteObjectInterface:v14];

  v15 = [MEMORY[0x277CCAE90] mts_serverInterface];
  [v7 setExportedInterface:v15];

  [v7 setExportedObject:v9];
  objc_initWeak(buf, v9);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __51__MTSXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v22 = &unk_278AA1A40;
  objc_copyWeak(&v24, buf);
  v23 = v11;
  [v7 setInvalidationHandler:&v19];
  os_unfair_lock_lock_with_options();
  v16 = [(MTSXPCServer *)v11 clientProxies:v19];
  [v16 addObject:v9];

  os_unfair_lock_unlock(&v11->_lock);
  [v7 resume];
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
  v3 = [(MTSXPCServer *)self listener];
  [v3 setDelegate:self];

  v4 = [(MTSXPCServer *)self listener];
  [v4 start];
}

- (MTSXPCServer)initWithListener:(id)a3 clientProxyFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v9 = v8;
  if (!v8)
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
    objc_storeStrong(&v10->_listener, a3);
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
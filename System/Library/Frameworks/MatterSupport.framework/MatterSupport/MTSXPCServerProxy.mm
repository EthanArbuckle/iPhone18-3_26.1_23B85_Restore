@interface MTSXPCServerProxy
+ (id)logCategory;
- (MTSXPCConnection)connection;
- (MTSXPCServerProxy)initWithConnectionFactory:(id)factory;
- (id)logIdentifier;
- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler;
- (void)performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler;
- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler;
- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
- (void)showRestrictedCharacteristicsAccessWarningAlert;
@end

@implementation MTSXPCServerProxy

- (id)logIdentifier
{
  uUID = [(MTSXPCServerProxy *)self UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (void)showRestrictedCharacteristicsAccessWarningAlert
{
  connection = [(MTSXPCServerProxy *)self connection];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__MTSXPCServerProxy_showRestrictedCharacteristicsAccessWarningAlert__block_invoke;
  v5[3] = &unk_278AA1AF8;
  v5[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v5];

  [v4 showRestrictedCharacteristicsAccessWarningAlert];
}

void __68__MTSXPCServerProxy_showRestrictedCharacteristicsAccessWarningAlert__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for showing warning: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(MTSXPCServerProxy *)self connection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __86__MTSXPCServerProxy_checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler___block_invoke;
  v11 = &unk_278AA1AD0;
  selfCopy = self;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:&v8];

  [v7 checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler:{v6, v8, v9, v10, v11, selfCopy}];
}

void __86__MTSXPCServerProxy_checkRestrictedCharacteristicsAccessAllowedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for checking allows restricted characteristics access: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  handlerCopy = handler;
  datasetCopy = dataset;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __93__MTSXPCServerProxy_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 retrievePreferredThreadCredentialsOrCreateWithDataset:datasetCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __93__MTSXPCServerProxy_retrievePreferredThreadCredentialsOrCreateWithDataset_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for retrieve preferred Thread credentials: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

void __112__MTSXPCServerProxy_updateThreadCredentialManagementEnabled_forSystemCommissionerPairingUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for set Thread credential management state: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeSystemCommissionerPairingWithUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __79__MTSXPCServerProxy_removeSystemCommissionerPairingWithUUID_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 removeSystemCommissionerPairingWithUUID:dCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __79__MTSXPCServerProxy_removeSystemCommissionerPairingWithUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for remove system commissioner pairing: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchSystemCommissionerPairingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(MTSXPCServerProxy *)self connection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __74__MTSXPCServerProxy_fetchSystemCommissionerPairingsWithCompletionHandler___block_invoke;
  v11 = &unk_278AA1AD0;
  selfCopy = self;
  v13 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:&v8];

  [v7 fetchSystemCommissionerPairingsWithCompletionHandler:{v6, v8, v9, v10, v11, selfCopy}];
}

void __74__MTSXPCServerProxy_fetchSystemCommissionerPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for fetch system commissioner pairings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)performDeviceSetupUsingRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__MTSXPCServerProxy_performDeviceSetupUsingRequest_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 performDeviceSetupUsingRequest:requestCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __70__MTSXPCServerProxy_performDeviceSetupUsingRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for performDeviceSetupUsingRequest: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)readCommissioningWindowStatusForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __101__MTSXPCServerProxy_readCommissioningWindowStatusForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 readCommissioningWindowStatusForSystemCommissionerPairingUUID:dCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __101__MTSXPCServerProxy_readCommissioningWindowStatusForSystemCommissionerPairingUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for reading commissioning window status: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)openCommissioningWindowForSystemCommissionerPairingUUID:(id)d duration:(double)duration completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __104__MTSXPCServerProxy_openCommissioningWindowForSystemCommissionerPairingUUID_duration_completionHandler___block_invoke;
  v16 = &unk_278AA1AD0;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = [connection remoteObjectProxyWithErrorHandler:&v13];

  [v12 openCommissioningWindowForSystemCommissionerPairingUUID:dCopy duration:v11 completionHandler:{duration, v13, v14, v15, v16, selfCopy}];
}

void __104__MTSXPCServerProxy_openCommissioningWindowForSystemCommissionerPairingUUID_duration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for opening commissioning window: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeAllDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __95__MTSXPCServerProxy_removeAllDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 removeAllDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __95__MTSXPCServerProxy_removeAllDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for remove all device pairings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDevicePairingWithUUID:(id)d forSystemCommissionerPairingUUID:(id)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  iDCopy = iD;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __100__MTSXPCServerProxy_removeDevicePairingWithUUID_forSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v17 = &unk_278AA1AD0;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:&v14];

  [v13 removeDevicePairingWithUUID:dCopy forSystemCommissionerPairingUUID:iDCopy completionHandler:{v12, v14, v15, v16, v17, selfCopy}];
}

void __100__MTSXPCServerProxy_removeDevicePairingWithUUID_forSystemCommissionerPairingUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for remove device pairing: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchDevicePairingsForSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(MTSXPCServerProxy *)self connection];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __91__MTSXPCServerProxy_fetchDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke;
  v14 = &unk_278AA1AD0;
  selfCopy = self;
  v16 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:&v11];

  [v10 fetchDevicePairingsForSystemCommissionerPairingUUID:dCopy completionHandler:{v9, v11, v12, v13, v14, selfCopy}];
}

void __91__MTSXPCServerProxy_fetchDevicePairingsForSystemCommissionerPairingUUID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain remote object proxy for fetch device pairings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (MTSXPCConnection)connection
{
  os_unfair_lock_lock_with_options();
  connection = self->_connection;
  if (connection)
  {
    v4 = connection;
  }

  else
  {
    connectionFactory = [(MTSXPCServerProxy *)self connectionFactory];
    v4 = connectionFactory[2]();

    mts_clientInterface = [MEMORY[0x277CCAE90] mts_clientInterface];
    [(MTSXPCConnection *)v4 setExportedInterface:mts_clientInterface];

    [(MTSXPCConnection *)v4 setExportedObject:self];
    mts_serverInterface = [MEMORY[0x277CCAE90] mts_serverInterface];
    [(MTSXPCConnection *)v4 setRemoteObjectInterface:mts_serverInterface];

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __31__MTSXPCServerProxy_connection__block_invoke;
    v11[3] = &unk_278AA1AA8;
    objc_copyWeak(&v12, &location);
    [(MTSXPCConnection *)v4 setInterruptionHandler:v11];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__MTSXPCServerProxy_connection__block_invoke_8;
    v9[3] = &unk_278AA1AA8;
    objc_copyWeak(&v10, &location);
    [(MTSXPCConnection *)v4 setInvalidationHandler:v9];
    objc_storeStrong(&self->_connection, v4);
    [(MTSXPCConnection *)v4 resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

void __31__MTSXPCServerProxy_connection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_239824000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Connection to daemon was interrupted", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __31__MTSXPCServerProxy_connection__block_invoke_8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = WeakRetained;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_239824000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Connection to daemon was invalidated", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    os_unfair_lock_lock_with_options();
    [(os_unfair_lock_s *)v3 setConnection:0];
    os_unfair_lock_unlock(v3 + 2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock_with_options();
  [(MTSXPCConnection *)self->_connection invalidate];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  os_unfair_lock_lock_with_options();
  [(MTSXPCConnection *)self->_connection invalidate];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = MTSXPCServerProxy;
  [(MTSXPCServerProxy *)&v3 dealloc];
}

- (MTSXPCServerProxy)initWithConnectionFactory:(id)factory
{
  factoryCopy = factory;
  if (factoryCopy)
  {
    v5 = factoryCopy;
    v15.receiver = self;
    v15.super_class = MTSXPCServerProxy;
    v6 = [(MTSXPCServerProxy *)&v15 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      uUID = [MEMORY[0x277CCAD78] UUID];
      UUID = v7->_UUID;
      v7->_UUID = uUID;

      v10 = _Block_copy(v5);
      connectionFactory = v7->_connectionFactory;
      v7->_connectionFactory = v10;
    }

    return v7;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return [(MTSXPCServerProxy *)v13 init];
  }
}

MTSXPCConnection *__25__MTSXPCServerProxy_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.matter.support.xpc" options:0];
  v1 = [[MTSXPCConnection alloc] initWithXPCConnection:v0];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_11);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

uint64_t __32__MTSXPCServerProxy_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v19 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
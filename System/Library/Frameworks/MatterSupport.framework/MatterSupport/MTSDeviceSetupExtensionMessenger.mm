@interface MTSDeviceSetupExtensionMessenger
+ (id)logCategory;
- (BOOL)startWithError:(id *)error;
- (MTSDeviceSetupExtensionMessenger)initWithContainingAppBundleURL:(id)l;
- (void)configureDeviceWithName:(id)name room:(id)room completionHandler:(id)handler;
- (void)dealloc;
- (void)fetchRoomsInHome:(id)home completionHandler:(id)handler;
- (void)pairDeviceInHome:(id)home onboardingPayload:(id)payload uuid:(id)uuid completionHandler:(id)handler;
- (void)selectThreadNetworkFromScanResults:(id)results completionHandler:(id)handler;
- (void)selectWiFiNetworkFromScanResults:(id)results completionHandler:(id)handler;
- (void)validateDeviceCredential:(id)credential completionHandler:(id)handler;
@end

@implementation MTSDeviceSetupExtensionMessenger

- (void)configureDeviceWithName:(id)name room:(id)room completionHandler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  roomCopy = room;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v26 = v14;
    v27 = 2112;
    v28 = nameCopy;
    v29 = 2112;
    v30 = roomCopy;
    _os_log_impl(&dword_239824000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending configure device request with name: %@, room: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __83__MTSDeviceSetupExtensionMessenger_configureDeviceWithName_room_completionHandler___block_invoke;
  v22 = &unk_278AA1AD0;
  v23 = selfCopy;
  v24 = handlerCopy;
  v16 = handlerCopy;
  v17 = [xpcConnection remoteObjectProxyWithErrorHandler:&v19];

  [v17 configureDeviceWithName:nameCopy room:roomCopy completionHandler:{v16, v19, v20, v21, v22, v23}];
  v18 = *MEMORY[0x277D85DE8];
}

void __83__MTSDeviceSetupExtensionMessenger_configureDeviceWithName_room_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to configure device: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)fetchRoomsInHome:(id)home completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = homeCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending fetch rooms request with home: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __71__MTSDeviceSetupExtensionMessenger_fetchRoomsInHome_completionHandler___block_invoke;
  v19 = &unk_278AA1AD0;
  v20 = selfCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v16];

  [v14 fetchRoomsInHome:homeCopy completionHandler:{v13, v16, v17, v18, v19, v20}];
  v15 = *MEMORY[0x277D85DE8];
}

void __71__MTSDeviceSetupExtensionMessenger_fetchRoomsInHome_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to fetch rooms: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)pairDeviceInHome:(id)home onboardingPayload:(id)payload uuid:(id)uuid completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  payloadCopy = payload;
  uuidCopy = uuid;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v29 = v17;
    v30 = 2112;
    v31 = homeCopy;
    v32 = 2112;
    v33 = payloadCopy;
    v34 = 2112;
    v35 = uuidCopy;
    _os_log_impl(&dword_239824000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending pair device request with home: %@, onboardingPayload: %@, uuid: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __94__MTSDeviceSetupExtensionMessenger_pairDeviceInHome_onboardingPayload_uuid_completionHandler___block_invoke;
  v25 = &unk_278AA1AD0;
  v26 = selfCopy;
  v27 = handlerCopy;
  v19 = handlerCopy;
  v20 = [xpcConnection remoteObjectProxyWithErrorHandler:&v22];

  [v20 pairDeviceInHome:homeCopy onboardingPayload:payloadCopy uuid:uuidCopy completionHandler:{v19, v22, v23, v24, v25, v26}];
  v21 = *MEMORY[0x277D85DE8];
}

void __94__MTSDeviceSetupExtensionMessenger_pairDeviceInHome_onboardingPayload_uuid_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to pair device: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)validateDeviceCredential:(id)credential completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = credentialCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending validate device credential request with deviceCredential: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __79__MTSDeviceSetupExtensionMessenger_validateDeviceCredential_completionHandler___block_invoke;
  v19 = &unk_278AA1AD0;
  v20 = selfCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v16];

  [v14 validateDeviceCredential:credentialCopy completionHandler:{v13, v16, v17, v18, v19, v20}];
  v15 = *MEMORY[0x277D85DE8];
}

void __79__MTSDeviceSetupExtensionMessenger_validateDeviceCredential_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to validate device: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)selectThreadNetworkFromScanResults:(id)results completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = resultsCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending select thread network request with threadScanResults: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __89__MTSDeviceSetupExtensionMessenger_selectThreadNetworkFromScanResults_completionHandler___block_invoke;
  v19 = &unk_278AA1AD0;
  v20 = selfCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v16];

  [v14 selectThreadNetworkFromScanResults:resultsCopy completionHandler:{v13, v16, v17, v18, v19, v20}];
  v15 = *MEMORY[0x277D85DE8];
}

void __89__MTSDeviceSetupExtensionMessenger_selectThreadNetworkFromScanResults_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to select thread network: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)selectWiFiNetworkFromScanResults:(id)results completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = resultsCopy;
    _os_log_impl(&dword_239824000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending select WiFi network request with wifiScanResults: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __87__MTSDeviceSetupExtensionMessenger_selectWiFiNetworkFromScanResults_completionHandler___block_invoke;
  v19 = &unk_278AA1AD0;
  v20 = selfCopy;
  v21 = handlerCopy;
  v13 = handlerCopy;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:&v16];

  [v14 selectWiFiNetworkFromScanResults:resultsCopy completionHandler:{v13, v16, v17, v18, v19, v20}];
  v15 = *MEMORY[0x277D85DE8];
}

void __87__MTSDeviceSetupExtensionMessenger_selectWiFiNetworkFromScanResults_completionHandler___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_239824000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to obtain deviceSetupProxy to select wifi network: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)startWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v50 = v8;
    _os_log_impl(&dword_239824000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting device setup extension messenger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [objc_alloc(MEMORY[0x277CC5DF8]) initWithExtensionPointIdentifier:@"com.apple.matter.support.extension.device-setup"];
  executeExtensionQueryHandler = [(MTSDeviceSetupExtensionMessenger *)selfCopy executeExtensionQueryHandler];
  v11 = (executeExtensionQueryHandler)[2](executeExtensionQueryHandler, v9);

  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke;
  v48[3] = &unk_278AA19E8;
  v48[4] = selfCopy;
  v12 = [v11 na_firstObjectPassingTest:v48];
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277CC5DF0]) initWithExtensionIdentity:v12];
    extensionProcessFactory = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcessFactory];
    v47 = 0;
    v15 = (extensionProcessFactory)[2](extensionProcessFactory, v13, &v47);
    v16 = v47;
    [(MTSDeviceSetupExtensionMessenger *)selfCopy setExtensionProcess:v15];

    extensionProcess = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcess];
    LODWORD(extensionProcessFactory) = extensionProcess == 0;

    if (extensionProcessFactory)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543874;
        v50 = v33;
        v51 = 2112;
        v52 = v13;
        v53 = 2112;
        v54 = v16;
        _os_log_impl(&dword_239824000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to create extension process from configuration %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      if (error)
      {
        v34 = v16;
        v21 = 0;
        *error = v16;
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      extensionProcess2 = [(MTSDeviceSetupExtensionMessenger *)selfCopy extensionProcess];
      v46 = 0;
      v19 = [extensionProcess2 makeMTSXPCConnectionWithError:&v46];
      v43 = v46;
      [(MTSDeviceSetupExtensionMessenger *)selfCopy setXpcConnection:v19];

      xpcConnection = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
      v21 = xpcConnection != 0;

      if (v21)
      {
        mts_deviceSetupExtensionInterface = [MEMORY[0x277CCAE90] mts_deviceSetupExtensionInterface];
        xpcConnection2 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection2 setRemoteObjectInterface:mts_deviceSetupExtensionInterface];

        objc_initWeak(buf, selfCopy);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke_68;
        v44[3] = &unk_278AA1AA8;
        objc_copyWeak(&v45, buf);
        xpcConnection3 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection3 setInterruptionHandler:v44];

        xpcConnection4 = [(MTSDeviceSetupExtensionMessenger *)selfCopy xpcConnection];
        [xpcConnection4 activate];

        objc_destroyWeak(&v45);
        objc_destroyWeak(buf);
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v35 = selfCopy;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v41 = HMFGetLogIdentifier();
          extensionProcess3 = [(MTSDeviceSetupExtensionMessenger *)v35 extensionProcess];
          *buf = 138543874;
          v50 = v41;
          v51 = 2112;
          v52 = extensionProcess3;
          v53 = 2112;
          v54 = v43;
          _os_log_impl(&dword_239824000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to make XPC connection with extension process %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(context);
        if (error)
        {
          v38 = v43;
          *error = v43;
        }
      }
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v29;
      v51 = 2112;
      v52 = @"com.apple.matter.support.extension.device-setup";
      _os_log_impl(&dword_239824000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to find identity for extension identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    if (error)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
      *error = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containingAppBundleURL];
  v4 = [*(a1 + 32) containingAppBundleURL];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __51__MTSDeviceSetupExtensionMessenger_startWithError___block_invoke_68(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_239824000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Device setup XPC connection was interrupted", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(MTSXPCConnection *)self->_xpcConnection invalidate];
  [(MTSDeviceSetupExtensionProcess *)self->_extensionProcess invalidate];
  v3.receiver = self;
  v3.super_class = MTSDeviceSetupExtensionMessenger;
  [(MTSDeviceSetupExtensionMessenger *)&v3 dealloc];
}

- (MTSDeviceSetupExtensionMessenger)initWithContainingAppBundleURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    v5 = lCopy;
    v13.receiver = self;
    v13.super_class = MTSDeviceSetupExtensionMessenger;
    v6 = [(MTSDeviceSetupExtensionMessenger *)&v13 init];
    if (v6)
    {
      v7 = [v5 copy];
      containingAppBundleURL = v6->_containingAppBundleURL;
      v6->_containingAppBundleURL = v7;

      executeExtensionQueryHandler = v6->_executeExtensionQueryHandler;
      v6->_executeExtensionQueryHandler = &__block_literal_global_1954;

      extensionProcessFactory = v6->_extensionProcessFactory;
      v6->_extensionProcessFactory = &__block_literal_global_59;
    }

    return v6;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __67__MTSDeviceSetupExtensionMessenger_initWithContainingAppBundleURL___block_invoke_2(v12);
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_71);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __47__MTSDeviceSetupExtensionMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v9 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end
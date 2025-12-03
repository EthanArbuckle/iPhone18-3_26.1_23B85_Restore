@interface MediaServiceConfiguration
+ (id)sharedInstance;
- (BOOL)thirdPartyMusicAvailable:(id)available;
- (MediaServiceConfiguration)initWithQueue:(id)queue;
- (MediaServiceUpdatedDelegate)delegate;
- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler;
- (void)addMediaService:(id)service toHomes:(id)homes completion:(id)completion;
- (void)dealloc;
- (void)getAvailableServices:(id)services completion:(id)completion;
- (void)getCachedAvailableServices:(id)services completion:(id)completion;
- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)getDefaultMediaService:(id)service completion:(id)completion;
- (void)getDefaultMediaServiceForAllUsers:(id)users;
- (void)getMediaServiceChoicesForAllUsers:(id)users;
- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion;
- (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)getSupportedThirdPartyMediaServices:(id)services;
- (void)removeServiceFromHome:(id)home fromHome:(id)fromHome completion:(id)completion;
- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion;
- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d;
- (void)setDelegate:(id)delegate;
- (void)setVersion:(unint64_t)version completion:(id)completion;
- (void)switchUserAccountInfo:(id)info home:(id)home completion:(id)completion;
- (void)updateDefaultMediaService:(id)service forHome:(id)home completion:(id)completion;
- (void)updateProperty:(id)property forHome:(id)home withOptions:(id)options completion:(id)completion;
- (void)userDidRemoveService:(id)service homeUserID:(id)d;
- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d;
@end

@implementation MediaServiceConfiguration

- (MediaServiceConfiguration)initWithQueue:(id)queue
{
  queueCopy = queue;
  v72.receiver = self;
  v72.super_class = MediaServiceConfiguration;
  v6 = [(MediaServiceConfiguration *)&v72 init];
  if (v6)
  {
    v66 = queueCopy;
    v7 = [[MediaServiceConfigurationMediator alloc] initWithServiceDelegate:v6];
    mediator = v6->_mediator;
    v6->_mediator = v7;

    objc_storeStrong(&v6->_queue, queue);
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mediasetupd.server" options:4096];
    connection = v6->_connection;
    v6->_connection = v9;

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C69080];
    [(NSXPCConnection *)v6->_connection setRemoteObjectInterface:v11];

    v65 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284C54538];
    [(NSXPCConnection *)v6->_connection setExportedInterface:?];
    [(NSXPCConnection *)v6->_connection setExportedObject:v6->_mediator];
    remoteObjectInterface = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    [remoteObjectInterface setClasses:v15 forSelector:sel_addMediaService_usingSetupBundles_completion_ argumentIndex:1 ofReply:0];

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    remoteObjectInterface2 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [remoteObjectInterface2 setClasses:v18 forSelector:sel_getAvailableServices_userIdentifier_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface3 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [remoteObjectInterface3 setClasses:v18 forSelector:sel_getCachedAvailableServices_userIdentifier_completion_ argumentIndex:0 ofReply:1];

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v21 setWithObjects:{v22, v23, v24, objc_opt_class(), 0}];
    remoteObjectInterface4 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [remoteObjectInterface4 setClasses:v25 forSelector:sel_getMediaServiceChoicesForAllUsers_ argumentIndex:0 ofReply:1];

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v27 setWithObjects:{v28, v29, v30, v31, objc_opt_class(), 0}];
    remoteObjectInterface5 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [remoteObjectInterface5 setClasses:v32 forSelector:sel_getServiceConfigurationInfo_serviceID_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface6 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    [remoteObjectInterface6 setClasses:v32 forSelector:sel_getDefaultMediaServiceForAllUsers_ argumentIndex:0 ofReply:1];

    remoteObjectInterface7 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v36 = MEMORY[0x277CBEB98];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    [remoteObjectInterface7 setClasses:v38 forSelector:sel_getServiceConfigurationInfo_serviceID_completion_ argumentIndex:0 ofReply:0];

    remoteObjectInterface8 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v40 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = [v40 setWithObjects:{v41, v42, objc_opt_class(), 0}];
    [remoteObjectInterface8 setClasses:v43 forSelector:sel_getPublicInfoForBundleID_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface9 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v45 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface9 setClasses:v45 forSelector:sel_getResolvedServiceInfo_sharedUserID_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface10 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v47 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface10 setClasses:v47 forSelector:sel_getResolvedServiceInfo_completion_ argumentIndex:0 ofReply:1];

    remoteObjectInterface11 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v49 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = [v49 setWithObjects:{v50, v51, v52, objc_opt_class(), 0}];
    [remoteObjectInterface11 setClasses:v53 forSelector:sel_activeServiceApplicationInformationForSharedUserID_completionHandler_ argumentIndex:0 ofReply:1];

    remoteObjectInterface12 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v55 = MEMORY[0x277CBEB98];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    [remoteObjectInterface12 setClasses:v57 forSelector:sel_getSupportedThirdPartyMediaServices_ argumentIndex:0 ofReply:1];

    remoteObjectInterface13 = [(NSXPCConnection *)v6->_connection remoteObjectInterface];
    v59 = MEMORY[0x277CBEB98];
    v60 = objc_opt_class();
    v61 = [v59 setWithObjects:{v60, objc_opt_class(), 0}];
    [remoteObjectInterface13 setClasses:v61 forSelector:sel_getMediaServiceChoicesForSharedUser_completion_ argumentIndex:0 ofReply:1];

    objc_initWeak(&location, v6);
    v62 = v6->_connection;
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __43__MediaServiceConfiguration_initWithQueue___block_invoke;
    v69[3] = &unk_278AA2FB8;
    objc_copyWeak(&v70, &location);
    [(NSXPCConnection *)v62 setInterruptionHandler:v69];
    v63 = v6->_connection;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __43__MediaServiceConfiguration_initWithQueue___block_invoke_126;
    v67[3] = &unk_278AA2FB8;
    objc_copyWeak(&v68, &location);
    [(NSXPCConnection *)v63 setInvalidationHandler:v67];
    [(NSXPCConnection *)v6->_connection resume];
    objc_destroyWeak(&v68);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);

    queueCopy = v66;
  }

  return v6;
}

void __43__MediaServiceConfiguration_initWithQueue___block_invoke(uint64_t a1)
{
  v2 = _MSLogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__MediaServiceConfiguration_initWithQueue___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 connectionInterrupted];
}

void __43__MediaServiceConfiguration_initWithQueue___block_invoke_126(uint64_t a1)
{
  v2 = _MSLogingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__MediaServiceConfiguration_initWithQueue___block_invoke_126_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 connectionInvalidated];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MediaServiceConfiguration;
  [(MediaServiceConfiguration *)&v3 dealloc];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__MediaServiceConfiguration_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = _sSharedInstance;

  return v2;
}

void __43__MediaServiceConfiguration_sharedInstance__block_invoke(uint64_t a1)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v2 = dispatch_queue_create("com.apple.mediasetup.serviceconfig", v5);
  v3 = [objc_alloc(*(a1 + 32)) initWithQueue:v2];
  v4 = _sSharedInstance;
  _sSharedInstance = v3;
}

- (void)getAvailableServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __61__MediaServiceConfiguration_getAvailableServices_completion___block_invoke;
    v25[3] = &unk_278AA3030;
    v10 = completionCopy;
    v26 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
    uniqueIdentifier = [servicesCopy uniqueIdentifier];
    currentUser = [servicesCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __61__MediaServiceConfiguration_getAvailableServices_completion___block_invoke_2;
    v23[3] = &unk_278AA3080;
    v23[4] = self;
    v24 = v10;
    [v11 getAvailableServices:uniqueIdentifier userIdentifier:uniqueIdentifier2 completion:v23];

    v15 = v26;
  }

  else
  {
    v15 = _MSLogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v15 getAvailableServices:v16 completion:v17, v18, v19, v20, v21, v22];
    }
  }
}

void __61__MediaServiceConfiguration_getAvailableServices_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  +[MSAnalytics sendUserRegisteredNumberOfServices:](MSAnalytics, "sendUserRegisteredNumberOfServices:", [v5 count]);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__MediaServiceConfiguration_getAvailableServices_completion___block_invoke_3;
    v9[3] = &unk_278AA3058;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 _performBlock:v9];
  }
}

- (void)getCachedAvailableServices:(id)services completion:(id)completion
{
  servicesCopy = services;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__MediaServiceConfiguration_getCachedAvailableServices_completion___block_invoke;
    v25[3] = &unk_278AA3030;
    v10 = completionCopy;
    v26 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
    uniqueIdentifier = [servicesCopy uniqueIdentifier];
    currentUser = [servicesCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __67__MediaServiceConfiguration_getCachedAvailableServices_completion___block_invoke_2;
    v23[3] = &unk_278AA3080;
    v23[4] = self;
    v24 = v10;
    [v11 getCachedAvailableServices:uniqueIdentifier userIdentifier:uniqueIdentifier2 completion:v23];

    v15 = v26;
  }

  else
  {
    v15 = _MSLogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v15 getCachedAvailableServices:v16 completion:v17, v18, v19, v20, v21, v22];
    }
  }
}

void __67__MediaServiceConfiguration_getCachedAvailableServices_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__MediaServiceConfiguration_getCachedAvailableServices_completion___block_invoke_3;
    v9[3] = &unk_278AA3058;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 _performBlock:v9];
  }
}

- (BOOL)thirdPartyMusicAvailable:(id)available
{
  availableCopy = available;
  if (availableCopy)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __54__MediaServiceConfiguration_thirdPartyMusicAvailable___block_invoke;
    v19[3] = &unk_278AA30A8;
    v19[4] = &v20;
    v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v19];
    uniqueIdentifier = [availableCopy uniqueIdentifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__MediaServiceConfiguration_thirdPartyMusicAvailable___block_invoke_134;
    v18[3] = &unk_278AA30D0;
    v18[4] = &v20;
    [v6 thirdPartyMusicAvailable:uniqueIdentifier completion:v18];

    v8 = *(v21 + 24);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v9 = _MSLogingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v9 thirdPartyMusicAvailable:v10, v11, v12, v13, v14, v15, v16];
    }

    v8 = 0;
  }

  return v8 & 1;
}

void __54__MediaServiceConfiguration_thirdPartyMusicAvailable___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MSLogingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__MediaServiceConfiguration_thirdPartyMusicAvailable___block_invoke_cold_1(v3, v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
}

- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __83__MediaServiceConfiguration_getCachedServiceInfo_homeUserID_endpointID_completion___block_invoke;
    v28[3] = &unk_278AA3030;
    v16 = completionCopy;
    v29 = v16;
    v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __83__MediaServiceConfiguration_getCachedServiceInfo_homeUserID_endpointID_completion___block_invoke_2;
    v26[3] = &unk_278AA3120;
    v26[4] = self;
    v27 = v16;
    [v17 getCachedServiceInfo:infoCopy homeUserID:dCopy endpointID:iDCopy completion:v26];

    v18 = v29;
  }

  else
  {
    v18 = _MSLogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v18 getCachedServiceInfo:v19 homeUserID:v20 endpointID:v21 completion:v22, v23, v24, v25];
    }
  }
}

void __83__MediaServiceConfiguration_getCachedServiceInfo_homeUserID_endpointID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__MediaServiceConfiguration_getCachedServiceInfo_homeUserID_endpointID_completion___block_invoke_3;
    v12[3] = &unk_278AA30F8;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    [v11 _performBlock:v12];
  }
}

- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  activityCopy = activity;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __107__MediaServiceConfiguration_requestAuthRenewalForMediaService_homeUserID_parentNetworkActivity_completion___block_invoke;
    v28[3] = &unk_278AA3030;
    v16 = completionCopy;
    v29 = v16;
    v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __107__MediaServiceConfiguration_requestAuthRenewalForMediaService_homeUserID_parentNetworkActivity_completion___block_invoke_2;
    v26[3] = &unk_278AA3148;
    v26[4] = self;
    v27 = v16;
    [v17 requestAuthRenewalForMediaService:serviceCopy homeUserID:dCopy parentNetworkActivity:activityCopy completion:v26];

    v18 = v29;
  }

  else
  {
    v18 = _MSLogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v18 requestAuthRenewalForMediaService:v19 homeUserID:v20 parentNetworkActivity:v21 completion:v22, v23, v24, v25];
    }
  }
}

void __107__MediaServiceConfiguration_requestAuthRenewalForMediaService_homeUserID_parentNetworkActivity_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __107__MediaServiceConfiguration_requestAuthRenewalForMediaService_homeUserID_parentNetworkActivity_completion___block_invoke_3;
    v9[3] = &unk_278AA3058;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 _performBlock:v9];
  }
}

- (void)updateDefaultMediaService:(id)service forHome:(id)home completion:(id)completion
{
  serviceCopy = service;
  homeCopy = home;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __74__MediaServiceConfiguration_updateDefaultMediaService_forHome_completion___block_invoke;
    v29[3] = &unk_278AA3030;
    v13 = completionCopy;
    v30 = v13;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v29];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    currentUser = [homeCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__MediaServiceConfiguration_updateDefaultMediaService_forHome_completion___block_invoke_2;
    v26[3] = &unk_278AA3198;
    v28 = v13;
    v26[4] = self;
    v27 = serviceCopy;
    [v14 updateDefaultMediaService:v27 homeID:uniqueIdentifier homeUserID:uniqueIdentifier2 completion:v26];

    v18 = v30;
  }

  else
  {
    v18 = _MSLogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v18 updateDefaultMediaService:v19 forHome:v20 completion:v21, v22, v23, v24, v25];
    }
  }
}

void __74__MediaServiceConfiguration_updateDefaultMediaService_forHome_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__MediaServiceConfiguration_updateDefaultMediaService_forHome_completion___block_invoke_3;
    v12[3] = &unk_278AA3170;
    v14 = v6;
    v15 = a2;
    v13 = v5;
    [v7 _performBlock:v12];
  }

  if (a2)
  {
    v8 = [MSConfigurationEvent alloc];
    v9 = [*(a1 + 40) serviceID];
    v10 = [v9 UUIDString];
    v11 = [(MSConfigurationEvent *)v8 initWithServiceId:v10];

    [MSAnalytics sendConfigEvent:v11];
  }
}

- (void)getDefaultMediaService:(id)service completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__MediaServiceConfiguration_getDefaultMediaService_completion___block_invoke;
    v25[3] = &unk_278AA3030;
    v10 = completionCopy;
    v26 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
    uniqueIdentifier = [serviceCopy uniqueIdentifier];
    currentUser = [serviceCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __63__MediaServiceConfiguration_getDefaultMediaService_completion___block_invoke_2;
    v23[3] = &unk_278AA3148;
    v23[4] = self;
    v24 = v10;
    [v11 getDefaultMediaService:uniqueIdentifier homeUserID:uniqueIdentifier2 completion:v23];

    v15 = v26;
  }

  else
  {
    v15 = _MSLogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v15 getDefaultMediaService:v16 completion:v17, v18, v19, v20, v21, v22];
    }
  }
}

void __63__MediaServiceConfiguration_getDefaultMediaService_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__MediaServiceConfiguration_getDefaultMediaService_completion___block_invoke_3;
    v9[3] = &unk_278AA3058;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 _performBlock:v9];
  }
}

- (void)removeServiceFromHome:(id)home fromHome:(id)fromHome completion:(id)completion
{
  homeCopy = home;
  fromHomeCopy = fromHome;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __71__MediaServiceConfiguration_removeServiceFromHome_fromHome_completion___block_invoke;
    v28[3] = &unk_278AA3030;
    v13 = completionCopy;
    v29 = v13;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
    uniqueIdentifier = [fromHomeCopy uniqueIdentifier];
    currentUser = [fromHomeCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__MediaServiceConfiguration_removeServiceFromHome_fromHome_completion___block_invoke_2;
    v26[3] = &unk_278AA31C0;
    v26[4] = self;
    v27 = v13;
    [v14 removeMediaService:homeCopy homeID:uniqueIdentifier homeUserID:uniqueIdentifier2 completion:v26];

    v18 = v29;
  }

  else
  {
    v18 = _MSLogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v18 removeServiceFromHome:v19 fromHome:v20 completion:v21, v22, v23, v24, v25];
    }
  }
}

void __71__MediaServiceConfiguration_removeServiceFromHome_fromHome_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__MediaServiceConfiguration_removeServiceFromHome_fromHome_completion___block_invoke_3;
    v8[3] = &unk_278AA3170;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    [v7 _performBlock:v8];
  }
}

- (void)addMediaService:(id)service toHomes:(id)homes completion:(id)completion
{
  serviceCopy = service;
  completionCopy = completion;
  if (completionCopy)
  {
    v10 = [homes na_map:&__block_literal_global_1];
    connection = self->_connection;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __64__MediaServiceConfiguration_addMediaService_toHomes_completion___block_invoke_2;
    v23[3] = &unk_278AA3030;
    v12 = completionCopy;
    v24 = v12;
    v13 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v23];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__MediaServiceConfiguration_addMediaService_toHomes_completion___block_invoke_3;
    v21[3] = &unk_278AA31C0;
    v21[4] = self;
    v22 = v12;
    [v13 addMediaService:serviceCopy usingSetupBundles:v10 completion:v21];
  }

  else
  {
    v10 = _MSLogingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v10 addMediaService:v14 toHomes:v15 completion:v16, v17, v18, v19, v20];
    }
  }
}

MSSetupBundle *__64__MediaServiceConfiguration_addMediaService_toHomes_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MSSetupBundle alloc];
  v4 = [v2 uniqueIdentifier];
  v5 = [v2 currentUser];

  v6 = [v5 uniqueIdentifier];
  v7 = [(MSSetupBundle *)v3 initWithHomeID:v4 homeUserID:v6];

  return v7;
}

void __64__MediaServiceConfiguration_addMediaService_toHomes_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__MediaServiceConfiguration_addMediaService_toHomes_completion___block_invoke_4;
    v8[3] = &unk_278AA3170;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    [v7 _performBlock:v8];
  }
}

- (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __65__MediaServiceConfiguration_getPublicInfoForBundleID_completion___block_invoke;
    v22[3] = &unk_278AA3030;
    v10 = completionCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __65__MediaServiceConfiguration_getPublicInfoForBundleID_completion___block_invoke_2;
    v20[3] = &unk_278AA3230;
    v20[4] = self;
    v21 = v10;
    [v11 getPublicInfoForBundleID:dCopy completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _MSLogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v12 getPublicInfoForBundleID:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __65__MediaServiceConfiguration_getPublicInfoForBundleID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __65__MediaServiceConfiguration_getPublicInfoForBundleID_completion___block_invoke_3;
    v6[3] = &unk_278AA3208;
    v8 = v4;
    v7 = v3;
    [v5 _performBlock:v6];
  }
}

- (void)getServiceConfigurationInfo:(id)info completion:(id)completion
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v5 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Please use updated API, getServiceConfigurationInfo:serviceID:completion";
    v6 = MEMORY[0x277CBEAC0];
    completionCopy = completion;
    v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v5 errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:v8];
    (*(completion + 2))(completionCopy, 0, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __78__MediaServiceConfiguration_getServiceConfigurationInfo_serviceID_completion___block_invoke;
    v25[3] = &unk_278AA3030;
    v13 = completionCopy;
    v26 = v13;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__MediaServiceConfiguration_getServiceConfigurationInfo_serviceID_completion___block_invoke_2;
    v23[3] = &unk_278AA3258;
    v23[4] = self;
    v24 = v13;
    [v14 getServiceConfigurationInfo:infoCopy serviceID:dCopy completion:v23];

    v15 = v26;
  }

  else
  {
    v15 = _MSLogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v15 getServiceConfigurationInfo:v16 serviceID:v17 completion:v18, v19, v20, v21, v22];
    }
  }
}

void __78__MediaServiceConfiguration_getServiceConfigurationInfo_serviceID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__MediaServiceConfiguration_getServiceConfigurationInfo_serviceID_completion___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)setVersion:(unint64_t)version completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__MediaServiceConfiguration_setVersion_completion___block_invoke;
    v21[3] = &unk_278AA3030;
    v9 = completionCopy;
    v22 = v9;
    v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__MediaServiceConfiguration_setVersion_completion___block_invoke_2;
    v19[3] = &unk_278AA3030;
    v20 = v9;
    [v10 setVersion:version completion:v19];

    v11 = v22;
  }

  else
  {
    v11 = _MSLogingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v11 setVersion:v12 completion:v13, v14, v15, v16, v17, v18];
    }
  }
}

uint64_t __89__MediaServiceConfiguration_overrideAppleMusicSubscriptionStatus_homeUserIDS_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __89__MediaServiceConfiguration_overrideAppleMusicSubscriptionStatus_homeUserIDS_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getDefaultMediaServiceForAllUsers:(id)users
{
  usersCopy = users;
  v5 = usersCopy;
  if (usersCopy)
  {
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__MediaServiceConfiguration_getDefaultMediaServiceForAllUsers___block_invoke;
    v19[3] = &unk_278AA3030;
    v7 = usersCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __63__MediaServiceConfiguration_getDefaultMediaServiceForAllUsers___block_invoke_2;
    v17[3] = &unk_278AA3280;
    v17[4] = self;
    v18 = v7;
    [v8 getDefaultMediaServiceForAllUsers:v17];

    v9 = v20;
  }

  else
  {
    v9 = _MSLogingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v9 getDefaultMediaServiceForAllUsers:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __63__MediaServiceConfiguration_getDefaultMediaServiceForAllUsers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__MediaServiceConfiguration_getDefaultMediaServiceForAllUsers___block_invoke_3;
    v9[3] = &unk_278AA3058;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    [v8 _performBlock:v9];
  }
}

- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __76__MediaServiceConfiguration_getResolvedServiceInfo_sharedUserID_completion___block_invoke;
    v25[3] = &unk_278AA3030;
    v13 = completionCopy;
    v26 = v13;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__MediaServiceConfiguration_getResolvedServiceInfo_sharedUserID_completion___block_invoke_2;
    v23[3] = &unk_278AA32A8;
    v23[4] = self;
    v24 = v13;
    [v14 getResolvedServiceInfo:infoCopy sharedUserID:dCopy completion:v23];

    v15 = v26;
  }

  else
  {
    v15 = _MSLogingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v15 getResolvedServiceInfo:v16 sharedUserID:v17 completion:v18, v19, v20, v21, v22];
    }
  }
}

void __76__MediaServiceConfiguration_getResolvedServiceInfo_sharedUserID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__MediaServiceConfiguration_getResolvedServiceInfo_sharedUserID_completion___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)getResolvedServiceInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__MediaServiceConfiguration_getResolvedServiceInfo_completion___block_invoke;
    v22[3] = &unk_278AA3030;
    v10 = completionCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__MediaServiceConfiguration_getResolvedServiceInfo_completion___block_invoke_2;
    v20[3] = &unk_278AA32A8;
    v20[4] = self;
    v21 = v10;
    [v11 getResolvedServiceInfo:infoCopy completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _MSLogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v12 getResolvedServiceInfo:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __63__MediaServiceConfiguration_getResolvedServiceInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__MediaServiceConfiguration_getResolvedServiceInfo_completion___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)switchUserAccountInfo:(id)info home:(id)home completion:(id)completion
{
  infoCopy = info;
  homeCopy = home;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __67__MediaServiceConfiguration_switchUserAccountInfo_home_completion___block_invoke;
    v28[3] = &unk_278AA3030;
    v13 = completionCopy;
    v29 = v13;
    v14 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v28];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    currentUser = [homeCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __67__MediaServiceConfiguration_switchUserAccountInfo_home_completion___block_invoke_2;
    v26[3] = &unk_278AA32D0;
    v26[4] = self;
    v27 = v13;
    [v14 switchUserAccountInfo:infoCopy homeID:uniqueIdentifier homeUserID:uniqueIdentifier2 completion:v26];

    v18 = v29;
  }

  else
  {
    v18 = _MSLogingFacility();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration *)v18 switchUserAccountInfo:v19 home:v20 completion:v21, v22, v23, v24, v25];
    }
  }
}

void __67__MediaServiceConfiguration_switchUserAccountInfo_home_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__MediaServiceConfiguration_switchUserAccountInfo_home_completion___block_invoke_3;
  v7[3] = &unk_278AA3208;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 _performBlock:v7];
}

- (void)setDelegate:(id)delegate
{
  v10 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _MSLogingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = delegateCopy;
    _os_log_impl(&dword_23986C000, v5, OS_LOG_TYPE_INFO, "Setting MediaServiceUpdatedDelegate %@", &v8, 0xCu);
  }

  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:&__block_literal_global_147];
  [v6 openConnection];

  objc_storeWeak(&self->_delegate, delegateCopy);
  v7 = *MEMORY[0x277D85DE8];
}

void __41__MediaServiceConfiguration_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _MSLogingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __41__MediaServiceConfiguration_setDelegate___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)serviceSettingDidUpdate:(id)update homeUserID:(id)d
{
  updateCopy = update;
  dCopy = d;
  delegate = [(MediaServiceConfiguration *)self delegate];
  if ([delegate conformsToProtocol:&unk_284C690E0])
  {
    delegate2 = [(MediaServiceConfiguration *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    delegate = [(MediaServiceConfiguration *)self delegate];
    [delegate serviceSettingDidUpdate:updateCopy homeUserID:dCopy];
  }

LABEL_5:
}

- (void)userDidRemoveService:(id)service homeUserID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  v7 = [MSRemovalEvent alloc];
  serviceID = [serviceCopy serviceID];
  uUIDString = [serviceID UUIDString];
  v10 = [(MSRemovalEvent *)v7 initWithServiceId:uUIDString];

  [MSAnalytics sendRemovalEvent:v10];
  delegate = [(MediaServiceConfiguration *)self delegate];
  if ([delegate conformsToProtocol:&unk_284C690E0])
  {
    delegate2 = [(MediaServiceConfiguration *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_5;
    }

    delegate = [(MediaServiceConfiguration *)self delegate];
    [delegate userDidRemoveService:serviceCopy homeUserID:dCopy];
  }

LABEL_5:
}

- (void)userDidUpdateDefaultService:(id)service homeUserID:(id)d
{
  serviceCopy = service;
  dCopy = d;
  delegate = [(MediaServiceConfiguration *)self delegate];
  if ([delegate conformsToProtocol:&unk_284C690E0])
  {
    delegate2 = [(MediaServiceConfiguration *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    delegate = [(MediaServiceConfiguration *)self delegate];
    [delegate userDidUpdateDefaultService:serviceCopy homeUserID:dCopy];
  }

LABEL_5:
}

- (MediaServiceUpdatedDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateProperty:(id)property forHome:(id)home withOptions:(id)options completion:(id)completion
{
  propertyCopy = property;
  homeCopy = home;
  optionsCopy = options;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __89__MediaServiceConfiguration_MediaService__updateProperty_forHome_withOptions_completion___block_invoke;
    v31[3] = &unk_278AA3030;
    v16 = completionCopy;
    v32 = v16;
    v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v31];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    currentUser = [homeCopy currentUser];
    uniqueIdentifier2 = [currentUser uniqueIdentifier];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __89__MediaServiceConfiguration_MediaService__updateProperty_forHome_withOptions_completion___block_invoke_2;
    v29[3] = &unk_278AA31C0;
    v29[4] = self;
    v30 = v16;
    [v17 updateProperty:propertyCopy homeID:uniqueIdentifier homeUserID:uniqueIdentifier2 withOptions:optionsCopy completion:v29];

    v21 = v32;
  }

  else
  {
    v21 = _MSLogingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration(MediaService) *)v21 updateProperty:v22 forHome:v23 withOptions:v24 completion:v25, v26, v27, v28];
    }
  }
}

void __89__MediaServiceConfiguration_MediaService__updateProperty_forHome_withOptions_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __89__MediaServiceConfiguration_MediaService__updateProperty_forHome_withOptions_completion___block_invoke_3;
    v8[3] = &unk_278AA3170;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    [v7 _performBlock:v8];
  }
}

- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (handlerCopy)
  {
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __112__MediaServiceConfiguration_AppSelection__activeServiceApplicationInformationForSharedUserID_completionHandler___block_invoke;
    v22[3] = &unk_278AA3030;
    v10 = handlerCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __112__MediaServiceConfiguration_AppSelection__activeServiceApplicationInformationForSharedUserID_completionHandler___block_invoke_2;
    v20[3] = &unk_278AA3318;
    v20[4] = self;
    v21 = v10;
    [v11 activeServiceApplicationInformationForSharedUserID:dCopy completionHandler:v20];

    v12 = v23;
  }

  else
  {
    v12 = _MSLogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration(AppSelection) *)v12 activeServiceApplicationInformationForSharedUserID:v13 completionHandler:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __112__MediaServiceConfiguration_AppSelection__activeServiceApplicationInformationForSharedUserID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__MediaServiceConfiguration_AppSelection__activeServiceApplicationInformationForSharedUserID_completionHandler___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __90__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForSharedUser_completion___block_invoke;
    v22[3] = &unk_278AA3030;
    v10 = completionCopy;
    v23 = v10;
    v11 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __90__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForSharedUser_completion___block_invoke_2;
    v20[3] = &unk_278AA3340;
    v20[4] = self;
    v21 = v10;
    [v11 getMediaServiceChoicesForSharedUser:userCopy completion:v20];

    v12 = v23;
  }

  else
  {
    v12 = _MSLogingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration(AppSelection) *)v12 getMediaServiceChoicesForSharedUser:v13 completion:v14, v15, v16, v17, v18, v19];
    }
  }
}

void __90__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForSharedUser_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForSharedUser_completion___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)getMediaServiceChoicesForAllUsers:(id)users
{
  usersCopy = users;
  v5 = usersCopy;
  if (usersCopy)
  {
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __77__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForAllUsers___block_invoke;
    v19[3] = &unk_278AA3030;
    v7 = usersCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __77__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForAllUsers___block_invoke_2;
    v17[3] = &unk_278AA3258;
    v17[4] = self;
    v18 = v7;
    [v8 getMediaServiceChoicesForAllUsers:v17];

    v9 = v20;
  }

  else
  {
    v9 = _MSLogingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration(AppSelection) *)v9 getMediaServiceChoicesForAllUsers:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __77__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForAllUsers___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__MediaServiceConfiguration_AppSelection__getMediaServiceChoicesForAllUsers___block_invoke_3;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)getSupportedThirdPartyMediaServices:(id)services
{
  servicesCopy = services;
  v5 = servicesCopy;
  if (servicesCopy)
  {
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke;
    v19[3] = &unk_278AA3030;
    v7 = servicesCopy;
    v20 = v7;
    v8 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke_199;
    v17[3] = &unk_278AA3340;
    v17[4] = self;
    v18 = v7;
    [v8 getSupportedThirdPartyMediaServices:v17];

    v9 = v20;
  }

  else
  {
    v9 = _MSLogingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(MediaServiceConfiguration(AppSelection) *)v9 getSupportedThirdPartyMediaServices:v10, v11, v12, v13, v14, v15, v16];
    }
  }
}

void __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MSLogingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  (*(*(a1 + 32) + 16))();
}

void __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke_2;
  v11[3] = &unk_278AA3058;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  [v7 _performBlock:v11];
}

- (void)getAvailableServices:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getCachedAvailableServices:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)thirdPartyMusicAvailable:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s Unexpected parameter, Nil HMHome", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__MediaServiceConfiguration_thirdPartyMusicAvailable___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[MediaServiceConfiguration thirdPartyMusicAvailable:]_block_invoke";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_23986C000, a2, OS_LOG_TYPE_ERROR, "%s Error %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)getCachedServiceInfo:(uint64_t)a3 homeUserID:(uint64_t)a4 endpointID:(uint64_t)a5 completion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)requestAuthRenewalForMediaService:(uint64_t)a3 homeUserID:(uint64_t)a4 parentNetworkActivity:(uint64_t)a5 completion:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateDefaultMediaService:(uint64_t)a3 forHome:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDefaultMediaService:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeServiceFromHome:(uint64_t)a3 fromHome:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addMediaService:(uint64_t)a3 toHomes:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getPublicInfoForBundleID:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getServiceConfigurationInfo:(uint64_t)a3 serviceID:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setVersion:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getDefaultMediaServiceForAllUsers:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getResolvedServiceInfo:(uint64_t)a3 sharedUserID:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getResolvedServiceInfo:(uint64_t)a3 completion:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)switchUserAccountInfo:(uint64_t)a3 home:(uint64_t)a4 completion:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __41__MediaServiceConfiguration_setDelegate___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a2, a3, "Error establishing connection, %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __79__MediaServiceConfiguration_AppSelection__getSupportedThirdPartyMediaServices___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_23986C000, a2, a3, "got an error when working with the proxy: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end
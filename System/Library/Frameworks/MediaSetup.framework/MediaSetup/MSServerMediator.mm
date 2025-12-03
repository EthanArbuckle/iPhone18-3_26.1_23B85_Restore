@interface MSServerMediator
- (MSAccountsImplementer)accountsInterfaceDelegate;
- (MSProxyConnectionDelegate)connectionDelegate;
- (MSServerMediator)initWithAccountsDelegate:(id)delegate;
- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler;
- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion;
- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion;
- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion;
- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion;
- (void)getDefaultMediaServiceForAllUsers:(id)users;
- (void)getMediaServiceChoicesForAllUsers:(id)users;
- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion;
- (void)getPublicInfoForBundleID:(id)d completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info completion:(id)completion;
- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion;
- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion;
- (void)getSupportedThirdPartyMediaServices:(id)services;
- (void)openConnection;
- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion;
- (void)setVersion:(unint64_t)version completion:(id)completion;
- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)thirdPartyMusicAvailable:(id)available completion:(id)completion;
- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion;
- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion;
@end

@implementation MSServerMediator

- (MSServerMediator)initWithAccountsDelegate:(id)delegate
{
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = MSServerMediator;
  v5 = [(MSServerMediator *)&v9 init];
  if (v5)
  {
    v6 = _MSLogingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "[MSServerMediator initWithAccountsDelegate:]";
      _os_log_impl(&dword_23986C000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    objc_storeWeak(&v5->_accountsInterfaceDelegate, delegateCopy);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)openConnection
{
  connectionDelegate = [(MSServerMediator *)self connectionDelegate];

  if (connectionDelegate)
  {
    connectionDelegate2 = [(MSServerMediator *)self connectionDelegate];
    [connectionDelegate2 openConnection];
  }
}

- (void)getDefaultMediaService:(id)service homeUserID:(id)d completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getDefaultMediaService:serviceCopy homeUserID:dCopy completion:completionCopy];
  }
}

- (void)updateDefaultMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 updateDefaultMediaService:serviceCopy homeID:dCopy homeUserID:iDCopy completion:completionCopy];
  }
}

- (void)getAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getAvailableServices:servicesCopy userIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)getMediaServiceChoicesForSharedUser:(id)user completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (!accountsInterfaceDelegate)
  {
    v10 = _MSLogingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(MSServerMediator *)v10 getMediaServiceChoicesForSharedUser:v11 completion:v12, v13, v14, v15, v16, v17];
    }

    accountsInterfaceDelegate2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:0];
    completionCopy[2](completionCopy, 0, accountsInterfaceDelegate2);
    goto LABEL_7;
  }

  if (completionCopy)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getMediaServiceChoicesForSharedUser:userCopy completion:completionCopy];
LABEL_7:
  }
}

- (void)getMediaServiceChoicesForAllUsers:(id)users
{
  usersCopy = users;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (!accountsInterfaceDelegate)
  {
    v7 = _MSLogingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSServerMediator *)v7 getMediaServiceChoicesForSharedUser:v8 completion:v9, v10, v11, v12, v13, v14];
    }

    accountsInterfaceDelegate2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:0];
    usersCopy[2](usersCopy, 0, accountsInterfaceDelegate2);
    goto LABEL_7;
  }

  if (usersCopy)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getMediaServiceChoicesForAllUsers:usersCopy];
LABEL_7:
  }
}

- (void)getCachedAvailableServices:(id)services userIdentifier:(id)identifier completion:(id)completion
{
  servicesCopy = services;
  identifierCopy = identifier;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getCachedAvailableServices:servicesCopy userIdentifier:identifierCopy completion:completionCopy];
  }
}

- (void)thirdPartyMusicAvailable:(id)available completion:(id)completion
{
  availableCopy = available;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 thirdPartyMusicAvailable:availableCopy completion:completionCopy];
  }
}

- (void)getCachedServiceInfo:(id)info homeUserID:(id)d endpointID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getCachedServiceInfo:infoCopy homeUserID:dCopy endpointID:iDCopy completion:completionCopy];
  }
}

- (void)requestAuthRenewalForMediaService:(id)service homeUserID:(id)d parentNetworkActivity:(id)activity completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  activityCopy = activity;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 requestAuthRenewalForMediaService:serviceCopy homeUserID:dCopy parentNetworkActivity:activityCopy completion:completionCopy];
  }
}

- (void)addMediaService:(id)service usingSetupBundles:(id)bundles completion:(id)completion
{
  serviceCopy = service;
  bundlesCopy = bundles;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 addMediaService:serviceCopy usingSetupBundles:bundlesCopy completion:completionCopy];
  }
}

- (void)removeMediaService:(id)service homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  serviceCopy = service;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 removeMediaService:serviceCopy homeID:dCopy homeUserID:iDCopy completion:completionCopy];
  }
}

- (void)updateProperty:(id)property homeID:(id)d homeUserID:(id)iD withOptions:(id)options completion:(id)completion
{
  propertyCopy = property;
  dCopy = d;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 updateProperty:propertyCopy homeID:dCopy homeUserID:iDCopy withOptions:optionsCopy completion:completionCopy];
  }
}

- (void)getServiceConfigurationInfo:(id)info serviceID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getServiceConfigurationInfo:infoCopy serviceID:dCopy completion:completionCopy];
  }
}

- (void)getResolvedServiceInfo:(id)info sharedUserID:(id)d completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getResolvedServiceInfo:infoCopy sharedUserID:dCopy completion:completionCopy];
  }
}

- (void)getDefaultMediaServiceForAllUsers:(id)users
{
  usersCopy = users;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (usersCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getDefaultMediaServiceForAllUsers:usersCopy];
  }
}

- (void)getPublicInfoForBundleID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getPublicInfoForBundleID:dCopy completion:completionCopy];
  }
}

- (void)setVersion:(unint64_t)version completion:(id)completion
{
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 setVersion:version completion:completionCopy];
  }
}

- (void)getResolvedServiceInfo:(id)info completion:(id)completion
{
  infoCopy = info;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getResolvedServiceInfo:infoCopy completion:completionCopy];
  }
}

- (void)activeServiceApplicationInformationForSharedUserID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (handlerCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 activeServiceApplicationInformationForSharedUserID:dCopy completionHandler:handlerCopy];
  }
}

- (void)switchUserAccountInfo:(id)info homeID:(id)d homeUserID:(id)iD completion:(id)completion
{
  infoCopy = info;
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (completionCopy && accountsInterfaceDelegate)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 switchUserAccountInfo:infoCopy homeID:dCopy homeUserID:iDCopy completion:completionCopy];
  }
}

- (void)getSupportedThirdPartyMediaServices:(id)services
{
  servicesCopy = services;
  accountsInterfaceDelegate = [(MSServerMediator *)self accountsInterfaceDelegate];

  if (!accountsInterfaceDelegate)
  {
    v7 = _MSLogingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(MSServerMediator *)v7 getMediaServiceChoicesForSharedUser:v8 completion:v9, v10, v11, v12, v13, v14];
    }

    accountsInterfaceDelegate2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.mediasetup.errorDomain" code:1 userInfo:0];
    servicesCopy[2](servicesCopy, 0, accountsInterfaceDelegate2);
    goto LABEL_7;
  }

  if (servicesCopy)
  {
    accountsInterfaceDelegate2 = [(MSServerMediator *)self accountsInterfaceDelegate];
    [accountsInterfaceDelegate2 getSupportedThirdPartyMediaServices:servicesCopy];
LABEL_7:
  }
}

- (MSAccountsImplementer)accountsInterfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accountsInterfaceDelegate);

  return WeakRetained;
}

- (MSProxyConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end
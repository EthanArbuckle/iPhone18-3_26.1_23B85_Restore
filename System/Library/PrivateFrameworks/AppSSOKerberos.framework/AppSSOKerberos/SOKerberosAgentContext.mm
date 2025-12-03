@interface SOKerberosAgentContext
- (BOOL)authRequestPending;
- (SOKerberosAgentContext)initWithProfile:(id)profile;
- (void)setAuthRequestPending:(BOOL)pending;
@end

@implementation SOKerberosAgentContext

- (SOKerberosAgentContext)initWithProfile:(id)profile
{
  profileCopy = profile;
  v42.receiver = self;
  v42.super_class = SOKerberosAgentContext;
  v6 = [(SOKerberosAgentContext *)&v42 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    contextNetworkWorkQueue = v6->_contextNetworkWorkQueue;
    v6->_contextNetworkWorkQueue = v7;

    v9 = MEMORY[0x277CCACA8];
    realm = [profileCopy realm];
    v11 = [v9 stringWithFormat:@"com.apple.kerberosextension.%@.network", realm];
    [(NSOperationQueue *)v6->_contextNetworkWorkQueue setName:v11];

    [(NSOperationQueue *)v6->_contextNetworkWorkQueue setSuspended:1];
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    contextKerberosWorkQueue = v6->_contextKerberosWorkQueue;
    v6->_contextKerberosWorkQueue = v12;

    v14 = MEMORY[0x277CCACA8];
    realm2 = [profileCopy realm];
    v16 = [v14 stringWithFormat:@"com.apple.kerberosextension.%@.kerberos", realm2];
    [(NSOperationQueue *)v6->_contextKerberosWorkQueue setName:v16];

    [(NSOperationQueue *)v6->_contextKerberosWorkQueue setSuspended:1];
    objc_storeStrong(&v6->_profile, profile);
    v17 = [SOKerberosRealmSettings alloc];
    realm3 = [profileCopy realm];
    v19 = [(SOKerberosRealmSettings *)v17 initWithRealm:realm3];
    settings = v6->_settings;
    v6->_settings = v19;

    v21 = [SOKerberosExtensionData alloc];
    extensionData = [profileCopy extensionData];
    v23 = [(SOKerberosExtensionData *)v21 initWithDictionary:extensionData];
    extensionData = v6->_extensionData;
    v6->_extensionData = v23;

    v25 = [SONetworkIdentity alloc];
    realm4 = [profileCopy realm];
    v27 = [(SONetworkIdentity *)v25 initForRealm:realm4 bundleIdentifier:0 auditToken:0];
    identity = v6->_identity;
    v6->_identity = v27;

    v29 = [SOADSiteDiscovery alloc];
    realm5 = [(SOFullProfile *)v6->_profile realm];
    v31 = [(SOADSiteDiscovery *)v29 initWithRealm:realm5];
    siteDiscovery = v6->_siteDiscovery;
    v6->_siteDiscovery = v31;

    v33 = objc_alloc_init(SOAuthorizationWrapper);
    authWrapper = v6->_authWrapper;
    v6->_authWrapper = v33;

    v35 = objc_alloc_init(SOAuthorizationWrapper);
    receivedTGTAuthWrapper = v6->_receivedTGTAuthWrapper;
    v6->_receivedTGTAuthWrapper = v35;

    v37 = objc_alloc_init(SOAuthorizationWrapper);
    passwordSyncAuthWrapper = v6->_passwordSyncAuthWrapper;
    v6->_passwordSyncAuthWrapper = v37;

    v39 = objc_alloc_init(SOAuthorizationWrapper);
    passwordChangeAuthWrapper = v6->_passwordChangeAuthWrapper;
    v6->_passwordChangeAuthWrapper = v39;

    *&v6->_authRequestPending = 0;
  }

  return v6;
}

- (BOOL)authRequestPending
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  authRequestPending = selfCopy->_authRequestPending;
  objc_sync_exit(selfCopy);

  return authRequestPending;
}

- (void)setAuthRequestPending:(BOOL)pending
{
  obj = self;
  objc_sync_enter(obj);
  obj->_authRequestPending = pending;
  objc_sync_exit(obj);
}

@end
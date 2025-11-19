@interface SOKerberosAgentContext
- (BOOL)authRequestPending;
- (SOKerberosAgentContext)initWithProfile:(id)a3;
- (void)setAuthRequestPending:(BOOL)a3;
@end

@implementation SOKerberosAgentContext

- (SOKerberosAgentContext)initWithProfile:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = SOKerberosAgentContext;
  v6 = [(SOKerberosAgentContext *)&v42 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    contextNetworkWorkQueue = v6->_contextNetworkWorkQueue;
    v6->_contextNetworkWorkQueue = v7;

    v9 = MEMORY[0x277CCACA8];
    v10 = [v5 realm];
    v11 = [v9 stringWithFormat:@"com.apple.kerberosextension.%@.network", v10];
    [(NSOperationQueue *)v6->_contextNetworkWorkQueue setName:v11];

    [(NSOperationQueue *)v6->_contextNetworkWorkQueue setSuspended:1];
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    contextKerberosWorkQueue = v6->_contextKerberosWorkQueue;
    v6->_contextKerberosWorkQueue = v12;

    v14 = MEMORY[0x277CCACA8];
    v15 = [v5 realm];
    v16 = [v14 stringWithFormat:@"com.apple.kerberosextension.%@.kerberos", v15];
    [(NSOperationQueue *)v6->_contextKerberosWorkQueue setName:v16];

    [(NSOperationQueue *)v6->_contextKerberosWorkQueue setSuspended:1];
    objc_storeStrong(&v6->_profile, a3);
    v17 = [SOKerberosRealmSettings alloc];
    v18 = [v5 realm];
    v19 = [(SOKerberosRealmSettings *)v17 initWithRealm:v18];
    settings = v6->_settings;
    v6->_settings = v19;

    v21 = [SOKerberosExtensionData alloc];
    v22 = [v5 extensionData];
    v23 = [(SOKerberosExtensionData *)v21 initWithDictionary:v22];
    extensionData = v6->_extensionData;
    v6->_extensionData = v23;

    v25 = [SONetworkIdentity alloc];
    v26 = [v5 realm];
    v27 = [(SONetworkIdentity *)v25 initForRealm:v26 bundleIdentifier:0 auditToken:0];
    identity = v6->_identity;
    v6->_identity = v27;

    v29 = [SOADSiteDiscovery alloc];
    v30 = [(SOFullProfile *)v6->_profile realm];
    v31 = [(SOADSiteDiscovery *)v29 initWithRealm:v30];
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
  v2 = self;
  objc_sync_enter(v2);
  authRequestPending = v2->_authRequestPending;
  objc_sync_exit(v2);

  return authRequestPending;
}

- (void)setAuthRequestPending:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_authRequestPending = a3;
  objc_sync_exit(obj);
}

@end
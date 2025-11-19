@interface CNContactProviderSupport
+ (BOOL)addDomain:(id)a3 error:(id *)a4;
+ (BOOL)disableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
+ (BOOL)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6;
+ (BOOL)removeDomain:(id)a3 error:(id *)a4;
+ (CNContactProviderSupport)sharedInstance;
+ (id)allDomainsWithError:(id *)a3;
+ (id)registeredDomainsWithError:(id *)a3;
+ (int64_t)allDomainsCountWithError:(id *)a3;
- (BOOL)addDomain:(id)a3 error:(id *)a4;
- (BOOL)instanceDisableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5;
- (BOOL)instanceEnableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6;
- (BOOL)isDomainEnabled;
- (BOOL)isSessionRunning;
- (BOOL)removeDomain:(id)a3 error:(id *)a4;
- (BOOL)requestProviderDomainCommand:(id)a3 error:(id *)a4;
- (CNContactProviderSupport)initWithDomainIdentifier:(id)a3;
- (CNContactStore)contactStore;
- (NSString)domainContainerIdentifier;
- (id)allDomainsWithError:(id *)a3;
- (id)registeredDomainsWithError:(id *)a3;
- (int64_t)allDomainsCountWithError:(id *)a3;
- (void)disableDomainWithCompletionHandler:(id)a3;
- (void)enableDomainWithCompletionHandler:(id)a3;
- (void)endSession;
- (void)invalidateExtensionWithCompletionHandler:(id)a3;
- (void)requestProviderDomainCommand:(id)a3 completionHandler:(id)a4;
- (void)resetEnumerationWithCompletionHandler:(id)a3;
- (void)startSession:(id)a3;
- (void)synchronizeDomainUsingSession:(id)a3 completionHandler:(id)a4;
@end

@implementation CNContactProviderSupport

+ (CNContactProviderSupport)sharedInstance
{
  if (sharedInstance_cn_once_token_0_1 != -1)
  {
    +[CNContactProviderSupport sharedInstance];
  }

  v3 = sharedInstance_cn_once_object_0_1;

  return v3;
}

uint64_t __42__CNContactProviderSupport_sharedInstance__block_invoke()
{
  v0 = [[CNContactProviderSupport alloc] initWithDomainIdentifier:&stru_1F094DAB0];
  v1 = sharedInstance_cn_once_object_0_1;
  sharedInstance_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactProviderSupport)initWithDomainIdentifier:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CNContactProviderSupport;
  v6 = [(CNContactProviderSupport *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainIdentifier, a3);
    providerStore = v7->_providerStore;
    v7->_providerStore = 0;

    v9 = +[CNXPCContactsSupport sharedInstance];
    contactsSupport = v7->_contactsSupport;
    v7->_contactsSupport = v9;

    v11 = objc_alloc_init(CNContactStoreConfiguration);
    [(CNContactStoreConfiguration *)v11 setIsContactProvider:1];
    [(CNContactStoreConfiguration *)v11 setUseOutOfProcessMapperExclusively:1];
    v12 = [[CNContactStore alloc] initWithConfiguration:v11];
    v13 = v7->_providerStore;
    v7->_providerStore = v12;

    v14 = objc_alloc_init(MEMORY[0x1E6996878]);
    lock = v7->_lock;
    v7->_lock = v14;

    v16 = v7;
  }

  return v7;
}

- (NSString)domainContainerIdentifier
{
  if ([(CNContactProviderSupport *)self isDomainEnabled])
  {
    v3 = [(CNContactProviderSupport *)self domainIdentifier];
    v4 = [CNContactProviderSupportDomainCommand fetchContainerIdentifierForDomain:v3];

    v5 = [(CNContactProviderSupport *)self contactsSupport];
    v6 = [v5 requestProviderDomainCommand:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDomainEnabled
{
  v3 = [(CNContactProviderSupport *)self domainIdentifier];
  v4 = [CNContactProviderSupportDomainCommand fetchDomainEnabled:v3];

  v5 = [(CNContactProviderSupport *)self contactsSupport];
  v6 = [v5 requestProviderDomainCommand:v4 error:0];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

- (CNContactStore)contactStore
{
  if ([(CNContactProviderSupport *)self isDomainEnabled])
  {
    v3 = self->_providerStore;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)enableDomainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand enableDomain:v5];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:v4];
}

- (void)disableDomainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand disableDomain:v5];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:v4];
}

- (void)synchronizeDomainUsingSession:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CNContactProviderSupport *)self isSessionRunning])
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(CNContactProviderSupportSession);
    }

    v9 = v8;
    [(CNContactProviderSupport *)self startSession:v8];
    v10 = [(CNContactProviderSupport *)self domainIdentifier];
    v11 = [CNContactProviderSupportDomainCommand synchronizeDomain:v10 usingSession:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__CNContactProviderSupport_synchronizeDomainUsingSession_completionHandler___block_invoke;
    v12[3] = &unk_1E7415DA0;
    v12[4] = self;
    v13 = v7;
    [(CNContactProviderSupport *)self requestProviderDomainCommand:v11 completionHandler:v12];
  }
}

uint64_t __76__CNContactProviderSupport_synchronizeDomainUsingSession_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 endSession];
}

- (void)invalidateExtensionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand invalidateExtensionForDomain:v5];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:v4];
}

- (void)resetEnumerationWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand resetEnumerationForDomain:v5];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:v4];
}

- (void)startSession:(id)a3
{
  v4 = a3;
  v5 = [(CNContactProviderSupport *)self lock];
  v6 = v4;
  CNRunWithLock();
}

- (BOOL)isSessionRunning
{
  v2 = [(CNContactProviderSupport *)self lock];
  v3 = CNResultWithLock();

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

id __44__CNContactProviderSupport_isSessionRunning__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) currentSession];
  v3 = [v1 numberWithInt:v2 != 0];

  return v3;
}

- (void)endSession
{
  v2 = [(CNContactProviderSupport *)self lock];
  CNRunWithLock();
}

+ (BOOL)addDomain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(a4) = [v6 addDomain:v5 error:a4];

  return a4;
}

+ (BOOL)removeDomain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(a4) = [v6 removeDomain:v5 error:a4];

  return a4;
}

+ (id)registeredDomainsWithError:(id *)a3
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 registeredDomainsWithError:a3];

  return v5;
}

+ (int64_t)allDomainsCountWithError:(id *)a3
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 allDomainsCountWithError:a3];

  return v5;
}

+ (id)allDomainsWithError:(id *)a3
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 allDomainsWithError:a3];

  return v5;
}

+ (BOOL)enableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(a6) = [v11 instanceEnableDomain:v10 bundleIdentifier:v9 shouldSynchronize:v7 error:a6];

  return a6;
}

+ (BOOL)disableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(a5) = [v9 instanceDisableDomain:v8 bundleIdentifier:v7 error:a5];

  return a5;
}

- (BOOL)addDomain:(id)a3 error:(id *)a4
{
  v6 = [CNContactProviderSupportDomainCommand addDomain:a3];
  LOBYTE(a4) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 error:a4];

  return a4;
}

- (BOOL)removeDomain:(id)a3 error:(id *)a4
{
  v6 = [CNContactProviderSupportDomainCommand removeDomain:a3];
  LOBYTE(a4) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 error:a4];

  return a4;
}

- (id)registeredDomainsWithError:(id *)a3
{
  v4 = +[CNContactProviderSupportDomainCommand fetchRegisteredDomains];
  v5 = [(CNContactProviderSupport *)self contactsSupport];
  v6 = [v5 requestProviderDomainCommand:v4 error:0];

  return v6;
}

- (int64_t)allDomainsCountWithError:(id *)a3
{
  v5 = +[CNContactProviderSupportDomainCommand fetchAllDomainsCount];
  v6 = [(CNContactProviderSupport *)self contactsSupport];
  v12 = 0;
  v7 = [v6 requestProviderDomainCommand:v5 error:&v12];
  v8 = v12;

  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  if (v7)
  {
    v10 = [v7 integerValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)allDomainsWithError:(id *)a3
{
  v5 = +[CNContactProviderSupportDomainCommand fetchAllDomains];
  v6 = [(CNContactProviderSupport *)self contactsSupport];
  v13 = 0;
  v7 = [v6 requestProviderDomainCommand:v5 error:&v13];
  v8 = v13;

  v9 = v7;
  v10 = v9;
  if (a3 && !v9)
  {
    v11 = v8;
    *a3 = v8;
  }

  return v10;
}

- (BOOL)instanceEnableDomain:(id)a3 bundleIdentifier:(id)a4 shouldSynchronize:(BOOL)a5 error:(id *)a6
{
  v8 = [CNContactProviderSupportDomainCommand enableDomain:a3 bundleIdentifier:a4 shouldSynchronize:a5];
  LOBYTE(a6) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v8 error:a6];

  return a6;
}

- (BOOL)instanceDisableDomain:(id)a3 bundleIdentifier:(id)a4 error:(id *)a5
{
  v7 = [CNContactProviderSupportDomainCommand disableDomain:a3 bundleIdentifier:a4];
  LOBYTE(a5) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v7 error:a5];

  return a5;
}

- (BOOL)requestProviderDomainCommand:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactProviderSupport *)self contactsSupport];
  v12 = 0;
  v8 = [v7 requestProviderDomainCommand:v6 error:&v12];
  v9 = v12;

  if (a4 && v9)
  {
    v10 = v9;
    *a4 = v9;
  }

  return v9 == 0;
}

- (void)requestProviderDomainCommand:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [MEMORY[0x1E6996818] offMainThreadScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CNContactProviderSupport_requestProviderDomainCommand_completionHandler___block_invoke;
  v11[3] = &unk_1E7415DC8;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__CNContactProviderSupport_requestProviderDomainCommand_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained contactsSupport];
  v4 = *(a1 + 32);
  v8 = 0;
  v5 = [v3 requestProviderDomainCommand:v4 error:&v8];
  v6 = v8;

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

@end
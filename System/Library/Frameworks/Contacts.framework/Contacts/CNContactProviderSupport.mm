@interface CNContactProviderSupport
+ (BOOL)addDomain:(id)domain error:(id *)error;
+ (BOOL)disableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
+ (BOOL)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error;
+ (BOOL)removeDomain:(id)domain error:(id *)error;
+ (CNContactProviderSupport)sharedInstance;
+ (id)allDomainsWithError:(id *)error;
+ (id)registeredDomainsWithError:(id *)error;
+ (int64_t)allDomainsCountWithError:(id *)error;
- (BOOL)addDomain:(id)domain error:(id *)error;
- (BOOL)instanceDisableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error;
- (BOOL)instanceEnableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error;
- (BOOL)isDomainEnabled;
- (BOOL)isSessionRunning;
- (BOOL)removeDomain:(id)domain error:(id *)error;
- (BOOL)requestProviderDomainCommand:(id)command error:(id *)error;
- (CNContactProviderSupport)initWithDomainIdentifier:(id)identifier;
- (CNContactStore)contactStore;
- (NSString)domainContainerIdentifier;
- (id)allDomainsWithError:(id *)error;
- (id)registeredDomainsWithError:(id *)error;
- (int64_t)allDomainsCountWithError:(id *)error;
- (void)disableDomainWithCompletionHandler:(id)handler;
- (void)enableDomainWithCompletionHandler:(id)handler;
- (void)endSession;
- (void)invalidateExtensionWithCompletionHandler:(id)handler;
- (void)requestProviderDomainCommand:(id)command completionHandler:(id)handler;
- (void)resetEnumerationWithCompletionHandler:(id)handler;
- (void)startSession:(id)session;
- (void)synchronizeDomainUsingSession:(id)session completionHandler:(id)handler;
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

- (CNContactProviderSupport)initWithDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CNContactProviderSupport;
  v6 = [(CNContactProviderSupport *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domainIdentifier, identifier);
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
    domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
    v4 = [CNContactProviderSupportDomainCommand fetchContainerIdentifierForDomain:domainIdentifier];

    contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
    v6 = [contactsSupport requestProviderDomainCommand:v4 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isDomainEnabled
{
  domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
  v4 = [CNContactProviderSupportDomainCommand fetchDomainEnabled:domainIdentifier];

  contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
  v6 = [contactsSupport requestProviderDomainCommand:v4 error:0];

  LOBYTE(contactsSupport) = [v6 BOOLValue];
  return contactsSupport;
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

- (void)enableDomainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand enableDomain:domainIdentifier];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:handlerCopy];
}

- (void)disableDomainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand disableDomain:domainIdentifier];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:handlerCopy];
}

- (void)synchronizeDomainUsingSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  if (![(CNContactProviderSupport *)self isSessionRunning])
  {
    if (sessionCopy)
    {
      v8 = sessionCopy;
    }

    else
    {
      v8 = objc_alloc_init(CNContactProviderSupportSession);
    }

    v9 = v8;
    [(CNContactProviderSupport *)self startSession:v8];
    domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
    v11 = [CNContactProviderSupportDomainCommand synchronizeDomain:domainIdentifier usingSession:v9];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__CNContactProviderSupport_synchronizeDomainUsingSession_completionHandler___block_invoke;
    v12[3] = &unk_1E7415DA0;
    v12[4] = self;
    v13 = handlerCopy;
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

- (void)invalidateExtensionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand invalidateExtensionForDomain:domainIdentifier];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:handlerCopy];
}

- (void)resetEnumerationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  domainIdentifier = [(CNContactProviderSupport *)self domainIdentifier];
  v6 = [CNContactProviderSupportDomainCommand resetEnumerationForDomain:domainIdentifier];

  [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 completionHandler:handlerCopy];
}

- (void)startSession:(id)session
{
  sessionCopy = session;
  lock = [(CNContactProviderSupport *)self lock];
  v6 = sessionCopy;
  CNRunWithLock();
}

- (BOOL)isSessionRunning
{
  lock = [(CNContactProviderSupport *)self lock];
  v3 = CNResultWithLock();

  LOBYTE(lock) = [v3 BOOLValue];
  return lock;
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
  lock = [(CNContactProviderSupport *)self lock];
  CNRunWithLock();
}

+ (BOOL)addDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  v6 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(error) = [v6 addDomain:domainCopy error:error];

  return error;
}

+ (BOOL)removeDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  v6 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(error) = [v6 removeDomain:domainCopy error:error];

  return error;
}

+ (id)registeredDomainsWithError:(id *)error
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 registeredDomainsWithError:error];

  return v5;
}

+ (int64_t)allDomainsCountWithError:(id *)error
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 allDomainsCountWithError:error];

  return v5;
}

+ (id)allDomainsWithError:(id *)error
{
  v4 = +[CNContactProviderSupport sharedInstance];
  v5 = [v4 allDomainsWithError:error];

  return v5;
}

+ (BOOL)enableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error
{
  synchronizeCopy = synchronize;
  identifierCopy = identifier;
  domainCopy = domain;
  v11 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(error) = [v11 instanceEnableDomain:domainCopy bundleIdentifier:identifierCopy shouldSynchronize:synchronizeCopy error:error];

  return error;
}

+ (BOOL)disableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  domainCopy = domain;
  v9 = +[CNContactProviderSupport sharedInstance];
  LOBYTE(error) = [v9 instanceDisableDomain:domainCopy bundleIdentifier:identifierCopy error:error];

  return error;
}

- (BOOL)addDomain:(id)domain error:(id *)error
{
  v6 = [CNContactProviderSupportDomainCommand addDomain:domain];
  LOBYTE(error) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 error:error];

  return error;
}

- (BOOL)removeDomain:(id)domain error:(id *)error
{
  v6 = [CNContactProviderSupportDomainCommand removeDomain:domain];
  LOBYTE(error) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v6 error:error];

  return error;
}

- (id)registeredDomainsWithError:(id *)error
{
  v4 = +[CNContactProviderSupportDomainCommand fetchRegisteredDomains];
  contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
  v6 = [contactsSupport requestProviderDomainCommand:v4 error:0];

  return v6;
}

- (int64_t)allDomainsCountWithError:(id *)error
{
  v5 = +[CNContactProviderSupportDomainCommand fetchAllDomainsCount];
  contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
  v12 = 0;
  v7 = [contactsSupport requestProviderDomainCommand:v5 error:&v12];
  v8 = v12;

  if (error)
  {
    v9 = v8;
    *error = v8;
  }

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)allDomainsWithError:(id *)error
{
  v5 = +[CNContactProviderSupportDomainCommand fetchAllDomains];
  contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
  v13 = 0;
  v7 = [contactsSupport requestProviderDomainCommand:v5 error:&v13];
  v8 = v13;

  v9 = v7;
  v10 = v9;
  if (error && !v9)
  {
    v11 = v8;
    *error = v8;
  }

  return v10;
}

- (BOOL)instanceEnableDomain:(id)domain bundleIdentifier:(id)identifier shouldSynchronize:(BOOL)synchronize error:(id *)error
{
  v8 = [CNContactProviderSupportDomainCommand enableDomain:domain bundleIdentifier:identifier shouldSynchronize:synchronize];
  LOBYTE(error) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v8 error:error];

  return error;
}

- (BOOL)instanceDisableDomain:(id)domain bundleIdentifier:(id)identifier error:(id *)error
{
  v7 = [CNContactProviderSupportDomainCommand disableDomain:domain bundleIdentifier:identifier];
  LOBYTE(error) = [(CNContactProviderSupport *)self requestProviderDomainCommand:v7 error:error];

  return error;
}

- (BOOL)requestProviderDomainCommand:(id)command error:(id *)error
{
  commandCopy = command;
  contactsSupport = [(CNContactProviderSupport *)self contactsSupport];
  v12 = 0;
  v8 = [contactsSupport requestProviderDomainCommand:commandCopy error:&v12];
  v9 = v12;

  if (error && v9)
  {
    v10 = v9;
    *error = v9;
  }

  return v9 == 0;
}

- (void)requestProviderDomainCommand:(id)command completionHandler:(id)handler
{
  commandCopy = command;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  offMainThreadScheduler = [MEMORY[0x1E6996818] offMainThreadScheduler];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__CNContactProviderSupport_requestProviderDomainCommand_completionHandler___block_invoke;
  v11[3] = &unk_1E7415DC8;
  objc_copyWeak(&v14, &location);
  v9 = commandCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [offMainThreadScheduler performBlock:v11];

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
@interface CNContactsEnvironment
+ (id)baseURLWithDataLocationName:(id)name;
+ (id)currentEnvironment;
+ (id)inMemoryURL;
+ (id)unitTestingEnvironment;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)name;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)name schedulerProvider:(id)provider;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)name schedulerProvider:(id)provider loggerProvider:(id)loggerProvider;
+ (id)unitTestingEnvironmentWithSchedulerProvider:(id)provider loggerProvider:(id)loggerProvider;
- (BOOL)useInMemoryStores;
- (CNContactPosterDataStore)posterDataStore;
- (CNContactsEnvironment)init;
- (CNContactsEnvironment)initWithCoder:(id)coder;
- (CNContactsEnvironment)initWithSchedulerProvider:(id)provider loggerProvider:(id)loggerProvider posterDataStore:(id)store;
- (CNiOSAddressBook)addressBook;
- (id)copyWithDelegateInfos:(id)infos;
- (id)copyWithZone:(_NSZone *)zone;
- (id)posterDataStoreSpy;
- (void)makeCurrentEnvironment;
@end

@implementation CNContactsEnvironment

+ (id)currentEnvironment
{
  if (s_currentEnvironmentOnceToken != -1)
  {
    +[CNContactsEnvironment currentEnvironment];
  }

  v3 = s_currentEnvironment;

  return v3;
}

uint64_t __43__CNContactsEnvironment_currentEnvironment__block_invoke()
{
  s_currentEnvironment = objc_alloc_init(CNContactsEnvironment);

  return MEMORY[0x1EEE66BB8]();
}

- (CNContactsEnvironment)init
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNContactsLoggerProvider defaultProvider];
  v5 = [(CNContactsEnvironment *)self initWithSchedulerProvider:defaultProvider loggerProvider:v4];

  return v5;
}

id __36__CNContactsEnvironment_addressBook__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = [[CNiOSAddressBook alloc] initWithContactsEnvironment:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return v2;
}

- (BOOL)useInMemoryStores
{
  baseURL = [(CNContactsEnvironment *)self baseURL];
  inMemoryURL = [objc_opt_class() inMemoryURL];
  v4 = [baseURL isEqual:inMemoryURL];

  return v4;
}

+ (id)inMemoryURL
{
  if (inMemoryURL_cn_once_token_0 != -1)
  {
    +[CNContactsEnvironment inMemoryURL];
  }

  v3 = inMemoryURL_cn_once_object_0;

  return v3;
}

void __36__CNContactsEnvironment_inMemoryURL__block_invoke()
{
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"in-memory://"];
  v0 = [v2 copy];
  v1 = inMemoryURL_cn_once_object_0;
  inMemoryURL_cn_once_object_0 = v0;
}

- (CNContactPosterDataStore)posterDataStore
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (CNiOSAddressBook)addressBook
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (void)makeCurrentEnvironment
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNContactsEnvironment_makeCurrentEnvironment__block_invoke;
  block[3] = &unk_1E7412A88;
  block[4] = self;
  if (s_currentEnvironmentOnceToken != -1)
  {
    dispatch_once(&s_currentEnvironmentOnceToken, block);
  }
}

+ (id)unitTestingEnvironment
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNMockLoggerProvider loggerProvider];
  v5 = [self unitTestingEnvironmentWithSchedulerProvider:defaultProvider loggerProvider:v4];

  return v5;
}

+ (id)unitTestingEnvironmentWithSchedulerProvider:(id)provider loggerProvider:(id)loggerProvider
{
  loggerProviderCopy = loggerProvider;
  providerCopy = provider;
  v8 = [_CNContactPosterDataStoreSpy alloc];
  v9 = +[CNContactPosterDataStore inMemoryStore];
  v10 = [(_CNContactPosterDataStoreSpy *)v8 initWithStore:v9];

  v11 = [[CNContactsEnvironment alloc] initWithSchedulerProvider:providerCopy loggerProvider:loggerProviderCopy posterDataStore:v10];
  inMemoryURL = [self inMemoryURL];
  [(CNContactsEnvironment *)v11 setBaseURL:inMemoryURL];

  return v11;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)name
{
  v4 = MEMORY[0x1E6996820];
  nameCopy = name;
  defaultProvider = [v4 defaultProvider];
  v7 = +[CNMockLoggerProvider loggerProvider];
  v8 = [self unitTestingEnvironmentWithDataLocationName:nameCopy schedulerProvider:defaultProvider loggerProvider:v7];

  return v8;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)name schedulerProvider:(id)provider
{
  providerCopy = provider;
  nameCopy = name;
  v8 = +[CNMockLoggerProvider loggerProvider];
  v9 = [self unitTestingEnvironmentWithDataLocationName:nameCopy schedulerProvider:providerCopy loggerProvider:v8];

  return v9;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)name schedulerProvider:(id)provider loggerProvider:(id)loggerProvider
{
  nameCopy = name;
  v9 = [self unitTestingEnvironmentWithSchedulerProvider:provider loggerProvider:loggerProvider];
  v10 = [self baseURLWithDataLocationName:nameCopy];

  [v9 setBaseURL:v10];

  return v9;
}

- (CNContactsEnvironment)initWithSchedulerProvider:(id)provider loggerProvider:(id)loggerProvider posterDataStore:(id)store
{
  providerCopy = provider;
  loggerProviderCopy = loggerProvider;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = CNContactsEnvironment;
  v12 = [(CNContactsEnvironment *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_schedulerProvider, provider);
    objc_storeStrong(&v13->_loggerProvider, loggerProvider);
    v14 = objc_alloc_init(CNiOSABPredicateRunner);
    abPredicateRunner = v13->_abPredicateRunner;
    v13->_abPredicateRunner = v14;

    objc_storeStrong(&v13->_posterDataStore, store);
    v16 = v13;
  }

  return v13;
}

- (CNContactsEnvironment)initWithCoder:(id)coder
{
  v3 = [(CNContactsEnvironment *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CNContactsEnvironment alloc] initWithSchedulerProvider:self->_schedulerProvider loggerProvider:self->_loggerProvider];
  baseURL = [(CNContactsEnvironment *)self baseURL];
  [(CNContactsEnvironment *)v4 setBaseURL:baseURL];

  objc_storeStrong(&v4->_addressBook, self->_addressBook);
  objc_storeStrong(&v4->_abPredicateRunner, self->_abPredicateRunner);
  return v4;
}

+ (id)baseURLWithDataLocationName:(id)name
{
  nameCopy = name;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x1E6996700] = [MEMORY[0x1E6996700] sharedInstance];
    cachesFolderURL = [mEMORY[0x1E6996700] cachesFolderURL];

    v7 = [cachesFolderURL URLByAppendingPathComponent:@"ContactsTests"];

    v4 = [v7 URLByAppendingPathComponent:nameCopy isDirectory:1];
  }

  return v4;
}

- (id)copyWithDelegateInfos:(id)infos
{
  infosCopy = infos;
  v5 = [(CNContactsEnvironment *)self copy];
  [v5 setDelegateInfos:infosCopy];

  [v5 setAddressBook:0];
  return v5;
}

- (id)posterDataStoreSpy
{
  objc_opt_class();
  posterDataStore = [(CNContactsEnvironment *)self posterDataStore];
  if (objc_opt_isKindOfClass())
  {
    v4 = posterDataStore;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id __40__CNContactsEnvironment_posterDataStore__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(CNContactPosterDataStore);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(*(a1 + 32) + 16);
  }

  return v2;
}

@end
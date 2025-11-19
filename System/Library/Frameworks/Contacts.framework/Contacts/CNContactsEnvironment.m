@interface CNContactsEnvironment
+ (id)baseURLWithDataLocationName:(id)a3;
+ (id)currentEnvironment;
+ (id)inMemoryURL;
+ (id)unitTestingEnvironment;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3 schedulerProvider:(id)a4;
+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5;
+ (id)unitTestingEnvironmentWithSchedulerProvider:(id)a3 loggerProvider:(id)a4;
- (BOOL)useInMemoryStores;
- (CNContactPosterDataStore)posterDataStore;
- (CNContactsEnvironment)init;
- (CNContactsEnvironment)initWithCoder:(id)a3;
- (CNContactsEnvironment)initWithSchedulerProvider:(id)a3 loggerProvider:(id)a4 posterDataStore:(id)a5;
- (CNiOSAddressBook)addressBook;
- (id)copyWithDelegateInfos:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNContactsLoggerProvider defaultProvider];
  v5 = [(CNContactsEnvironment *)self initWithSchedulerProvider:v3 loggerProvider:v4];

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
  v2 = [(CNContactsEnvironment *)self baseURL];
  v3 = [objc_opt_class() inMemoryURL];
  v4 = [v2 isEqual:v3];

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
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = +[CNMockLoggerProvider loggerProvider];
  v5 = [a1 unitTestingEnvironmentWithSchedulerProvider:v3 loggerProvider:v4];

  return v5;
}

+ (id)unitTestingEnvironmentWithSchedulerProvider:(id)a3 loggerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_CNContactPosterDataStoreSpy alloc];
  v9 = +[CNContactPosterDataStore inMemoryStore];
  v10 = [(_CNContactPosterDataStoreSpy *)v8 initWithStore:v9];

  v11 = [[CNContactsEnvironment alloc] initWithSchedulerProvider:v7 loggerProvider:v6 posterDataStore:v10];
  v12 = [a1 inMemoryURL];
  [(CNContactsEnvironment *)v11 setBaseURL:v12];

  return v11;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3
{
  v4 = MEMORY[0x1E6996820];
  v5 = a3;
  v6 = [v4 defaultProvider];
  v7 = +[CNMockLoggerProvider loggerProvider];
  v8 = [a1 unitTestingEnvironmentWithDataLocationName:v5 schedulerProvider:v6 loggerProvider:v7];

  return v8;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3 schedulerProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNMockLoggerProvider loggerProvider];
  v9 = [a1 unitTestingEnvironmentWithDataLocationName:v7 schedulerProvider:v6 loggerProvider:v8];

  return v9;
}

+ (id)unitTestingEnvironmentWithDataLocationName:(id)a3 schedulerProvider:(id)a4 loggerProvider:(id)a5
{
  v8 = a3;
  v9 = [a1 unitTestingEnvironmentWithSchedulerProvider:a4 loggerProvider:a5];
  v10 = [a1 baseURLWithDataLocationName:v8];

  [v9 setBaseURL:v10];

  return v9;
}

- (CNContactsEnvironment)initWithSchedulerProvider:(id)a3 loggerProvider:(id)a4 posterDataStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CNContactsEnvironment;
  v12 = [(CNContactsEnvironment *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_schedulerProvider, a3);
    objc_storeStrong(&v13->_loggerProvider, a4);
    v14 = objc_alloc_init(CNiOSABPredicateRunner);
    abPredicateRunner = v13->_abPredicateRunner;
    v13->_abPredicateRunner = v14;

    objc_storeStrong(&v13->_posterDataStore, a5);
    v16 = v13;
  }

  return v13;
}

- (CNContactsEnvironment)initWithCoder:(id)a3
{
  v3 = [(CNContactsEnvironment *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CNContactsEnvironment alloc] initWithSchedulerProvider:self->_schedulerProvider loggerProvider:self->_loggerProvider];
  v5 = [(CNContactsEnvironment *)self baseURL];
  [(CNContactsEnvironment *)v4 setBaseURL:v5];

  objc_storeStrong(&v4->_addressBook, self->_addressBook);
  objc_storeStrong(&v4->_abPredicateRunner, self->_abPredicateRunner);
  return v4;
}

+ (id)baseURLWithDataLocationName:(id)a3
{
  v3 = a3;
  if ((*(*MEMORY[0x1E6996568] + 16))())
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E6996700] sharedInstance];
    v6 = [v5 cachesFolderURL];

    v7 = [v6 URLByAppendingPathComponent:@"ContactsTests"];

    v4 = [v7 URLByAppendingPathComponent:v3 isDirectory:1];
  }

  return v4;
}

- (id)copyWithDelegateInfos:(id)a3
{
  v4 = a3;
  v5 = [(CNContactsEnvironment *)self copy];
  [v5 setDelegateInfos:v4];

  [v5 setAddressBook:0];
  return v5;
}

- (id)posterDataStoreSpy
{
  objc_opt_class();
  v3 = [(CNContactsEnvironment *)self posterDataStore];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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
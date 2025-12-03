@interface CNContactPosterStore
- (BOOL)performCreateRequest:(id)request error:(id *)error;
- (BOOL)performDeleteRequest:(id)request error:(id *)error;
- (CNContactPosterStore)init;
- (CNContactPosterStore)initWithContactPosterDataStoreManager:(id)manager;
- (CNContactPosterStore)initWithtPosterDataStore:(id)store;
- (id)performFetchRequest:(id)request error:(id *)error;
- (unint64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation CNContactPosterStore

- (CNContactPosterStore)init
{
  v3 = objc_alloc_init(CNContactPosterDataStore);
  v4 = [(CNContactPosterStore *)self initWithtPosterDataStore:v3];

  return v4;
}

- (CNContactPosterStore)initWithContactPosterDataStoreManager:(id)manager
{
  managerCopy = manager;
  v5 = [[CNContactPosterDataStore alloc] initWithStoreManager:managerCopy];

  v6 = [(CNContactPosterStore *)self initWithtPosterDataStore:v5];
  return v6;
}

- (CNContactPosterStore)initWithtPosterDataStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNContactPosterStore;
  v6 = [(CNContactPosterStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = v7;
  }

  return v7;
}

- (id)performFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactPosterStore *)self store];
  v8 = [store executeFetchRequest:requestCopy error:error];

  return v8;
}

- (unint64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactPosterStore *)self store];
  v8 = [store countForFetchRequest:requestCopy error:error];

  return v8;
}

- (BOOL)performCreateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactPosterStore *)self store];
  LOBYTE(error) = [store executeCreateRequest:requestCopy error:error];

  return error;
}

- (BOOL)performDeleteRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactPosterStore *)self store];
  LOBYTE(error) = [store executeDeleteRequest:requestCopy error:error];

  return error;
}

@end
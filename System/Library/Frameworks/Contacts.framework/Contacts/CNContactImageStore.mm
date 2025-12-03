@interface CNContactImageStore
- (BOOL)performCreateRequest:(id)request error:(id *)error;
- (BOOL)performDeleteRequest:(id)request error:(id *)error;
- (BOOL)performSaveRequest:(id)request error:(id *)error;
- (CNContactImageStore)init;
- (CNContactImageStore)initWithContactPosterDataStoreManager:(id)manager;
- (CNContactImageStore)initWithtPosterDataStore:(id)store;
- (id)performFetchRequest:(id)request error:(id *)error;
- (unint64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation CNContactImageStore

- (CNContactImageStore)init
{
  v3 = objc_alloc_init(CNContactPosterDataStore);
  v4 = [(CNContactImageStore *)self initWithtPosterDataStore:v3];

  return v4;
}

- (CNContactImageStore)initWithContactPosterDataStoreManager:(id)manager
{
  managerCopy = manager;
  v5 = [[CNContactPosterDataStore alloc] initWithStoreManager:managerCopy];

  v6 = [(CNContactImageStore *)self initWithtPosterDataStore:v5];
  return v6;
}

- (CNContactImageStore)initWithtPosterDataStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNContactImageStore;
  v6 = [(CNContactImageStore *)&v10 init];
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
  store = [(CNContactImageStore *)self store];
  v8 = [store executeFetchRequest:requestCopy error:error];

  return v8;
}

- (unint64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactImageStore *)self store];
  v8 = [store countForFetchRequest:requestCopy error:error];

  return v8;
}

- (BOOL)performSaveRequest:(id)request error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  posterDataChangeRequest = [request posterDataChangeRequest];
  v17[0] = posterDataChangeRequest;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [CNContactPosterDataChangeRequestClassifier classifyRequests:v7];

  memset(v14, 0, sizeof(v14));
  createRequests = [v8 createRequests];
  if ([createRequests countByEnumeratingWithState:v14 objects:v16 count:16])
  {
    v10 = [(CNContactImageStore *)self performCreateRequest:**(&v14[0] + 1) error:error];
  }

  else
  {

    memset(v13, 0, sizeof(v13));
    createRequests = [v8 deleteRequests];
    if (![createRequests countByEnumeratingWithState:v13 objects:v15 count:16])
    {
      v11 = 1;
      goto LABEL_6;
    }

    v10 = [(CNContactImageStore *)self performDeleteRequest:**(&v13[0] + 1) error:error];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)performDeleteRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactImageStore *)self store];
  LOBYTE(error) = [store executeDeleteRequest:requestCopy error:error];

  return error;
}

- (BOOL)performCreateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  store = [(CNContactImageStore *)self store];
  LOBYTE(error) = [store executeCreateRequest:requestCopy error:error];

  return error;
}

@end
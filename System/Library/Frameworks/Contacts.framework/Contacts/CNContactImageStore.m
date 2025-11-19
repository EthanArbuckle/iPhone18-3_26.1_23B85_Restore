@interface CNContactImageStore
- (BOOL)performCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)performDeleteRequest:(id)a3 error:(id *)a4;
- (BOOL)performSaveRequest:(id)a3 error:(id *)a4;
- (CNContactImageStore)init;
- (CNContactImageStore)initWithContactPosterDataStoreManager:(id)a3;
- (CNContactImageStore)initWithtPosterDataStore:(id)a3;
- (id)performFetchRequest:(id)a3 error:(id *)a4;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactImageStore

- (CNContactImageStore)init
{
  v3 = objc_alloc_init(CNContactPosterDataStore);
  v4 = [(CNContactImageStore *)self initWithtPosterDataStore:v3];

  return v4;
}

- (CNContactImageStore)initWithContactPosterDataStoreManager:(id)a3
{
  v4 = a3;
  v5 = [[CNContactPosterDataStore alloc] initWithStoreManager:v4];

  v6 = [(CNContactImageStore *)self initWithtPosterDataStore:v5];
  return v6;
}

- (CNContactImageStore)initWithtPosterDataStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactImageStore;
  v6 = [(CNContactImageStore *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = v7;
  }

  return v7;
}

- (id)performFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactImageStore *)self store];
  v8 = [v7 executeFetchRequest:v6 error:a4];

  return v8;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactImageStore *)self store];
  v8 = [v7 countForFetchRequest:v6 error:a4];

  return v8;
}

- (BOOL)performSaveRequest:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = [a3 posterDataChangeRequest];
  v17[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v8 = [CNContactPosterDataChangeRequestClassifier classifyRequests:v7];

  memset(v14, 0, sizeof(v14));
  v9 = [v8 createRequests];
  if ([v9 countByEnumeratingWithState:v14 objects:v16 count:16])
  {
    v10 = [(CNContactImageStore *)self performCreateRequest:**(&v14[0] + 1) error:a4];
  }

  else
  {

    memset(v13, 0, sizeof(v13));
    v9 = [v8 deleteRequests];
    if (![v9 countByEnumeratingWithState:v13 objects:v15 count:16])
    {
      v11 = 1;
      goto LABEL_6;
    }

    v10 = [(CNContactImageStore *)self performDeleteRequest:**(&v13[0] + 1) error:a4];
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (BOOL)performDeleteRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactImageStore *)self store];
  LOBYTE(a4) = [v7 executeDeleteRequest:v6 error:a4];

  return a4;
}

- (BOOL)performCreateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactImageStore *)self store];
  LOBYTE(a4) = [v7 executeCreateRequest:v6 error:a4];

  return a4;
}

@end
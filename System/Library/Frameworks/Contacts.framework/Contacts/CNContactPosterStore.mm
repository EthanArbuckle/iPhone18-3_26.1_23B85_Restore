@interface CNContactPosterStore
- (BOOL)performCreateRequest:(id)a3 error:(id *)a4;
- (BOOL)performDeleteRequest:(id)a3 error:(id *)a4;
- (CNContactPosterStore)init;
- (CNContactPosterStore)initWithContactPosterDataStoreManager:(id)a3;
- (CNContactPosterStore)initWithtPosterDataStore:(id)a3;
- (id)performFetchRequest:(id)a3 error:(id *)a4;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation CNContactPosterStore

- (CNContactPosterStore)init
{
  v3 = objc_alloc_init(CNContactPosterDataStore);
  v4 = [(CNContactPosterStore *)self initWithtPosterDataStore:v3];

  return v4;
}

- (CNContactPosterStore)initWithContactPosterDataStoreManager:(id)a3
{
  v4 = a3;
  v5 = [[CNContactPosterDataStore alloc] initWithStoreManager:v4];

  v6 = [(CNContactPosterStore *)self initWithtPosterDataStore:v5];
  return v6;
}

- (CNContactPosterStore)initWithtPosterDataStore:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNContactPosterStore;
  v6 = [(CNContactPosterStore *)&v10 init];
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
  v7 = [(CNContactPosterStore *)self store];
  v8 = [v7 executeFetchRequest:v6 error:a4];

  return v8;
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterStore *)self store];
  v8 = [v7 countForFetchRequest:v6 error:a4];

  return v8;
}

- (BOOL)performCreateRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterStore *)self store];
  LOBYTE(a4) = [v7 executeCreateRequest:v6 error:a4];

  return a4;
}

- (BOOL)performDeleteRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CNContactPosterStore *)self store];
  LOBYTE(a4) = [v7 executeDeleteRequest:v6 error:a4];

  return a4;
}

@end
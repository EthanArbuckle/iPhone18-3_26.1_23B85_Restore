@interface CNContactPosterDataDirectAccess
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (CNContactPosterDataDirectAccess)init;
- (CNContactPosterDataDirectAccess)initWithStoreManager:(id)manager;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
@end

@implementation CNContactPosterDataDirectAccess

- (CNContactPosterDataDirectAccess)init
{
  v3 = objc_alloc_init(CNContactPosterDataPersistentStoreManager);
  v4 = [(CNContactPosterDataDirectAccess *)self initWithStoreManager:v3];

  return v4;
}

- (CNContactPosterDataDirectAccess)initWithStoreManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = CNContactPosterDataDirectAccess;
  v6 = [(CNContactPosterDataDirectAccess *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storeManager, manager);
    v8 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  storeManager = [(CNContactPosterDataDirectAccess *)self storeManager];
  v8 = [CNContactPosterDataDirectFetchMethod execute:requestCopy storeManager:storeManager error:error];

  return v8;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  storeManager = [(CNContactPosterDataDirectAccess *)self storeManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNContactPosterDataDirectAccess_countForFetchRequest_error___block_invoke;
  v13[3] = &unk_1E7413848;
  v15 = &v23;
  v8 = requestCopy;
  v14 = v8;
  v16 = &v17;
  v9 = (v18 + 5);
  obj = v18[5];
  [storeManager performWorkWithManagedObjectContext:v13 error:&obj];
  objc_storeStrong(v9, obj);

  v10 = v24[3];
  if (error && v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    *error = v18[5];
    v10 = v24[3];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void __62__CNContactPosterDataDirectAccess_countForFetchRequest_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 persistentStoreRequest];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  v7 = [v4 countForFetchRequest:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(a1[5] + 8) + 24) = v7;
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  storeManager = [(CNContactPosterDataDirectAccess *)self storeManager];
  LOBYTE(error) = [CNContactPosterDataDirectCreateMethod execute:requestCopy storeManager:storeManager error:error];

  return error;
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  storeManager = [(CNContactPosterDataDirectAccess *)self storeManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNContactPosterDataDirectAccess_executeDeleteRequest_error___block_invoke;
  v13[3] = &unk_1E7413870;
  v8 = requestCopy;
  v14 = v8;
  v15 = &v17;
  v16 = &v23;
  v9 = (v18 + 5);
  obj = v18[5];
  [storeManager performWorkWithManagedObjectContext:v13 error:&obj];
  objc_storeStrong(v9, obj);

  v10 = *(v24 + 24);
  if (error && (v24[3] & 1) == 0)
  {
    *error = v18[5];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

void __62__CNContactPosterDataDirectAccess_executeDeleteRequest_error___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 persistentStoreRequest];
  v6 = *(a1[5] + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeRequest:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  *(*(a1[6] + 8) + 24) = v7 != 0;
}

@end
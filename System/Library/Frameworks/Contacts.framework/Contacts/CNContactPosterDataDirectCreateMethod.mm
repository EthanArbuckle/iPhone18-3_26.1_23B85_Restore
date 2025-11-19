@interface CNContactPosterDataDirectCreateMethod
+ (BOOL)execute:(id)a3 storeManager:(id)a4 error:(id *)a5;
+ (BOOL)updateOrInsertNewItems:(id)a3 inContext:(id)a4 forContactIdentifier:(id)a5 updateIsCurrent:(BOOL)a6 error:(id *)a7;
+ (id)log;
@end

@implementation CNContactPosterDataDirectCreateMethod

+ (id)log
{
  if (log_cn_once_token_0_11 != -1)
  {
    +[CNContactPosterDataDirectCreateMethod log];
  }

  v3 = log_cn_once_object_0_11;

  return v3;
}

uint64_t __44__CNContactPosterDataDirectCreateMethod_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "posters-direct");
  v1 = log_cn_once_object_0_11;
  log_cn_once_object_0_11 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)execute:(id)a3 storeManager:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__24;
  v24 = __Block_byref_object_dispose__24;
  v25 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__CNContactPosterDataDirectCreateMethod_execute_storeManager_error___block_invoke;
  v15[3] = &unk_1E7412CE0;
  v10 = v8;
  v16 = v10;
  v17 = &v20;
  v18 = &v26;
  v19 = a1;
  v11 = (v21 + 5);
  obj = v21[5];
  [v9 performWorkWithManagedObjectContext:v15 error:&obj];
  objc_storeStrong(v11, obj);
  v12 = *(v27 + 24);
  if (a5 && (v27[3] & 1) == 0)
  {
    *a5 = v21[5];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v12;
}

void __68__CNContactPosterDataDirectCreateMethod_execute_storeManager_error___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) contactIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*(a1 + 32) recentsOnly] ^ 1;
  }

  else
  {
    v5 = 1;
  }

  v6 = objc_alloc_init(_LimitingItemCollecter);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [*(a1 + 32) items];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v23 + 1) + 8 * v11++) acceptVisitor:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v9);
  }

  v12 = [(_LimitingItemCollecter *)v6 itemsToPersist];
  v13 = a1 + 40;
  v14 = *(a1 + 56);
  v15 = *(*(a1 + 40) + 8);
  obj = *(v15 + 40);
  [v14 updateOrInsertNewItems:v12 inContext:v3 forContactIdentifier:v4 updateIsCurrent:v5 error:&obj];
  objc_storeStrong((v15 + 40), obj);
  v16 = [*(a1 + 56) log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v4;
    _os_log_impl(&dword_1954A0000, v16, OS_LOG_TYPE_DEFAULT, "Will save poster/image for contact identifier: %{public}@", buf, 0xCu);
  }

  v17 = *(*(a1 + 40) + 8);
  v21 = *(v17 + 40);
  v18 = [v3 save:&v21];
  objc_storeStrong((v17 + 40), v21);
  *(*(*(a1 + 48) + 8) + 24) = v18;
  LODWORD(v17) = *(*(*(a1 + 48) + 8) + 24);
  v19 = [*(a1 + 56) log];
  v20 = v19;
  if (v17 == 1)
  {
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v4;
      _os_log_impl(&dword_1954A0000, v20, OS_LOG_TYPE_DEFAULT, "Did save poster/image for contact identifier: %{public}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __68__CNContactPosterDataDirectCreateMethod_execute_storeManager_error___block_invoke_cold_1(v13, v20);
  }
}

+ (BOOL)updateOrInsertNewItems:(id)a3 inContext:(id)a4 forContactIdentifier:(id)a5 updateIsCurrent:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[_ExistingItemUpdater alloc] initWithContactIdentifier:v11 updateIsCurrent:v8 context:v12];

  [(_ExistingItemUpdater *)v14 fetchExistingItems];
  [(_ExistingItemUpdater *)v14 processCreatedAndUpdatedItems:v13];

  [(_ExistingItemUpdater *)v14 enforceQuotas];
  LOBYTE(a7) = [(_ExistingItemUpdater *)v14 getResult:a7];

  return a7;
}

void __68__CNContactPosterDataDirectCreateMethod_execute_storeManager_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to save poster/image, error: %@", &v3, 0xCu);
}

@end
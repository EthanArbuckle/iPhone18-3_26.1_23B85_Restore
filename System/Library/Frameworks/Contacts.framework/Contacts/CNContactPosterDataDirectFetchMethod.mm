@interface CNContactPosterDataDirectFetchMethod
+ (id)convertManagedObjectsToPosterDataItems:(id)items;
+ (id)execute:(id)execute storeManager:(id)manager error:(id *)error;
@end

@implementation CNContactPosterDataDirectFetchMethod

+ (id)execute:(id)execute storeManager:(id)manager error:(id *)error
{
  executeCopy = execute;
  managerCopy = manager;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__4;
  v27 = __Block_byref_object_dispose__4;
  v28 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__CNContactPosterDataDirectFetchMethod_execute_storeManager_error___block_invoke;
  v18[3] = &unk_1E7412CE0;
  v10 = executeCopy;
  v19 = v10;
  v20 = &v23;
  v21 = &v29;
  selfCopy = self;
  v11 = (v24 + 5);
  obj = v24[5];
  [managerCopy performWorkWithManagedObjectContext:v18 error:&obj];
  objc_storeStrong(v11, obj);
  v12 = v24[5];
  v13 = v30[5];
  v14 = v13;
  if (error && !v13)
  {
    v15 = v12;
    *error = v12;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14;
}

void __67__CNContactPosterDataDirectFetchMethod_execute_storeManager_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 persistentStoreRequest];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v4 executeFetchRequest:v5 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v8 = [*(a1 + 56) convertManagedObjectsToPosterDataItems:v7];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)convertManagedObjectsToPosterDataItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = objc_alloc_init(_FetchedItemVisitor);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * i) acceptVisitor:{v4, v12}];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  visitedItems = [(_FetchedItemVisitor *)v4 visitedItems];

  return visitedItems;
}

@end
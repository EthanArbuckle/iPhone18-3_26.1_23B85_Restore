@interface CADEventPredicate
@end

@implementation CADEventPredicate

void __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  v5 = [v3 uniqueID];
  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    v10 = [v6 objectForKeyedSubscript:v5];
    if (!v10)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:v5];
    }

    [v10 addObject:v3];
  }

  else
  {
    v11 = logHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke_cold_1(v4, v11);
    }
  }
}

uint64_t __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke_5(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = 1;
  }

  else if (*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = [v3 uniqueID];
    v8 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v7];
    v29 = [v3 calendar];
    v9 = [v29 externalID];
    if (v8)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v8;
      v6 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v6)
      {
        v24 = v8;
        v25 = v7;
        v26 = v3;
        v27 = v9;
        v11 = *v31;
        v28 = v10;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v31 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = [*(*(&v30 + 1) + 8 * i) calendar];
            v14 = [v13 externalID];
            if ([v9 isEqualToString:v14])
            {
              v15 = [v29 source];
              v16 = [v15 externalID];
              v17 = [v13 source];
              [v17 externalID];
              v18 = v6;
              v20 = v19 = v11;
              v21 = [v16 isEqual:v20];

              v11 = v19;
              v6 = v18;

              v9 = v27;
              v10 = v28;

              if (v21)
              {
                v6 = 1;
                v8 = v28;
                v7 = v25;
                v3 = v26;
                goto LABEL_19;
              }
            }

            else
            {
            }
          }

          v6 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v6);
        v7 = v25;
        v3 = v26;
        v8 = v24;
      }

LABEL_19:
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

void __106__CADEventPredicate_EKPredicateExpanding__expandWithObjectsPendingCommit_deletedObjectIDs_andResultArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "A pending integration event has no uniqueID (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
@interface CNContactVerifier
+ (BOOL)arePropertiesOfContactAuthorized:(id)a3 error:(id *)a4;
+ (BOOL)isValidContact:(id)a3 error:(id *)a4;
+ (id)os_log;
@end

@implementation CNContactVerifier

+ (id)os_log
{
  if (os_log_cn_once_token_0_3 != -1)
  {
    +[CNContactVerifier os_log];
  }

  v3 = os_log_cn_once_object_0_3;

  return v3;
}

uint64_t __27__CNContactVerifier_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNContactVerifier");
  v1 = os_log_cn_once_object_0_3;
  os_log_cn_once_object_0_3 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)isValidContact:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__CNContactVerifier_isValidContact_error___block_invoke;
  aBlock[3] = &unk_1E7412D58;
  v7 = v5;
  v26 = v7;
  v29 = a4 != 0;
  v8 = v6;
  v27 = v8;
  v28 = &v30;
  v9 = _Block_copy(aBlock);
  v10 = [v7 availableKeyDescriptor];
  v11 = v10 == 0;

  if (v11)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = +[CN writableContactProperties];
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v34 count:16];
    if (v14)
    {
      v15 = *v20;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v9[2](v9, *(*(&v19 + 1) + 8 * i));
        }

        v14 = [v13 countByEnumeratingWithState:&v19 objects:v34 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v12 = [v7 keyVector];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__CNContactVerifier_isValidContact_error___block_invoke_2;
    v23[3] = &unk_1E7412D80;
    v24 = v9;
    [v12 enumeratePropertiesUsingBlock:v23];

    v13 = v24;
  }

  v17 = *(v31 + 24);
  if (a4 && (v31[3] & 1) == 0)
  {
    *a4 = [CNErrorFactory validationErrorByAggregatingValidationErrors:v8];
  }

  _Block_object_dispose(&v30, 8);
  return v17;
}

void __42__CNContactVerifier_isValidContact_error___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 key];
  v6 = [v3 valueForKey:v5];

  v19 = 0;
  LOBYTE(v5) = [v4 isValidValue:v6 error:&v19];

  v7 = v19;
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    if (v7 && *(a1 + 56) == 1)
    {
      v9 = [v7 userInfo];
      v10 = [v9 mutableCopy];

      v20[0] = *(a1 + 32);
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v10 setObject:v11 forKey:@"CNInvalidRecords"];

      v12 = *(a1 + 40);
      v13 = MEMORY[0x1E696ABC0];
      v14 = [v8 domain];
      v15 = [v8 code];
      v16 = [v10 copy];
      v17 = [v13 errorWithDomain:v14 code:v15 userInfo:v16];
      [v12 addObject:v17];
    }

    v18 = *(*(a1 + 48) + 8);
    if (*(v18 + 24) == 1)
    {
      *(v18 + 24) = 0;
    }
  }
}

+ (BOOL)arePropertiesOfContactAuthorized:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37 = 0;
  v38[0] = &v37;
  v38[1] = 0x3032000000;
  v38[2] = __Block_byref_object_copy__5;
  v38[3] = __Block_byref_object_dispose__5;
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CNContactVerifier_arePropertiesOfContactAuthorized_error___block_invoke;
  aBlock[3] = &unk_1E7412DA8;
  aBlock[4] = &v37;
  v29 = _Block_copy(aBlock);
  v5 = +[CN restrictedProperties];
  v6 = [v4 hasBeenPersisted];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v32 objects:v50 count:16];
  if (!v7)
  {
    v30 = 1;
LABEL_23:
    v21 = obj;
    goto LABEL_24;
  }

  v9 = *v33;
  v30 = 1;
  *&v8 = 138543874;
  v26 = v8;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      v12 = [v11 key];
      v49 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      v14 = [v4 areKeysAvailable:v13];

      if (v14)
      {
        v15 = [v11 CNValueForContact:v4];
        if (v6)
        {
          v16 = [v4 snapshot];
          v17 = [v11 CNValueForContact:v16];
        }

        else
        {
          v17 = [v11 nilValue];
        }

        if (([v11 isValue:v15 equalToEmptyEquivalentOrValue:v17] & 1) == 0)
        {
          v18 = [a1 os_log];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v11 key];
            *buf = v26;
            v44 = v20;
            v45 = 2114;
            v46 = v15;
            v47 = 2114;
            v48 = v17;
            _os_log_debug_impl(&dword_1954A0000, v18, OS_LOG_TYPE_DEBUG, "UnauthorizedKey:%{public}@, value:%{public}@, snapshotValue:%{public}@", buf, 0x20u);
          }

          if (!a4)
          {

            v30 = 0;
            goto LABEL_23;
          }

          v19 = [v11 key];
          v29[2](v29, v19);

          v30 = 0;
        }
      }
    }

    v7 = [obj countByEnumeratingWithState:&v32 objects:v50 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

  if (!((a4 == 0) | v30 & 1))
  {
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      v21 = 0;
    }

    else
    {
      v23 = [a1 os_log];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [CNContactVerifier arePropertiesOfContactAuthorized:v38 error:v23];
      }

      v24 = *(v38[0] + 40);
      v40 = v4;
      v41[0] = @"CNKeyPaths";
      v41[1] = @"CNInvalidRecords";
      v42[0] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      v42[1] = v25;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
    }

    [CNErrorFactory errorWithCode:102 userInfo:v21];
    *a4 = v30 = 0;
LABEL_24:
  }

  _Block_object_dispose(&v37, 8);
  return v30 & 1;
}

void __60__CNContactVerifier_arePropertiesOfContactAuthorized_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

+ (void)arePropertiesOfContactAuthorized:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "CNErrorCodeUnauthorizedKeys:%{public}@", &v3, 0xCu);
}

@end
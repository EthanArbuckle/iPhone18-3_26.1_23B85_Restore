@interface CNSaveRequestVerifier
+ (BOOL)_areDirectPropertiesOfSaveRequest:(id)a3 authorizedForSavingWithContext:(id)a4 error:(id *)a5;
+ (BOOL)_arePropertiesOfContacts:(id)a3 inSaveRequest:(id)a4 authorizedForSavingWithContext:(id)a5 error:(id *)a6;
+ (BOOL)_isEditingOfContacts:(id)a3 inSaveRequest:(id)a4 authorizedForSavingWithContext:(id)a5 error:(id *)a6;
+ (BOOL)isSaveRequest:(id)a3 authorizedForSavingWithContext:(id)a4 error:(id *)a5;
+ (BOOL)isValidSaveRequest:(id)a3 error:(id *)a4;
+ (id)insertedAndUpdatedContactsForSaveRequest:(id)a3;
+ (id)os_log;
@end

@implementation CNSaveRequestVerifier

+ (id)os_log
{
  if (os_log_cn_once_token_0_12 != -1)
  {
    +[CNSaveRequestVerifier os_log];
  }

  v3 = os_log_cn_once_object_0_12;

  return v3;
}

uint64_t __31__CNSaveRequestVerifier_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSaveRequestVerifier");
  v1 = os_log_cn_once_object_0_12;
  os_log_cn_once_object_0_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)insertedAndUpdatedContactsForSaveRequest:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [v3 updatedContacts];
  v6 = [v4 arrayWithArray:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v3 addedContactsByContainerIdentifier];
  v8 = [v7 allValues];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v6 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v6;
}

+ (BOOL)isValidSaveRequest:(id)a3 error:(id *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [a1 insertedAndUpdatedContactsForSaveRequest:a3];
  v6 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = *v21;
  v10 = 1;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      v19 = 0;
      v13 = [CNContactVerifier isValidContact:v12 error:&v19];
      v14 = v19;
      if (!v13)
      {
        [v6 _cn_addNonNilObject:v14];
        v10 = 0;
      }
    }

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);

  if (v10)
  {
    v8 = 0;
LABEL_13:
    v15 = 1;
    goto LABEL_17;
  }

  v16 = [CNErrorFactory validationErrorByAggregatingValidationErrors:v6];
  v8 = v16;
  if (a4)
  {
    v17 = v16;
    v15 = 0;
    *a4 = v8;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15;
}

+ (BOOL)isSaveRequest:(id)a3 authorizedForSavingWithContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v10 = [a1 _areDirectPropertiesOfSaveRequest:v8 authorizedForSavingWithContext:v9 error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = [a1 insertedAndUpdatedContactsForSaveRequest:v8];
    v21 = v11;
    v13 = [a1 _arePropertiesOfContacts:v12 inSaveRequest:v8 authorizedForSavingWithContext:v9 error:&v21];
    v14 = v21;

    if (v13)
    {
      v15 = [v8 deletedContacts];
      v16 = [v12 arrayByAddingObjectsFromArray:v15];

      v20 = v14;
      v17 = [a1 _isEditingOfContacts:v16 inSaveRequest:v8 authorizedForSavingWithContext:v9 error:&v20];
      v11 = v20;

      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = 0;
      v11 = v14;
      if (!a5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    v17 = 0;
    if (!a5)
    {
      goto LABEL_10;
    }
  }

  if ((v17 & 1) == 0)
  {
    v18 = v11;
    *a5 = v11;
  }

LABEL_10:

  return v17;
}

+ (BOOL)_areDirectPropertiesOfSaveRequest:(id)a3 authorizedForSavingWithContext:(id)a4 error:(id *)a5
{
  v30[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = MEMORY[0x1E695DF70];
  v10 = a4;
  v11 = [v9 array];
  LOBYTE(v9) = [v10 isClientFirstOrSecondParty];

  if ((v9 & 1) == 0)
  {
    if ([v8 ignoresGuardianRestrictions])
    {
      [v11 addObject:@"ignoresGuardianRestrictions"];
    }

    v12 = [v8 meCardIdentifier];

    if (v12)
    {
      [v11 addObject:@"meCardIdentifier"];
    }

    v13 = [v8 deletedContainers];
    v14 = [v13 count];

    if (v14)
    {
      [v11 addObject:@"deletedContainers"];
    }

    v15 = [v8 addedContainersByParentContainerIdentifier];
    v16 = [v15 count];

    if (v16)
    {
      [v11 addObject:@"addedContainersByParentContainerIdentifier"];
    }

    v17 = [v8 addedAccountContainersByParentContainerIdentifier];
    v18 = [v17 count];

    if (v18)
    {
      [v11 addObject:@"addedAccountContainersByParentContainerIdentifier"];
    }
  }

  v19 = [v11 count];
  if (v19)
  {
    v20 = [a1 os_log];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CNSaveRequestVerifier _areDirectPropertiesOfSaveRequest:v11 authorizedForSavingWithContext:v20 error:?];
    }

    v30[0] = v11;
    v29[0] = @"CNKeyPaths";
    v29[1] = @"CNInvalidRecords";
    v28 = v8;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v30[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v23 = [CNErrorFactory errorWithCode:102 userInfo:v22];

    v24 = v23;
    v25 = v24;
    if (a5)
    {
      v26 = v24;
      *a5 = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  return v19 == 0;
}

+ (BOOL)_arePropertiesOfContacts:(id)a3 inSaveRequest:(id)a4 authorizedForSavingWithContext:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([a5 isClientFirstOrSecondParty] & 1) != 0 || (objc_msgSend(v10, "ignoresContactProviderRestrictions"))
  {
    v11 = 1;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v24 = v10;
      v25 = v9;
      v15 = *v28;
      v16 = 1;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          if (a6)
          {
            v26 = 0;
            v19 = [CNContactVerifier arePropertiesOfContactAuthorized:v18 error:&v26];
            v20 = v26;
            if (!v19)
            {
              [v12 addObject:v20];
              v16 = 0;
            }
          }

          else if (![CNContactVerifier arePropertiesOfContactAuthorized:v18 error:0])
          {

            goto LABEL_19;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

      if (v16)
      {
        v14 = 0;
        v11 = 1;
        v10 = v24;
        v9 = v25;
        goto LABEL_24;
      }

LABEL_19:
      v21 = [CNErrorFactory validationErrorByAggregatingValidationErrors:v12];
      v14 = v21;
      v10 = v24;
      if (a6)
      {
        v22 = v21;
        v11 = 0;
        *a6 = v14;
      }

      else
      {
        v11 = 0;
      }

      v9 = v25;
    }

    else
    {

      v11 = 1;
    }

LABEL_24:
  }

  return v11;
}

+ (BOOL)_isEditingOfContacts:(id)a3 inSaveRequest:(id)a4 authorizedForSavingWithContext:(id)a5 error:(id *)a6
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v35 = a5;
  if ([v35 isClientFirstOrSecondParty] && (objc_msgSend(v10, "ignoresGuardianRestrictions") & 1) != 0)
  {
    v11 = 0;
LABEL_34:
    v26 = 0;
    v24 = 1;
    goto LABEL_40;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v9;
  v11 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (!v11)
  {

    goto LABEL_34;
  }

  v34 = a6;
  v31 = v10;
  v32 = v9;
  v36 = 0;
  v13 = *v38;
  v33 = 1;
  while (2)
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v38 != v13)
      {
        objc_enumerationMutation(v12);
      }

      v15 = *(*(&v37 + 1) + 8 * i);
      v45 = @"downtimeWhitelist";
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:{1, v31, v32}];
      v17 = [v15 areKeysAvailable:v16];

      if (v17)
      {
        v18 = [v15 snapshot];
        if (![CNDowntimeWhitelist isWhitelistedContact:v15])
        {
          v44 = @"downtimeWhitelist";
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          if (([v18 areKeysAvailable:v21] & 1) == 0)
          {

            goto LABEL_25;
          }

          v22 = [CNDowntimeWhitelist isWhitelistedContact:v18];

          if (!v22)
          {
            goto LABEL_25;
          }
        }

        if (![v35 isClientFirstOrSecondParty])
        {
          goto LABEL_21;
        }

        if (v18)
        {
          v43 = @"downtimeWhitelist";
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
          if ([v18 areKeysAvailable:v19])
          {
            v20 = [CNDowntimeWhitelist isWhitelistedContact:v18];

            if (!v20)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }

LABEL_21:
          if (!v34)
          {

            goto LABEL_31;
          }

          v23 = v36;
          if (!v36)
          {
            v23 = [MEMORY[0x1E695DF70] array];
          }

          v36 = v23;
          [v23 addObject:v15];
          v33 = 0;
        }

LABEL_25:

        continue;
      }
    }

    v11 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

  if (v33)
  {
    v11 = 0;
    v24 = 1;
    v10 = v31;
    v9 = v32;
    goto LABEL_39;
  }

LABEL_31:
  v10 = v31;
  v9 = v32;
  if ([v36 count])
  {
    v41 = @"CNInvalidRecords";
    v42 = v36;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  }

  else
  {
    v25 = 0;
  }

  v27 = [CNErrorFactory errorWithCode:206 userInfo:v25];

  v28 = v27;
  v11 = v28;
  if (v34)
  {
    v29 = v28;
    v24 = 0;
    *v34 = v11;
  }

  else
  {
    v24 = 0;
  }

LABEL_39:
  v26 = v36;
LABEL_40:

  return v24;
}

+ (void)_areDirectPropertiesOfSaveRequest:(uint64_t)a1 authorizedForSavingWithContext:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "CNErrorCodeUnauthorizedKeys:%{public}@", &v2, 0xCu);
}

@end
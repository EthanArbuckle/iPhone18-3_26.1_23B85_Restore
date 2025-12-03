@interface CNSaveRequestVerifier
+ (BOOL)_areDirectPropertiesOfSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error;
+ (BOOL)_arePropertiesOfContacts:(id)contacts inSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error;
+ (BOOL)_isEditingOfContacts:(id)contacts inSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error;
+ (BOOL)isSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error;
+ (BOOL)isValidSaveRequest:(id)request error:(id *)error;
+ (id)insertedAndUpdatedContactsForSaveRequest:(id)request;
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

+ (id)insertedAndUpdatedContactsForSaveRequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v4 = MEMORY[0x1E695DF70];
  updatedContacts = [requestCopy updatedContacts];
  v6 = [v4 arrayWithArray:updatedContacts];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  addedContactsByContainerIdentifier = [requestCopy addedContactsByContainerIdentifier];
  allValues = [addedContactsByContainerIdentifier allValues];

  v9 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [v6 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
      }

      v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v6;
}

+ (BOOL)isValidSaveRequest:(id)request error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [self insertedAndUpdatedContactsForSaveRequest:request];
  array = [MEMORY[0x1E695DF70] array];
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
        [array _cn_addNonNilObject:v14];
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

  v16 = [CNErrorFactory validationErrorByAggregatingValidationErrors:array];
  v8 = v16;
  if (error)
  {
    v17 = v16;
    v15 = 0;
    *error = v8;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15;
}

+ (BOOL)isSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error
{
  requestCopy = request;
  contextCopy = context;
  v22 = 0;
  v10 = [self _areDirectPropertiesOfSaveRequest:requestCopy authorizedForSavingWithContext:contextCopy error:&v22];
  v11 = v22;
  if (v10)
  {
    v12 = [self insertedAndUpdatedContactsForSaveRequest:requestCopy];
    v21 = v11;
    v13 = [self _arePropertiesOfContacts:v12 inSaveRequest:requestCopy authorizedForSavingWithContext:contextCopy error:&v21];
    v14 = v21;

    if (v13)
    {
      deletedContacts = [requestCopy deletedContacts];
      v16 = [v12 arrayByAddingObjectsFromArray:deletedContacts];

      v20 = v14;
      v17 = [self _isEditingOfContacts:v16 inSaveRequest:requestCopy authorizedForSavingWithContext:contextCopy error:&v20];
      v11 = v20;

      if (!error)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v17 = 0;
      v11 = v14;
      if (!error)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    v17 = 0;
    if (!error)
    {
      goto LABEL_10;
    }
  }

  if ((v17 & 1) == 0)
  {
    v18 = v11;
    *error = v11;
  }

LABEL_10:

  return v17;
}

+ (BOOL)_areDirectPropertiesOfSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error
{
  v30[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v9 = MEMORY[0x1E695DF70];
  contextCopy = context;
  array = [v9 array];
  LOBYTE(v9) = [contextCopy isClientFirstOrSecondParty];

  if ((v9 & 1) == 0)
  {
    if ([requestCopy ignoresGuardianRestrictions])
    {
      [array addObject:@"ignoresGuardianRestrictions"];
    }

    meCardIdentifier = [requestCopy meCardIdentifier];

    if (meCardIdentifier)
    {
      [array addObject:@"meCardIdentifier"];
    }

    deletedContainers = [requestCopy deletedContainers];
    v14 = [deletedContainers count];

    if (v14)
    {
      [array addObject:@"deletedContainers"];
    }

    addedContainersByParentContainerIdentifier = [requestCopy addedContainersByParentContainerIdentifier];
    v16 = [addedContainersByParentContainerIdentifier count];

    if (v16)
    {
      [array addObject:@"addedContainersByParentContainerIdentifier"];
    }

    addedAccountContainersByParentContainerIdentifier = [requestCopy addedAccountContainersByParentContainerIdentifier];
    v18 = [addedAccountContainersByParentContainerIdentifier count];

    if (v18)
    {
      [array addObject:@"addedAccountContainersByParentContainerIdentifier"];
    }
  }

  v19 = [array count];
  if (v19)
  {
    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNSaveRequestVerifier _areDirectPropertiesOfSaveRequest:array authorizedForSavingWithContext:os_log error:?];
    }

    v30[0] = array;
    v29[0] = @"CNKeyPaths";
    v29[1] = @"CNInvalidRecords";
    v28 = requestCopy;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v30[1] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v23 = [CNErrorFactory errorWithCode:102 userInfo:v22];

    v24 = v23;
    v25 = v24;
    if (error)
    {
      v26 = v24;
      *error = v25;
    }
  }

  else
  {
    v25 = 0;
  }

  return v19 == 0;
}

+ (BOOL)_arePropertiesOfContacts:(id)contacts inSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  requestCopy = request;
  if ([context isClientFirstOrSecondParty] & 1) != 0 || (objc_msgSend(requestCopy, "ignoresContactProviderRestrictions"))
  {
    v11 = 1;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = contactsCopy;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v24 = requestCopy;
      v25 = contactsCopy;
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
          if (error)
          {
            v26 = 0;
            v19 = [CNContactVerifier arePropertiesOfContactAuthorized:v18 error:&v26];
            v20 = v26;
            if (!v19)
            {
              [array addObject:v20];
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
        requestCopy = v24;
        contactsCopy = v25;
        goto LABEL_24;
      }

LABEL_19:
      v21 = [CNErrorFactory validationErrorByAggregatingValidationErrors:array];
      v14 = v21;
      requestCopy = v24;
      if (error)
      {
        v22 = v21;
        v11 = 0;
        *error = v14;
      }

      else
      {
        v11 = 0;
      }

      contactsCopy = v25;
    }

    else
    {

      v11 = 1;
    }

LABEL_24:
  }

  return v11;
}

+ (BOOL)_isEditingOfContacts:(id)contacts inSaveRequest:(id)request authorizedForSavingWithContext:(id)context error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  requestCopy = request;
  contextCopy = context;
  if ([contextCopy isClientFirstOrSecondParty] && (objc_msgSend(requestCopy, "ignoresGuardianRestrictions") & 1) != 0)
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
  v12 = contactsCopy;
  v11 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (!v11)
  {

    goto LABEL_34;
  }

  errorCopy = error;
  v31 = requestCopy;
  v32 = contactsCopy;
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
        snapshot = [v15 snapshot];
        if (![CNDowntimeWhitelist isWhitelistedContact:v15])
        {
          v44 = @"downtimeWhitelist";
          v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          if (([snapshot areKeysAvailable:v21] & 1) == 0)
          {

            goto LABEL_25;
          }

          v22 = [CNDowntimeWhitelist isWhitelistedContact:snapshot];

          if (!v22)
          {
            goto LABEL_25;
          }
        }

        if (![contextCopy isClientFirstOrSecondParty])
        {
          goto LABEL_21;
        }

        if (snapshot)
        {
          v43 = @"downtimeWhitelist";
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
          if ([snapshot areKeysAvailable:v19])
          {
            v20 = [CNDowntimeWhitelist isWhitelistedContact:snapshot];

            if (!v20)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }

LABEL_21:
          if (!errorCopy)
          {

            goto LABEL_31;
          }

          array = v36;
          if (!v36)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          v36 = array;
          [array addObject:v15];
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
    requestCopy = v31;
    contactsCopy = v32;
    goto LABEL_39;
  }

LABEL_31:
  requestCopy = v31;
  contactsCopy = v32;
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
  if (errorCopy)
  {
    v29 = v28;
    v24 = 0;
    *errorCopy = v11;
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
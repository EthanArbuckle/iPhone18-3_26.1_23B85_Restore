@interface CNUIContactStoreSaveExecutor
- (BOOL)handleContainerContextForSaveConfiguration:(id)a3 contactToSave:(id)a4 saveDelegate:(id)a5 issuedRequestIdentifiers:(id)a6 additionalLinkedContacts:(id)a7;
- (BOOL)performSaveForMutableContact:(id)a3 group:(id)a4 container:(id)a5 saveConfiguration:(id)a6 issuedRequestIdentifiers:(id)a7;
- (BOOL)saveShadowContactForSaveConfiguration:(id)a3;
- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4;
- (id)saveLinkedContactsWithSaveConfiguration:(id)a3 contactToSave:(id)a4 additionalLinkedContacts:(id)a5 issuedRequestIdentifiers:(id)a6 saveDelegate:(id)a7;
- (id)validatedContactForSaveConfiguration:(id)a3 preservingIdentifier:(BOOL)a4;
- (void)handleDeleteAcceptedContactsWithSaveConfiguration:(id)a3 contactToSave:(id)a4;
- (void)handleGroupContextForSaveConfiguration:(id)a3 contactToSave:(id)a4 issuedRequestIdentifiers:(id)a5 saveDelegate:(id)a6;
@end

@implementation CNUIContactStoreSaveExecutor

- (BOOL)performSaveForMutableContact:(id)a3 group:(id)a4 container:(id)a5 saveConfiguration:(id)a6 issuedRequestIdentifiers:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_alloc_init(CNUIContactStoreSaveDelegate);
  v17 = objc_alloc_init(MEMORY[0x1E695CF88]);
  if ([v11 ignoresParentalRestrictions])
  {
    v18 = 1;
  }

  else
  {
    v18 = [v11 saveWasAuthorized];
  }

  [v17 setIgnoresGuardianRestrictions:v18];
  [v17 setDelegate:v16];
  v19 = [v17 saveRequestIdentifier];
  [v12 addObject:v19];

  v20 = [v11 contactStore];
  LOBYTE(v19) = [v15 saveContactInStore:v20 group:v14 container:v13 request:v17];

  return v19;
}

- (void)handleDeleteAcceptedContactsWithSaveConfiguration:(id)a3 contactToSave:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (([a4 isCoreRecentsAccepted] & 1) == 0)
  {
    v7 = [v6 originalContacts];
    v8 = [v7 _cn_filter:&__block_literal_global_53794];

    v9 = [v8 firstObject];
    if (v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695CE60]);
      [v10 deleteRecentContact:v9];
      v11 = [v6 contactStore];
      v15 = 0;
      [v11 executeSaveRequest:v10 error:&v15];
      v12 = v15;

      v13 = CNUILogContactCard();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349314;
          v17 = self;
          v18 = 2112;
          v19 = v12;
          _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "[CNUIContactStoreExecutor] %{public}p Could not delete CoreRecents accepted contact. Error: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        v17 = self;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] %{public}p deleted original accepted contact for saved contact.", buf, 0xCu);
      }
    }
  }
}

- (id)saveLinkedContactsWithSaveConfiguration:(id)a3 contactToSave:(id)a4 additionalLinkedContacts:(id)a5 issuedRequestIdentifiers:(id)a6 saveDelegate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v13) && ([v11 editingLinkedContacts], v17 = objc_claimAutoreleasedReturnValue(), v18 = (*(v16 + 16))(v16, v17), v17, v18))
  {
    v19 = [v12 copy];
  }

  else
  {
    v20 = v11;
    if ([v13 count])
    {
      v21 = [v20 editingLinkedContacts];
      [v13 addObjectsFromArray:v21];

      v22 = [v20 copyWithEditingLinkedContacts:v13];
      v20 = v22;
    }

    v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
    v24 = [(CNUIContactStoreLinkedContactSaveExecutor *)v23 executeSaveWithConfiguration:v20 saveDelegate:v15];
    v25 = [v24 identifiersOfIssuedSaveRequests];
    [v14 addObjectsFromArray:v25];

    v26 = [v24 contact];

    if (v26)
    {
      v27 = [v24 contact];
    }

    else
    {
      v27 = [v12 copy];
    }

    v19 = v27;
  }

  return v19;
}

- (void)handleGroupContextForSaveConfiguration:(id)a3 contactToSave:(id)a4 issuedRequestIdentifiers:(id)a5 saveDelegate:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 groupContext];

  if (v13)
  {
    if ([v9 ignoresParentalRestrictions])
    {
      v14 = 1;
    }

    else
    {
      v14 = [v9 saveWasAuthorized];
    }

    v15 = [CNUIGroupsAndContainersSaveManager alloc];
    v16 = [v9 contactStore];
    v17 = [v12 contactViewCache];
    v18 = [(CNUIGroupsAndContainersSaveManager *)v15 initWithContactStore:v16 contactViewCache:v17];

    v22[0] = v10;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v20 = [v9 groupContext];
    v21 = [(CNUIGroupsAndContainersSaveManager *)v18 updateContacts:v19 forGroupContext:v20 ignoresGuardianRestrictions:v14 issuedRequestIdentifiers:v11];
  }
}

- (BOOL)handleContainerContextForSaveConfiguration:(id)a3 contactToSave:(id)a4 saveDelegate:(id)a5 issuedRequestIdentifiers:(id)a6 additionalLinkedContacts:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v44 = a5;
  v13 = a6;
  v14 = a7;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = [v11 containerContext];
  v16 = [v15 addedContainers];

  obj = v16;
  v17 = [v16 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v41 = v14;
    v42 = v12;
    v40 = *v46;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * i);
        v21 = [v44 contactViewCache];
        v22 = [v21 policyForContainer:v20];

        v23 = [v20 identifier];
        v24 = [v11 parentContainer];
        v25 = [v24 identifier];
        v26 = [v23 isEqualToString:v25];

        if (v26)
        {
          v27 = v42;
          v28 = [v11 parentGroup];
        }

        else
        {
          v27 = [MEMORY[0x1E695CDC8] contactFromContact:v42 conformingToPolicy:v22 options:5];
          v28 = 0;
        }

        v29 = objc_alloc_init(MEMORY[0x1E695CF88]);
        if ([v11 ignoresParentalRestrictions])
        {
          v30 = 1;
        }

        else
        {
          v30 = [v11 saveWasAuthorized];
        }

        [v29 setIgnoresGuardianRestrictions:v30];
        v31 = [v29 saveRequestIdentifier];
        [v13 addObject:v31];

        v32 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:v27 group:v28 container:v20 saveConfiguration:v11 issuedRequestIdentifiers:v13];
        [v41 addObject:v27];
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v18);
    v14 = v41;
    v12 = v42;
  }

  else
  {
    v32 = 0;
  }

  v33 = [v11 containerContext];
  v34 = [v33 originalContainers];
  v35 = [v34 count];

  if (v35)
  {
    v36 = [v11 parentGroup];
    v37 = [v11 parentContainer];
    v32 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:v12 group:v36 container:v37 saveConfiguration:v11 issuedRequestIdentifiers:v13];

    [v14 addObject:v12];
  }

  return v32;
}

- (id)validatedContactForSaveConfiguration:(id)a3 preservingIdentifier:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 mutableContact];
  v7 = objc_alloc_init(MEMORY[0x1E695CF58]);
  v8 = [v5 parentContainer];
  v9 = [v8 identifier];
  [v7 setContainerIdentifier:v9];

  if ([v5 ignoresParentalRestrictions])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 saveWasAuthorized];
  }

  [v7 setIgnoresGuardianRestrictions:v10];
  v11 = [v5 contactStore];
  v22 = 0;
  v12 = [v11 policyWithDescription:v7 error:&v22];
  v13 = v22;

  if (v13)
  {
    v14 = CNUILogContactCard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = [v5 parentContainer];
      *buf = 138543362;
      v24 = v21;
      _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "[CNUIContactStoreExecutor] failed to get policy for container %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [v6 updateContactTypeWithPolicy:v12];
    if (![v6 hasBeenPersisted])
    {
      if (v4)
      {
        v17 = 13;
      }

      else
      {
        v17 = 5;
      }

      v18 = [MEMORY[0x1E695CDC8] contactFromContact:v6 conformingToPolicy:v12 options:v17];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v6;
      }

      v15 = v20;

      goto LABEL_10;
    }
  }

  v15 = v6;
LABEL_10:

  return v15;
}

- (BOOL)saveShadowContactForSaveConfiguration:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 shadowCopyOfReadonlyContact];

  if (v4)
  {
    v5 = [v3 contactStore];
    v6 = [v5 defaultContainerIdentifier];

    if (!v6)
    {
      v12 = CNUILogContactCard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] Failed to get default container identifier to save shadow copy of readonly contact", buf, 2u);
      }

      v14 = 1;
      goto LABEL_17;
    }

    v7 = MEMORY[0x1E695CE48];
    v25[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v9 = [v7 predicateForContainersWithIdentifiers:v8];

    v10 = [v3 contactStore];
    v22 = 0;
    v11 = [v10 containersMatchingPredicate:v9 error:&v22];
    v12 = v22;
    v13 = [v11 firstObject];

    v14 = v12 != 0;
    if (v12)
    {
      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v12;
        v16 = "[CNUIContactStoreExecutor] Failed to get default container to save shadow copy of readonly contact, error %@";
LABEL_14:
        _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
      }
    }

    else
    {
      v17 = [v3 shadowCopyOfReadonlyContact];
      v18 = [v3 contactStore];
      v19 = [v3 parentGroup];
      v20 = [v17 saveContactInStore:v18 group:v19 container:v13];

      if (v20)
      {
        v14 = 1;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v15 = CNUILogContactCard();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = 0;
        v16 = "[CNUIContactStoreExecutor] Failed to save shadow copy of readonly contact, error %@";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  v14 = 1;
LABEL_18:

  return v14;
}

- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134349056;
    v30 = self;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] %{public}p will execute save…", &v29, 0xCu);
  }

  if (![(CNUIContactStoreSaveExecutor *)self saveShadowContactForSaveConfiguration:v6])
  {
    v17 = [CNUIContactSaveResult alloc];
    v9 = [v6 mutableContact];
    v18 = [(CNUIContactSaveResult *)v17 initWithSuccess:0 contact:v9 identifiersOfIssuedSaveRequests:MEMORY[0x1E695E0F0]];
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [MEMORY[0x1E695DF70] array];
  v11 = [(CNUIContactStoreSaveExecutor *)self validatedContactForSaveConfiguration:v6 preservingIdentifier:1];
  if (![(CNUIContactStoreSaveExecutor *)v11 isSuggestedMe])
  {
    v19 = [MEMORY[0x1E69966E8] currentEnvironment];
    v20 = [v19 featureFlags];
    if ([v20 isFeatureEnabled:13])
    {
      v21 = [v6 containerContext];

      if (v21)
      {
        if ([(CNUIContactStoreSaveExecutor *)self handleContainerContextForSaveConfiguration:v6 contactToSave:v11 saveDelegate:v7 issuedRequestIdentifiers:v9 additionalLinkedContacts:v10])
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v23 = [v6 parentGroup];
    v24 = [v6 parentContainer];
    v25 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:v11 group:v23 container:v24 saveConfiguration:v6 issuedRequestIdentifiers:v9];

    if (v25)
    {
      goto LABEL_17;
    }

LABEL_13:
    v22 = 0;
    v13 = v11;
    goto LABEL_18;
  }

  v12 = +[CNDonatedMeCardPersistenceHelper defaultKeysForValuesToPersist];
  v13 = [CNDonatedMeCardPersistenceHelper mutableCopyOfContact:v11 byCopyingModificationsAndValuesForKeysOnly:v12];

  v14 = CNUILogContactCard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134349056;
    v30 = v13;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] creating new me contact %{public}p", &v29, 0xCu);
  }

  v15 = [v6 contactStore];
  v16 = [CNDonatedMeCardPersistenceHelper createNewMeContact:v13 inStore:v15];

  if (v16)
  {
    v11 = v13;
LABEL_17:
    v13 = [(CNUIContactStoreSaveExecutor *)self saveLinkedContactsWithSaveConfiguration:v6 contactToSave:v11 additionalLinkedContacts:v10 issuedRequestIdentifiers:v9 saveDelegate:v7];

    [(CNUIContactStoreSaveExecutor *)self handleGroupContextForSaveConfiguration:v6 contactToSave:v13 issuedRequestIdentifiers:v9 saveDelegate:v7];
    [(CNUIContactStoreSaveExecutor *)self handleDeleteAcceptedContactsWithSaveConfiguration:v6 contactToSave:v13];
    v22 = 1;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_18:
  v26 = [CNUIContactSaveResult alloc];
  v27 = [v9 copy];
  v18 = [(CNUIContactSaveResult *)v26 initWithSuccess:v22 contact:v13 identifiersOfIssuedSaveRequests:v27];

LABEL_19:

  return v18;
}

@end
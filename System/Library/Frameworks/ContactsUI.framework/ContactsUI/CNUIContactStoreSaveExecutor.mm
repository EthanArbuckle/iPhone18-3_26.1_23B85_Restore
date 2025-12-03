@interface CNUIContactStoreSaveExecutor
- (BOOL)handleContainerContextForSaveConfiguration:(id)configuration contactToSave:(id)save saveDelegate:(id)delegate issuedRequestIdentifiers:(id)identifiers additionalLinkedContacts:(id)contacts;
- (BOOL)performSaveForMutableContact:(id)contact group:(id)group container:(id)container saveConfiguration:(id)configuration issuedRequestIdentifiers:(id)identifiers;
- (BOOL)saveShadowContactForSaveConfiguration:(id)configuration;
- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate;
- (id)saveLinkedContactsWithSaveConfiguration:(id)configuration contactToSave:(id)save additionalLinkedContacts:(id)contacts issuedRequestIdentifiers:(id)identifiers saveDelegate:(id)delegate;
- (id)validatedContactForSaveConfiguration:(id)configuration preservingIdentifier:(BOOL)identifier;
- (void)handleDeleteAcceptedContactsWithSaveConfiguration:(id)configuration contactToSave:(id)save;
- (void)handleGroupContextForSaveConfiguration:(id)configuration contactToSave:(id)save issuedRequestIdentifiers:(id)identifiers saveDelegate:(id)delegate;
@end

@implementation CNUIContactStoreSaveExecutor

- (BOOL)performSaveForMutableContact:(id)contact group:(id)group container:(id)container saveConfiguration:(id)configuration issuedRequestIdentifiers:(id)identifiers
{
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  containerCopy = container;
  groupCopy = group;
  contactCopy = contact;
  v16 = objc_alloc_init(CNUIContactStoreSaveDelegate);
  v17 = objc_alloc_init(MEMORY[0x1E695CF88]);
  if ([configurationCopy ignoresParentalRestrictions])
  {
    saveWasAuthorized = 1;
  }

  else
  {
    saveWasAuthorized = [configurationCopy saveWasAuthorized];
  }

  [v17 setIgnoresGuardianRestrictions:saveWasAuthorized];
  [v17 setDelegate:v16];
  saveRequestIdentifier = [v17 saveRequestIdentifier];
  [identifiersCopy addObject:saveRequestIdentifier];

  contactStore = [configurationCopy contactStore];
  LOBYTE(saveRequestIdentifier) = [contactCopy saveContactInStore:contactStore group:groupCopy container:containerCopy request:v17];

  return saveRequestIdentifier;
}

- (void)handleDeleteAcceptedContactsWithSaveConfiguration:(id)configuration contactToSave:(id)save
{
  v20 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (([save isCoreRecentsAccepted] & 1) == 0)
  {
    originalContacts = [configurationCopy originalContacts];
    v8 = [originalContacts _cn_filter:&__block_literal_global_53794];

    firstObject = [v8 firstObject];
    if (firstObject)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695CE60]);
      [v10 deleteRecentContact:firstObject];
      contactStore = [configurationCopy contactStore];
      v15 = 0;
      [contactStore executeSaveRequest:v10 error:&v15];
      v12 = v15;

      v13 = CNUILogContactCard();
      v14 = v13;
      if (v12)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349314;
          selfCopy2 = self;
          v18 = 2112;
          v19 = v12;
          _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "[CNUIContactStoreExecutor] %{public}p Could not delete CoreRecents accepted contact. Error: %@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        selfCopy2 = self;
        _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] %{public}p deleted original accepted contact for saved contact.", buf, 0xCu);
      }
    }
  }
}

- (id)saveLinkedContactsWithSaveConfiguration:(id)configuration contactToSave:(id)save additionalLinkedContacts:(id)contacts issuedRequestIdentifiers:(id)identifiers saveDelegate:(id)delegate
{
  configurationCopy = configuration;
  saveCopy = save;
  contactsCopy = contacts;
  identifiersCopy = identifiers;
  delegateCopy = delegate;
  v16 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], contactsCopy) && ([configurationCopy editingLinkedContacts], v17 = objc_claimAutoreleasedReturnValue(), v18 = (*(v16 + 16))(v16, v17), v17, v18))
  {
    v19 = [saveCopy copy];
  }

  else
  {
    v20 = configurationCopy;
    if ([contactsCopy count])
    {
      editingLinkedContacts = [v20 editingLinkedContacts];
      [contactsCopy addObjectsFromArray:editingLinkedContacts];

      v22 = [v20 copyWithEditingLinkedContacts:contactsCopy];
      v20 = v22;
    }

    v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
    v24 = [(CNUIContactStoreLinkedContactSaveExecutor *)v23 executeSaveWithConfiguration:v20 saveDelegate:delegateCopy];
    identifiersOfIssuedSaveRequests = [v24 identifiersOfIssuedSaveRequests];
    [identifiersCopy addObjectsFromArray:identifiersOfIssuedSaveRequests];

    contact = [v24 contact];

    if (contact)
    {
      contact2 = [v24 contact];
    }

    else
    {
      contact2 = [saveCopy copy];
    }

    v19 = contact2;
  }

  return v19;
}

- (void)handleGroupContextForSaveConfiguration:(id)configuration contactToSave:(id)save issuedRequestIdentifiers:(id)identifiers saveDelegate:(id)delegate
{
  v22[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  saveCopy = save;
  identifiersCopy = identifiers;
  delegateCopy = delegate;
  groupContext = [configurationCopy groupContext];

  if (groupContext)
  {
    if ([configurationCopy ignoresParentalRestrictions])
    {
      saveWasAuthorized = 1;
    }

    else
    {
      saveWasAuthorized = [configurationCopy saveWasAuthorized];
    }

    v15 = [CNUIGroupsAndContainersSaveManager alloc];
    contactStore = [configurationCopy contactStore];
    contactViewCache = [delegateCopy contactViewCache];
    v18 = [(CNUIGroupsAndContainersSaveManager *)v15 initWithContactStore:contactStore contactViewCache:contactViewCache];

    v22[0] = saveCopy;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    groupContext2 = [configurationCopy groupContext];
    v21 = [(CNUIGroupsAndContainersSaveManager *)v18 updateContacts:v19 forGroupContext:groupContext2 ignoresGuardianRestrictions:saveWasAuthorized issuedRequestIdentifiers:identifiersCopy];
  }
}

- (BOOL)handleContainerContextForSaveConfiguration:(id)configuration contactToSave:(id)save saveDelegate:(id)delegate issuedRequestIdentifiers:(id)identifiers additionalLinkedContacts:(id)contacts
{
  v50 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  saveCopy = save;
  delegateCopy = delegate;
  identifiersCopy = identifiers;
  contactsCopy = contacts;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  containerContext = [configurationCopy containerContext];
  addedContainers = [containerContext addedContainers];

  obj = addedContainers;
  v17 = [addedContainers countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v41 = contactsCopy;
    v42 = saveCopy;
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
        contactViewCache = [delegateCopy contactViewCache];
        v22 = [contactViewCache policyForContainer:v20];

        identifier = [v20 identifier];
        parentContainer = [configurationCopy parentContainer];
        identifier2 = [parentContainer identifier];
        v26 = [identifier isEqualToString:identifier2];

        if (v26)
        {
          v27 = v42;
          parentGroup = [configurationCopy parentGroup];
        }

        else
        {
          v27 = [MEMORY[0x1E695CDC8] contactFromContact:v42 conformingToPolicy:v22 options:5];
          parentGroup = 0;
        }

        v29 = objc_alloc_init(MEMORY[0x1E695CF88]);
        if ([configurationCopy ignoresParentalRestrictions])
        {
          saveWasAuthorized = 1;
        }

        else
        {
          saveWasAuthorized = [configurationCopy saveWasAuthorized];
        }

        [v29 setIgnoresGuardianRestrictions:saveWasAuthorized];
        saveRequestIdentifier = [v29 saveRequestIdentifier];
        [identifiersCopy addObject:saveRequestIdentifier];

        v32 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:v27 group:parentGroup container:v20 saveConfiguration:configurationCopy issuedRequestIdentifiers:identifiersCopy];
        [v41 addObject:v27];
      }

      v18 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v18);
    contactsCopy = v41;
    saveCopy = v42;
  }

  else
  {
    v32 = 0;
  }

  containerContext2 = [configurationCopy containerContext];
  originalContainers = [containerContext2 originalContainers];
  v35 = [originalContainers count];

  if (v35)
  {
    parentGroup2 = [configurationCopy parentGroup];
    parentContainer2 = [configurationCopy parentContainer];
    v32 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:saveCopy group:parentGroup2 container:parentContainer2 saveConfiguration:configurationCopy issuedRequestIdentifiers:identifiersCopy];

    [contactsCopy addObject:saveCopy];
  }

  return v32;
}

- (id)validatedContactForSaveConfiguration:(id)configuration preservingIdentifier:(BOOL)identifier
{
  identifierCopy = identifier;
  v25 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  mutableContact = [configurationCopy mutableContact];
  v7 = objc_alloc_init(MEMORY[0x1E695CF58]);
  parentContainer = [configurationCopy parentContainer];
  identifier = [parentContainer identifier];
  [v7 setContainerIdentifier:identifier];

  if ([configurationCopy ignoresParentalRestrictions])
  {
    saveWasAuthorized = 1;
  }

  else
  {
    saveWasAuthorized = [configurationCopy saveWasAuthorized];
  }

  [v7 setIgnoresGuardianRestrictions:saveWasAuthorized];
  contactStore = [configurationCopy contactStore];
  v22 = 0;
  v12 = [contactStore policyWithDescription:v7 error:&v22];
  v13 = v22;

  if (v13)
  {
    v14 = CNUILogContactCard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      parentContainer2 = [configurationCopy parentContainer];
      *buf = 138543362;
      v24 = parentContainer2;
      _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "[CNUIContactStoreExecutor] failed to get policy for container %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [mutableContact updateContactTypeWithPolicy:v12];
    if (![mutableContact hasBeenPersisted])
    {
      if (identifierCopy)
      {
        v17 = 13;
      }

      else
      {
        v17 = 5;
      }

      v18 = [MEMORY[0x1E695CDC8] contactFromContact:mutableContact conformingToPolicy:v12 options:v17];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = mutableContact;
      }

      v15 = v20;

      goto LABEL_10;
    }
  }

  v15 = mutableContact;
LABEL_10:

  return v15;
}

- (BOOL)saveShadowContactForSaveConfiguration:(id)configuration
{
  v25[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  shadowCopyOfReadonlyContact = [configurationCopy shadowCopyOfReadonlyContact];

  if (shadowCopyOfReadonlyContact)
  {
    contactStore = [configurationCopy contactStore];
    defaultContainerIdentifier = [contactStore defaultContainerIdentifier];

    if (!defaultContainerIdentifier)
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
    v25[0] = defaultContainerIdentifier;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v9 = [v7 predicateForContainersWithIdentifiers:v8];

    contactStore2 = [configurationCopy contactStore];
    v22 = 0;
    v11 = [contactStore2 containersMatchingPredicate:v9 error:&v22];
    v12 = v22;
    firstObject = [v11 firstObject];

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
      shadowCopyOfReadonlyContact2 = [configurationCopy shadowCopyOfReadonlyContact];
      contactStore3 = [configurationCopy contactStore];
      parentGroup = [configurationCopy parentGroup];
      v20 = [shadowCopyOfReadonlyContact2 saveContactInStore:contactStore3 group:parentGroup container:firstObject];

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

- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate
{
  v31 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  delegateCopy = delegate;
  v8 = CNUILogContactCard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] %{public}p will execute save…", &v29, 0xCu);
  }

  if (![(CNUIContactStoreSaveExecutor *)self saveShadowContactForSaveConfiguration:configurationCopy])
  {
    v17 = [CNUIContactSaveResult alloc];
    mutableContact = [configurationCopy mutableContact];
    v18 = [(CNUIContactSaveResult *)v17 initWithSuccess:0 contact:mutableContact identifiersOfIssuedSaveRequests:MEMORY[0x1E695E0F0]];
    goto LABEL_19;
  }

  mutableContact = [MEMORY[0x1E695DF70] array];
  array = [MEMORY[0x1E695DF70] array];
  v11 = [(CNUIContactStoreSaveExecutor *)self validatedContactForSaveConfiguration:configurationCopy preservingIdentifier:1];
  if (![(CNUIContactStoreSaveExecutor *)v11 isSuggestedMe])
  {
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    if ([featureFlags isFeatureEnabled:13])
    {
      containerContext = [configurationCopy containerContext];

      if (containerContext)
      {
        if ([(CNUIContactStoreSaveExecutor *)self handleContainerContextForSaveConfiguration:configurationCopy contactToSave:v11 saveDelegate:delegateCopy issuedRequestIdentifiers:mutableContact additionalLinkedContacts:array])
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    parentGroup = [configurationCopy parentGroup];
    parentContainer = [configurationCopy parentContainer];
    v25 = [(CNUIContactStoreSaveExecutor *)self performSaveForMutableContact:v11 group:parentGroup container:parentContainer saveConfiguration:configurationCopy issuedRequestIdentifiers:mutableContact];

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
    selfCopy = v13;
    _os_log_impl(&dword_199A75000, v14, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreExecutor] creating new me contact %{public}p", &v29, 0xCu);
  }

  contactStore = [configurationCopy contactStore];
  v16 = [CNDonatedMeCardPersistenceHelper createNewMeContact:v13 inStore:contactStore];

  if (v16)
  {
    v11 = v13;
LABEL_17:
    v13 = [(CNUIContactStoreSaveExecutor *)self saveLinkedContactsWithSaveConfiguration:configurationCopy contactToSave:v11 additionalLinkedContacts:array issuedRequestIdentifiers:mutableContact saveDelegate:delegateCopy];

    [(CNUIContactStoreSaveExecutor *)self handleGroupContextForSaveConfiguration:configurationCopy contactToSave:v13 issuedRequestIdentifiers:mutableContact saveDelegate:delegateCopy];
    [(CNUIContactStoreSaveExecutor *)self handleDeleteAcceptedContactsWithSaveConfiguration:configurationCopy contactToSave:v13];
    v22 = 1;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_18:
  v26 = [CNUIContactSaveResult alloc];
  v27 = [mutableContact copy];
  v18 = [(CNUIContactSaveResult *)v26 initWithSuccess:v22 contact:v13 identifiersOfIssuedSaveRequests:v27];

LABEL_19:

  return v18;
}

@end
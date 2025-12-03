@interface CNUIGroupsAndContainersSaveManager
+ (id)log;
- (BOOL)addLinkedContacts:(id)contacts toOriginalContact:(id)contact ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (BOOL)container:(id)container containsNonUnifiedContact:(id)contact inContactStore:(id)store;
- (BOOL)deleteContainerWithIdentifier:(id)identifier inStore:(id)store ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (BOOL)deleteGroupWithIdentifier:(id)identifier inStore:(id)store ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (BOOL)editRequiresAuthorizationForContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions;
- (BOOL)isAuthorizedToAddContact:(id)contact toContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions;
- (BOOL)isAuthorizedToEditContact:(id)contact withTargetContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions;
- (BOOL)isAuthorizedToEditContact:(id)contact withTargetGroupWithIdentifier:(id)identifier ignoresParentalRestrictions:(BOOL)restrictions;
- (BOOL)isAuthorizedToEditContainer:(id)container;
- (BOOL)isAuthorizedToEditContainerWithIdentifier:(id)identifier;
- (BOOL)isMDMAuthorizedToAddContact:(id)contact toAccount:(id)account withManagedConfiguration:(id)configuration;
- (BOOL)removeContact:(id)contact fromGroup:(id)group ignoresGuardianRestrictions:(BOOL)restrictions;
- (BOOL)removeContact:(id)contact fromGroups:(id)groups ignoresGuardianRestrictions:(BOOL)restrictions;
- (BOOL)updateContainerWithIdentifier:(id)identifier inStore:(id)store withNewName:(id)name ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (BOOL)updateGroupWithIdentifier:(id)identifier inStore:(id)store withNewName:(id)name ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)store;
- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)store contactViewCache:(id)cache;
- (id)_updateSaveRequest:(id)request addContact:(id)contact toGroupContext:(id)context contactsToLink:(id)link;
- (id)_updateSaveRequest:(id)request addContact:(id)contact toGroups:(id)groups inContainer:(id)container contactParentContainer:(id)parentContainer contactsToLink:(id)link;
- (id)acAccountForContainer:(id)container;
- (id)acAccountForGroupIdentifier:(id)identifier;
- (id)accountForContainerIdentifier:(id)identifier;
- (id)addContact:(id)contact toGroup:(id)group inContainer:(id)container moveWasAuthorized:(BOOL)authorized;
- (id)addContact:(id)contact toGroup:(id)group moveWasAuthorized:(BOOL)authorized;
- (id)addContact:(id)contact toGroupIdentifier:(id)identifier inContainerIdentifier:(id)containerIdentifier moveWasAuthorized:(BOOL)authorized;
- (id)addContact:(id)contact toGroupWithIdentifier:(id)identifier moveWasAuthorized:(BOOL)authorized;
- (id)addContacts:(id)contacts toGroup:(id)group inContainer:(id)container moveWasAuthorized:(BOOL)authorized;
- (id)addContacts:(id)contacts toGroupWithIdentifier:(id)identifier inContainerWithIdentifier:(id)withIdentifier moveWasAuthorized:(BOOL)authorized;
- (id)allMDMUnauthorizedAccountsForTargetGroup:(id)group withManagedConfiguration:(id)configuration;
- (id)containerForContainerIdentifier:(id)identifier;
- (id)containerForGroupIdentifier:(id)identifier;
- (id)exchangeContactsToDeleteInAccountIdentifier:(id)identifier originalContact:(id)contact;
- (id)groupForGroupIdentifier:(id)identifier;
- (id)groupsByContainerDictForContainers:(id)containers groups:(id)groups;
- (id)linkedContactForContact:(id)contact inContainer:(id)container inContactStore:(id)store;
- (id)mdmUnauthorizedContactIdentifiersForTargetGroup:(id)group withManagedConfiguration:(id)configuration;
- (id)parentAccountExternalIdentifiersForContact:(id)contact;
- (id)parentGroupsForContact:(id)contact;
- (id)updateContacts:(id)contacts forGroupContext:(id)context ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers;
- (void)_updateSaveRequest:(id)request removeContact:(id)contact fromGroups:(id)groups;
- (void)authorizeForViewController:(id)controller sender:(id)sender animated:(BOOL)animated completionBlock:(id)block;
- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result;
@end

@implementation CNUIGroupsAndContainersSaveManager

- (id)allMDMUnauthorizedAccountsForTargetGroup:(id)group withManagedConfiguration:(id)configuration
{
  v36 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  configurationCopy = configuration;
  if (![configurationCopy deviceHasManagementRestrictions])
  {
    v27 = 0;
    goto LABEL_19;
  }

  contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v32 = 0;
  v9 = [contactStore accountsMatchingPredicate:0 error:&v32];
  v10 = v32;

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v11 = CNUILogContactList();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v10 localizedDescription];
      *buf = 138412290;
      v35 = localizedDescription;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Error fetching accounts: %@", buf, 0xCu);
    }
  }

  else
  {
    identifier = [groupCopy identifier];
    v11 = [(CNUIGroupsAndContainersSaveManager *)self acAccountForGroupIdentifier:identifier];

    if (v11)
    {
      v24 = v10;
      v26 = groupCopy;
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = v9;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            identifier2 = [v11 identifier];
            externalIdentifierString = [v19 externalIdentifierString];
            v22 = [configurationCopy canWriteToAccountWithIdentifier:identifier2 fromSourceAccountIdentifier:externalIdentifierString];

            if ((v22 & 1) == 0)
            {
              [v27 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v16);
      }

      v9 = v25;
      groupCopy = v26;
      v10 = v24;
      goto LABEL_18;
    }
  }

  v27 = 0;
LABEL_18:

LABEL_19:

  return v27;
}

- (id)mdmUnauthorizedContactIdentifiersForTargetGroup:(id)group withManagedConfiguration:(id)configuration
{
  v97 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  configurationCopy = configuration;
  v8 = [MEMORY[0x1E695DFA8] set];
  if (![configurationCopy deviceHasManagementRestrictions])
  {
    goto LABEL_46;
  }

  v9 = [(CNUIGroupsAndContainersSaveManager *)self allMDMUnauthorizedAccountsForTargetGroup:groupCopy withManagedConfiguration:configurationCopy];
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    goto LABEL_45;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (!v10)
  {
    goto LABEL_44;
  }

  v11 = v10;
  selfCopy = self;
  v52 = v9;
  v53 = configurationCopy;
  v54 = groupCopy;
  v12 = 0;
  v58 = *v85;
  v13 = *MEMORY[0x1E695C2D8];
  v14 = 0x1E695C000uLL;
  v61 = *MEMORY[0x1E695C2D8];
  do
  {
    v15 = 0;
    v55 = v11;
    do
    {
      if (*v85 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v60 = v15;
      v16 = *(*(&v84 + 1) + 8 * v15);
      v17 = *(v14 + 3656);
      identifier = [v16 identifier];
      v19 = [v17 predicateForContainersInAccountWithIdentifier:identifier];

      contactStore = [(CNUIGroupsAndContainersSaveManager *)selfCopy contactStore];
      v83 = v12;
      v59 = v19;
      v21 = [contactStore containersMatchingPredicate:v19 error:&v83];
      v22 = v83;

      if (v21)
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v62 = v21;
        v67 = [v62 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (!v67)
        {
          goto LABEL_38;
        }

        v57 = v21;
        v65 = *v80;
        v23 = 0x1E695C000uLL;
        v24 = 0x1E695D000uLL;
        v25 = v22;
        do
        {
          v26 = 0;
          do
          {
            v27 = v25;
            if (*v80 != v65)
            {
              objc_enumerationMutation(v62);
            }

            v69 = v26;
            v28 = *(*(&v79 + 1) + 8 * v26);
            v29 = *(v23 + 3416);
            identifier2 = [v28 identifier];
            v31 = [v29 predicateForContactsInContainerWithIdentifier:identifier2];

            contactStore2 = [(CNUIGroupsAndContainersSaveManager *)selfCopy contactStore];
            v90 = v13;
            v33 = [*(v24 + 3784) arrayWithObjects:&v90 count:1];
            v78 = v27;
            v68 = v31;
            v34 = [contactStore2 unifiedContactsMatchingPredicate:v31 keysToFetch:v33 error:&v78];
            v25 = v78;

            if (v34)
            {
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v35 = v34;
              v36 = [v35 countByEnumeratingWithState:&v74 objects:v89 count:16];
              if (v36)
              {
                v37 = v36;
                v63 = v34;
                v64 = v25;
                v38 = *v75;
                do
                {
                  for (i = 0; i != v37; ++i)
                  {
                    if (*v75 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = *(*(&v74 + 1) + 8 * i);
                    identifier3 = [v40 identifier];
                    [v8 addObject:identifier3];

                    if ([v40 isUnified])
                    {
                      v72 = 0u;
                      v73 = 0u;
                      v70 = 0u;
                      v71 = 0u;
                      linkedContacts = [v40 linkedContacts];
                      v43 = [linkedContacts countByEnumeratingWithState:&v70 objects:v88 count:16];
                      if (v43)
                      {
                        v44 = v43;
                        v45 = *v71;
                        do
                        {
                          for (j = 0; j != v44; ++j)
                          {
                            if (*v71 != v45)
                            {
                              objc_enumerationMutation(linkedContacts);
                            }

                            identifier4 = [*(*(&v70 + 1) + 8 * j) identifier];
                            [v8 addObject:identifier4];
                          }

                          v44 = [linkedContacts countByEnumeratingWithState:&v70 objects:v88 count:16];
                        }

                        while (v44);
                      }
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v74 objects:v89 count:16];
                }

                while (v37);
                v13 = v61;
                v23 = 0x1E695C000;
                v24 = 0x1E695D000;
                v34 = v63;
                v25 = v64;
              }
            }

            else
            {
              v35 = CNUILogContactList();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                localizedDescription = [v25 localizedDescription];
                *buf = 138412546;
                v93 = v28;
                v94 = 2112;
                v95 = localizedDescription;
                _os_log_error_impl(&dword_199A75000, v35, OS_LOG_TYPE_ERROR, "Error fetching contacts for container: %@ with error: %@", buf, 0x16u);
              }
            }

            v26 = v69 + 1;
          }

          while (v69 + 1 != v67);
          v67 = [v62 countByEnumeratingWithState:&v79 objects:v91 count:16];
        }

        while (v67);
        v12 = v25;
        v11 = v55;
        v14 = 0x1E695C000;
        v21 = v57;
      }

      else
      {
        v62 = CNUILogContactList();
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
LABEL_38:
          v12 = v22;
          goto LABEL_39;
        }

        v12 = v22;
        localizedDescription2 = [v22 localizedDescription];
        *buf = 138412546;
        v93 = v16;
        v94 = 2112;
        v95 = localizedDescription2;
        _os_log_error_impl(&dword_199A75000, v62, OS_LOG_TYPE_ERROR, "Error fetching containers for account: %@ with error: %@", buf, 0x16u);
      }

LABEL_39:

      v15 = v60 + 1;
    }

    while (v60 + 1 != v11);
    v50 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
    v11 = v50;
  }

  while (v50);

  configurationCopy = v53;
  groupCopy = v54;
  v9 = v52;
LABEL_44:

LABEL_45:
LABEL_46:

  return v8;
}

- (id)parentAccountExternalIdentifiersForContact:(id)contact
{
  v28 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([contactCopy isUnified])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    linkedContacts = [contactCopy linkedContacts];
    v7 = [linkedContacts countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(linkedContacts);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v13 = [contactViewCache containerForContact:v11];

          contactViewCache2 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v15 = [contactViewCache2 accountForContainer:v13 shouldUseTopLevelAccount:0];

          identifier = [v15 identifier];
          [v5 _cn_addNonNilObject:identifier];
        }

        v8 = [linkedContacts countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    contactViewCache3 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v18 = [contactViewCache3 containerForContact:contactCopy];

    contactViewCache4 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v20 = [contactViewCache4 accountForContainer:v18 shouldUseTopLevelAccount:0];

    identifier2 = [v20 identifier];
    [v5 _cn_addNonNilObject:identifier2];
  }

  return v5;
}

- (id)parentGroupsForContact:(id)contact
{
  v17 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [MEMORY[0x1E695CEC0] predicateForGroupsWithMemberContact:contactCopy includeAllParentGroups:0];
  contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v12 = 0;
  v7 = [contactStore groupsMatchingPredicate:v5 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = contactCopy;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Error fetching parent groups for contact:%@, error: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)containerForGroupIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [MEMORY[0x1E695CE48] predicateForContainerOfGroupWithIdentifier:identifierCopy];
    contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v12 = 0;
    v7 = [contactStore containersMatchingPredicate:v5 error:&v12];
    v8 = v12;

    if (v7)
    {
      firstObject = [v7 firstObject];
    }

    else
    {
      v10 = [objc_opt_class() log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = identifierCopy;
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Error fetching parent container for group identifier:%@, error: %@", buf, 0x16u);
      }

      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)acAccountForContainer:(id)container
{
  if (container)
  {
    containerCopy = container;
    contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v6 = [contactViewCache accountForContainer:containerCopy shouldUseTopLevelAccount:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountForContainerIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [MEMORY[0x1E695CD10] predicateForAccountForContainerWithIdentifier:?];
    contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v6 = [contactStore accountsMatchingPredicate:v4 error:0];

    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)acAccountForGroupIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:?];
    if (v4)
    {
      v5 = [(CNUIGroupsAndContainersSaveManager *)self acAccountForContainer:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)groupForGroupIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = MEMORY[0x1E695CEC0];
    v20[0] = identifierCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v6 predicateForGroupsWithIdentifiers:v7];

    contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v15 = 0;
    v10 = [contactStore groupsMatchingPredicate:v8 error:&v15];
    v11 = v15;

    if (v10)
    {
      firstObject = [v10 firstObject];
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Error fetching group for group identifier:%@, error: %@", buf, 0x16u);
      }

      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)containerForContainerIdentifier:(id)identifier
{
  v20[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy)
  {
    v6 = MEMORY[0x1E695CE48];
    v20[0] = identifierCopy;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v6 predicateForContainersWithIdentifiers:v7];

    contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v15 = 0;
    v10 = [contactStore containersMatchingPredicate:v8 error:&v15];
    v11 = v15;

    if (v10)
    {
      firstObject = [v10 firstObject];
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Error fetching container for container identifier:%@, error: %@", buf, 0x16u);
      }

      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)groupsByContainerDictForContainers:(id)containers groups:(id)groups
{
  v40 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  groupsCopy = groups;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (containersCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = containersCopy;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      v13 = MEMORY[0x1E695E0F0];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:v13 forKeyedSubscript:*(*(&v33 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v11);
    }
  }

  if (groupsCopy)
  {
    v27 = groupsCopy;
    v28 = containersCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = groupsCopy;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * j);
          identifier = [v20 identifier];
          v22 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:identifier];

          if (v22)
          {
            v23 = [v8 objectForKeyedSubscript:v22];
            v37 = v20;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
            v25 = [v24 arrayByAddingObjectsFromArray:v23];

            [v8 setObject:v25 forKeyedSubscript:v22];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v17);
    }

    groupsCopy = v27;
    containersCopy = v28;
  }

  return v8;
}

- (void)editAuthorizationController:(id)controller authorizationDidFinishWithResult:(int64_t)result
{
  [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationController:0];
  authorizationResultBlock = [(CNUIGroupsAndContainersSaveManager *)self authorizationResultBlock];

  if (authorizationResultBlock)
  {
    authorizationResultBlock2 = [(CNUIGroupsAndContainersSaveManager *)self authorizationResultBlock];
    authorizationResultBlock2[2](authorizationResultBlock2, result);

    [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationResultBlock:0];
  }
}

- (void)authorizeForViewController:(id)controller sender:(id)sender animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  controllerCopy = controller;
  senderCopy = sender;
  [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationResultBlock:block];
  authorizationController = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];

  if (!authorizationController)
  {
    v12 = objc_alloc_init(CNUIEditAuthorizationController);
    [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationController:v12];

    authorizationController2 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [authorizationController2 setDelegate:self];

    authorizationController3 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [authorizationController3 setSender:senderCopy];

    authorizationController4 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [authorizationController4 setAnimated:animatedCopy];

    authorizationController5 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [authorizationController5 setGuardedViewController:controllerCopy];
  }

  authorizationController6 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
  [authorizationController6 presentAuthorizationUI];
}

- (BOOL)isAuthorizedToEditContainer:(id)container
{
  if (!container)
  {
    return 0;
  }

  isGuardianRestricted = [container isGuardianRestricted];
  return isGuardianRestricted & [MEMORY[0x1E6996B08] isAuthorizationPasscodeEnabledOnDevice] ^ 1;
}

- (BOOL)isAuthorizedToEditContainerWithIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  selfCopy = self;
  v4 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:?];
  LOBYTE(selfCopy) = [(CNUIGroupsAndContainersSaveManager *)selfCopy isAuthorizedToEditContainer:v4];

  return selfCopy;
}

- (BOOL)editRequiresAuthorizationForContact:(id)contact parentContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  v8 = MEMORY[0x1E6996B08];
  containerCopy = container;
  contactCopy = contact;
  v11 = [v8 alloc];
  contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v13 = [v11 initWithContact:contactCopy parentContainer:containerCopy ignoresParentalRestrictions:restrictionsCopy linkedParentContainerProvider:contactViewCache];

  LOBYTE(contactCopy) = [v13 shouldPromptForPasscodeAuthorization];
  return contactCopy;
}

- (BOOL)isAuthorizedToEditContact:(id)contact withTargetContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  contactCopy = contact;
  containerCopy = container;
  contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v11 = [contactViewCache containerForContact:contactCopy];

  v12 = 0;
  if (![(CNUIGroupsAndContainersSaveManager *)self editRequiresAuthorizationForContact:contactCopy parentContainer:v11 ignoresParentalRestrictions:restrictionsCopy])
  {
    identifier = [v11 identifier];
    identifier2 = [containerCopy identifier];
    v15 = [identifier isEqualToString:identifier2];

    if ((v15 & 1) != 0 || ![(CNUIGroupsAndContainersSaveManager *)self editRequiresAuthorizationForContact:contactCopy parentContainer:containerCopy ignoresParentalRestrictions:restrictionsCopy])
    {
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)isAuthorizedToEditContact:(id)contact withTargetGroupWithIdentifier:(id)identifier ignoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  contactCopy = contact;
  v9 = 0;
  if (contactCopy && identifier)
  {
    v10 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:identifier];
    if (v10)
    {
      v9 = [(CNUIGroupsAndContainersSaveManager *)self isAuthorizedToEditContact:contactCopy withTargetContainer:v10 ignoresParentalRestrictions:restrictionsCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isMDMAuthorizedToAddContact:(id)contact toAccount:(id)account withManagedConfiguration:(id)configuration
{
  contactCopy = contact;
  accountCopy = account;
  configurationCopy = configuration;
  if ([configurationCopy deviceHasManagementRestrictions])
  {
    v11 = [(CNUIGroupsAndContainersSaveManager *)self parentAccountExternalIdentifiersForContact:contactCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__CNUIGroupsAndContainersSaveManager_isMDMAuthorizedToAddContact_toAccount_withManagedConfiguration___block_invoke;
    v14[3] = &unk_1E74E5B78;
    v15 = configurationCopy;
    v16 = accountCopy;
    v12 = [v11 _cn_any:v14] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

uint64_t __101__CNUIGroupsAndContainersSaveManager_isMDMAuthorizedToAddContact_toAccount_withManagedConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 identifier];
  LODWORD(v2) = [v2 canWriteToAccountWithIdentifier:v5 fromSourceAccountIdentifier:v4];

  return v2 ^ 1;
}

- (BOOL)isAuthorizedToAddContact:(id)contact toContainer:(id)container ignoresParentalRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  contactCopy = contact;
  containerCopy = container;
  v13 = contactCopy && (containerCopy || (-[CNUIGroupsAndContainersSaveManager contactStore](self, "contactStore"), v11 = v10 = containerCopy;

  return v13;
}

- (BOOL)updateContainerWithIdentifier:(id)identifier inStore:(id)store withNewName:(id)name ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  restrictionsCopy = restrictions;
  v12 = MEMORY[0x1E695CF88];
  identifiersCopy = identifiers;
  nameCopy = name;
  storeCopy = store;
  identifierCopy = identifier;
  v17 = objc_alloc_init(v12);
  [v17 setIgnoresGuardianRestrictions:restrictionsCopy];
  saveRequestIdentifier = [v17 saveRequestIdentifier];
  [identifiersCopy addObject:saveRequestIdentifier];

  v19 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:identifierCopy];

  v20 = [v19 mutableCopy];
  [v20 setName:nameCopy];

  LOBYTE(nameCopy) = [v20 updateContainerInStore:storeCopy saveRequest:v17];
  return nameCopy;
}

- (BOOL)updateGroupWithIdentifier:(id)identifier inStore:(id)store withNewName:(id)name ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  restrictionsCopy = restrictions;
  v12 = MEMORY[0x1E695CF88];
  identifiersCopy = identifiers;
  nameCopy = name;
  storeCopy = store;
  identifierCopy = identifier;
  v17 = objc_alloc_init(v12);
  [v17 setIgnoresGuardianRestrictions:restrictionsCopy];
  saveRequestIdentifier = [v17 saveRequestIdentifier];
  [identifiersCopy addObject:saveRequestIdentifier];

  v19 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:identifierCopy];

  v20 = [v19 mutableCopy];
  [v20 setName:nameCopy];

  LOBYTE(nameCopy) = [v20 updateGroupInStore:storeCopy saveRequest:v17];
  return nameCopy;
}

- (BOOL)deleteContainerWithIdentifier:(id)identifier inStore:(id)store ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  restrictionsCopy = restrictions;
  v10 = MEMORY[0x1E695CF88];
  identifiersCopy = identifiers;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = objc_alloc_init(v10);
  [v14 setIgnoresGuardianRestrictions:restrictionsCopy];
  saveRequestIdentifier = [v14 saveRequestIdentifier];
  [identifiersCopy addObject:saveRequestIdentifier];

  v16 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:identifierCopy];

  v17 = [v16 mutableCopy];
  LOBYTE(self) = [v17 deleteContainerInStore:storeCopy saveRequest:v14];

  return self;
}

- (BOOL)deleteGroupWithIdentifier:(id)identifier inStore:(id)store ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  restrictionsCopy = restrictions;
  v10 = MEMORY[0x1E695CF88];
  identifiersCopy = identifiers;
  storeCopy = store;
  identifierCopy = identifier;
  v14 = objc_alloc_init(v10);
  [v14 setIgnoresGuardianRestrictions:restrictionsCopy];
  saveRequestIdentifier = [v14 saveRequestIdentifier];
  [identifiersCopy addObject:saveRequestIdentifier];

  v16 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:identifierCopy];

  v17 = [v16 mutableCopy];
  LOBYTE(self) = [v17 deleteGroupInStore:storeCopy saveRequest:v14];

  return self;
}

- (void)_updateSaveRequest:(id)request removeContact:(id)contact fromGroups:(id)groups
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contactCopy = contact;
  obj = groups;
  if (contactCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        v21 = v10;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          if ([contactCopy isUnified])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            linkedContacts = [contactCopy linkedContacts];
            v15 = [linkedContacts countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v24;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v24 != v17)
                  {
                    objc_enumerationMutation(linkedContacts);
                  }

                  v19 = *(*(&v23 + 1) + 8 * i);
                  if (([v19 isSuggested] & 1) == 0)
                  {
                    v20 = [v19 mutableCopy];
                    [requestCopy removeMember:v20 fromGroup:v13];
                  }
                }

                v16 = [linkedContacts countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v16);
            }

            v10 = v21;
          }

          else
          {
            [requestCopy removeMember:contactCopy fromGroup:v13];
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)removeContact:(id)contact fromGroups:(id)groups ignoresGuardianRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  v25 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  groupsCopy = groups;
  if (!contactCopy)
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Failed to remove contact from groups, contact is nil";
      goto LABEL_14;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_12;
  }

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Failed to remove contact from groups, no groups provided";
LABEL_14:
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v10 setIgnoresGuardianRestrictions:restrictionsCopy];
  v13 = [contactCopy mutableCopy];
  [(CNUIGroupsAndContainersSaveManager *)self _updateSaveRequest:v10 removeContact:v13 fromGroups:groupsCopy];

  contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v18 = 0;
  v12 = [contactStore executeSaveRequest:v10 error:&v18];
  v15 = v18;

  if ((v12 & 1) == 0)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = contactCopy;
      v21 = 2112;
      v22 = groupsCopy;
      v23 = 2112;
      v24 = v15;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Failed to remove contact from groups, contact: %@, groups: %@ with error: %@", buf, 0x20u);
    }
  }

LABEL_12:
  return v12;
}

- (BOOL)removeContact:(id)contact fromGroup:(id)group ignoresGuardianRestrictions:(BOOL)restrictions
{
  restrictionsCopy = restrictions;
  v14 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (group)
  {
    groupCopy = group;
    v9 = MEMORY[0x1E695DEC8];
    groupCopy2 = group;
    group = [v9 arrayWithObjects:&groupCopy count:1];
  }

  v11 = [(CNUIGroupsAndContainersSaveManager *)self removeContact:contactCopy fromGroups:group ignoresGuardianRestrictions:restrictionsCopy, groupCopy, v14];

  return v11;
}

- (id)exchangeContactsToDeleteInAccountIdentifier:(id)identifier originalContact:(id)contact
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  contactCopy = contact;
  array = [MEMORY[0x1E695DF70] array];
  contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v9 = [contactViewCache accountForContact:contactCopy];

  identifier = [v9 identifier];
  v11 = [identifier isEqualToString:identifierCopy];

  if (v11)
  {
    [array addObject:contactCopy];
  }

  if ([contactCopy isUnified])
  {
    v23 = v9;
    v24 = contactCopy;
    linkedContacts = [contactCopy linkedContacts];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [linkedContacts countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(linkedContacts);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          contactViewCache2 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v19 = [contactViewCache2 accountForContact:v17];

          identifier2 = [v19 identifier];
          v21 = [identifier2 isEqualToString:identifierCopy];

          if (v21)
          {
            [array addObject:v17];
          }
        }

        v14 = [linkedContacts countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v9 = v23;
    contactCopy = v24;
  }

  return array;
}

- (BOOL)container:(id)container containsNonUnifiedContact:(id)contact inContactStore:(id)store
{
  containerCopy = container;
  v8 = MEMORY[0x1E695CE48];
  storeCopy = store;
  identifier = [contact identifier];
  v11 = [v8 predicateForContainerOfContactWithIdentifier:identifier];
  v12 = [storeCopy containersMatchingPredicate:v11 error:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__CNUIGroupsAndContainersSaveManager_container_containsNonUnifiedContact_inContactStore___block_invoke;
  v15[3] = &unk_1E74E2440;
  v16 = containerCopy;
  v13 = containerCopy;
  LOBYTE(identifier) = [v12 indexOfObjectPassingTest:v15] != 0x7FFFFFFFFFFFFFFFLL;

  return identifier;
}

uint64_t __89__CNUIGroupsAndContainersSaveManager_container_containsNonUnifiedContact_inContactStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)linkedContactForContact:(id)contact inContainer:(id)container inContactStore:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  storeCopy = store;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  linkedContacts = [contact linkedContacts];
  v11 = [linkedContacts countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(linkedContacts);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([(CNUIGroupsAndContainersSaveManager *)self container:containerCopy containsNonUnifiedContact:v15 inContactStore:storeCopy])
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = [linkedContacts countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_updateSaveRequest:(id)request addContact:(id)contact toGroups:(id)groups inContainer:(id)container contactParentContainer:(id)parentContainer contactsToLink:(id)link
{
  v84 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contactCopy = contact;
  groupsCopy = groups;
  containerCopy = container;
  parentContainerCopy = parentContainer;
  linkCopy = link;
  identifier = [containerCopy identifier];
  identifier2 = [parentContainerCopy identifier];
  v20 = [identifier isEqualToString:identifier2];

  if (![contactCopy hasBeenPersisted])
  {
    goto LABEL_17;
  }

  if (v20)
  {
    v21 = contactCopy;
    if (!v21)
    {
LABEL_17:
      v58 = parentContainerCopy;
      if ([containerCopy type] == 2 && objc_msgSend(contactCopy, "hasBeenPersisted"))
      {
        contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
        v32 = containerCopy;
        v33 = [contactViewCache accountForContainer:containerCopy];

        identifier3 = [v33 identifier];
        v35 = [(CNUIGroupsAndContainersSaveManager *)self exchangeContactsToDeleteInAccountIdentifier:identifier3 originalContact:contactCopy];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v36 = v35;
        v37 = [v36 countByEnumeratingWithState:&v66 objects:v82 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v67;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v67 != v39)
              {
                objc_enumerationMutation(v36);
              }

              [requestCopy deleteContact:*(*(&v66 + 1) + 8 * i)];
            }

            v38 = [v36 countByEnumeratingWithState:&v66 objects:v82 count:16];
          }

          while (v38);
        }

        containerCopy = v32;
      }

      v41 = objc_alloc_init(MEMORY[0x1E695CF58]);
      identifier4 = [containerCopy identifier];
      [v41 setContainerIdentifier:identifier4];

      [v41 setIgnoresGuardianRestrictions:{objc_msgSend(requestCopy, "ignoresGuardianRestrictions")}];
      contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
      v65 = 0;
      v44 = [contactStore policyWithDescription:v41 error:&v65];
      v21 = v65;

      if (v44)
      {
        v30 = [CNUIContactPolicyValidator contactFromContact:contactCopy conformingToPolicy:v44 options:5];
        identifier5 = [containerCopy identifier];
        [requestCopy addContact:v30 toContainerWithIdentifier:identifier5];

        availableKeyDescriptor = [contactCopy availableKeyDescriptor];
        v75 = availableKeyDescriptor;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
        v48 = [v30 copyWithPropertyKeys:v47];
        [linkCopy addObject:v48];

        v24 = groupsCopy;
        if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
        {
          v57 = containerCopy;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v49 = groupsCopy;
          v50 = [v49 countByEnumeratingWithState:&v61 objects:v74 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v62;
            do
            {
              for (j = 0; j != v51; ++j)
              {
                if (*v62 != v52)
                {
                  objc_enumerationMutation(v49);
                }

                [requestCopy addMember:v30 toGroup:{*(*(&v61 + 1) + 8 * j), v57}];
              }

              v51 = [v49 countByEnumeratingWithState:&v61 objects:v74 count:16];
            }

            while (v51);
          }

          v24 = groupsCopy;
          containerCopy = v57;
        }
      }

      else
      {
        v54 = [objc_opt_class() log];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          identifier6 = [containerCopy identifier];
          *buf = 138543874;
          v77 = identifier6;
          v78 = 2112;
          v79 = contactCopy;
          v80 = 2114;
          v81 = v21;
          _os_log_error_impl(&dword_199A75000, v54, OS_LOG_TYPE_ERROR, "Failed to get policy for container:%{public}@ to add contact:%@, error:%{public}@", buf, 0x20u);
        }

        v30 = contactCopy;
        v24 = groupsCopy;
      }

      parentContainerCopy = v58;
      goto LABEL_41;
    }
  }

  else
  {
    if (![contactCopy isUnified])
    {
      goto LABEL_17;
    }

    contactStore2 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v23 = [(CNUIGroupsAndContainersSaveManager *)self linkedContactForContact:contactCopy inContainer:containerCopy inContactStore:contactStore2];

    v21 = [v23 mutableCopy];
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  v24 = groupsCopy;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v25 = groupsCopy;
    v26 = [v25 countByEnumeratingWithState:&v70 objects:v83 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v71;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v71 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [requestCopy addMember:v21 toGroup:*(*(&v70 + 1) + 8 * k)];
        }

        v27 = [v25 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v27);
    }

    v24 = groupsCopy;
  }

  v30 = contactCopy;
LABEL_41:

  return v30;
}

- (id)_updateSaveRequest:(id)request addContact:(id)contact toGroupContext:(id)context contactsToLink:(id)link
{
  v39 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contactCopy = contact;
  contextCopy = context;
  linkCopy = link;
  v12 = contactCopy;
  selfCopy = self;
  contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v31 = [contactViewCache containerForContact:v12];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [contextCopy addedGroupsByContainerDict];
  v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  v16 = v12;
  v17 = v12;
  if (v15)
  {
    v18 = v15;
    v19 = *v35;
    v17 = v12;
    do
    {
      v20 = 0;
      v21 = v17;
      do
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v34 + 1) + 8 * v20);
        [contextCopy addedGroupsByContainerDict];
        v24 = v23 = contextCopy;
        v25 = [v24 objectForKeyedSubscript:v22];

        contextCopy = v23;
        v17 = [(CNUIGroupsAndContainersSaveManager *)selfCopy _updateSaveRequest:requestCopy addContact:v16 toGroups:v25 inContainer:v22 contactParentContainer:v31 contactsToLink:linkCopy];

        ++v20;
        v21 = v17;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v18);
  }

  v26 = *MEMORY[0x1E6996530];
  removedGroups = [contextCopy removedGroups];
  LOBYTE(v26) = (*(v26 + 16))(v26, removedGroups);

  if ((v26 & 1) == 0)
  {
    removedGroups2 = [contextCopy removedGroups];
    [(CNUIGroupsAndContainersSaveManager *)selfCopy _updateSaveRequest:requestCopy removeContact:v16 fromGroups:removedGroups2];
  }

  return v17;
}

- (BOOL)addLinkedContacts:(id)contacts toOriginalContact:(id)contact ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  v31[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  contactCopy = contact;
  identifiersCopy = identifiers;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    if ([contactCopy hasBeenPersisted])
    {
      v14 = contactCopy;
      v15 = contactsCopy;
    }

    else
    {
      if ([contactsCopy count] < 2)
      {
        v16 = 0;
        v14 = 0;
        success = 1;
        goto LABEL_17;
      }

      v14 = [contactsCopy objectAtIndexedSubscript:0];
      [contactsCopy removeObjectAtIndex:0];
    }

    success = 1;
    if (contactsCopy && v14)
    {
      restrictionsCopy = restrictions;
      v16 = contactsCopy;
      if ([v14 isUnified])
      {
        mainStoreLinkedContacts = [v14 mainStoreLinkedContacts];
        [v16 addObjectsFromArray:mainStoreLinkedContacts];

        if (contactCopy)
        {
LABEL_11:
          v31[0] = contactCopy;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
LABEL_16:
          contactViewCache = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v28 = [contactViewCache containerForContact:v14];

          v19 = [CNUIContactSaveConfiguration alloc];
          v20 = [v14 mutableCopy];
          contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
          LOWORD(v27) = restrictionsCopy;
          v22 = [(CNUIContactSaveConfiguration *)v19 initWithContact:v14 mutableContact:v20 originalContacts:v30 shadowCopyOfReadonlyContact:0 editingLinkedContacts:v16 contactStore:contactStore parentGroup:0 parentContainer:v28 containerContext:0 groupContext:0 ignoresParentalRestrictions:v27 saveWasAuthorized:?];

          v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
          v24 = [(CNUIContactStoreLinkedContactSaveExecutor *)v23 executeSaveWithConfiguration:v22 saveDelegate:self];
          identifiersOfIssuedSaveRequests = [v24 identifiersOfIssuedSaveRequests];
          [identifiersCopy addObjectsFromArray:identifiersOfIssuedSaveRequests];

          success = [v24 success];
          goto LABEL_17;
        }
      }

      else
      {
        [v16 addObject:v14];
        if (contactCopy)
        {
          goto LABEL_11;
        }
      }

      v30 = MEMORY[0x1E695E0F0];
      goto LABEL_16;
    }

    v16 = contactsCopy;
LABEL_17:

    goto LABEL_18;
  }

  success = 1;
LABEL_18:

  return success;
}

- (id)updateContacts:(id)contacts forGroupContext:(id)context ignoresGuardianRestrictions:(BOOL)restrictions issuedRequestIdentifiers:(id)identifiers
{
  restrictionsCopy = restrictions;
  v66 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  contextCopy = context;
  identifiersCopy = identifiers;
  v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v44 = restrictionsCopy;
  [v11 setIgnoresGuardianRestrictions:restrictionsCopy];
  v48 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(contactsCopy, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = contactsCopy;
  v13 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v55;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        array = [MEMORY[0x1E695DF70] array];
        v19 = [v17 mutableCopy];
        [(CNUIGroupsAndContainersSaveManager *)self _updateSaveRequest:v11 addContact:v19 toGroupContext:contextCopy contactsToLink:array];
        v21 = v20 = v11;

        [v48 setObject:array forKeyedSubscript:v21];
        [v12 addObject:v21];

        v11 = v20;
      }

      v14 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v14);
  }

  contactStore = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v53 = 0;
  v23 = [contactStore executeSaveRequest:v11 error:&v53];
  v24 = v53;

  v25 = identifiersCopy;
  if (identifiersCopy)
  {
    saveRequestIdentifier = [v11 saveRequestIdentifier];
    [identifiersCopy addObject:saveRequestIdentifier];
  }

  if (v23)
  {
    v42 = v24;
    v43 = v11;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v27 = v48;
    v28 = [v27 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v50;
      LOBYTE(v31) = 1;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v49 + 1) + 8 * j);
          if ((v31 & 1) != 0 && ([v27 objectForKeyedSubscript:*(*(&v49 + 1) + 8 * j)], v34 = objc_claimAutoreleasedReturnValue(), v35 = -[CNUIGroupsAndContainersSaveManager addLinkedContacts:toOriginalContact:ignoresGuardianRestrictions:issuedRequestIdentifiers:](self, "addLinkedContacts:toOriginalContact:ignoresGuardianRestrictions:issuedRequestIdentifiers:", v34, v33, v44, 0), v34, v35))
          {
            v31 = 1;
          }

          else
          {
            v36 = [objc_opt_class() log];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = [v27 objectForKeyedSubscript:v33];
              *buf = 138412546;
              v60 = v37;
              v61 = 2112;
              v62 = v33;
              _os_log_error_impl(&dword_199A75000, v36, OS_LOG_TYPE_ERROR, "Failed to link contacts:%@ to contact:%@", buf, 0x16u);
            }

            v31 = 0;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 1;
    }

    v40 = [[CNUIGroupsAndContainersContactsSaveResult alloc] initWithSuccess:v31 error:0 addedContacts:v12];
    v25 = identifiersCopy;
    v24 = v42;
    v11 = v43;
  }

  else
  {
    v38 = [objc_opt_class() log];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v60 = obj;
      v61 = 2112;
      v62 = contextCopy;
      v63 = 2112;
      v64 = v24;
      _os_log_error_impl(&dword_199A75000, v38, OS_LOG_TYPE_ERROR, "Failed to update contacts:%@, for groupContext:%@, error: %@", buf, 0x20u);
    }

    v39 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v40 = [(CNUIGroupsAndContainersContactsSaveResult *)v39 initWithSuccess:0 error:v24 addedContacts:MEMORY[0x1E695E0F0]];
  }

  return v40;
}

- (id)addContacts:(id)contacts toGroup:(id)group inContainer:(id)container moveWasAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v22[1] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  groupCopy = group;
  containerCopy = container;
  v13 = (*(*MEMORY[0x1E6996530] + 16))();
  if (!containerCopy || v13)
  {
    v15 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v16 = [(CNUIGroupsAndContainersContactsSaveResult *)v15 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
  }

  else
  {
    if (groupCopy)
    {
      v22[0] = groupCopy;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v20 = containerCopy;
    v21 = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [[CNUIGroupContext alloc] initWithAddedGroupsByContainerDict:v17 removedGroups:0];
    v16 = [(CNUIGroupsAndContainersSaveManager *)self updateContacts:contactsCopy forGroupContext:v18 ignoresGuardianRestrictions:authorizedCopy issuedRequestIdentifiers:0];
  }

  return v16;
}

- (id)addContacts:(id)contacts toGroupWithIdentifier:(id)identifier inContainerWithIdentifier:(id)withIdentifier moveWasAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v34 = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = &stru_1F0CE7398;
      if (identifierCopy)
      {
        v14 = identifierCopy;
      }

      v30 = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = withIdentifierCopy;
      v15 = "Failed to add contacts to new group with identifier %@ in container with identifier: %@, contacts is nil";
      v16 = v13;
      v17 = 22;
LABEL_27:
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, v15, &v30, v17);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v18 = *MEMORY[0x1E6996570];
  if (((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], withIdentifierCopy) & 1) == 0)
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = &stru_1F0CE7398;
      if (identifierCopy)
      {
        v28 = identifierCopy;
      }

      v30 = 138412290;
      v31 = v28;
      v15 = "Failed to add contacts to new group with identifier %@, container identifier is empty";
      v16 = v13;
      v17 = 12;
      goto LABEL_27;
    }

LABEL_15:

    v24 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v25 = [(CNUIGroupsAndContainersContactsSaveResult *)v24 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
    goto LABEL_21;
  }

  v19 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:withIdentifierCopy];
  if (v19)
  {
    if ((*(v18 + 16))(v18, identifierCopy))
    {
      v20 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:identifierCopy];
      if (!v20)
      {
        v21 = [objc_opt_class() log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = &stru_1F0CE7398;
          if (identifierCopy)
          {
            v22 = identifierCopy;
          }

          v30 = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = withIdentifierCopy;
          v23 = "Failed to add contacts to new group with identifier %@ in container with identifier: %@, new group is nil";
LABEL_31:
          _os_log_error_impl(&dword_199A75000, v21, OS_LOG_TYPE_ERROR, v23, &v30, 0x16u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = [(CNUIGroupsAndContainersSaveManager *)self addContacts:contactsCopy toGroup:v20 inContainer:v19 moveWasAuthorized:authorizedCopy];

    goto LABEL_20;
  }

  v21 = [objc_opt_class() log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v29 = &stru_1F0CE7398;
    if (identifierCopy)
    {
      v29 = identifierCopy;
    }

    v30 = 138412546;
    v31 = v29;
    v32 = 2112;
    v33 = withIdentifierCopy;
    v23 = "Failed to add contacts to new group with identifier %@, container for identifier: %@ is nil";
    goto LABEL_31;
  }

LABEL_17:

  v26 = [CNUIGroupsAndContainersContactsSaveResult alloc];
  v25 = [(CNUIGroupsAndContainersContactsSaveResult *)v26 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
LABEL_20:

LABEL_21:

  return v25;
}

- (id)addContact:(id)contact toGroup:(id)group inContainer:(id)container moveWasAuthorized:(BOOL)authorized
{
  v28 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  groupCopy = group;
  containerCopy = container;
  v13 = containerCopy;
  if (!contactCopy)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group, contact is nil", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!containerCopy)
  {
    v16 = [objc_opt_class() log];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    if (groupCopy)
    {
      identifier = [groupCopy identifier];
    }

    else
    {
      identifier = &stru_1F0CE7398;
    }

    *buf = 138412546;
    v23 = identifier;
    v24 = 2112;
    v25 = contactCopy;
    _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group %@, container is nil, full contact:%@", buf, 0x16u);
    if (!groupCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (authorized)
  {
    v21 = contactCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v15 = [(CNUIGroupsAndContainersSaveManager *)self addContacts:v14 toGroup:groupCopy inContainer:v13 moveWasAuthorized:1];

    goto LABEL_12;
  }

  v16 = [objc_opt_class() log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (groupCopy)
    {
      identifier = [groupCopy identifier];
    }

    else
    {
      identifier = &stru_1F0CE7398;
    }

    identifier2 = [v13 identifier];
    *buf = 138412802;
    v23 = identifier;
    v24 = 2112;
    v25 = identifier2;
    v26 = 2112;
    v27 = contactCopy;
    _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group %@ and new container %@, move was not authorized, full contact:%@", buf, 0x20u);

    if (groupCopy)
    {
LABEL_22:
    }
  }

LABEL_11:

  v18 = [CNUIGroupsAndContainersContactsSaveResult alloc];
  v15 = [(CNUIGroupsAndContainersContactsSaveResult *)v18 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
LABEL_12:

  return v15;
}

- (id)addContact:(id)contact toGroup:(id)group moveWasAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v19 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  groupCopy = group;
  v10 = groupCopy;
  if (groupCopy)
  {
    identifier = [groupCopy identifier];
    v12 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:identifier];

    v13 = [(CNUIGroupsAndContainersSaveManager *)self addContact:contactCopy toGroup:v10 inContainer:v12 moveWasAuthorized:authorizedCopy];
  }

  else
  {
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = contactCopy;
      _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "failed to add contact to group, group is nil, full contact:%@", &v17, 0xCu);
    }

    v15 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v13 = [(CNUIGroupsAndContainersContactsSaveResult *)v15 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
  }

  return v13;
}

- (id)addContact:(id)contact toGroupWithIdentifier:(id)identifier moveWasAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  contactCopy = contact;
  v9 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:identifier];
  v10 = [(CNUIGroupsAndContainersSaveManager *)self addContact:contactCopy toGroup:v9 moveWasAuthorized:authorizedCopy];

  return v10;
}

- (id)addContact:(id)contact toGroupIdentifier:(id)identifier inContainerIdentifier:(id)containerIdentifier moveWasAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  contactCopy = contact;
  containerIdentifierCopy = containerIdentifier;
  if (identifier)
  {
    identifier = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:identifier];
  }

  v12 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:containerIdentifierCopy];
  v13 = [(CNUIGroupsAndContainersSaveManager *)self addContact:contactCopy toGroup:identifier inContainer:v12 moveWasAuthorized:authorizedCopy];

  return v13;
}

- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)store contactViewCache:(id)cache
{
  storeCopy = store;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = CNUIGroupsAndContainersSaveManager;
  v9 = [(CNUIGroupsAndContainersSaveManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (!storeCopy)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘contactStore’ must be nonnull" userInfo:0];
      objc_exception_throw(v13);
    }

    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_contactViewCache, cache);
    v11 = v10;
  }

  return v10;
}

- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(CNContactViewCache);
  v6 = [(CNUIGroupsAndContainersSaveManager *)self initWithContactStore:storeCopy contactViewCache:v5];

  return v6;
}

+ (id)log
{
  if (log_cn_once_token_6 != -1)
  {
    dispatch_once(&log_cn_once_token_6, &__block_literal_global_9280);
  }

  v3 = log_cn_once_object_6;

  return v3;
}

uint64_t __41__CNUIGroupsAndContainersSaveManager_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNUIGroupsAndContainersSaveManager");
  v1 = log_cn_once_object_6;
  log_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
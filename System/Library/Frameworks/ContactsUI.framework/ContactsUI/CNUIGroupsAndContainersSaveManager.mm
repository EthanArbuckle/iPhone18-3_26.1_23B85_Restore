@interface CNUIGroupsAndContainersSaveManager
+ (id)log;
- (BOOL)addLinkedContacts:(id)a3 toOriginalContact:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6;
- (BOOL)container:(id)a3 containsNonUnifiedContact:(id)a4 inContactStore:(id)a5;
- (BOOL)deleteContainerWithIdentifier:(id)a3 inStore:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6;
- (BOOL)deleteGroupWithIdentifier:(id)a3 inStore:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6;
- (BOOL)editRequiresAuthorizationForContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5;
- (BOOL)isAuthorizedToAddContact:(id)a3 toContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5;
- (BOOL)isAuthorizedToEditContact:(id)a3 withTargetContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5;
- (BOOL)isAuthorizedToEditContact:(id)a3 withTargetGroupWithIdentifier:(id)a4 ignoresParentalRestrictions:(BOOL)a5;
- (BOOL)isAuthorizedToEditContainer:(id)a3;
- (BOOL)isAuthorizedToEditContainerWithIdentifier:(id)a3;
- (BOOL)isMDMAuthorizedToAddContact:(id)a3 toAccount:(id)a4 withManagedConfiguration:(id)a5;
- (BOOL)removeContact:(id)a3 fromGroup:(id)a4 ignoresGuardianRestrictions:(BOOL)a5;
- (BOOL)removeContact:(id)a3 fromGroups:(id)a4 ignoresGuardianRestrictions:(BOOL)a5;
- (BOOL)updateContainerWithIdentifier:(id)a3 inStore:(id)a4 withNewName:(id)a5 ignoresGuardianRestrictions:(BOOL)a6 issuedRequestIdentifiers:(id)a7;
- (BOOL)updateGroupWithIdentifier:(id)a3 inStore:(id)a4 withNewName:(id)a5 ignoresGuardianRestrictions:(BOOL)a6 issuedRequestIdentifiers:(id)a7;
- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)a3;
- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)a3 contactViewCache:(id)a4;
- (id)_updateSaveRequest:(id)a3 addContact:(id)a4 toGroupContext:(id)a5 contactsToLink:(id)a6;
- (id)_updateSaveRequest:(id)a3 addContact:(id)a4 toGroups:(id)a5 inContainer:(id)a6 contactParentContainer:(id)a7 contactsToLink:(id)a8;
- (id)acAccountForContainer:(id)a3;
- (id)acAccountForGroupIdentifier:(id)a3;
- (id)accountForContainerIdentifier:(id)a3;
- (id)addContact:(id)a3 toGroup:(id)a4 inContainer:(id)a5 moveWasAuthorized:(BOOL)a6;
- (id)addContact:(id)a3 toGroup:(id)a4 moveWasAuthorized:(BOOL)a5;
- (id)addContact:(id)a3 toGroupIdentifier:(id)a4 inContainerIdentifier:(id)a5 moveWasAuthorized:(BOOL)a6;
- (id)addContact:(id)a3 toGroupWithIdentifier:(id)a4 moveWasAuthorized:(BOOL)a5;
- (id)addContacts:(id)a3 toGroup:(id)a4 inContainer:(id)a5 moveWasAuthorized:(BOOL)a6;
- (id)addContacts:(id)a3 toGroupWithIdentifier:(id)a4 inContainerWithIdentifier:(id)a5 moveWasAuthorized:(BOOL)a6;
- (id)allMDMUnauthorizedAccountsForTargetGroup:(id)a3 withManagedConfiguration:(id)a4;
- (id)containerForContainerIdentifier:(id)a3;
- (id)containerForGroupIdentifier:(id)a3;
- (id)exchangeContactsToDeleteInAccountIdentifier:(id)a3 originalContact:(id)a4;
- (id)groupForGroupIdentifier:(id)a3;
- (id)groupsByContainerDictForContainers:(id)a3 groups:(id)a4;
- (id)linkedContactForContact:(id)a3 inContainer:(id)a4 inContactStore:(id)a5;
- (id)mdmUnauthorizedContactIdentifiersForTargetGroup:(id)a3 withManagedConfiguration:(id)a4;
- (id)parentAccountExternalIdentifiersForContact:(id)a3;
- (id)parentGroupsForContact:(id)a3;
- (id)updateContacts:(id)a3 forGroupContext:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6;
- (void)_updateSaveRequest:(id)a3 removeContact:(id)a4 fromGroups:(id)a5;
- (void)authorizeForViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completionBlock:(id)a6;
- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4;
@end

@implementation CNUIGroupsAndContainersSaveManager

- (id)allMDMUnauthorizedAccountsForTargetGroup:(id)a3 withManagedConfiguration:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![v7 deviceHasManagementRestrictions])
  {
    v27 = 0;
    goto LABEL_19;
  }

  v8 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v32 = 0;
  v9 = [v8 accountsMatchingPredicate:0 error:&v32];
  v10 = v32;

  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v11 = CNUILogContactList();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 138412290;
      v35 = v12;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Error fetching accounts: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = [v6 identifier];
    v11 = [(CNUIGroupsAndContainersSaveManager *)self acAccountForGroupIdentifier:v13];

    if (v11)
    {
      v24 = v10;
      v26 = v6;
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
            v20 = [v11 identifier];
            v21 = [v19 externalIdentifierString];
            v22 = [v7 canWriteToAccountWithIdentifier:v20 fromSourceAccountIdentifier:v21];

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
      v6 = v26;
      v10 = v24;
      goto LABEL_18;
    }
  }

  v27 = 0;
LABEL_18:

LABEL_19:

  return v27;
}

- (id)mdmUnauthorizedContactIdentifiersForTargetGroup:(id)a3 withManagedConfiguration:(id)a4
{
  v97 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] set];
  if (![v7 deviceHasManagementRestrictions])
  {
    goto LABEL_46;
  }

  v9 = [(CNUIGroupsAndContainersSaveManager *)self allMDMUnauthorizedAccountsForTargetGroup:v6 withManagedConfiguration:v7];
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
  v66 = self;
  v52 = v9;
  v53 = v7;
  v54 = v6;
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
      v18 = [v16 identifier];
      v19 = [v17 predicateForContainersInAccountWithIdentifier:v18];

      v20 = [(CNUIGroupsAndContainersSaveManager *)v66 contactStore];
      v83 = v12;
      v59 = v19;
      v21 = [v20 containersMatchingPredicate:v19 error:&v83];
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
            v30 = [v28 identifier];
            v31 = [v29 predicateForContactsInContainerWithIdentifier:v30];

            v32 = [(CNUIGroupsAndContainersSaveManager *)v66 contactStore];
            v90 = v13;
            v33 = [*(v24 + 3784) arrayWithObjects:&v90 count:1];
            v78 = v27;
            v68 = v31;
            v34 = [v32 unifiedContactsMatchingPredicate:v31 keysToFetch:v33 error:&v78];
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
                    v41 = [v40 identifier];
                    [v8 addObject:v41];

                    if ([v40 isUnified])
                    {
                      v72 = 0u;
                      v73 = 0u;
                      v70 = 0u;
                      v71 = 0u;
                      v42 = [v40 linkedContacts];
                      v43 = [v42 countByEnumeratingWithState:&v70 objects:v88 count:16];
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
                              objc_enumerationMutation(v42);
                            }

                            v47 = [*(*(&v70 + 1) + 8 * j) identifier];
                            [v8 addObject:v47];
                          }

                          v44 = [v42 countByEnumeratingWithState:&v70 objects:v88 count:16];
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
                v48 = [v25 localizedDescription];
                *buf = 138412546;
                v93 = v28;
                v94 = 2112;
                v95 = v48;
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
        v49 = [v22 localizedDescription];
        *buf = 138412546;
        v93 = v16;
        v94 = 2112;
        v95 = v49;
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

  v7 = v53;
  v6 = v54;
  v9 = v52;
LABEL_44:

LABEL_45:
LABEL_46:

  return v8;
}

- (id)parentAccountExternalIdentifiersForContact:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if ([v4 isUnified])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v4 linkedContacts];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v13 = [v12 containerForContact:v11];

          v14 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v15 = [v14 accountForContainer:v13 shouldUseTopLevelAccount:0];

          v16 = [v15 identifier];
          [v5 _cn_addNonNilObject:v16];
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v17 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v18 = [v17 containerForContact:v4];

    v19 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v20 = [v19 accountForContainer:v18 shouldUseTopLevelAccount:0];

    v21 = [v20 identifier];
    [v5 _cn_addNonNilObject:v21];
  }

  return v5;
}

- (id)parentGroupsForContact:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695CEC0] predicateForGroupsWithMemberContact:v4 includeAllParentGroups:0];
  v6 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v12 = 0;
  v7 = [v6 groupsMatchingPredicate:v5 error:&v12];
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
      v14 = v4;
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Error fetching parent groups for contact:%@, error: %@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)containerForGroupIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695CE48] predicateForContainerOfGroupWithIdentifier:v4];
    v6 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v12 = 0;
    v7 = [v6 containersMatchingPredicate:v5 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = [v7 firstObject];
    }

    else
    {
      v10 = [objc_opt_class() log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v8;
        _os_log_error_impl(&dword_199A75000, v10, OS_LOG_TYPE_ERROR, "Error fetching parent container for group identifier:%@, error: %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)acAccountForContainer:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
    v6 = [v5 accountForContainer:v4 shouldUseTopLevelAccount:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accountForContainerIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E695CD10] predicateForAccountForContainerWithIdentifier:?];
    v5 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v6 = [v5 accountsMatchingPredicate:v4 error:0];

    v7 = [v6 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)acAccountForGroupIdentifier:(id)a3
{
  if (a3)
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

- (id)groupForGroupIdentifier:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695CEC0];
    v20[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v6 predicateForGroupsWithIdentifiers:v7];

    v9 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v15 = 0;
    v10 = [v9 groupsMatchingPredicate:v8 error:&v15];
    v11 = v15;

    if (v10)
    {
      v12 = [v10 firstObject];
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

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)containerForContainerIdentifier:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E695CE48];
    v20[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v8 = [v6 predicateForContainersWithIdentifiers:v7];

    v9 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v15 = 0;
    v10 = [v9 containersMatchingPredicate:v8 error:&v15];
    v11 = v15;

    if (v10)
    {
      v12 = [v10 firstObject];
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

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)groupsByContainerDictForContainers:(id)a3 groups:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v6)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v6;
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

  if (v7)
  {
    v27 = v7;
    v28 = v6;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v7;
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
          v21 = [v20 identifier];
          v22 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:v21];

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

    v7 = v27;
    v6 = v28;
  }

  return v8;
}

- (void)editAuthorizationController:(id)a3 authorizationDidFinishWithResult:(int64_t)a4
{
  [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationController:0];
  v6 = [(CNUIGroupsAndContainersSaveManager *)self authorizationResultBlock];

  if (v6)
  {
    v7 = [(CNUIGroupsAndContainersSaveManager *)self authorizationResultBlock];
    v7[2](v7, a4);

    [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationResultBlock:0];
  }
}

- (void)authorizeForViewController:(id)a3 sender:(id)a4 animated:(BOOL)a5 completionBlock:(id)a6
{
  v7 = a5;
  v18 = a3;
  v10 = a4;
  [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationResultBlock:a6];
  v11 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];

  if (!v11)
  {
    v12 = objc_alloc_init(CNUIEditAuthorizationController);
    [(CNUIGroupsAndContainersSaveManager *)self setAuthorizationController:v12];

    v13 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [v13 setDelegate:self];

    v14 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [v14 setSender:v10];

    v15 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [v15 setAnimated:v7];

    v16 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
    [v16 setGuardedViewController:v18];
  }

  v17 = [(CNUIGroupsAndContainersSaveManager *)self authorizationController];
  [v17 presentAuthorizationUI];
}

- (BOOL)isAuthorizedToEditContainer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 isGuardianRestricted];
  return v3 & [MEMORY[0x1E6996B08] isAuthorizationPasscodeEnabledOnDevice] ^ 1;
}

- (BOOL)isAuthorizedToEditContainerWithIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = self;
  v4 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:?];
  LOBYTE(v3) = [(CNUIGroupsAndContainersSaveManager *)v3 isAuthorizedToEditContainer:v4];

  return v3;
}

- (BOOL)editRequiresAuthorizationForContact:(id)a3 parentContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E6996B08];
  v9 = a4;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v13 = [v11 initWithContact:v10 parentContainer:v9 ignoresParentalRestrictions:v5 linkedParentContainerProvider:v12];

  LOBYTE(v10) = [v13 shouldPromptForPasscodeAuthorization];
  return v10;
}

- (BOOL)isAuthorizedToEditContact:(id)a3 withTargetContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v11 = [v10 containerForContact:v8];

  v12 = 0;
  if (![(CNUIGroupsAndContainersSaveManager *)self editRequiresAuthorizationForContact:v8 parentContainer:v11 ignoresParentalRestrictions:v5])
  {
    v13 = [v11 identifier];
    v14 = [v9 identifier];
    v15 = [v13 isEqualToString:v14];

    if ((v15 & 1) != 0 || ![(CNUIGroupsAndContainersSaveManager *)self editRequiresAuthorizationForContact:v8 parentContainer:v9 ignoresParentalRestrictions:v5])
    {
      v12 = 1;
    }
  }

  return v12;
}

- (BOOL)isAuthorizedToEditContact:(id)a3 withTargetGroupWithIdentifier:(id)a4 ignoresParentalRestrictions:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = 0;
  if (v8 && a4)
  {
    v10 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:a4];
    if (v10)
    {
      v9 = [(CNUIGroupsAndContainersSaveManager *)self isAuthorizedToEditContact:v8 withTargetContainer:v10 ignoresParentalRestrictions:v5];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)isMDMAuthorizedToAddContact:(id)a3 toAccount:(id)a4 withManagedConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 deviceHasManagementRestrictions])
  {
    v11 = [(CNUIGroupsAndContainersSaveManager *)self parentAccountExternalIdentifiersForContact:v8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__CNUIGroupsAndContainersSaveManager_isMDMAuthorizedToAddContact_toAccount_withManagedConfiguration___block_invoke;
    v14[3] = &unk_1E74E5B78;
    v15 = v10;
    v16 = v9;
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

- (BOOL)isAuthorizedToAddContact:(id)a3 toContainer:(id)a4 ignoresParentalRestrictions:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v13 = v8 && (v9 || (-[CNUIGroupsAndContainersSaveManager contactStore](self, "contactStore"), v11 = v10 = v9;

  return v13;
}

- (BOOL)updateContainerWithIdentifier:(id)a3 inStore:(id)a4 withNewName:(id)a5 ignoresGuardianRestrictions:(BOOL)a6 issuedRequestIdentifiers:(id)a7
{
  v7 = a6;
  v12 = MEMORY[0x1E695CF88];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(v12);
  [v17 setIgnoresGuardianRestrictions:v7];
  v18 = [v17 saveRequestIdentifier];
  [v13 addObject:v18];

  v19 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:v16];

  v20 = [v19 mutableCopy];
  [v20 setName:v14];

  LOBYTE(v14) = [v20 updateContainerInStore:v15 saveRequest:v17];
  return v14;
}

- (BOOL)updateGroupWithIdentifier:(id)a3 inStore:(id)a4 withNewName:(id)a5 ignoresGuardianRestrictions:(BOOL)a6 issuedRequestIdentifiers:(id)a7
{
  v7 = a6;
  v12 = MEMORY[0x1E695CF88];
  v13 = a7;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(v12);
  [v17 setIgnoresGuardianRestrictions:v7];
  v18 = [v17 saveRequestIdentifier];
  [v13 addObject:v18];

  v19 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:v16];

  v20 = [v19 mutableCopy];
  [v20 setName:v14];

  LOBYTE(v14) = [v20 updateGroupInStore:v15 saveRequest:v17];
  return v14;
}

- (BOOL)deleteContainerWithIdentifier:(id)a3 inStore:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6
{
  v6 = a5;
  v10 = MEMORY[0x1E695CF88];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setIgnoresGuardianRestrictions:v6];
  v15 = [v14 saveRequestIdentifier];
  [v11 addObject:v15];

  v16 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:v13];

  v17 = [v16 mutableCopy];
  LOBYTE(self) = [v17 deleteContainerInStore:v12 saveRequest:v14];

  return self;
}

- (BOOL)deleteGroupWithIdentifier:(id)a3 inStore:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6
{
  v6 = a5;
  v10 = MEMORY[0x1E695CF88];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = objc_alloc_init(v10);
  [v14 setIgnoresGuardianRestrictions:v6];
  v15 = [v14 saveRequestIdentifier];
  [v11 addObject:v15];

  v16 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:v13];

  v17 = [v16 mutableCopy];
  LOBYTE(self) = [v17 deleteGroupInStore:v12 saveRequest:v14];

  return self;
}

- (void)_updateSaveRequest:(id)a3 removeContact:(id)a4 fromGroups:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  obj = a5;
  if (v8)
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
          if ([v8 isUnified])
          {
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v14 = [v8 linkedContacts];
            v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                    objc_enumerationMutation(v14);
                  }

                  v19 = *(*(&v23 + 1) + 8 * i);
                  if (([v19 isSuggested] & 1) == 0)
                  {
                    v20 = [v19 mutableCopy];
                    [v7 removeMember:v20 fromGroup:v13];
                  }
                }

                v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v16);
            }

            v10 = v21;
          }

          else
          {
            [v7 removeMember:v8 fromGroup:v13];
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

- (BOOL)removeContact:(id)a3 fromGroups:(id)a4 ignoresGuardianRestrictions:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
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
  [v10 setIgnoresGuardianRestrictions:v5];
  v13 = [v8 mutableCopy];
  [(CNUIGroupsAndContainersSaveManager *)self _updateSaveRequest:v10 removeContact:v13 fromGroups:v9];

  v14 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v18 = 0;
  v12 = [v14 executeSaveRequest:v10 error:&v18];
  v15 = v18;

  if ((v12 & 1) == 0)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v15;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Failed to remove contact from groups, contact: %@, groups: %@ with error: %@", buf, 0x20u);
    }
  }

LABEL_12:
  return v12;
}

- (BOOL)removeContact:(id)a3 fromGroup:(id)a4 ignoresGuardianRestrictions:(BOOL)a5
{
  v5 = a5;
  v14 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a4)
  {
    v13 = a4;
    v9 = MEMORY[0x1E695DEC8];
    v10 = a4;
    a4 = [v9 arrayWithObjects:&v13 count:1];
  }

  v11 = [(CNUIGroupsAndContainersSaveManager *)self removeContact:v8 fromGroups:a4 ignoresGuardianRestrictions:v5, v13, v14];

  return v11;
}

- (id)exchangeContactsToDeleteInAccountIdentifier:(id)a3 originalContact:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = [MEMORY[0x1E695DF70] array];
  v8 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v9 = [v8 accountForContact:v7];

  v10 = [v9 identifier];
  v11 = [v10 isEqualToString:v6];

  if (v11)
  {
    [v25 addObject:v7];
  }

  if ([v7 isUnified])
  {
    v23 = v9;
    v24 = v7;
    v12 = [v7 linkedContacts];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          v18 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v19 = [v18 accountForContact:v17];

          v20 = [v19 identifier];
          v21 = [v20 isEqualToString:v6];

          if (v21)
          {
            [v25 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    v9 = v23;
    v7 = v24;
  }

  return v25;
}

- (BOOL)container:(id)a3 containsNonUnifiedContact:(id)a4 inContactStore:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x1E695CE48];
  v9 = a5;
  v10 = [a4 identifier];
  v11 = [v8 predicateForContainerOfContactWithIdentifier:v10];
  v12 = [v9 containersMatchingPredicate:v11 error:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__CNUIGroupsAndContainersSaveManager_container_containsNonUnifiedContact_inContactStore___block_invoke;
  v15[3] = &unk_1E74E2440;
  v16 = v7;
  v13 = v7;
  LOBYTE(v10) = [v12 indexOfObjectPassingTest:v15] != 0x7FFFFFFFFFFFFFFFLL;

  return v10;
}

uint64_t __89__CNUIGroupsAndContainersSaveManager_container_containsNonUnifiedContact_inContactStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)linkedContactForContact:(id)a3 inContainer:(id)a4 inContactStore:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a3 linkedContacts];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([(CNUIGroupsAndContainersSaveManager *)self container:v8 containsNonUnifiedContact:v15 inContactStore:v9])
        {
          v16 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_updateSaveRequest:(id)a3 addContact:(id)a4 toGroups:(id)a5 inContainer:(id)a6 contactParentContainer:(id)a7 contactsToLink:(id)a8
{
  v84 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v59 = a5;
  v16 = a6;
  v17 = a7;
  v60 = a8;
  v18 = [v16 identifier];
  v19 = [v17 identifier];
  v20 = [v18 isEqualToString:v19];

  if (![v15 hasBeenPersisted])
  {
    goto LABEL_17;
  }

  if (v20)
  {
    v21 = v15;
    if (!v21)
    {
LABEL_17:
      v58 = v17;
      if ([v16 type] == 2 && objc_msgSend(v15, "hasBeenPersisted"))
      {
        v31 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
        v32 = v16;
        v33 = [v31 accountForContainer:v16];

        v34 = [v33 identifier];
        v35 = [(CNUIGroupsAndContainersSaveManager *)self exchangeContactsToDeleteInAccountIdentifier:v34 originalContact:v15];

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

              [v14 deleteContact:*(*(&v66 + 1) + 8 * i)];
            }

            v38 = [v36 countByEnumeratingWithState:&v66 objects:v82 count:16];
          }

          while (v38);
        }

        v16 = v32;
      }

      v41 = objc_alloc_init(MEMORY[0x1E695CF58]);
      v42 = [v16 identifier];
      [v41 setContainerIdentifier:v42];

      [v41 setIgnoresGuardianRestrictions:{objc_msgSend(v14, "ignoresGuardianRestrictions")}];
      v43 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
      v65 = 0;
      v44 = [v43 policyWithDescription:v41 error:&v65];
      v21 = v65;

      if (v44)
      {
        v30 = [CNUIContactPolicyValidator contactFromContact:v15 conformingToPolicy:v44 options:5];
        v45 = [v16 identifier];
        [v14 addContact:v30 toContainerWithIdentifier:v45];

        v46 = [v15 availableKeyDescriptor];
        v75 = v46;
        v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
        v48 = [v30 copyWithPropertyKeys:v47];
        [v60 addObject:v48];

        v24 = v59;
        if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
        {
          v57 = v16;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v49 = v59;
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

                [v14 addMember:v30 toGroup:{*(*(&v61 + 1) + 8 * j), v57}];
              }

              v51 = [v49 countByEnumeratingWithState:&v61 objects:v74 count:16];
            }

            while (v51);
          }

          v24 = v59;
          v16 = v57;
        }
      }

      else
      {
        v54 = [objc_opt_class() log];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v56 = [v16 identifier];
          *buf = 138543874;
          v77 = v56;
          v78 = 2112;
          v79 = v15;
          v80 = 2114;
          v81 = v21;
          _os_log_error_impl(&dword_199A75000, v54, OS_LOG_TYPE_ERROR, "Failed to get policy for container:%{public}@ to add contact:%@, error:%{public}@", buf, 0x20u);
        }

        v30 = v15;
        v24 = v59;
      }

      v17 = v58;
      goto LABEL_41;
    }
  }

  else
  {
    if (![v15 isUnified])
    {
      goto LABEL_17;
    }

    v22 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
    v23 = [(CNUIGroupsAndContainersSaveManager *)self linkedContactForContact:v15 inContainer:v16 inContactStore:v22];

    v21 = [v23 mutableCopy];
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  v24 = v59;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v25 = v59;
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

          [v14 addMember:v21 toGroup:*(*(&v70 + 1) + 8 * k)];
        }

        v27 = [v25 countByEnumeratingWithState:&v70 objects:v83 count:16];
      }

      while (v27);
    }

    v24 = v59;
  }

  v30 = v15;
LABEL_41:

  return v30;
}

- (id)_updateSaveRequest:(id)a3 addContact:(id)a4 toGroupContext:(id)a5 contactsToLink:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v10 = a4;
  v11 = a5;
  v32 = a6;
  v12 = v10;
  v13 = self;
  v14 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
  v31 = [v14 containerForContact:v12];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v11 addedGroupsByContainerDict];
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
        [v11 addedGroupsByContainerDict];
        v24 = v23 = v11;
        v25 = [v24 objectForKeyedSubscript:v22];

        v11 = v23;
        v17 = [(CNUIGroupsAndContainersSaveManager *)v13 _updateSaveRequest:v33 addContact:v16 toGroups:v25 inContainer:v22 contactParentContainer:v31 contactsToLink:v32];

        ++v20;
        v21 = v17;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v18);
  }

  v26 = *MEMORY[0x1E6996530];
  v27 = [v11 removedGroups];
  LOBYTE(v26) = (*(v26 + 16))(v26, v27);

  if ((v26 & 1) == 0)
  {
    v28 = [v11 removedGroups];
    [(CNUIGroupsAndContainersSaveManager *)v13 _updateSaveRequest:v33 removeContact:v16 fromGroups:v28];
  }

  return v17;
}

- (BOOL)addLinkedContacts:(id)a3 toOriginalContact:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (((*(*MEMORY[0x1E6996530] + 16))() & 1) == 0)
  {
    if ([v11 hasBeenPersisted])
    {
      v14 = v11;
      v15 = v10;
    }

    else
    {
      if ([v10 count] < 2)
      {
        v16 = 0;
        v14 = 0;
        v13 = 1;
        goto LABEL_17;
      }

      v14 = [v10 objectAtIndexedSubscript:0];
      [v10 removeObjectAtIndex:0];
    }

    v13 = 1;
    if (v10 && v14)
    {
      v29 = a5;
      v16 = v10;
      if ([v14 isUnified])
      {
        v17 = [v14 mainStoreLinkedContacts];
        [v16 addObjectsFromArray:v17];

        if (v11)
        {
LABEL_11:
          v31[0] = v11;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
LABEL_16:
          v18 = [(CNUIGroupsAndContainersSaveManager *)self contactViewCache];
          v28 = [v18 containerForContact:v14];

          v19 = [CNUIContactSaveConfiguration alloc];
          v20 = [v14 mutableCopy];
          v21 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
          LOWORD(v27) = v29;
          v22 = [(CNUIContactSaveConfiguration *)v19 initWithContact:v14 mutableContact:v20 originalContacts:v30 shadowCopyOfReadonlyContact:0 editingLinkedContacts:v16 contactStore:v21 parentGroup:0 parentContainer:v28 containerContext:0 groupContext:0 ignoresParentalRestrictions:v27 saveWasAuthorized:?];

          v23 = objc_alloc_init(CNUIContactStoreLinkedContactSaveExecutor);
          v24 = [(CNUIContactStoreLinkedContactSaveExecutor *)v23 executeSaveWithConfiguration:v22 saveDelegate:self];
          v25 = [v24 identifiersOfIssuedSaveRequests];
          [v12 addObjectsFromArray:v25];

          v13 = [v24 success];
          goto LABEL_17;
        }
      }

      else
      {
        [v16 addObject:v14];
        if (v11)
        {
          goto LABEL_11;
        }
      }

      v30 = MEMORY[0x1E695E0F0];
      goto LABEL_16;
    }

    v16 = v10;
LABEL_17:

    goto LABEL_18;
  }

  v13 = 1;
LABEL_18:

  return v13;
}

- (id)updateContacts:(id)a3 forGroupContext:(id)a4 ignoresGuardianRestrictions:(BOOL)a5 issuedRequestIdentifiers:(id)a6
{
  v7 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v47 = a4;
  v45 = a6;
  v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
  v44 = v7;
  [v11 setIgnoresGuardianRestrictions:v7];
  v48 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v10, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v10;
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
        v18 = [MEMORY[0x1E695DF70] array];
        v19 = [v17 mutableCopy];
        [(CNUIGroupsAndContainersSaveManager *)self _updateSaveRequest:v11 addContact:v19 toGroupContext:v47 contactsToLink:v18];
        v21 = v20 = v11;

        [v48 setObject:v18 forKeyedSubscript:v21];
        [v12 addObject:v21];

        v11 = v20;
      }

      v14 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v14);
  }

  v22 = [(CNUIGroupsAndContainersSaveManager *)self contactStore];
  v53 = 0;
  v23 = [v22 executeSaveRequest:v11 error:&v53];
  v24 = v53;

  v25 = v45;
  if (v45)
  {
    v26 = [v11 saveRequestIdentifier];
    [v45 addObject:v26];
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
    v25 = v45;
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
      v62 = v47;
      v63 = 2112;
      v64 = v24;
      _os_log_error_impl(&dword_199A75000, v38, OS_LOG_TYPE_ERROR, "Failed to update contacts:%@, for groupContext:%@, error: %@", buf, 0x20u);
    }

    v39 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v40 = [(CNUIGroupsAndContainersContactsSaveResult *)v39 initWithSuccess:0 error:v24 addedContacts:MEMORY[0x1E695E0F0]];
  }

  return v40;
}

- (id)addContacts:(id)a3 toGroup:(id)a4 inContainer:(id)a5 moveWasAuthorized:(BOOL)a6
{
  v6 = a6;
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = (*(*MEMORY[0x1E6996530] + 16))();
  if (!v12 || v13)
  {
    v15 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v16 = [(CNUIGroupsAndContainersContactsSaveResult *)v15 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
  }

  else
  {
    if (v11)
    {
      v22[0] = v11;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v20 = v12;
    v21 = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = [[CNUIGroupContext alloc] initWithAddedGroupsByContainerDict:v17 removedGroups:0];
    v16 = [(CNUIGroupsAndContainersSaveManager *)self updateContacts:v10 forGroupContext:v18 ignoresGuardianRestrictions:v6 issuedRequestIdentifiers:0];
  }

  return v16;
}

- (id)addContacts:(id)a3 toGroupWithIdentifier:(id)a4 inContainerWithIdentifier:(id)a5 moveWasAuthorized:(BOOL)a6
{
  v6 = a6;
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = &stru_1F0CE7398;
      if (v11)
      {
        v14 = v11;
      }

      v30 = 138412546;
      v31 = v14;
      v32 = 2112;
      v33 = v12;
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
  if (((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v12) & 1) == 0)
  {
    v13 = [objc_opt_class() log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v28 = &stru_1F0CE7398;
      if (v11)
      {
        v28 = v11;
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

  v19 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:v12];
  if (v19)
  {
    if ((*(v18 + 16))(v18, v11))
    {
      v20 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:v11];
      if (!v20)
      {
        v21 = [objc_opt_class() log];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = &stru_1F0CE7398;
          if (v11)
          {
            v22 = v11;
          }

          v30 = 138412546;
          v31 = v22;
          v32 = 2112;
          v33 = v12;
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

    v25 = [(CNUIGroupsAndContainersSaveManager *)self addContacts:v10 toGroup:v20 inContainer:v19 moveWasAuthorized:v6];

    goto LABEL_20;
  }

  v21 = [objc_opt_class() log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v29 = &stru_1F0CE7398;
    if (v11)
    {
      v29 = v11;
    }

    v30 = 138412546;
    v31 = v29;
    v32 = 2112;
    v33 = v12;
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

- (id)addContact:(id)a3 toGroup:(id)a4 inContainer:(id)a5 moveWasAuthorized:(BOOL)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v10)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group, contact is nil", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!v12)
  {
    v16 = [objc_opt_class() log];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    if (v11)
    {
      v17 = [v11 identifier];
    }

    else
    {
      v17 = &stru_1F0CE7398;
    }

    *buf = 138412546;
    v23 = v17;
    v24 = 2112;
    v25 = v10;
    _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group %@, container is nil, full contact:%@", buf, 0x16u);
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  if (a6)
  {
    v21 = v10;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v15 = [(CNUIGroupsAndContainersSaveManager *)self addContacts:v14 toGroup:v11 inContainer:v13 moveWasAuthorized:1];

    goto LABEL_12;
  }

  v16 = [objc_opt_class() log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    if (v11)
    {
      v17 = [v11 identifier];
    }

    else
    {
      v17 = &stru_1F0CE7398;
    }

    v20 = [v13 identifier];
    *buf = 138412802;
    v23 = v17;
    v24 = 2112;
    v25 = v20;
    v26 = 2112;
    v27 = v10;
    _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "failed to add contact to new group %@ and new container %@, move was not authorized, full contact:%@", buf, 0x20u);

    if (v11)
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

- (id)addContact:(id)a3 toGroup:(id)a4 moveWasAuthorized:(BOOL)a5
{
  v5 = a5;
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 identifier];
    v12 = [(CNUIGroupsAndContainersSaveManager *)self containerForGroupIdentifier:v11];

    v13 = [(CNUIGroupsAndContainersSaveManager *)self addContact:v8 toGroup:v10 inContainer:v12 moveWasAuthorized:v5];
  }

  else
  {
    v14 = [objc_opt_class() log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "failed to add contact to group, group is nil, full contact:%@", &v17, 0xCu);
    }

    v15 = [CNUIGroupsAndContainersContactsSaveResult alloc];
    v13 = [(CNUIGroupsAndContainersContactsSaveResult *)v15 initWithSuccess:0 error:0 addedContacts:MEMORY[0x1E695E0F0]];
  }

  return v13;
}

- (id)addContact:(id)a3 toGroupWithIdentifier:(id)a4 moveWasAuthorized:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:a4];
  v10 = [(CNUIGroupsAndContainersSaveManager *)self addContact:v8 toGroup:v9 moveWasAuthorized:v5];

  return v10;
}

- (id)addContact:(id)a3 toGroupIdentifier:(id)a4 inContainerIdentifier:(id)a5 moveWasAuthorized:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  if (a4)
  {
    a4 = [(CNUIGroupsAndContainersSaveManager *)self groupForGroupIdentifier:a4];
  }

  v12 = [(CNUIGroupsAndContainersSaveManager *)self containerForContainerIdentifier:v11];
  v13 = [(CNUIGroupsAndContainersSaveManager *)self addContact:v10 toGroup:a4 inContainer:v12 moveWasAuthorized:v6];

  return v13;
}

- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)a3 contactViewCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CNUIGroupsAndContainersSaveManager;
  v9 = [(CNUIGroupsAndContainersSaveManager *)&v14 init];
  v10 = v9;
  if (v9)
  {
    if (!v7)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"parameter ‘contactStore’ must be nonnull" userInfo:0];
      objc_exception_throw(v13);
    }

    objc_storeStrong(&v9->_contactStore, a3);
    objc_storeStrong(&v10->_contactViewCache, a4);
    v11 = v10;
  }

  return v10;
}

- (CNUIGroupsAndContainersSaveManager)initWithContactStore:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNContactViewCache);
  v6 = [(CNUIGroupsAndContainersSaveManager *)self initWithContactStore:v4 contactViewCache:v5];

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
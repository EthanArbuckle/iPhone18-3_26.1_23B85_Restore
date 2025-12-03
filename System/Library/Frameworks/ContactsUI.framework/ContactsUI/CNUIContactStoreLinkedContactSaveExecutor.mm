@interface CNUIContactStoreLinkedContactSaveExecutor
- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate;
- (id)saveLinkedContactChanges:(id)changes mutableContact:(id)contact contactStore:(id)store editingLinkedContacts:(id)contacts ignoresParentalRestrictions:(BOOL)restrictions saveWasAuthorized:(BOOL)authorized issuedSaveRequestIdentifiers:(id)identifiers;
@end

@implementation CNUIContactStoreLinkedContactSaveExecutor

- (id)saveLinkedContactChanges:(id)changes mutableContact:(id)contact contactStore:(id)store editingLinkedContacts:(id)contacts ignoresParentalRestrictions:(BOOL)restrictions saveWasAuthorized:(BOOL)authorized issuedSaveRequestIdentifiers:(id)identifiers
{
  authorizedCopy = authorized;
  restrictionsCopy = restrictions;
  v97 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  contactCopy = contact;
  storeCopy = store;
  contactsCopy = contacts;
  identifiersCopy = identifiers;
  v19 = identifiersCopy;
  if (!contactsCopy)
  {
    v23 = 0;
    goto LABEL_58;
  }

  v73 = identifiersCopy;
  v71 = storeCopy;
  mainStoreLinkedContacts = [changesCopy mainStoreLinkedContacts];

  if (mainStoreLinkedContacts)
  {
    v21 = MEMORY[0x1E695DFA8];
    mainStoreLinkedContacts2 = [changesCopy mainStoreLinkedContacts];
    v75 = [v21 setWithArray:mainStoreLinkedContacts2];
  }

  else
  {
    v75 = 0;
  }

  linkedContacts = [changesCopy linkedContacts];

  storeCopy = v71;
  v72 = changesCopy;
  if (linkedContacts)
  {
    v25 = MEMORY[0x1E695DFA8];
    linkedContacts2 = [changesCopy linkedContacts];
    v27 = [v25 setWithArray:linkedContacts2];

    if ([v75 count])
    {
      [v27 minusSet:v75];
    }
  }

  else
  {
    v27 = 0;
  }

  v19 = v73;
  v28 = contactsCopy;
  v74 = v28;
  if ([v27 count])
  {
    allObjects = [v27 allObjects];
    v74 = [v28 arrayByAddingObjectsFromArray:allObjects];
  }

  v70 = v27;
  v30 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v30 setIgnoresGuardianRestrictions:restrictionsCopy | authorizedCopy];
  saveRequestIdentifier = [v30 saveRequestIdentifier];
  [v73 addObject:saveRequestIdentifier];

  v32 = [v75 count];
  v33 = [v28 count];
  if (v32 > 1 || v33 >= 2)
  {
    v68 = contactsCopy;
    if (v32 < 2 || v33 > 1)
    {
      if (v32 > 1 || v33 < 2)
      {
        mainStoreLinkedContacts3 = [v72 mainStoreLinkedContacts];
        v52 = [v28 isEqualToArray:mainStoreLinkedContacts3];

        if (v52)
        {
          v23 = 0;
          changesCopy = v72;
          contactsCopy = v68;
          goto LABEL_57;
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v53 = v28;
        v54 = [v53 countByEnumeratingWithState:&v81 objects:v94 count:16];
        v55 = v75;
        if (v54)
        {
          v56 = v54;
          v57 = *v82;
          do
          {
            for (i = 0; i != v56; ++i)
            {
              if (*v82 != v57)
              {
                objc_enumerationMutation(v53);
              }

              v59 = *(*(&v81 + 1) + 8 * i);
              if (([v55 containsObject:v59] & 1) == 0)
              {
                v60 = [v59 mutableCopy];
                [v30 linkContact:contactCopy toContact:v60];

                v55 = v75;
              }

              [v55 removeObject:v59];
            }

            v56 = [v53 countByEnumeratingWithState:&v81 objects:v94 count:16];
          }

          while (v56);
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v61 = v55;
        v62 = [v61 countByEnumeratingWithState:&v77 objects:v93 count:16];
        changesCopy = v72;
        if (v62)
        {
          v63 = v62;
          v64 = *v78;
          do
          {
            for (j = 0; j != v63; ++j)
            {
              if (*v78 != v64)
              {
                objc_enumerationMutation(v61);
              }

              v66 = [*(*(&v77 + 1) + 8 * j) mutableCopy];
              [v30 unlinkContact:v66];
            }

            v63 = [v61 countByEnumeratingWithState:&v77 objects:v93 count:16];
          }

          while (v63);
        }

        firstObject = [MEMORY[0x1E695CD58] unifyContacts:v74];
      }

      else
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v41 = v28;
        v42 = [v41 countByEnumeratingWithState:&v85 objects:v95 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v86;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v86 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v85 + 1) + 8 * k);
              identifier = [contactCopy identifier];
              identifier2 = [v46 identifier];
              v49 = [identifier isEqualToString:identifier2];

              if ((v49 & 1) == 0)
              {
                v50 = [v46 mutableCopy];
                [v30 linkContact:contactCopy toContact:v50];
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v85 objects:v95 count:16];
          }

          while (v43);
        }

        firstObject = [MEMORY[0x1E695CD58] unifyContacts:v74];
        storeCopy = v71;
        changesCopy = v72;
      }
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v34 = v75;
      v35 = [v34 countByEnumeratingWithState:&v89 objects:v96 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v90;
        do
        {
          for (m = 0; m != v36; ++m)
          {
            if (*v90 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = [*(*(&v89 + 1) + 8 * m) mutableCopy];
            [v30 unlinkContact:v39];
          }

          v36 = [v34 countByEnumeratingWithState:&v89 objects:v96 count:16];
        }

        while (v36);
      }

      firstObject = [v28 firstObject];
      changesCopy = v72;
    }

    v23 = [firstObject mutableCopy];

    v76 = 0;
    [storeCopy executeSaveRequest:v30 error:&v76];
    contactsCopy = v69;
    v19 = v73;
    goto LABEL_57;
  }

  v23 = 0;
  changesCopy = v72;
LABEL_57:

LABEL_58:

  return v23;
}

- (id)executeSaveWithConfiguration:(id)configuration saveDelegate:(id)delegate
{
  v19 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    selfCopy = self;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreLinkedContactSaveExecutor] %{public}p will execute save…", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  contact = [configurationCopy contact];
  mutableContact = [configurationCopy mutableContact];
  contactStore = [configurationCopy contactStore];
  editingLinkedContacts = [configurationCopy editingLinkedContacts];
  ignoresParentalRestrictions = [configurationCopy ignoresParentalRestrictions];
  saveWasAuthorized = [configurationCopy saveWasAuthorized];

  v14 = [(CNUIContactStoreLinkedContactSaveExecutor *)self saveLinkedContactChanges:contact mutableContact:mutableContact contactStore:contactStore editingLinkedContacts:editingLinkedContacts ignoresParentalRestrictions:ignoresParentalRestrictions saveWasAuthorized:saveWasAuthorized issuedSaveRequestIdentifiers:array];

  v15 = [[CNUIContactSaveResult alloc] initWithSuccess:v14 != 0 contact:v14 identifiersOfIssuedSaveRequests:array];

  return v15;
}

@end
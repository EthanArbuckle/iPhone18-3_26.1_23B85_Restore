@interface CNUIContactStoreLinkedContactSaveExecutor
- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4;
- (id)saveLinkedContactChanges:(id)a3 mutableContact:(id)a4 contactStore:(id)a5 editingLinkedContacts:(id)a6 ignoresParentalRestrictions:(BOOL)a7 saveWasAuthorized:(BOOL)a8 issuedSaveRequestIdentifiers:(id)a9;
@end

@implementation CNUIContactStoreLinkedContactSaveExecutor

- (id)saveLinkedContactChanges:(id)a3 mutableContact:(id)a4 contactStore:(id)a5 editingLinkedContacts:(id)a6 ignoresParentalRestrictions:(BOOL)a7 saveWasAuthorized:(BOOL)a8 issuedSaveRequestIdentifiers:(id)a9
{
  v9 = a8;
  v10 = a7;
  v97 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v19 = v18;
  if (!v17)
  {
    v23 = 0;
    goto LABEL_58;
  }

  v73 = v18;
  v71 = v16;
  v20 = [v14 mainStoreLinkedContacts];

  if (v20)
  {
    v21 = MEMORY[0x1E695DFA8];
    v22 = [v14 mainStoreLinkedContacts];
    v75 = [v21 setWithArray:v22];
  }

  else
  {
    v75 = 0;
  }

  v24 = [v14 linkedContacts];

  v16 = v71;
  v72 = v14;
  if (v24)
  {
    v25 = MEMORY[0x1E695DFA8];
    v26 = [v14 linkedContacts];
    v27 = [v25 setWithArray:v26];

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
  v28 = v17;
  v74 = v28;
  if ([v27 count])
  {
    v29 = [v27 allObjects];
    v74 = [v28 arrayByAddingObjectsFromArray:v29];
  }

  v70 = v27;
  v30 = objc_alloc_init(MEMORY[0x1E695CF88]);
  [v30 setIgnoresGuardianRestrictions:v10 | v9];
  v31 = [v30 saveRequestIdentifier];
  [v73 addObject:v31];

  v32 = [v75 count];
  v33 = [v28 count];
  if (v32 > 1 || v33 >= 2)
  {
    v68 = v17;
    if (v32 < 2 || v33 > 1)
    {
      if (v32 > 1 || v33 < 2)
      {
        v51 = [v72 mainStoreLinkedContacts];
        v52 = [v28 isEqualToArray:v51];

        if (v52)
        {
          v23 = 0;
          v14 = v72;
          v17 = v68;
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
                [v30 linkContact:v15 toContact:v60];

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
        v14 = v72;
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

        v40 = [MEMORY[0x1E695CD58] unifyContacts:v74];
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
              v47 = [v15 identifier];
              v48 = [v46 identifier];
              v49 = [v47 isEqualToString:v48];

              if ((v49 & 1) == 0)
              {
                v50 = [v46 mutableCopy];
                [v30 linkContact:v15 toContact:v50];
              }
            }

            v43 = [v41 countByEnumeratingWithState:&v85 objects:v95 count:16];
          }

          while (v43);
        }

        v40 = [MEMORY[0x1E695CD58] unifyContacts:v74];
        v16 = v71;
        v14 = v72;
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

      v40 = [v28 firstObject];
      v14 = v72;
    }

    v23 = [v40 mutableCopy];

    v76 = 0;
    [v16 executeSaveRequest:v30 error:&v76];
    v17 = v69;
    v19 = v73;
    goto LABEL_57;
  }

  v23 = 0;
  v14 = v72;
LABEL_57:

LABEL_58:

  return v23;
}

- (id)executeSaveWithConfiguration:(id)a3 saveDelegate:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = CNUILogContactCard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v18 = self;
    _os_log_impl(&dword_199A75000, v6, OS_LOG_TYPE_DEFAULT, "[CNUIContactStoreLinkedContactSaveExecutor] %{public}p will execute save…", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v5 contact];
  v9 = [v5 mutableContact];
  v10 = [v5 contactStore];
  v11 = [v5 editingLinkedContacts];
  v12 = [v5 ignoresParentalRestrictions];
  v13 = [v5 saveWasAuthorized];

  v14 = [(CNUIContactStoreLinkedContactSaveExecutor *)self saveLinkedContactChanges:v8 mutableContact:v9 contactStore:v10 editingLinkedContacts:v11 ignoresParentalRestrictions:v12 saveWasAuthorized:v13 issuedSaveRequestIdentifiers:v7];

  v15 = [[CNUIContactSaveResult alloc] initWithSuccess:v14 != 0 contact:v14 identifiersOfIssuedSaveRequests:v7];

  return v15;
}

@end
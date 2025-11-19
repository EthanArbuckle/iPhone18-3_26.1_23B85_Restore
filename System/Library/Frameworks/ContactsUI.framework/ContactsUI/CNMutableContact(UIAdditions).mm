@interface CNMutableContact(UIAdditions)
- (id)addAllPropertiesFromContact:()UIAdditions;
- (id)addProperties:()UIAdditions excludingProperties:fromContact:;
- (uint64_t)addContactToGroups:()UIAdditions inStore:request:;
- (uint64_t)deleteContactFromStore:()UIAdditions request:;
- (uint64_t)hasNonPersistedData;
- (uint64_t)removeContactFromGroups:()UIAdditions inStore:request:;
- (uint64_t)removePhoto;
- (uint64_t)saveContactInStore:()UIAdditions group:container:request:;
- (uint64_t)saveContactInStore:()UIAdditions groups:container:request:;
- (void)setBirthdays:()UIAdditions;
- (void)updateContactTypeWithPolicy:()UIAdditions;
- (void)updateImageInfoWithType:()UIAdditions;
@end

@implementation CNMutableContact(UIAdditions)

- (void)updateImageInfoWithType:()UIAdditions
{
  v2 = [MEMORY[0x1E695CD58] stringIdentifierForImageType:?];
  [a1 setImageType:v2];
}

- (uint64_t)removePhoto
{
  [a1 setImageData:0];
  [a1 setThumbnailImageData:0];
  [a1 setFullscreenImageData:0];
  [a1 setImageType:0];
  [a1 setImageHash:0];
  [a1 setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [a1 setMemojiMetadata:0];

  return [a1 setImageBackgroundColorsData:0];
}

- (void)setBirthdays:()UIAdditions
{
  v4 = [a3 _cn_filter:&__block_literal_global_139_31193];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 value];
    v7 = [v6 calendar];
    v8 = [v7 calendarIdentifier];
    v9 = [v8 isEqualToString:*MEMORY[0x1E695D850]];

    v10 = [v4 objectAtIndexedSubscript:1];
    v11 = [v10 value];

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = v6;
    }

    if (v9)
    {
      v13 = v6;
    }

    else
    {
      v13 = v11;
    }

LABEL_15:
    v21 = v13;

    v18 = v21;
    goto LABEL_17;
  }

  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v14 = [v5 value];
    v15 = [v14 calendar];
    v16 = [v15 calendarIdentifier];
    v17 = [v16 isEqualToString:*MEMORY[0x1E695D850]];

    if (v17)
    {
      v12 = 0;
    }

    else
    {
      v12 = v14;
    }

    if (v17)
    {
      v13 = v14;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_15;
  }

  v12 = 0;
  v18 = 0;
LABEL_17:
  v22 = v18;
  if ([v18 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else if ([v22 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = 0;
  }

  else
  {
    v19 = v22;
  }

  [a1 setBirthday:v19];
  if ([v12 month] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else if ([v12 day] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = v12;
  }

  [a1 setNonGregorianBirthday:v20];
}

- (uint64_t)deleteContactFromStore:()UIAdditions request:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"CNContact+UIAdditions.m" lineNumber:636 description:@"A store is needed here"];
  }

  v9 = CNUILogContactCard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349314;
    v18 = a1;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Deleting contact %{public}p from store %{public}@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 deleteContact:a1];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [a1 identifier];
      *buf = 138544130;
      v18 = v14;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      v24 = a1;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "[CNContact+UIAdditions] Could not delete contact with identifer %{public}@, error %{public}@, store %{public}@, full contact %@", buf, 0x2Au);
    }
  }

  return v10;
}

- (uint64_t)saveContactInStore:()UIAdditions groups:container:request:
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:a1 file:@"CNContact+UIAdditions.m" lineNumber:602 description:@"A store is needed here"];
  }

  v15 = CNUILogContactCard();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v40 = a1;
    v41 = 1024;
    LODWORD(v42) = v14 != 0;
    _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p with request? %d", buf, 0x12u);
  }

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  if (![a1 hasBeenPersisted] || (objc_msgSend(a1, "isSuggestedMe") & 1) != 0)
  {
    v16 = CNUILogContactCard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 identifier];
      v18 = [v13 type];
      *buf = 134349570;
      v40 = a1;
      v41 = 2114;
      v42 = v17;
      v43 = 2048;
      v44 = v18;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p by adding, to container with identifier %{public}@ type %ld", buf, 0x20u);
    }

    v19 = [v13 identifier];
    [v14 addContact:a1 toContainerWithIdentifier:v19];

    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_16:
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v36;
      do
      {
        v25 = 0;
        do
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v14 addMember:a1 toGroup:*(*(&v35 + 1) + 8 * v25++)];
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v23);
    }

    goto LABEL_24;
  }

  v20 = CNUILogContactCard();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v40 = a1;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p by updating", buf, 0xCu);
  }

  [v14 updateContact:a1];
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v26 = +[CNUIContactsEnvironment currentEnvironment];
  v27 = [v26 authorizationContext];

  v34 = 0;
  v28 = [v11 executeSaveRequest:v14 response:0 authorizationContext:v27 error:&v34];
  v29 = v34;
  if ((v28 & 1) == 0)
  {
    v30 = CNUILogContactCard();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v32 = [a1 identifier];
      *buf = 138544130;
      v40 = v32;
      v41 = 2114;
      v42 = v29;
      v43 = 2114;
      v44 = v11;
      v45 = 2112;
      v46 = a1;
      _os_log_error_impl(&dword_199A75000, v30, OS_LOG_TYPE_ERROR, "[CNContact+UIAdditions] Could not save contact with identifer %{public}@, error %{public}@, store %{public}@, full contact %@", buf, 0x2Au);
    }
  }

  return v28;
}

- (uint64_t)saveContactInStore:()UIAdditions group:container:request:
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4)
  {
    v17 = a4;
    v13 = MEMORY[0x1E695DEC8];
    v14 = a4;
    a4 = [v13 arrayWithObjects:&v17 count:1];
  }

  v15 = [a1 saveContactInStore:v10 groups:a4 container:v11 request:{v12, v17, v18}];

  return v15;
}

- (uint64_t)removeContactFromGroups:()UIAdditions inStore:request:
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9 && [v9 count])
  {
    if (!v10)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:a1 file:@"CNContact+UIAdditions.m" lineNumber:569 description:@"A store is needed here"];
    }

    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      v30 = a1;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Removing contact %{public}p from groups %@", buf, 0x16u);
    }

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        v17 = 0;
        do
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v11 removeMember:a1 fromGroup:*(*(&v25 + 1) + 8 * v17++)];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v15);
    }

    v24 = 0;
    v18 = [v10 executeSaveRequest:v11 error:&v24];
    v19 = v24;
    if ((v18 & 1) == 0)
    {
      v20 = CNUILogContactCard();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [a1 identifier];
        *buf = 138544386;
        v30 = v22;
        v31 = 2112;
        v32 = v13;
        v33 = 2114;
        v34 = v19;
        v35 = 2114;
        v36 = v10;
        v37 = 2112;
        v38 = a1;
        _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "[CNContact+UIAdditions] Could not remove contact with identifer %{public}@ from groups %@, error %{public}@, store %{public}@, full contact %@", buf, 0x34u);
      }
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (uint64_t)addContactToGroups:()UIAdditions inStore:request:
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v12 = 1;
  }

  else
  {
    if (!v10)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:a1 file:@"CNContact+UIAdditions.m" lineNumber:545 description:@"A store is needed here"];
    }

    v13 = CNUILogContactCard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      v30 = a1;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_199A75000, v13, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Adding contact %{public}p to groups %@", buf, 0x16u);
    }

    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695CF88]);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v11 addMember:a1 toGroup:*(*(&v25 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v16);
    }

    v24 = 0;
    v12 = [v10 executeSaveRequest:v11 error:&v24];
    v19 = v24;
    if ((v12 & 1) == 0)
    {
      v20 = CNUILogContactCard();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = [a1 identifier];
        *buf = 138544386;
        v30 = v22;
        v31 = 2112;
        v32 = v14;
        v33 = 2114;
        v34 = v19;
        v35 = 2114;
        v36 = v10;
        v37 = 2112;
        v38 = a1;
        _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "[CNContact+UIAdditions] Could not add contact with identifer %{public}@ to groups %@, error %{public}@, store %{public}@, full contact %@", buf, 0x34u);
      }
    }
  }

  return v12;
}

- (void)updateContactTypeWithPolicy:()UIAdditions
{
  v30 = a3;
  v4 = [a1 organizationName];
  v5 = [a1 snapshot];
  v6 = [v5 organizationName];

  v7 = [a1 givenName];
  v8 = [a1 snapshot];
  v9 = [v8 givenName];

  v10 = [a1 familyName];
  v11 = [a1 snapshot];
  v12 = [v11 familyName];

  v13 = [a1 middleName];
  v14 = [a1 snapshot];
  v15 = [v14 middleName];

  if (v4 == v6 && v7 == v9 && v10 == v12 && v13 == v15)
  {
    goto LABEL_23;
  }

  v16 = [a1 snapshot];
  if (v16)
  {
    v17 = [a1 snapshot];
    v18 = [v17 contactType];
  }

  else
  {
    v18 = [a1 contactType];
  }

  v19 = *MEMORY[0x1E6996568];
  v20 = [a1 givenName];
  if ((*(v19 + 16))(v19, v20))
  {
    v21 = [a1 familyName];
    if ((*(v19 + 16))(v19, v21))
    {
      v22 = [a1 middleName];
      v23 = (*(v19 + 16))(v19, v22) ^ 1;
    }

    else
    {
      LOBYTE(v23) = 1;
    }
  }

  else
  {
    LOBYTE(v23) = 1;
  }

  v24 = [a1 organizationName];
  v25 = (*(v19 + 16))(v19, v24);

  if (v18 == 1)
  {
    v26 = v23 & v25;
  }

  else
  {
    if (v18)
    {
      v27 = 0;
      goto LABEL_20;
    }

    v26 = v23 | v25;
  }

  v27 = v26 ^ 1;
LABEL_20:
  if (!v30 || ([MEMORY[0x1E696AD98] numberWithInteger:v27 & 1], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v30, "shouldSetValue:property:contact:replacementValue:", v28, *MEMORY[0x1E695C410], a1, 0), v28, v29))
  {
    [a1 setContactType:v27 & 1];
  }

LABEL_23:
}

- (id)addProperties:()UIAdditions excludingProperties:fromContact:
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v50 = a5;
  v10 = [MEMORY[0x1E695DF70] array];
  v44 = v8;
  v11 = [v8 mutableCopy];
  v43 = v9;
  [v11 removeObjectsInArray:v9];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *MEMORY[0x1E6996568];
    v15 = *v63;
    v46 = *MEMORY[0x1E6996568];
    v48 = *v63;
    do
    {
      v16 = 0;
      v47 = v13;
      do
      {
        if (*v63 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v16;
        v17 = *(*(&v62 + 1) + 8 * v16);
        v53 = [a1 valueForKey:v17];
        v18 = [v50 valueForKey:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = (*(v14 + 16))(v14, v18);
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          v51 = v18;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = (*(v14 + 16))(v14, v53);
          }

          else
          {
            v21 = 0;
          }

          if (v53)
          {
            v22 = v21;
          }

          else
          {
            v22 = 1;
          }

          v23 = objc_opt_respondsToSelector();
          if (v22)
          {
            v24 = v18;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              v25 = v24;
              v26 = [v25 countByEnumeratingWithState:&v58 objects:v67 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v59;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v59 != v28)
                    {
                      objc_enumerationMutation(v25);
                    }

                    v30 = MEMORY[0x1E695CE08];
                    v31 = [*(*(&v58 + 1) + 8 * i) identifier];
                    v32 = [v30 contactPropertyWithContactNoCopy:a1 propertyKey:v17 identifier:v31];

                    [v10 addObject:v32];
                  }

                  v27 = [v25 countByEnumeratingWithState:&v58 objects:v67 count:16];
                }

                while (v27);
                v24 = v25;
                goto LABEL_38;
              }

              v24 = v25;
            }

            else
            {
              v25 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:a1 propertyKey:v17 identifier:0];
              [v10 addObject:v25];
            }
          }

          else
          {
            v15 = v48;
            if ((v23 & 1) == 0)
            {
              goto LABEL_43;
            }

            v33 = [v53 mutableCopy];
            v34 = [v18 mutableCopy];
            v45 = v33;
            [v34 removeObjectsInArray:v33];
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v25 = v34;
            v35 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v55;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v55 != v37)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v39 = MEMORY[0x1E695CE08];
                  v40 = [*(*(&v54 + 1) + 8 * j) identifier];
                  v41 = [v39 contactPropertyWithContactNoCopy:a1 propertyKey:v17 identifier:v40];

                  [v10 addObject:v41];
                }

                v36 = [v25 countByEnumeratingWithState:&v54 objects:v66 count:16];
              }

              while (v36);
            }

            v24 = v45;
            [v45 addObjectsFromArray:v25];
LABEL_38:
            v14 = v46;
          }

          v13 = v47;
          v15 = v48;
          v18 = v51;
          if (v24)
          {
            [a1 setValue:v24 forKey:v17];

            v18 = v51;
          }
        }

LABEL_43:

        v16 = v52 + 1;
      }

      while (v52 + 1 != v13);
      v13 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)addAllPropertiesFromContact:()UIAdditions
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[CNContactView nameProperties];
  v6 = +[CNContactView allCardProperties];
  v12[1] = v6;
  v7 = +[CNContactView allImageProperties];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v8 _cn_flatten];

  v10 = [a1 addProperties:v9 excludingProperties:MEMORY[0x1E695E0F0] fromContact:v4];

  return v10;
}

- (uint64_t)hasNonPersistedData
{
  v3.receiver = a1;
  v3.super_class = &off_1F0E0BC20;
  if (objc_msgSendSuper2(&v3, sel_hasNonPersistedData))
  {
    return 1;
  }

  else
  {
    return [a1 hasChanges];
  }
}

@end
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
  [self setImageType:v2];
}

- (uint64_t)removePhoto
{
  [self setImageData:0];
  [self setThumbnailImageData:0];
  [self setFullscreenImageData:0];
  [self setImageType:0];
  [self setImageHash:0];
  [self setCropRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [self setMemojiMetadata:0];

  return [self setImageBackgroundColorsData:0];
}

- (void)setBirthdays:()UIAdditions
{
  v4 = [a3 _cn_filter:&__block_literal_global_139_31193];
  if ([v4 count] == 2)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    value = [v5 value];
    calendar = [value calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    v9 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    v10 = [v4 objectAtIndexedSubscript:1];
    value2 = [v10 value];

    if (v9)
    {
      v12 = value2;
    }

    else
    {
      v12 = value;
    }

    if (v9)
    {
      v13 = value;
    }

    else
    {
      v13 = value2;
    }

LABEL_15:
    v21 = v13;

    v18 = v21;
    goto LABEL_17;
  }

  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    value3 = [v5 value];
    calendar2 = [value3 calendar];
    calendarIdentifier2 = [calendar2 calendarIdentifier];
    v17 = [calendarIdentifier2 isEqualToString:*MEMORY[0x1E695D850]];

    if (v17)
    {
      v12 = 0;
    }

    else
    {
      v12 = value3;
    }

    if (v17)
    {
      v13 = value3;
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

  [self setBirthday:v19];
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

  [self setNonGregorianBirthday:v20];
}

- (uint64_t)deleteContactFromStore:()UIAdditions request:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContact+UIAdditions.m" lineNumber:636 description:@"A store is needed here"];
  }

  v9 = CNUILogContactCard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349314;
    selfCopy = self;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_199A75000, v9, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Deleting contact %{public}p from store %{public}@", buf, 0x16u);
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  [v8 deleteContact:self];
  v16 = 0;
  v10 = [v7 executeSaveRequest:v8 error:&v16];
  v11 = v16;
  if ((v10 & 1) == 0)
  {
    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      identifier = [self identifier];
      *buf = 138544130;
      selfCopy = identifier;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      selfCopy2 = self;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CNContact+UIAdditions.m" lineNumber:602 description:@"A store is needed here"];
  }

  v15 = CNUILogContactCard();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    selfCopy3 = self;
    v41 = 1024;
    LODWORD(v42) = v14 != 0;
    _os_log_impl(&dword_199A75000, v15, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p with request? %d", buf, 0x12u);
  }

  if (!v14)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695CF88]);
  }

  if (![self hasBeenPersisted] || (objc_msgSend(self, "isSuggestedMe") & 1) != 0)
  {
    v16 = CNUILogContactCard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v13 identifier];
      type = [v13 type];
      *buf = 134349570;
      selfCopy3 = self;
      v41 = 2114;
      v42 = identifier;
      v43 = 2048;
      v44 = type;
      _os_log_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p by adding, to container with identifier %{public}@ type %ld", buf, 0x20u);
    }

    identifier2 = [v13 identifier];
    [v14 addContact:self toContainerWithIdentifier:identifier2];

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

          [v14 addMember:self toGroup:*(*(&v35 + 1) + 8 * v25++)];
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
    selfCopy3 = self;
    _os_log_impl(&dword_199A75000, v20, OS_LOG_TYPE_DEFAULT, "[CNContact+UIAdditions] Saving contact %{public}p by updating", buf, 0xCu);
  }

  [v14 updateContact:self];
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_24:
  v26 = +[CNUIContactsEnvironment currentEnvironment];
  authorizationContext = [v26 authorizationContext];

  v34 = 0;
  v28 = [v11 executeSaveRequest:v14 response:0 authorizationContext:authorizationContext error:&v34];
  v29 = v34;
  if ((v28 & 1) == 0)
  {
    v30 = CNUILogContactCard();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [self identifier];
      *buf = 138544130;
      selfCopy3 = identifier3;
      v41 = 2114;
      v42 = v29;
      v43 = 2114;
      v44 = v11;
      v45 = 2112;
      selfCopy4 = self;
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

  v15 = [self saveContactInStore:v10 groups:a4 container:v11 request:{v12, v17, v18}];

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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CNContact+UIAdditions.m" lineNumber:569 description:@"A store is needed here"];
    }

    v12 = CNUILogContactCard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      selfCopy = self;
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

          [v11 removeMember:self fromGroup:*(*(&v25 + 1) + 8 * v17++)];
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
        identifier = [self identifier];
        *buf = 138544386;
        selfCopy = identifier;
        v31 = 2112;
        v32 = v13;
        v33 = 2114;
        v34 = v19;
        v35 = 2114;
        v36 = v10;
        v37 = 2112;
        selfCopy2 = self;
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"CNContact+UIAdditions.m" lineNumber:545 description:@"A store is needed here"];
    }

    v13 = CNUILogContactCard();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349314;
      selfCopy = self;
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

          [v11 addMember:self toGroup:*(*(&v25 + 1) + 8 * v18++)];
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
        identifier = [self identifier];
        *buf = 138544386;
        selfCopy = identifier;
        v31 = 2112;
        v32 = v14;
        v33 = 2114;
        v34 = v19;
        v35 = 2114;
        v36 = v10;
        v37 = 2112;
        selfCopy2 = self;
        _os_log_error_impl(&dword_199A75000, v20, OS_LOG_TYPE_ERROR, "[CNContact+UIAdditions] Could not add contact with identifer %{public}@ to groups %@, error %{public}@, store %{public}@, full contact %@", buf, 0x34u);
      }
    }
  }

  return v12;
}

- (void)updateContactTypeWithPolicy:()UIAdditions
{
  v30 = a3;
  organizationName = [self organizationName];
  snapshot = [self snapshot];
  organizationName2 = [snapshot organizationName];

  givenName = [self givenName];
  snapshot2 = [self snapshot];
  givenName2 = [snapshot2 givenName];

  familyName = [self familyName];
  snapshot3 = [self snapshot];
  familyName2 = [snapshot3 familyName];

  middleName = [self middleName];
  snapshot4 = [self snapshot];
  middleName2 = [snapshot4 middleName];

  if (organizationName == organizationName2 && givenName == givenName2 && familyName == familyName2 && middleName == middleName2)
  {
    goto LABEL_23;
  }

  snapshot5 = [self snapshot];
  if (snapshot5)
  {
    snapshot6 = [self snapshot];
    contactType = [snapshot6 contactType];
  }

  else
  {
    contactType = [self contactType];
  }

  v19 = *MEMORY[0x1E6996568];
  givenName3 = [self givenName];
  if ((*(v19 + 16))(v19, givenName3))
  {
    familyName3 = [self familyName];
    if ((*(v19 + 16))(v19, familyName3))
    {
      middleName3 = [self middleName];
      v23 = (*(v19 + 16))(v19, middleName3) ^ 1;
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

  organizationName3 = [self organizationName];
  v25 = (*(v19 + 16))(v19, organizationName3);

  if (contactType == 1)
  {
    v26 = v23 & v25;
  }

  else
  {
    if (contactType)
    {
      v27 = 0;
      goto LABEL_20;
    }

    v26 = v23 | v25;
  }

  v27 = v26 ^ 1;
LABEL_20:
  if (!v30 || ([MEMORY[0x1E696AD98] numberWithInteger:v27 & 1], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v30, "shouldSetValue:property:contact:replacementValue:", v28, *MEMORY[0x1E695C410], self, 0), v28, v29))
  {
    [self setContactType:v27 & 1];
  }

LABEL_23:
}

- (id)addProperties:()UIAdditions excludingProperties:fromContact:
{
  v69 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v50 = a5;
  array = [MEMORY[0x1E695DF70] array];
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
        v53 = [self valueForKey:v17];
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
                    identifier = [*(*(&v58 + 1) + 8 * i) identifier];
                    v32 = [v30 contactPropertyWithContactNoCopy:self propertyKey:v17 identifier:identifier];

                    [array addObject:v32];
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
              v25 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:self propertyKey:v17 identifier:0];
              [array addObject:v25];
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
                  identifier2 = [*(*(&v54 + 1) + 8 * j) identifier];
                  v41 = [v39 contactPropertyWithContactNoCopy:self propertyKey:v17 identifier:identifier2];

                  [array addObject:v41];
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
            [self setValue:v24 forKey:v17];

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

  return array;
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
  _cn_flatten = [v8 _cn_flatten];

  v10 = [self addProperties:_cn_flatten excludingProperties:MEMORY[0x1E695E0F0] fromContact:v4];

  return v10;
}

- (uint64_t)hasNonPersistedData
{
  v3.receiver = self;
  v3.super_class = &off_1F0E0BC20;
  if (objc_msgSendSuper2(&v3, sel_hasNonPersistedData))
  {
    return 1;
  }

  else
  {
    return [self hasChanges];
  }
}

@end
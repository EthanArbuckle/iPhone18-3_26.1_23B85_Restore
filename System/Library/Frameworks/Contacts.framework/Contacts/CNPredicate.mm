@interface CNPredicate
+ (id)_convertSuggestions:(uint64_t)a1 withSortOrder:(void *)a2 mutableObjects:;
+ (id)os_log;
- (CNPredicate)initWithCoder:(id)a3;
- (CNPredicate)initWithPredicate:(id)a3;
- (NSString)description;
- (id)suggestedContactsWithSortOrder:(void *)a3 keysToFetch:(unsigned int)a4 mutableObjects:(void *)a5 service:(void *)a6 error:;
- (void)_convertContactMatches:(void *)a3 withService:(void *)a4 intoSuggestions:;
- (void)encodeWithCoder:(id)a3;
- (void)mainStoreDidFetchContacts:(id)a3 unifiedFetch:(BOOL)a4;
@end

@implementation CNPredicate

+ (id)os_log
{
  if (os_log_cn_once_token_0_1 != -1)
  {
    +[CNPredicate os_log];
  }

  v3 = os_log_cn_once_object_0_1;

  return v3;
}

uint64_t __32__CNPredicate_Suggested__os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.predicates", "suggested-contact");
  v1 = os_log_cn_once_object_2;
  os_log_cn_once_object_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_convertSuggestions:(uint64_t)a1 withSortOrder:(void *)a2 mutableObjects:
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 mainStoreLinkedIdentifier];

        if (v10)
        {
          v19 = @"CNContactMainStoreLinkedIdentifier";
          v11 = [v9 mainStoreLinkedIdentifier];
          v20 = v11;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        }

        v12 = [v9 contact];
        v13 = CNContactFromSGContact(v12, v10);

        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)suggestedContactsWithSortOrder:(void *)a3 keysToFetch:(unsigned int)a4 mutableObjects:(void *)a5 service:(void *)a6 error:
{
  v76 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v8 = a5;
  v53 = v8;
  if (a1)
  {
    if (!v8)
    {
      if (CNGuardOSLog_cn_once_token_0_0 != -1)
      {
        [CNPredicate suggestedContactsWithSortOrder:keysToFetch:mutableObjects:service:error:];
      }

      v9 = CNGuardOSLog_cn_once_object_0_0;
      if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_0, OS_LOG_TYPE_FAULT))
      {
        [CNPredicate suggestedContactsWithSortOrder:v9 keysToFetch:? mutableObjects:? service:? error:?];
      }
    }

    v10 = &unk_1F098FE90;
    v52 = a1;
    if ([v52 conformsToProtocol:v10])
    {
      v11 = v52;
    }

    else
    {
      v11 = 0;
    }

    v51 = v11;

    v12 = [MEMORY[0x1E695DF70] array];
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy__0;
    v72 = __Block_byref_object_dispose__0;
    v73 = 0;
    v13 = [MEMORY[0x1E69966E8] currentEnvironment];
    v14 = [v13 watchdog];
    v15 = [v14 statusForEvent:*MEMORY[0x1E6996600]] == 0;

    if (!v15)
    {
      objc_opt_class();
      v16 = +[CNPredicate os_log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CNPredicate suggestedContactsWithSortOrder:v16 keysToFetch:? mutableObjects:? service:? error:?];
      }

      v17 = MEMORY[0x1E695E0F0];
LABEL_61:

      _Block_object_dispose(&v68, 8);
      goto LABEL_62;
    }

    v48 = objc_alloc_init(MEMORY[0x1E6996838]);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke;
    v67[3] = &unk_1E7412358;
    v67[5] = &v68;
    v67[4] = v52;
    v18 = [v67 copy];
    v19 = objc_opt_self();
    v20 = _Block_copy(v19);
    [v48 push:v20];

    if ([v52 augmentMainStoreResults])
    {
      v21 = objc_opt_new();
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_91;
      v65[3] = &unk_1E7412380;
      v22 = v21;
      v66 = v22;
      [v50 enumerateObjectsUsingBlock:v65];
      if (suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_token_6 != -1)
      {
        [CNPredicate suggestedContactsWithSortOrder:keysToFetch:mutableObjects:service:error:];
      }

      v42 = v22;
      v43 = suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6;
      if ([v43 intersectsKeyVector:v22])
      {
        [v52 mainStoreContactIdentifiers];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        obj = v62 = 0u;
        v23 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
        if (v23)
        {
          v49 = *v62;
          while (2)
          {
            for (i = 0; i != v23; i = (i + 1))
            {
              if (*v62 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v61 + 1) + 8 * i);
              v60 = 0;
              v26 = [v53 contactMatchesWithContactIdentifier:v25 limitTo:1 error:&v60];
              v27 = v60;
              v28 = v60;
              if (v28)
              {
                v34 = v28;
                objc_storeStrong(v69 + 5, v27);
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to augment contact with identifier %@ with suggestions, error: %@", v25, v69[5], v42, v43];

                goto LABEL_37;
              }

              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v29 = v26;
              v30 = [v29 countByEnumeratingWithState:&v56 objects:v74 count:16];
              if (v30)
              {
                v31 = *v57;
                do
                {
                  for (j = 0; j != v30; ++j)
                  {
                    if (*v57 != v31)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v33 = [CNContactSuggestionMatch suggestionFromContactMatch:*(*(&v56 + 1) + 8 * j)];
                    [v33 setMainStoreLinkedIdentifier:v25];
                    [v12 addObject:v33];
                  }

                  v30 = [v29 countByEnumeratingWithState:&v56 objects:v74 count:16];
                }

                while (v30);
              }
            }

            v23 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    if (v69[5])
    {
      goto LABEL_40;
    }

    if (objc_opt_respondsToSelector())
    {
      v35 = v69 + 5;
      v55 = v69[5];
      v36 = [v51 suggestionsWithSortOrder:a2 mutableObjects:a4 service:v53 error:&v55];
      objc_storeStrong(v35, v55);
      if ([v36 count])
      {
        [v12 addObjectsFromArray:v36];
LABEL_52:
        v16 = v23;
        goto LABEL_53;
      }

      if (!v69[5])
      {
        goto LABEL_52;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to find suggested contacts, error: %@", v69[5]];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_40:
        v16 = v23;
LABEL_54:
        if (v69[5])
        {
          objc_opt_class();
          v39 = +[CNPredicate os_log];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [CNPredicate suggestedContactsWithSortOrder:v16 keysToFetch:v39 mutableObjects:? service:? error:?];
          }

          v17 = 0;
          if (a6)
          {
            *a6 = v69[5];
          }
        }

        else
        {
          v17 = [CNPredicate _convertSuggestions:v12 withSortOrder:? mutableObjects:?];
        }

        [v48 popAllWithHandler:&__block_literal_global_110];
        v40 = objc_opt_self();

        goto LABEL_61;
      }

      v37 = v69 + 5;
      v54 = v69[5];
      v36 = [v51 sgContactMatchesWithSortOrder:a2 mutableObjects:a4 service:v53 error:&v54];
      objc_storeStrong(v37, v54);
      if ([v36 count])
      {
        [(CNPredicate *)v52 _convertContactMatches:v36 withService:v53 intoSuggestions:v12];
        goto LABEL_52;
      }

      if (!v69[5])
      {
        goto LABEL_52;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CONTACTS: failed to fetch suggested contact matches, error: %@", v69[5]];
    }

    v16 = v38;

LABEL_53:
    goto LABEL_54;
  }

  v17 = 0;
LABEL_62:

  return v17;
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) code] == 10)
  {
    v2 = [*(*(*(a1 + 40) + 8) + 40) domain];
    v3 = [v2 isEqual:*MEMORY[0x1E69992F8]];

    if (v3)
    {
      objc_opt_class();
      v4 = +[CNPredicate os_log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_cold_1(v4);
      }

      v5 = [MEMORY[0x1E69966E8] currentEnvironment];
      v6 = [v5 watchdog];
      [v6 recordExceptionForEvent:*MEMORY[0x1E6996600]];
    }
  }
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_91(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = v7;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {

LABEL_7:
    v5 = *(a1 + 32);
    v3 = [v4 _cn_requiredKeys];
    [v5 unionKeyVector:v3];
LABEL_8:

    goto LABEL_9;
  }

  v6 = [v4 conformsToProtocol:&unk_1F0998880];

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_9:
}

void __98__CNPredicate_Suggested__suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error___block_invoke_2()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"emailAddresses";
  v4[1] = @"phoneNumbers";
  v4[2] = @"postalAddresses";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v1 = [CNContactKeyVector keyVectorWithKeys:v0];
  v2 = [v1 copy];
  v3 = suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6;
  suggestedContactsWithSortOrder_keysToFetch_mutableObjects_service_error__cn_once_object_6 = v2;
}

uint64_t __21__CNPredicate_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "predicates");
  v1 = os_log_cn_once_object_0_1;
  os_log_cn_once_object_0_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNPredicate)initWithPredicate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNPredicate;
  v5 = [(CNPredicate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    cn_predicate = v5->_cn_predicate;
    v5->_cn_predicate = v6;

    v5->_augmentMainStoreResults = 1;
    v8 = v5;
  }

  return v5;
}

- (CNPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CNPredicate;
  v5 = [(CNPredicate *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cn_predicate"];
    v7 = [v6 copy];
    cn_predicate = v5->_cn_predicate;
    v5->_cn_predicate = v7;

    v5->_augmentMainStoreResults = [v4 decodeBoolForKey:@"_augmentMainStoreResults"];
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_mainStoreContactIdentifiers"];
    v13 = [v12 copy];
    mainStoreContactIdentifiers = v5->_mainStoreContactIdentifiers;
    v5->_mainStoreContactIdentifiers = v13;

    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cn_predicate forKey:{@"_cn_predicate", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_augmentMainStoreResults forKey:@"_augmentMainStoreResults"];
  [v4 encodeObject:self->_mainStoreContactIdentifiers forKey:@"_mainStoreContactIdentifiers"];
}

- (void)mainStoreDidFetchContacts:(id)a3 unifiedFetch:(BOOL)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke;
    v8[3] = &unk_1E7412B30;
    v8[4] = self;
    v9 = a4;
    v7 = [v6 _cn_flatMap:v8];
    [(CNPredicate *)self setMainStoreContactIdentifiers:v7];
  }
}

id __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*MEMORY[0x1E6996558] + 16))())
  {
    v4 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__CNPredicate_mainStoreDidFetchContacts_unifiedFetch___block_invoke_cold_1(v4);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (*(a1 + 40) == 1 && [v3 isUnified])
    {
      v6 = [v3 linkedContacts];
      v7 = [v6 valueForKey:@"identifier"];
    }

    else
    {
      v6 = [v3 identifier];
      v9[0] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    }

    v5 = v7;
  }

  return v5;
}

- (NSString)description
{
  v2 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v3 = [v2 build];

  return v3;
}

- (void)_convertContactMatches:(void *)a3 withService:(void *)a4 intoSuggestions:
{
  if (a1)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a2 _cn_map:&__block_literal_global_39];
    [CNContactSuggestionMatch fetchLinkedIdentifiersForContactSuggestionMatches:v8 fromSuggestionService:v7];

    [v6 addObjectsFromArray:v8];
  }
}

- (void)suggestedContactsWithSortOrder:(uint64_t)a1 keysToFetch:(NSObject *)a2 mutableObjects:service:error:.cold.5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v2, 0xCu);
}

@end
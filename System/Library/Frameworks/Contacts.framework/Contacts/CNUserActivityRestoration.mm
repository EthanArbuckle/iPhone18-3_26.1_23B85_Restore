@interface CNUserActivityRestoration
+ (BOOL)exactNameMatchFoundForPayload:(id)payload withContact:(id)contact;
+ (id)contactsForServerUUIDs:(id)ds additionalKeysToFetch:(id)fetch contactStore:(id)store error:(id *)error;
+ (id)contactsGivenPayload:(id)payload keysToFetch:(id)fetch contactStore:(id)store error:(id *)error;
+ (id)contactsToCreateGivenPayload:(id)payload error:(id *)error;
+ (id)exactMatchForNameAndAtLeastOneHandleFromPayload:(id)payload containerIdentifiers:(id)identifiers contactStore:(id)store;
+ (id)os_log;
+ (id)searchQueryGivenPayload:(id)payload;
@end

@implementation CNUserActivityRestoration

+ (id)os_log
{
  if (os_log_cn_once_token_0_13 != -1)
  {
    +[CNUserActivityRestoration os_log];
  }

  v3 = os_log_cn_once_object_0_13;

  return v3;
}

uint64_t __35__CNUserActivityRestoration_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "userActivityRestoration");
  v1 = os_log_cn_once_object_0_13;
  os_log_cn_once_object_0_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)searchQueryGivenPayload:(id)payload
{
  v3 = [payload objectForKeyedSubscript:@"search-query"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F094DAB0;
  }

  return v5;
}

+ (id)contactsToCreateGivenPayload:(id)payload error:(id *)error
{
  v5 = [payload objectForKeyedSubscript:@"vcard"];
  v6 = [CNContactVCardSerialization contactsWithData:v5 error:error];

  return v6;
}

+ (id)contactsGivenPayload:(id)payload keysToFetch:(id)fetch contactStore:(id)store error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  fetchCopy = fetch;
  storeCopy = store;
  v13 = [payloadCopy objectForKeyedSubscript:@"carddav-uuids"];
  v25 = 0;
  v14 = [self contactsForServerUUIDs:v13 additionalKeysToFetch:fetchCopy contactStore:storeCopy error:&v25];
  v15 = v25;
  if (v15)
  {
    v16 = v15;
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNUserActivityRestoration contactsGivenPayload:keysToFetch:contactStore:error:];
    }

    if (error)
    {
      v18 = v16;
      v19 = 0;
      *error = v16;
    }

    else
    {
      v19 = 0;
    }
  }

  else if ((*(*MEMORY[0x1E6996530] + 16))())
  {
    v24 = 0;
    v20 = [self contactBestMatchingPayload:payloadCopy additionalKeysToFetch:fetchCopy contactStore:storeCopy error:&v24];
    v16 = v24;
    if (v16)
    {
      os_log2 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
      {
        +[CNUserActivityRestoration contactsGivenPayload:keysToFetch:contactStore:error:];
      }

      if (error)
      {
        v22 = v16;
        v19 = 0;
        *error = v16;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (v20)
    {
      v26[0] = v20;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v19 = v14;
    v16 = 0;
  }

  return v19;
}

+ (id)contactsForServerUUIDs:(id)ds additionalKeysToFetch:(id)fetch contactStore:(id)store error:(id *)error
{
  v19[2] = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  storeCopy = store;
  if ([ds count])
  {
    v18[0] = @"identifier";
    v18[1] = @"externalUUID";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v19[0] = v11;
    v19[1] = fetchCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    _cn_flatten = [v12 _cn_flatten];

    v14 = [[CNContactFetchRequest alloc] initWithKeysToFetch:_cn_flatten];
    [(CNContactFetchRequest *)v14 setUnifyResults:0];
    v15 = [storeCopy executeFetchRequest:v14 error:error];
    value = [v15 value];
  }

  else
  {
    value = 0;
  }

  return value;
}

+ (BOOL)exactNameMatchFoundForPayload:(id)payload withContact:(id)contact
{
  payloadCopy = payload;
  contactCopy = contact;
  v7 = [payloadCopy objectForKeyedSubscript:@"organization-name"];
  v8 = v7;
  if (v7 && [v7 length])
  {
    organizationName = [contactCopy organizationName];
    v10 = [(__CFString *)organizationName isEqualToString:v8];
  }

  else
  {
    v11 = [payloadCopy objectForKeyedSubscript:@"first-name"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1F094DAB0;
    }

    organizationName = v13;

    v14 = [payloadCopy objectForKeyedSubscript:@"last-name"];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1F094DAB0;
    }

    v17 = v16;

    givenName = [contactCopy givenName];
    v19 = givenName;
    if (!givenName)
    {
      givenName = &stru_1F094DAB0;
    }

    if ([(__CFString *)givenName isEqualToString:organizationName])
    {
      familyName = [contactCopy familyName];
      v21 = familyName;
      if (!familyName)
      {
        familyName = &stru_1F094DAB0;
      }

      v10 = [(__CFString *)familyName isEqualToString:v17];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

+ (id)exactMatchForNameAndAtLeastOneHandleFromPayload:(id)payload containerIdentifiers:(id)identifiers contactStore:(id)store
{
  v80[5] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  identifiersCopy = identifiers;
  storeCopy = store;
  if ([payloadCopy count])
  {
    os_log4 = [payloadCopy objectForKeyedSubscript:@"phone-numbers"];
    v12 = [payloadCopy objectForKeyedSubscript:@"email-addresses"];
    if (os_log4)
    {
      v13 = os_log4;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v65 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    v15 = [v13 arrayByAddingObjectsFromArray:v14];
    array = [MEMORY[0x1E695DF70] array];
    v64 = v15;
    if (v15 && [v15 count])
    {
      v17 = [CNContactFetchRequest alloc];
      v80[0] = @"emailAddresses";
      v80[1] = @"phoneNumbers";
      v80[2] = @"givenName";
      v80[3] = @"familyName";
      v80[4] = @"organizationName";
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:5];
      v19 = [(CNContactFetchRequest *)v17 initWithKeysToFetch:v18];

      v20 = [CNContact predicateForContactsMatchingHandleStrings:v15 inContainersWithIdentifiers:identifiersCopy];
      [(CNContactFetchRequest *)v19 setPredicate:v20];

      v75 = 0;
      v21 = [storeCopy executeFetchRequest:v19 error:&v75];
      v22 = v75;
      if (v22)
      {
        v23 = v22;
        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
        {
          +[CNUserActivityRestoration exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:];
        }

        v25 = 0;
        goto LABEL_58;
      }

      v63 = os_log4;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      value = [v21 value];
      v45 = [value countByEnumeratingWithState:&v71 objects:v79 count:16];
      if (v45)
      {
        v46 = v45;
        v59 = v19;
        v60 = identifiersCopy;
        v62 = storeCopy;
        v47 = *v72;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v72 != v47)
            {
              objc_enumerationMutation(value);
            }

            v49 = *(*(&v71 + 1) + 8 * i);
            value2 = [v21 value];
            v51 = [value2 objectForKeyedSubscript:v49];
            [array addObjectsFromArray:v51];
          }

          v46 = [value countByEnumeratingWithState:&v71 objects:v79 count:16];
        }

        while (v46);
        v23 = v59;
        identifiersCopy = v60;
        storeCopy = v62;
      }

      else
      {
        v23 = v19;
      }

      goto LABEL_46;
    }

    v61 = storeCopy;
    v63 = os_log4;
    v26 = [CNContactFetchRequest alloc];
    v78[0] = @"givenName";
    v78[1] = @"familyName";
    v78[2] = @"organizationName";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
    v23 = [(CNContactFetchRequest *)v26 initWithKeysToFetch:v27];

    v28 = [payloadCopy objectForKeyedSubscript:@"organization-name"];
    v21 = v28;
    if (v28 && [v28 length])
    {
      v29 = [CNContact predicateForContactsWithOrganizationName:v21];
      [(CNContactFetchRequest *)v23 setPredicate:v29];
    }

    else
    {
      v30 = [payloadCopy objectForKeyedSubscript:@"first-name"];
      v31 = v30;
      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = &stru_1F094DAB0;
      }

      v29 = v32;

      v33 = [payloadCopy objectForKeyedSubscript:@"last-name"];
      v34 = v33;
      if (v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = &stru_1F094DAB0;
      }

      v36 = v35;

      v77[0] = v36;
      v77[1] = v29;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
      v38 = [v37 componentsJoinedByString:@" "];

      if (!v38 || ![v38 length])
      {
        os_log2 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
        {
          +[CNUserActivityRestoration exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:];
        }

        v25 = 0;
        storeCopy = v61;
        goto LABEL_57;
      }

      v39 = [CNContact predicateForContactsMatchingName:v38];
      [(CNContactFetchRequest *)v23 setPredicate:v39];
    }

    v70 = 0;
    storeCopy = v61;
    value = [v61 executeFetchRequest:v23 error:&v70];
    v41 = v70;
    if (!v41)
    {
      v40Value = [value value];
      [array addObjectsFromArray:v40Value];

LABEL_46:
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v23 = array;
      v25 = [(CNContactFetchRequest *)v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v25)
      {
        v53 = storeCopy;
        v54 = identifiersCopy;
        v55 = *v67;
        while (2)
        {
          for (j = 0; j != v25; j = j + 1)
          {
            if (*v67 != v55)
            {
              objc_enumerationMutation(v23);
            }

            v57 = *(*(&v66 + 1) + 8 * j);
            if ([self exactNameMatchFoundForPayload:payloadCopy withContact:v57])
            {
              v25 = v57;
              goto LABEL_56;
            }
          }

          v25 = [(CNContactFetchRequest *)v23 countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

LABEL_56:
        identifiersCopy = v54;
        storeCopy = v53;
      }

      goto LABEL_57;
    }

    v42 = v41;
    os_log3 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      +[CNUserActivityRestoration exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:];
    }

    v25 = 0;
    v23 = v42;
LABEL_57:
    os_log4 = v63;
LABEL_58:

    goto LABEL_59;
  }

  os_log4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log4, OS_LOG_TYPE_ERROR))
  {
    +[CNUserActivityRestoration exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:];
  }

  v25 = 0;
LABEL_59:

  return v25;
}

+ (void)contactsGivenPayload:keysToFetch:contactStore:error:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1954A0000, v1, OS_LOG_TYPE_ERROR, "Error fetching contacts for serverUUIDs:%{public}@ : %@", v2, 0x16u);
}

+ (void)contactsGivenPayload:keysToFetch:contactStore:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)exactMatchForNameAndAtLeastOneHandleFromPayload:containerIdentifiers:contactStore:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end
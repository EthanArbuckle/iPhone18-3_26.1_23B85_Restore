@interface CNContactStore
+ (id)contactStore;
+ (id)suggestedContactStore;
- (id)__contactsForHandles:(id)a3 keyDescriptors:(id)a4 alwaysUnifyLabeledValues:(BOOL)a5;
@end

@implementation CNContactStore

+ (id)contactStore
{
  if ([a1 phoneKit_isAuthorized])
  {
    v2 = objc_alloc_init(CNContactStoreConfiguration);
    [v2 setIncludeLocalContacts:1];
    if (_os_feature_enabled_impl())
    {
      [v2 setIncludeAcceptedIntroductions:1];
    }

    v3 = [[CNContactStore alloc] initWithConfiguration:v2];
  }

  else
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v4 contactStore:v5];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)suggestedContactStore
{
  if ([a1 phoneKit_isAuthorized])
  {
    v2 = objc_alloc_init(CNContactStoreConfiguration);
    [v2 setIncludeLocalContacts:1];
    if (+[CNContact suggestionsEnabled])
    {
      [v2 setIncludeSuggestedContacts:1];
      [v2 setIncludeDonatedContacts:1];
    }

    if (_os_feature_enabled_impl())
    {
      [v2 setIncludeAcceptedIntroductions:1];
    }

    v3 = [[CNContactStore alloc] initWithConfiguration:v2];
  }

  else
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CNContactStore(PhoneKit) *)v4 contactStore:v5];
    }

    v3 = 0;
  }

  return v3;
}

- (id)__contactsForHandles:(id)a3 keyDescriptors:(id)a4 alwaysUnifyLabeledValues:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v29 = +[NSMutableDictionary dictionary];
  if ([v7 count])
  {
    [CNContact predicateForContactsMatchingHandleStrings:v7];
    v26 = v34 = 0;
    v27 = v8;
    v9 = [CNContactStore unifiedContactsMatchingPredicate:"unifiedContactsMatchingPredicate:keysToFetch:error:" keysToFetch:? error:?];
    v25 = v34;
    v28 = v7;
    v10 = [NSSet setWithArray:v7];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 phoneNumbers];
          v18 = [v17 firstObject];
          v19 = [v18 value];
          v20 = [v19 stringValue];

          if (!v20)
          {
            v21 = [v16 emailAddresses];
            v22 = [v21 firstObject];
            v20 = [v22 value];
          }

          if ([v20 length] && objc_msgSend(v10, "containsObject:", v20))
          {
            v35 = v16;
            v23 = [NSArray arrayWithObjects:&v35 count:1];
            [v29 setObject:v23 forKeyedSubscript:v20];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v13);
    }

    v8 = v27;
    v7 = v28;
  }

  return v29;
}

@end
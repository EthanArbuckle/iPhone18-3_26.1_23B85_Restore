@interface CNContactStore
+ (id)contactStore;
+ (id)suggestedContactStore;
- (id)__contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values;
@end

@implementation CNContactStore

+ (id)contactStore
{
  if ([self phoneKit_isAuthorized])
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
  if ([self phoneKit_isAuthorized])
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

- (id)__contactsForHandles:(id)handles keyDescriptors:(id)descriptors alwaysUnifyLabeledValues:(BOOL)values
{
  handlesCopy = handles;
  descriptorsCopy = descriptors;
  v29 = +[NSMutableDictionary dictionary];
  if ([handlesCopy count])
  {
    [CNContact predicateForContactsMatchingHandleStrings:handlesCopy];
    v26 = v34 = 0;
    v27 = descriptorsCopy;
    v9 = [CNContactStore unifiedContactsMatchingPredicate:"unifiedContactsMatchingPredicate:keysToFetch:error:" keysToFetch:? error:?];
    v25 = v34;
    v28 = handlesCopy;
    v10 = [NSSet setWithArray:handlesCopy];
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
          phoneNumbers = [v16 phoneNumbers];
          firstObject = [phoneNumbers firstObject];
          value = [firstObject value];
          stringValue = [value stringValue];

          if (!stringValue)
          {
            emailAddresses = [v16 emailAddresses];
            firstObject2 = [emailAddresses firstObject];
            stringValue = [firstObject2 value];
          }

          if ([stringValue length] && objc_msgSend(v10, "containsObject:", stringValue))
          {
            v35 = v16;
            v23 = [NSArray arrayWithObjects:&v35 count:1];
            [v29 setObject:v23 forKeyedSubscript:stringValue];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v13);
    }

    descriptorsCopy = v27;
    handlesCopy = v28;
  }

  return v29;
}

@end
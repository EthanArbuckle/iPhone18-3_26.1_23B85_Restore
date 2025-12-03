@interface CNPropertyGroupsDataSource
- (CNPropertyGroupsDataSource)initWithMutableContact:(id)contact contactStore:(id)store policy:(id)policy linkedPolicies:(id)policies prohibitedKeys:(id)keys;
- (Class)groupClassForProperty:(id)property;
- (id)allDisplayPropertyItemsForPropertyKeys:(id)keys;
- (id)allDisplayPropertyItemsFromGroups:(id)groups;
- (id)propertyGroupsForKeys:(id)keys;
- (void)buildPropertyGroups;
@end

@implementation CNPropertyGroupsDataSource

- (id)allDisplayPropertyItemsFromGroups:(id)groups
{
  v28 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = groupsCopy;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        displayItems = [v9 displayItems];
        v11 = [displayItems countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(displayItems);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [array addObject:v15];
              }
            }

            v12 = [displayItems countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)allDisplayPropertyItemsForPropertyKeys:(id)keys
{
  v4 = [(CNPropertyGroupsDataSource *)self propertyGroupsForKeys:keys];
  v5 = [(CNPropertyGroupsDataSource *)self allDisplayPropertyItemsFromGroups:v4];

  return v5;
}

- (id)propertyGroupsForKeys:(id)keys
{
  v20 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(keysCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        propertyGroups = [(CNPropertyGroupsDataSource *)self propertyGroups];
        v13 = [propertyGroups objectForKeyedSubscript:v11];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (Class)groupClassForProperty:(id)property
{
  propertyCopy = property;
  if (([propertyCopy isEqualToString:*MEMORY[0x1E695C1E0]] & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C3F8]) & 1) == 0 && (objc_msgSend(propertyCopy, "isEqualToString:", *MEMORY[0x1E695C370]) & 1) == 0)
  {
    [propertyCopy isEqualToString:*MEMORY[0x1E695C200]];
  }

  v4 = objc_opt_class();

  return v4;
}

- (void)buildPropertyGroups
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__CNPropertyGroupsDataSource_buildPropertyGroups__block_invoke;
  aBlock[3] = &unk_1E74E7158;
  aBlock[4] = self;
  v16 = dictionary;
  v22 = v16;
  v4 = _Block_copy(aBlock);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = +[CNContactView allCardProperties];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = *MEMORY[0x1E695C200];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isEqualToString:{v9, v16}])
        {
          v12 = MEMORY[0x1E695CE70];
          mutableContact = [(CNPropertyGroupsDataSource *)self mutableContact];
          LODWORD(v12) = [v12 isWhitelistedContact:mutableContact];

          if (!v12)
          {
            continue;
          }
        }

        prohibitedPropertyKeys = [(CNPropertyGroupsDataSource *)self prohibitedPropertyKeys];
        v15 = [prohibitedPropertyKeys containsObject:v11];

        if ((v15 & 1) == 0)
        {
          v4[2](v4, v11);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  v4[2](v4, *MEMORY[0x1E695C370]);
  [(CNPropertyGroupsDataSource *)self setPropertyGroups:v16];
}

void __49__CNPropertyGroupsDataSource_buildPropertyGroups__block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) policy];
  v4 = [v3 _cnui_maximumNumberOfValuesForProperty:v11];

  if (v4)
  {
    v5 = [*(a1 + 32) groupClassForProperty:v11];
    v6 = [*(a1 + 32) mutableContact];
    v7 = [*(a1 + 32) contactStore];
    v8 = [*(a1 + 32) policy];
    v9 = [*(a1 + 32) linkedPoliciesByContactIdentifier];
    v10 = [v5 groupForProperty:v11 contact:v6 store:v7 policy:v8 linkedPolicies:v9];

    [*(a1 + 40) setObject:v10 forKeyedSubscript:v11];
  }
}

- (CNPropertyGroupsDataSource)initWithMutableContact:(id)contact contactStore:(id)store policy:(id)policy linkedPolicies:(id)policies prohibitedKeys:(id)keys
{
  contactCopy = contact;
  storeCopy = store;
  policyCopy = policy;
  policiesCopy = policies;
  keysCopy = keys;
  v22.receiver = self;
  v22.super_class = CNPropertyGroupsDataSource;
  v17 = [(CNPropertyGroupsDataSource *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mutableContact, contact);
    objc_storeStrong(&v18->_contactStore, store);
    objc_storeStrong(&v18->_policy, policy);
    objc_storeStrong(&v18->_linkedPoliciesByContactIdentifier, policies);
    objc_storeStrong(&v18->_prohibitedPropertyKeys, keys);
    v19 = v18;
  }

  return v18;
}

@end
@interface NSPropertyDescription(VSSubscriptionAdditions)
- (id)vs_JSONKey;
- (id)vs_JSONValueTransformer;
- (id)vs_JSONValueTransformerName;
- (id)vs_expectedJSONValueClasses;
- (id)vs_propertyListKey;
- (id)vs_propertyListValueTransformer;
- (id)vs_propertyListValueTransformerName;
- (id)vs_subscriptionKeyPath;
- (uint64_t)vs_isRequiredJSONValue;
- (uint64_t)vs_suitablePurposes;
- (void)vs_setExpectedJSONValueClasses:()VSSubscriptionAdditions;
- (void)vs_setJSONKey:()VSSubscriptionAdditions;
- (void)vs_setJSONValueTransformerName:()VSSubscriptionAdditions;
- (void)vs_setPropertyListKey:()VSSubscriptionAdditions;
- (void)vs_setPropertyListValueTransformerName:()VSSubscriptionAdditions;
- (void)vs_setRequiredJSONValue:()VSSubscriptionAdditions;
- (void)vs_setSubscriptionKeyPath:()VSSubscriptionAdditions;
- (void)vs_setSuitablePurposes:()VSSubscriptionAdditions;
- (void)vs_setUserInfoValue:()VSSubscriptionAdditions forKey:;
@end

@implementation NSPropertyDescription(VSSubscriptionAdditions)

- (void)vs_setUserInfoValue:()VSSubscriptionAdditions forKey:
{
  v10 = a3;
  v6 = a4;
  v7 = [a1 userInfo];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  if (v10)
  {
    [v8 setObject:v10 forKey:v6];
  }

  else
  {
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      [v8 removeObjectForKey:v6];
    }
  }

  [a1 setUserInfo:v8];
}

- (id)vs_subscriptionKeyPath
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSSubscriptionKeyPathUserInfoKey"];

  return v2;
}

- (void)vs_setSubscriptionKeyPath:()VSSubscriptionAdditions
{
  v4 = [a3 copy];
  [a1 vs_setUserInfoValue:v4 forKey:@"VSSubscriptionKeyPathUserInfoKey"];
}

- (uint64_t)vs_suitablePurposes
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSSubscriptionSuitablePurposesInfoKey"];

  if (v2)
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 7;
  }

  return v3;
}

- (void)vs_setSuitablePurposes:()VSSubscriptionAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [a1 vs_setUserInfoValue:v2 forKey:@"VSSubscriptionSuitablePurposesInfoKey"];
}

- (id)vs_propertyListKey
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSPropertyListKeyUserInfoKey"];

  return v2;
}

- (void)vs_setPropertyListKey:()VSSubscriptionAdditions
{
  v4 = [a3 copy];
  [a1 vs_setUserInfoValue:v4 forKey:@"VSPropertyListKeyUserInfoKey"];
}

- (id)vs_propertyListValueTransformerName
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSPropertyListValueTransformerUserInfoKey"];

  return v2;
}

- (void)vs_setPropertyListValueTransformerName:()VSSubscriptionAdditions
{
  v4 = [a3 copy];
  [a1 vs_setUserInfoValue:v4 forKey:@"VSPropertyListValueTransformerUserInfoKey"];
}

- (id)vs_propertyListValueTransformer
{
  v1 = [a1 vs_propertyListValueTransformerName];
  if (v1)
  {
    v2 = [MEMORY[0x277CCAE68] valueTransformerForName:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vs_JSONKey
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSJSONKeyUserInfoKey"];

  return v2;
}

- (void)vs_setJSONKey:()VSSubscriptionAdditions
{
  v4 = [a3 copy];
  [a1 vs_setUserInfoValue:v4 forKey:@"VSJSONKeyUserInfoKey"];
}

- (uint64_t)vs_isRequiredJSONValue
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSRequiredJSONValueUserInfoKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)vs_setRequiredJSONValue:()VSSubscriptionAdditions
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 vs_setUserInfoValue:v2 forKey:@"VSRequiredJSONValueUserInfoKey"];
}

- (id)vs_expectedJSONValueClasses
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [a1 userInfo];
  v4 = [v3 objectForKey:@"VSExpectedJSONValueClassUserInfoKey"];

  if ([v4 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = NSClassFromString(*(*(&v12 + 1) + 8 * i));
          if (v10)
          {
            [v2 addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  if (![v2 count])
  {
    [v2 addObject:objc_opt_class()];
  }

  return v2;
}

- (void)vs_setExpectedJSONValueClasses:()VSSubscriptionAdditions
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = NSStringFromClass(*(*(&v14 + 1) + 8 * v10));
        v12 = [v11 copy];
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  [a1 vs_setUserInfoValue:v13 forKey:@"VSExpectedJSONValueClassUserInfoKey"];
}

- (id)vs_JSONValueTransformerName
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:@"VSJSONValueTransformerUserInfoKey"];

  return v2;
}

- (void)vs_setJSONValueTransformerName:()VSSubscriptionAdditions
{
  v4 = [a3 copy];
  [a1 vs_setUserInfoValue:v4 forKey:@"VSJSONValueTransformerUserInfoKey"];
}

- (id)vs_JSONValueTransformer
{
  v1 = [a1 vs_JSONValueTransformerName];
  if (v1)
  {
    v2 = [MEMORY[0x277CCAE68] valueTransformerForName:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end
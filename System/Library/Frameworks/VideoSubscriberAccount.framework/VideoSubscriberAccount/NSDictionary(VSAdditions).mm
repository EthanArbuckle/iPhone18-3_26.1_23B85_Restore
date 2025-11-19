@interface NSDictionary(VSAdditions)
- (id)vs_arrayForKey:()VSAdditions;
- (id)vs_arrayOfDictionariesForKey:()VSAdditions;
- (id)vs_arrayOfKindOfClass:()VSAdditions forKey:;
- (id)vs_arrayOfNumbersForKey:()VSAdditions;
- (id)vs_arrayOfStringsForKey:()VSAdditions;
- (id)vs_dictionaryForKey:()VSAdditions;
- (id)vs_numberForKey:()VSAdditions;
- (id)vs_objectForCaseInsensitiveKey:()VSAdditions;
- (id)vs_objectForNormalizedKey:()VSAdditions;
- (id)vs_objectOfClass:()VSAdditions forKey:;
- (id)vs_stringForKey:()VSAdditions;
- (uint64_t)vs_BOOLForKey:()VSAdditions;
@end

@implementation NSDictionary(VSAdditions)

- (id)vs_objectOfClass:()VSAdditions forKey:
{
  v4 = [a1 objectForKey:a4];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (id)vs_dictionaryForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_arrayForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_arrayOfKindOfClass:()VSAdditions forKey:
{
  v5 = [a1 vs_arrayForKey:a4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__NSDictionary_VSAdditions__vs_arrayOfKindOfClass_forKey___block_invoke;
  v9[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16lu32l8;
  v9[4] = a3;
  v6 = [MEMORY[0x277CCAC30] predicateWithBlock:v9];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  return v7;
}

- (id)vs_arrayOfStringsForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_arrayOfKindOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_arrayOfNumbersForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_arrayOfKindOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_arrayOfDictionariesForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_arrayOfKindOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_numberForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (uint64_t)vs_BOOLForKey:()VSAdditions
{
  v1 = [a1 vs_numberForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (id)vs_stringForKey:()VSAdditions
{
  v4 = a3;
  v5 = [a1 vs_objectOfClass:objc_opt_class() forKey:v4];

  return v5;
}

- (id)vs_objectForCaseInsensitiveKey:()VSAdditions
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v4 caseInsensitiveCompare:{v10, v13}])
        {
          v11 = [a1 objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)vs_objectForNormalizedKey:()VSAdditions
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 allKeys];
  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v7 = [v4 componentsSeparatedByCharactersInSet:v6];
  v8 = [v7 componentsJoinedByString:&stru_284DD5B48];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v20 = a1;
    v21 = v4;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [v14 componentsSeparatedByCharactersInSet:v15];
        v17 = [v16 componentsJoinedByString:&stru_284DD5B48];

        if (![v8 caseInsensitiveCompare:v17])
        {
          v18 = [v20 objectForKey:v14];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v18 = 0;
LABEL_11:
    v4 = v21;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end
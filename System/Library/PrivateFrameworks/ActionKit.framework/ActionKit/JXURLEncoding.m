@interface JXURLEncoding
+ (id)encodedDictionary:(id)a3;
+ (id)encodedString:(id)a3;
+ (id)formEncodedDictionary:(id)a3;
+ (id)formEncodedString:(id)a3;
+ (void)encodeObject:(id)a3 withKey:(id)a4 andSubKey:(id)a5 intoArray:(id)a6;
@end

@implementation JXURLEncoding

+ (void)encodeObject:(id)a3 withKey:(id)a4 andSubKey:(id)a5 intoArray:(id)a6
{
  v54 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v14 = v12;
  v15 = a6;
  if (v10 && [v11 length])
  {
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = [a1 encodedString:v11];
      v18 = [a1 encodedString:v14];
      v19 = [v16 initWithFormat:@"%@[%@]", v17, v18];
    }

    else
    {
      v19 = [a1 encodedString:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v14;
      v42 = v11;
      v20 = [v10 allKeys];
      v21 = [v20 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v49;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v49 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v48 + 1) + 8 * i);
            v28 = [v13 objectForKey:v27];
            [a1 encodeObject:v28 withKey:v19 andSubKey:v27 intoArray:v15];
          }

          v24 = [v22 countByEnumeratingWithState:&v48 objects:v53 count:16];
        }

        while (v24);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v36 = objc_alloc(MEMORY[0x277CCACA8]);
          v37 = [v10 stringValue];
          v38 = [v36 initWithFormat:@"%@=%@", v19, v37];
          [v15 addObject:v38];

          v13 = v10;
        }

        else
        {
          v39 = [a1 encodedString:v10];
          v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@=%@", v19, v39];
          [v15 addObject:v40];

          v13 = v10;
        }

        goto LABEL_25;
      }

      v41 = v14;
      v42 = v11;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v10;
      v29 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v45;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v45 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v44 + 1) + 8 * j);
            v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@[]", v19];
            [a1 encodeObject:v33 withKey:v34 andSubKey:0 intoArray:v15];
          }

          v30 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v30);
      }

      v13 = v10;
    }

    v14 = v41;
    v11 = v42;
LABEL_25:
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)formEncodedDictionary:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 encodedDictionary:v4];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

+ (id)encodedDictionary:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v6 = [v4 allKeys];
    v7 = [v6 sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v4 objectForKey:{v13, v18}];
          [a1 encodeObject:v14 withKey:v13 andSubKey:0 intoArray:v5];
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v15 = [v5 componentsJoinedByString:@"&"];
  }

  else
  {
    v15 = &stru_2850323E8;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)formEncodedString:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [a1 encodedString:v4];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

+ (id)encodedString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":/?#[]@!$&'()*+, ="}];;
    v5 = [v4 invertedSet];
    v6 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v5];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

@end
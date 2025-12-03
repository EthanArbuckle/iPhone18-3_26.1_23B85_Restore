@interface JXURLEncoding
+ (id)encodedDictionary:(id)dictionary;
+ (id)encodedString:(id)string;
+ (id)formEncodedDictionary:(id)dictionary;
+ (id)formEncodedString:(id)string;
+ (void)encodeObject:(id)object withKey:(id)key andSubKey:(id)subKey intoArray:(id)array;
@end

@implementation JXURLEncoding

+ (void)encodeObject:(id)object withKey:(id)key andSubKey:(id)subKey intoArray:(id)array
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  subKeyCopy = subKey;
  v13 = objectCopy;
  v14 = subKeyCopy;
  arrayCopy = array;
  if (objectCopy && [keyCopy length])
  {
    if (v14)
    {
      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v17 = [self encodedString:keyCopy];
      v18 = [self encodedString:v14];
      v19 = [v16 initWithFormat:@"%@[%@]", v17, v18];
    }

    else
    {
      v19 = [self encodedString:keyCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v14;
      v42 = keyCopy;
      allKeys = [objectCopy allKeys];
      v21 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

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
            [self encodeObject:v28 withKey:v19 andSubKey:v27 intoArray:arrayCopy];
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
          stringValue = [objectCopy stringValue];
          v38 = [v36 initWithFormat:@"%@=%@", v19, stringValue];
          [arrayCopy addObject:v38];

          v13 = objectCopy;
        }

        else
        {
          v39 = [self encodedString:objectCopy];
          v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@=%@", v19, v39];
          [arrayCopy addObject:v40];

          v13 = objectCopy;
        }

        goto LABEL_25;
      }

      v41 = v14;
      v42 = keyCopy;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = objectCopy;
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
            [self encodeObject:v33 withKey:v34 andSubKey:0 intoArray:arrayCopy];
          }

          v30 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        }

        while (v30);
      }

      v13 = objectCopy;
    }

    v14 = v41;
    keyCopy = v42;
LABEL_25:
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)formEncodedDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v5 = [self encodedDictionary:dictionaryCopy];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

+ (id)encodedDictionary:(id)dictionary
{
  v23 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    allKeys = [dictionaryCopy allKeys];
    v7 = [allKeys sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

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
          v14 = [dictionaryCopy objectForKey:{v13, v18}];
          [self encodeObject:v14 withKey:v13 andSubKey:0 intoArray:v5];
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

+ (id)formEncodedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [self encodedString:stringCopy];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"%20" withString:@"+"];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

+ (id)encodedString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@":/?#[]@!$&'()*+, ="}];;
    invertedSet = [v4 invertedSet];
    v6 = [stringCopy stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
  }

  else
  {
    v6 = &stru_2850323E8;
  }

  return v6;
}

@end
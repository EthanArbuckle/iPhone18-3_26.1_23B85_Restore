@interface IKDeserializer
+ (BOOL)token:(id *)a3 andTokenSecret:(id *)a4 fromQlineString:(id)a5;
+ (id)_URLForKey:(id)a3 inDictionary:(id)a4;
+ (id)_dateForKey:(id)a3 inDictionary:(id)a4;
+ (id)_normalizedObjectForKey:(id)a3 inDictionary:(id)a4;
+ (id)objectFromJSONString:(id)a3;
@end

@implementation IKDeserializer

+ (id)_dateForKey:(id)a3 inDictionary:(id)a4
{
  v4 = [a1 _normalizedObjectForKey:a3 inDictionary:a4];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = [v5 unsignedIntegerValue];
  v7 = MEMORY[0x277CBEAA8];

  return [v7 dateWithTimeIntervalSince1970:v6];
}

+ (id)_URLForKey:(id)a3 inDictionary:(id)a4
{
  v4 = [a1 _normalizedObjectForKey:a3 inDictionary:a4];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = MEMORY[0x277CBEBC0];

  return [v6 URLWithString:v5];
}

+ (id)_normalizedObjectForKey:(id)a3 inDictionary:(id)a4
{
  v4 = [a4 objectForKey:a3];
  if (v4 == [MEMORY[0x277CBEB68] null])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (id)objectFromJSONString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 dataUsingEncoding:4];
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(&cfstr_Jkarray.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v6 = [MEMORY[0x277CBEB18] array];
  if (![v5 count])
  {
    return v6;
  }

  v7 = 0;
  while (1)
  {
    v8 = [v5 objectAtIndex:v7];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSClassFromString(&cfstr_Jkdictionary.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v9 = [v8 objectForKey:@"type"];
    if ([v9 isEqualToString:@"error"])
    {
      break;
    }

    if ([v9 isEqualToString:@"user"])
    {
      v10 = objc_alloc_init(IKUser);
      -[IKUser setUserID:](v10, "setUserID:", [objc_msgSend(a1 _normalizedObjectForKey:@"user_id" inDictionary:{v8), "unsignedIntegerValue"}]);
      -[IKUser setUsername:](v10, "setUsername:", [a1 _normalizedObjectForKey:@"username" inDictionary:v8]);
      -[IKUser setSubscribed:](v10, "setSubscribed:", [objc_msgSend(a1 _normalizedObjectForKey:@"subscription_is_active" inDictionary:{v8), "BOOLValue"}]);
LABEL_15:
      [v6 addObject:v10];

      goto LABEL_16;
    }

    if ([v9 isEqualToString:@"bookmark"])
    {
      v10 = objc_alloc_init(IKBookmark);
      -[IKUser setBookmarkID:](v10, "setBookmarkID:", [objc_msgSend(a1 _normalizedObjectForKey:@"bookmark_id" inDictionary:{v8), "integerValue"}]);
      -[IKUser setURL:](v10, "setURL:", [a1 _URLForKey:@"url" inDictionary:v8]);
      -[IKUser setTitle:](v10, "setTitle:", [a1 _normalizedObjectForKey:@"title" inDictionary:v8]);
      -[IKUser setDescr:](v10, "setDescr:", [a1 _normalizedObjectForKey:@"description" inDictionary:v8]);
      -[IKUser setDate:](v10, "setDate:", [a1 _dateForKey:@"time" inDictionary:v8]);
      -[IKUser setStarred:](v10, "setStarred:", [objc_msgSend(a1 _normalizedObjectForKey:@"starred" inDictionary:{v8), "BOOLValue"}]);
      -[IKUser setPrivateSource:](v10, "setPrivateSource:", [a1 _normalizedObjectForKey:@"private_source" inDictionary:v8]);
      -[IKUser setHashString:](v10, "setHashString:", [a1 _normalizedObjectForKey:@"hash" inDictionary:v8]);
      [objc_msgSend(a1 _normalizedObjectForKey:@"progress" inDictionary:{v8), "floatValue"}];
      [(IKUser *)v10 setProgress:v11];
      -[IKUser setProgressDate:](v10, "setProgressDate:", [a1 _dateForKey:@"progress_timestamp" inDictionary:v8]);
      goto LABEL_15;
    }

    if ([v9 isEqualToString:@"folder"])
    {
      v10 = objc_alloc_init(IKFolder);
      -[IKUser setFolderID:](v10, "setFolderID:", [objc_msgSend(a1 _normalizedObjectForKey:@"folder_id" inDictionary:{v8), "integerValue"}]);
      -[IKUser setTitle:](v10, "setTitle:", [a1 _normalizedObjectForKey:@"title" inDictionary:v8]);
      -[IKUser setSyncToMobile:](v10, "setSyncToMobile:", [objc_msgSend(a1 _normalizedObjectForKey:@"sync_to_mobile" inDictionary:{v8), "BOOLValue"}]);
      -[IKUser setPosition:](v10, "setPosition:", [objc_msgSend(a1 _normalizedObjectForKey:@"position" inDictionary:{v8), "unsignedIntegerValue"}]);
      goto LABEL_15;
    }

LABEL_16:
    if (++v7 >= [v5 count])
    {
      return v6;
    }
  }

  v13 = [objc_msgSend(v8 objectForKey:{@"error_code", "integerValue"}];
  v14 = [v8 objectForKey:@"message"];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:@"message"];
  v16 = MEMORY[0x277CCA9B8];

  return [v16 errorWithDomain:@"com.matthiasplappert.InstapaperKit" code:v13 userInfo:v15];
}

+ (BOOL)token:(id *)a3 andTokenSecret:(id *)a4 fromQlineString:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [a5 componentsSeparatedByString:@"&"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * v11) componentsSeparatedByString:@"="];
        if ([v12 count] == 2)
        {
          v13 = [v12 objectAtIndex:0];
          v14 = [v12 objectAtIndex:1];
          v15 = [v13 isEqualToString:@"oauth_token"];
          v16 = a3;
          if ((v15 & 1) != 0 || (v17 = [v13 isEqualToString:@"oauth_token_secret"], v16 = a4, v17))
          {
            *v16 = v14;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (*a3 && *a4)
  {
    result = 1;
  }

  else
  {
    result = 0;
    *a3 = 0;
    *a4 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end
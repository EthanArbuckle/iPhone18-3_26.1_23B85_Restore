@interface IKDeserializer
+ (BOOL)token:(id *)token andTokenSecret:(id *)secret fromQlineString:(id)string;
+ (id)_URLForKey:(id)key inDictionary:(id)dictionary;
+ (id)_dateForKey:(id)key inDictionary:(id)dictionary;
+ (id)_normalizedObjectForKey:(id)key inDictionary:(id)dictionary;
+ (id)objectFromJSONString:(id)string;
@end

@implementation IKDeserializer

+ (id)_dateForKey:(id)key inDictionary:(id)dictionary
{
  v4 = [self _normalizedObjectForKey:key inDictionary:dictionary];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  v7 = MEMORY[0x277CBEAA8];

  return [v7 dateWithTimeIntervalSince1970:unsignedIntegerValue];
}

+ (id)_URLForKey:(id)key inDictionary:(id)dictionary
{
  v4 = [self _normalizedObjectForKey:key inDictionary:dictionary];
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

+ (id)_normalizedObjectForKey:(id)key inDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:key];
  if (v4 == [MEMORY[0x277CBEB68] null])
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (id)objectFromJSONString:(id)string
{
  if (!string)
  {
    return 0;
  }

  v4 = [string dataUsingEncoding:4];
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

  array = [MEMORY[0x277CBEB18] array];
  if (![v5 count])
  {
    return array;
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
      -[IKUser setUserID:](v10, "setUserID:", [objc_msgSend(self _normalizedObjectForKey:@"user_id" inDictionary:{v8), "unsignedIntegerValue"}]);
      -[IKUser setUsername:](v10, "setUsername:", [self _normalizedObjectForKey:@"username" inDictionary:v8]);
      -[IKUser setSubscribed:](v10, "setSubscribed:", [objc_msgSend(self _normalizedObjectForKey:@"subscription_is_active" inDictionary:{v8), "BOOLValue"}]);
LABEL_15:
      [array addObject:v10];

      goto LABEL_16;
    }

    if ([v9 isEqualToString:@"bookmark"])
    {
      v10 = objc_alloc_init(IKBookmark);
      -[IKUser setBookmarkID:](v10, "setBookmarkID:", [objc_msgSend(self _normalizedObjectForKey:@"bookmark_id" inDictionary:{v8), "integerValue"}]);
      -[IKUser setURL:](v10, "setURL:", [self _URLForKey:@"url" inDictionary:v8]);
      -[IKUser setTitle:](v10, "setTitle:", [self _normalizedObjectForKey:@"title" inDictionary:v8]);
      -[IKUser setDescr:](v10, "setDescr:", [self _normalizedObjectForKey:@"description" inDictionary:v8]);
      -[IKUser setDate:](v10, "setDate:", [self _dateForKey:@"time" inDictionary:v8]);
      -[IKUser setStarred:](v10, "setStarred:", [objc_msgSend(self _normalizedObjectForKey:@"starred" inDictionary:{v8), "BOOLValue"}]);
      -[IKUser setPrivateSource:](v10, "setPrivateSource:", [self _normalizedObjectForKey:@"private_source" inDictionary:v8]);
      -[IKUser setHashString:](v10, "setHashString:", [self _normalizedObjectForKey:@"hash" inDictionary:v8]);
      [objc_msgSend(self _normalizedObjectForKey:@"progress" inDictionary:{v8), "floatValue"}];
      [(IKUser *)v10 setProgress:v11];
      -[IKUser setProgressDate:](v10, "setProgressDate:", [self _dateForKey:@"progress_timestamp" inDictionary:v8]);
      goto LABEL_15;
    }

    if ([v9 isEqualToString:@"folder"])
    {
      v10 = objc_alloc_init(IKFolder);
      -[IKUser setFolderID:](v10, "setFolderID:", [objc_msgSend(self _normalizedObjectForKey:@"folder_id" inDictionary:{v8), "integerValue"}]);
      -[IKUser setTitle:](v10, "setTitle:", [self _normalizedObjectForKey:@"title" inDictionary:v8]);
      -[IKUser setSyncToMobile:](v10, "setSyncToMobile:", [objc_msgSend(self _normalizedObjectForKey:@"sync_to_mobile" inDictionary:{v8), "BOOLValue"}]);
      -[IKUser setPosition:](v10, "setPosition:", [objc_msgSend(self _normalizedObjectForKey:@"position" inDictionary:{v8), "unsignedIntegerValue"}]);
      goto LABEL_15;
    }

LABEL_16:
    if (++v7 >= [v5 count])
    {
      return array;
    }
  }

  v13 = [objc_msgSend(v8 objectForKey:{@"error_code", "integerValue"}];
  v14 = [v8 objectForKey:@"message"];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v14 forKey:@"message"];
  v16 = MEMORY[0x277CCA9B8];

  return [v16 errorWithDomain:@"com.matthiasplappert.InstapaperKit" code:v13 userInfo:v15];
}

+ (BOOL)token:(id *)token andTokenSecret:(id *)secret fromQlineString:(id)string
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [string componentsSeparatedByString:@"&"];
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
          tokenCopy = token;
          if ((v15 & 1) != 0 || (v17 = [v13 isEqualToString:@"oauth_token_secret"], tokenCopy = secret, v17))
          {
            *tokenCopy = v14;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  if (*token && *secret)
  {
    result = 1;
  }

  else
  {
    result = 0;
    *token = 0;
    *secret = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

@end
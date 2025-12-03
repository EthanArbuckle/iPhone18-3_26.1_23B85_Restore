@interface ABVCardActivityAlertSerialization
+ (id)dictionaryWithType:(id)type info:(id)info;
+ (id)infoFromDictionary:(id)dictionary;
+ (id)stringWithType:(id)type info:(id)info;
+ (id)typeFromDictionary:(id)dictionary;
+ (void)parseString:(id)string intoTypeAndInfo:(id)info;
@end

@implementation ABVCardActivityAlertSerialization

+ (id)stringWithType:(id)type info:(id)info
{
  v4 = [self dictionaryWithType:type info:info];

  return [ABVCardActivityAlertSerializer serializeDictionary:v4];
}

+ (id)dictionaryWithType:(id)type info:(id)info
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (type)
  {
    if ([type caseInsensitiveCompare:@"com.apple.activityalert.call"])
    {
      if ([type caseInsensitiveCompare:@"com.apple.activityalert.text"])
      {
        typeCopy = type;
      }

      else
      {
        typeCopy = @"text";
      }
    }

    else
    {
      typeCopy = @"call";
    }

    [dictionary setObject:typeCopy forKey:@"type"];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ABVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke;
  v9[3] = &unk_1E7CCD788;
  v9[4] = dictionary;
  [info enumerateKeysAndObjectsUsingBlock:v9];
  return dictionary;
}

uint64_t __61__ABVCardActivityAlertSerialization_dictionaryWithType_info___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3)
{
  if ([(__CFString *)a2 caseInsensitiveCompare:@"sound"])
  {
    if ([(__CFString *)a2 caseInsensitiveCompare:@"vibration"])
    {
      v6 = a2;
    }

    else
    {
      v6 = @"vib";
    }
  }

  else
  {
    v6 = @"snd";
  }

  v7 = *(a1 + 32);

  return [v7 setObject:a3 forKey:v6];
}

+ (void)parseString:(id)string intoTypeAndInfo:(id)info
{
  v6 = [self activityAlertWithString:string];
  v7 = [self typeFromDictionary:v6];
  v8 = [self infoFromDictionary:v6];
  v9 = *(info + 2);

  v9(info, v7, v8);
}

+ (id)typeFromDictionary:(id)dictionary
{
  result = [dictionary objectForKeyedSubscript:@"type"];
  if (result)
  {
    v4 = result;
    if ([result caseInsensitiveCompare:@"call"])
    {
      if ([v4 caseInsensitiveCompare:@"text"])
      {
        return v4;
      }

      else
      {
        return @"com.apple.activityalert.text";
      }
    }

    else
    {
      return @"com.apple.activityalert.call";
    }
  }

  return result;
}

+ (id)infoFromDictionary:(id)dictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ABVCardActivityAlertSerialization_infoFromDictionary___block_invoke;
  v6[3] = &unk_1E7CCD788;
  v6[4] = dictionary;
  [dictionary enumerateKeysAndObjectsUsingBlock:v6];
  return dictionary;
}

uint64_t __56__ABVCardActivityAlertSerialization_infoFromDictionary___block_invoke(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v4 = a2;
  result = [(__CFString *)a2 caseInsensitiveCompare:@"type"];
  if (result)
  {
    if ([(__CFString *)v4 caseInsensitiveCompare:@"snd"])
    {
      result = [(__CFString *)v4 caseInsensitiveCompare:@"vib"];
      if (result)
      {
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        v4 = @"vibration";
      }
    }

    else
    {
      v4 = @"sound";
    }

    v7 = *(a1 + 32);

    return [v7 setObject:a3 forKey:v4];
  }

  return result;
}

@end
@interface VOTElementUniqueIdentification
+ (id)identificationFromElement:(id)element;
+ (id)identificationFromKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOTElementUniqueIdentification

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  hashKey = [(VOTElementUniqueIdentification *)self hashKey];
  [v4 setHashKey:hashKey];

  return v4;
}

+ (id)identificationFromKey:(id)key
{
  keyCopy = key;
  v4 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  [v4 setHashKey:keyCopy];

  return v4;
}

+ (id)identificationFromElement:(id)element
{
  elementCopy = element;
  uiElement = [elementCopy uiElement];
  isApplication = [elementCopy isApplication];
  bundleIdentifier = [elementCopy bundleIdentifier];
  if ((isApplication & 1) == 0)
  {
    v7 = [uiElement stringWithAXAttribute:2001];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"|" withString:&stru_1001CBF90];

    v9 = [uiElement stringWithAXAttribute:2031];
    [uiElement rectWithAXAttribute:2003];
    v11 = v10;
    v13 = v12;
    v14 = [uiElement numberWithAXAttribute:2004];
    [v14 unsignedLongLongValue];

    v15 = _AXTraitsRemoveTrait();
    v16 = [uiElement stringWithAXAttribute:2041];
    v17 = [NSNumber numberWithUnsignedLongLong:v15];
    v26.width = v11;
    v26.height = v13;
    v18 = NSStringFromSize(v26);
    v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@", bundleIdentifier, v8, v17, v16, v18, v9];

    application = [elementCopy application];
    LODWORD(v17) = [application isSystemApp];

    if (v17)
    {
      bundleIdentifier2 = [elementCopy bundleIdentifier];
      if ([bundleIdentifier2 length])
      {
        v22 = [v19 stringByAppendingFormat:@"|%@", bundleIdentifier2];

        v19 = v22;
      }
    }

    bundleIdentifier = v19;
  }

  v23 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  [v23 setHashKey:bundleIdentifier];

  return v23;
}

- (unint64_t)hash
{
  hashKey = [(VOTElementUniqueIdentification *)self hashKey];
  v3 = [hashKey hash];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = VOTElementUniqueIdentification;
  v3 = [(VOTElementUniqueIdentification *)&v7 description];
  hashKey = [(VOTElementUniqueIdentification *)self hashKey];
  v5 = [NSString stringWithFormat:@"%@: %@", v3, hashKey];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    hashKey = [equalCopy hashKey];
    hashKey2 = [(VOTElementUniqueIdentification *)self hashKey];
    if ([hashKey2 isEqualToString:hashKey])
    {
      v7 = 1;
    }

    else if ([hashKey2 rangeOfString:@"com.apple.springboard"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = [hashKey2 componentsSeparatedByString:@"|"];
      v9 = [hashKey componentsSeparatedByString:@"|"];
      if ([v9 count] >= 2 && objc_msgSend(v8, "count") >= 2 && (objc_msgSend(v8, "objectAtIndex:", 1), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectAtIndex:", 1), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqualToString:", v11), v11, v10, v12))
      {
        if ([v9 count] == 7 && objc_msgSend(v8, "count") == 7)
        {
          v13 = [v8 objectAtIndex:6];
          v14 = [v9 objectAtIndex:6];
          v7 = [v13 isEqualToString:v14];
        }

        else
        {
          v16 = [v9 count];
          v7 = v16 != [v8 count];
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
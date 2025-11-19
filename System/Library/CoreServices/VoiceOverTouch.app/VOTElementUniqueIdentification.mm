@interface VOTElementUniqueIdentification
+ (id)identificationFromElement:(id)a3;
+ (id)identificationFromKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOTElementUniqueIdentification

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  v5 = [(VOTElementUniqueIdentification *)self hashKey];
  [v4 setHashKey:v5];

  return v4;
}

+ (id)identificationFromKey:(id)a3
{
  v3 = a3;
  v4 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  [v4 setHashKey:v3];

  return v4;
}

+ (id)identificationFromElement:(id)a3
{
  v3 = a3;
  v4 = [v3 uiElement];
  v5 = [v3 isApplication];
  v6 = [v3 bundleIdentifier];
  if ((v5 & 1) == 0)
  {
    v7 = [v4 stringWithAXAttribute:2001];
    v8 = [v7 stringByReplacingOccurrencesOfString:@"|" withString:&stru_1001CBF90];

    v9 = [v4 stringWithAXAttribute:2031];
    [v4 rectWithAXAttribute:2003];
    v11 = v10;
    v13 = v12;
    v14 = [v4 numberWithAXAttribute:2004];
    [v14 unsignedLongLongValue];

    v15 = _AXTraitsRemoveTrait();
    v16 = [v4 stringWithAXAttribute:2041];
    v17 = [NSNumber numberWithUnsignedLongLong:v15];
    v26.width = v11;
    v26.height = v13;
    v18 = NSStringFromSize(v26);
    v19 = [NSString stringWithFormat:@"%@|%@|%@|%@|%@|%@", v6, v8, v17, v16, v18, v9];

    v20 = [v3 application];
    LODWORD(v17) = [v20 isSystemApp];

    if (v17)
    {
      v21 = [v3 bundleIdentifier];
      if ([v21 length])
      {
        v22 = [v19 stringByAppendingFormat:@"|%@", v21];

        v19 = v22;
      }
    }

    v6 = v19;
  }

  v23 = [objc_allocWithZone(VOTElementUniqueIdentification) init];
  [v23 setHashKey:v6];

  return v23;
}

- (unint64_t)hash
{
  v2 = [(VOTElementUniqueIdentification *)self hashKey];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = VOTElementUniqueIdentification;
  v3 = [(VOTElementUniqueIdentification *)&v7 description];
  v4 = [(VOTElementUniqueIdentification *)self hashKey];
  v5 = [NSString stringWithFormat:@"%@: %@", v3, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 hashKey];
    v6 = [(VOTElementUniqueIdentification *)self hashKey];
    if ([v6 isEqualToString:v5])
    {
      v7 = 1;
    }

    else if ([v6 rangeOfString:@"com.apple.springboard"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v6 componentsSeparatedByString:@"|"];
      v9 = [v5 componentsSeparatedByString:@"|"];
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
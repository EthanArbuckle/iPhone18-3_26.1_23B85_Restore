@interface NSString
+ (BOOL)_isAnimojiCharacterStyleName:(id)name;
+ (id)identifierFromMemojiCharacterStyleName:(id)name;
+ (id)styleNameFromBasename:(id)basename;
- (BOOL)isAnyMemojiStyleName;
- (BOOL)isRegularAnimojiStyleName;
- (BOOL)isRegularMemojiStyleName;
- (BOOL)isResourcedStyleName;
- (BOOL)isSharedMemojiStyleName;
- (BOOL)isToyboxAnimojiStyleName;
- (BOOL)isToyboxAnyStyleName;
- (BOOL)isToyboxMemojiStyleName;
- (BOOL)isValidStyleName;
- (NSString)memojiIdentifier;
@end

@implementation NSString

+ (id)identifierFromMemojiCharacterStyleName:(id)name
{
  nameCopy = name;
  if ([self _isMemojiCharacterStyleName:nameCopy])
  {
    v5 = [nameCopy substringFromIndex:{objc_msgSend(@"memoji-", "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)_isAnimojiCharacterStyleName:(id)name
{
  nameCopy = name;
  v4 = +[NTKCollieStyleEditOptionAvatarRecordCache animojiIdentifiers];
  v5 = [v4 indexOfObject:nameCopy];

  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isToyboxAnimojiStyleName
{
  v3 = objc_opt_class();

  return [v3 _isToyboxAnimojiCharacterStyleName:self];
}

- (BOOL)isToyboxMemojiStyleName
{
  v3 = objc_opt_class();

  return [v3 _isToyboxMemojiCharacterStyleName:self];
}

- (BOOL)isToyboxAnyStyleName
{
  if ([objc_opt_class() _isToyboxMemojiCharacterStyleName:self])
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _isToyboxAnimojiCharacterStyleName:self];
}

- (BOOL)isSharedMemojiStyleName
{
  v3 = objc_opt_class();

  return [v3 _isSharedMemojiCharacterStyleName:self];
}

- (BOOL)isRegularAnimojiStyleName
{
  v3 = objc_opt_class();

  return [v3 _isAnimojiCharacterStyleName:self];
}

- (BOOL)isRegularMemojiStyleName
{
  v3 = objc_opt_class();

  return [v3 _isMemojiCharacterStyleName:self];
}

- (BOOL)isAnyMemojiStyleName
{
  if ([objc_opt_class() _isToyboxMemojiCharacterStyleName:self] & 1) != 0 || (objc_msgSend(objc_opt_class(), "_isSharedMemojiCharacterStyleName:", self))
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _isMemojiCharacterStyleName:self];
}

- (BOOL)isResourcedStyleName
{
  if ([(NSString *)self isToyboxAnimojiStyleName])
  {
    return 1;
  }

  return [(NSString *)self isRegularAnimojiStyleName];
}

- (NSString)memojiIdentifier
{
  v3 = objc_opt_class();

  return [v3 identifierFromMemojiCharacterStyleName:self];
}

- (BOOL)isValidStyleName
{
  if ([(NSString *)self isToyboxAnimojiStyleName]|| [(NSString *)self isToyboxMemojiStyleName]|| [(NSString *)self isSharedMemojiStyleName]|| [(NSString *)self isRegularMemojiStyleName])
  {
    return 1;
  }

  return [(NSString *)self isRegularAnimojiStyleName];
}

+ (id)styleNameFromBasename:(id)basename
{
  basenameCopy = basename;
  v4 = @"toybox-animoji";
  if (([basenameCopy hasPrefix:@"toybox-animoji"] & 1) == 0)
  {
    v4 = @"toybox-memoji";
    if (([basenameCopy hasPrefix:@"toybox-memoji"] & 1) == 0)
    {
      v4 = @"local-memoji";
      if (([basenameCopy hasPrefix:@"local-memoji"] & 1) == 0)
      {
        v5 = [@"memoji-" length];
        if ([basenameCopy hasPrefix:@"memoji-"] && (v6 = v5 + 36, objc_msgSend(basenameCopy, "length") >= v6))
        {
          v4 = [basenameCopy substringToIndex:v6];
        }

        else
        {
          +[NTKCollieStyleEditOptionAvatarRecordCache animojiIdentifiers];
          v12 = 0u;
          v13 = 0u;
          v14 = 0u;
          v7 = v15 = 0u;
          v4 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v4)
          {
            v8 = *v13;
            while (2)
            {
              for (i = 0; i != v4; i = (i + 1))
              {
                if (*v13 != v8)
                {
                  objc_enumerationMutation(v7);
                }

                v10 = *(*(&v12 + 1) + 8 * i);
                if ([basenameCopy hasPrefix:{v10, v12}])
                {
                  v4 = v10;
                  goto LABEL_16;
                }
              }

              v4 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
              if (v4)
              {
                continue;
              }

              break;
            }
          }

LABEL_16:
        }
      }
    }
  }

  return v4;
}

@end
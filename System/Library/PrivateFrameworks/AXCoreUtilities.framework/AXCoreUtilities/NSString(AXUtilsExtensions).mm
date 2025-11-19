@interface NSString(AXUtilsExtensions)
- (BOOL)axContainsString:()AXUtilsExtensions options:;
- (BOOL)axIsGenericLanguageCode;
- (id)axCapitalizeFirstLetter;
- (id)axLanguageCode;
- (id)axRegionCode;
- (uint64_t)axIsLanguageCode;
- (uint64_t)axIsRegionalLanguageCode;
@end

@implementation NSString(AXUtilsExtensions)

- (BOOL)axContainsString:()AXUtilsExtensions options:
{
  v6 = a3;
  if (v6)
  {
    v7 = a1;
    v8 = v6;
    if ((a4 & 2) != 0)
    {
      v9 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v10 = [v7 componentsSeparatedByCharactersInSet:v9];
      v11 = [v10 componentsJoinedByString:&stru_1F0579798];

      v12 = [v8 componentsSeparatedByCharactersInSet:v9];
      v13 = [v12 componentsJoinedByString:&stru_1F0579798];

      v7 = v11;
      v8 = v13;
    }

    v14 = [v7 rangeOfString:v8 options:a4 & 1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)axIsLanguageCode
{
  if ([a1 axIsGenericLanguageCode])
  {
    return 1;
  }

  return [a1 axIsRegionalLanguageCode];
}

- (BOOL)axIsGenericLanguageCode
{
  v2 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v3 = [v2 invertedSet];

  if ([a1 rangeOfCharacterFromSet:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [a1 length] == 2 || objc_msgSend(a1, "length") == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)axIsRegionalLanguageCode
{
  v1 = [a1 componentsSeparatedByString:@"-"];
  if ([v1 count] == 2)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v1 objectAtIndexedSubscript:1];
    if ([v2 axIsGenericLanguageCode])
    {
      v4 = [v3 axIsGenericLanguageCode];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)axLanguageCode
{
  if ([a1 axIsGenericLanguageCode])
  {
    v2 = a1;
  }

  else if ([a1 axIsRegionalLanguageCode])
  {
    v3 = [a1 componentsSeparatedByString:@"-"];
    v2 = [v3 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)axRegionCode
{
  if ([a1 axIsRegionalLanguageCode])
  {
    v2 = [a1 componentsSeparatedByString:@"-"];
    v3 = [v2 lastObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)axCapitalizeFirstLetter
{
  if ([a1 length])
  {
    v2 = [a1 substringToIndex:1];
    v3 = [a1 substringFromIndex:1];
    v4 = [v2 uppercaseString];
    v5 = [v4 stringByAppendingString:v3];
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

@end
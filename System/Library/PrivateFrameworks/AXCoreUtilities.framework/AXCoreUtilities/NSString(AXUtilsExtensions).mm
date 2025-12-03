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
    selfCopy = self;
    v8 = v6;
    if ((a4 & 2) != 0)
    {
      whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
      v10 = [selfCopy componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      v11 = [v10 componentsJoinedByString:&stru_1F0579798];

      v12 = [v8 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
      v13 = [v12 componentsJoinedByString:&stru_1F0579798];

      selfCopy = v11;
      v8 = v13;
    }

    v14 = [selfCopy rangeOfString:v8 options:a4 & 1] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)axIsLanguageCode
{
  if ([self axIsGenericLanguageCode])
  {
    return 1;
  }

  return [self axIsRegionalLanguageCode];
}

- (BOOL)axIsGenericLanguageCode
{
  letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  invertedSet = [letterCharacterSet invertedSet];

  if ([self rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [self length] == 2 || objc_msgSend(self, "length") == 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)axIsRegionalLanguageCode
{
  v1 = [self componentsSeparatedByString:@"-"];
  if ([v1 count] == 2)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v1 objectAtIndexedSubscript:1];
    if ([v2 axIsGenericLanguageCode])
    {
      axIsGenericLanguageCode = [v3 axIsGenericLanguageCode];
    }

    else
    {
      axIsGenericLanguageCode = 0;
    }
  }

  else
  {
    axIsGenericLanguageCode = 0;
  }

  return axIsGenericLanguageCode;
}

- (id)axLanguageCode
{
  if ([self axIsGenericLanguageCode])
  {
    selfCopy = self;
  }

  else if ([self axIsRegionalLanguageCode])
  {
    v3 = [self componentsSeparatedByString:@"-"];
    selfCopy = [v3 firstObject];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)axRegionCode
{
  if ([self axIsRegionalLanguageCode])
  {
    v2 = [self componentsSeparatedByString:@"-"];
    lastObject = [v2 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)axCapitalizeFirstLetter
{
  if ([self length])
  {
    v2 = [self substringToIndex:1];
    v3 = [self substringFromIndex:1];
    uppercaseString = [v2 uppercaseString];
    selfCopy = [uppercaseString stringByAppendingString:v3];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end
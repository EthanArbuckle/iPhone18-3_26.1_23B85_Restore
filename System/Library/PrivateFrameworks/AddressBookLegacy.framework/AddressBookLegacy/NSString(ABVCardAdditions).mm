@interface NSString(ABVCardAdditions)
- (__CFString)abEscapeStringForUnichar:()ABVCardAdditions and:advance:;
- (__CFString)abStringByRemovingCharactersFromSet:()ABVCardAdditions;
- (__CFString)abStringByStrippingControlCharacters;
- (uint64_t)copyABVCardDataRepresentation;
- (void)abVCardKoshify;
@end

@implementation NSString(ABVCardAdditions)

- (uint64_t)copyABVCardDataRepresentation
{
  if (![self canBeConvertedToEncoding:4])
  {
    return 0;
  }

  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  uTF8String = [self UTF8String];
  v4 = [self lengthOfBytesUsingEncoding:4];

  return [v2 initWithBytes:uTF8String length:v4];
}

- (__CFString)abEscapeStringForUnichar:()ABVCardAdditions and:advance:
{
  *a5 = 1;
  if (a3 > 57)
  {
    if (a3 == 58)
    {
      return @"\\:";
    }

    if (a3 != 59)
    {
      if (a3 == 92)
      {
        return @"\\\\"";
      }

      goto LABEL_11;
    }

    return @"\\;";
  }

  else
  {
    if (a3 == 10)
    {
      return @"\\n";
    }

    if (a3 != 13)
    {
      if (a3 == 44)
      {
        return @"\\,";
      }

LABEL_11:
      result = 0;
      *a5 = 0;
      return result;
    }

    if (a4 != 10)
    {
      return @"\\n";
    }

    else
    {
      *a5 = 2;
      return @"\\n\\n";
    }
  }
}

- (__CFString)abStringByRemovingCharactersFromSet:()ABVCardAdditions
{
  selfCopy = self;
  v5 = [(__CFString *)self length];
  if (v5)
  {
    v10.length = v5;
    v10.location = 0;
    if (CFStringFindCharacterFromSet(selfCopy, a3, v10, 0, 0))
    {
      selfCopy = [(__CFString *)selfCopy mutableCopy];
      v6 = [(__CFString *)selfCopy length];
      if (v6 - 1 >= 0)
      {
        v7 = v6;
        do
        {
          if ([a3 characterIsMember:{-[__CFString characterAtIndex:](selfCopy, "characterAtIndex:", --v7)}])
          {
            [(__CFString *)selfCopy deleteCharactersInRange:v7, 1];
          }
        }

        while (v7 > 0);
      }

      v8 = selfCopy;
    }
  }

  return selfCopy;
}

- (__CFString)abStringByStrippingControlCharacters
{
  if (abStringByStrippingControlCharacters_onceToken != -1)
  {
    [NSString(ABVCardAdditions) abStringByStrippingControlCharacters];
  }

  v2 = [self abStringByRemovingCharactersFromSet:abStringByStrippingControlCharacters___invalidChars];
  if ([v2 length])
  {
    return v2;
  }

  else
  {
    return &stru_1F2FE2718;
  }
}

- (void)abVCardKoshify
{
  v13 = 0;
  v14 = 0;
  strcpy(v12, "\r\n;,\\"");
  v2 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self];
  [v2 setCharactersToBeSkipped:0];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v12)}];
  string = [MEMORY[0x1E696AD60] string];
  v5 = [self length];
  if (([v2 isAtEnd] & 1) == 0)
  {
    do
    {
      v14 = 1;
      v6 = [v2 scanUpToCharactersFromSet:v3 intoString:&v13];
      scanLocation = [v2 scanLocation];
      if (v6)
      {
        [string appendString:v13];
      }

      while (scanLocation < v5)
      {
        v8 = [self characterAtIndex:scanLocation];
        v9 = scanLocation + 1 >= v5 ? 0 : [self characterAtIndex:?];
        v10 = [self abEscapeStringForUnichar:v8 and:v9 advance:&v14];
        if (!v10)
        {
          break;
        }

        [string appendString:v10];
        scanLocation += v14;
      }

      [v2 setScanLocation:scanLocation];
    }

    while (![v2 isAtEnd]);
  }

  return string;
}

@end
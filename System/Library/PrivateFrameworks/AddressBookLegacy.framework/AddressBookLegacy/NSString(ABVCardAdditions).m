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
  if (![a1 canBeConvertedToEncoding:4])
  {
    return 0;
  }

  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = [a1 UTF8String];
  v4 = [a1 lengthOfBytesUsingEncoding:4];

  return [v2 initWithBytes:v3 length:v4];
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
  v4 = a1;
  v5 = [(__CFString *)a1 length];
  if (v5)
  {
    v10.length = v5;
    v10.location = 0;
    if (CFStringFindCharacterFromSet(v4, a3, v10, 0, 0))
    {
      v4 = [(__CFString *)v4 mutableCopy];
      v6 = [(__CFString *)v4 length];
      if (v6 - 1 >= 0)
      {
        v7 = v6;
        do
        {
          if ([a3 characterIsMember:{-[__CFString characterAtIndex:](v4, "characterAtIndex:", --v7)}])
          {
            [(__CFString *)v4 deleteCharactersInRange:v7, 1];
          }
        }

        while (v7 > 0);
      }

      v8 = v4;
    }
  }

  return v4;
}

- (__CFString)abStringByStrippingControlCharacters
{
  if (abStringByStrippingControlCharacters_onceToken != -1)
  {
    [NSString(ABVCardAdditions) abStringByStrippingControlCharacters];
  }

  v2 = [a1 abStringByRemovingCharactersFromSet:abStringByStrippingControlCharacters___invalidChars];
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
  v2 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a1];
  [v2 setCharactersToBeSkipped:0];
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v12)}];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = [a1 length];
  if (([v2 isAtEnd] & 1) == 0)
  {
    do
    {
      v14 = 1;
      v6 = [v2 scanUpToCharactersFromSet:v3 intoString:&v13];
      v7 = [v2 scanLocation];
      if (v6)
      {
        [v4 appendString:v13];
      }

      while (v7 < v5)
      {
        v8 = [a1 characterAtIndex:v7];
        v9 = v7 + 1 >= v5 ? 0 : [a1 characterAtIndex:?];
        v10 = [a1 abEscapeStringForUnichar:v8 and:v9 advance:&v14];
        if (!v10)
        {
          break;
        }

        [v4 appendString:v10];
        v7 += v14;
      }

      [v2 setScanLocation:v7];
    }

    while (![v2 isAtEnd]);
  }

  return v4;
}

@end
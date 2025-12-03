@interface NSString(BCSNSStringExtras)
- (BOOL)_bcs_looksLikeEmailAddress;
- (__CFString)_bcs_stringWithEnclosingDoubleQuotesRemoved;
- (id)_bcs_unescapedString;
- (uint64_t)_bcs_trimmedString;
- (uint64_t)_bcs_urlEncodedQueryValue;
@end

@implementation NSString(BCSNSStringExtras)

- (uint64_t)_bcs_trimmedString
{
  if (_bcs_trimmedString_once != -1)
  {
    [NSString(BCSNSStringExtras) _bcs_trimmedString];
  }

  v2 = _bcs_trimmedString_whitespaceCharacterSet;

  return [self stringByTrimmingCharactersInSet:v2];
}

- (id)_bcs_unescapedString
{
  v2 = [self rangeOfString:@"\\""];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = self;
  }

  else
  {
    v4 = v2;
    v5 = [self length];
    selfCopy = [MEMORY[0x277CCAB68] stringWithCapacity:v5];
    v6 = [self substringToIndex:v4];
    [selfCopy appendString:v6];

    if (v4 < v5)
    {
      v7 = 0;
      do
      {
        v8 = [self characterAtIndex:v4];
        v7 = (v8 == 92) & ~v7;
        if ((v7 & 1) == 0)
        {
          [selfCopy appendFormat:@"%C", v8];
        }

        ++v4;
      }

      while (v5 != v4);
    }
  }

  return selfCopy;
}

- (uint64_t)_bcs_urlEncodedQueryValue
{
  if (_bcs_urlEncodedQueryValue_once != -1)
  {
    [NSString(BCSNSStringExtras) _bcs_urlEncodedQueryValue];
  }

  v2 = _bcs_urlEncodedQueryValue_queryValueAllowedCharacters;

  return [self stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (__CFString)_bcs_stringWithEnclosingDoubleQuotesRemoved
{
  v2 = [self length];
  v3 = v2 - 1;
  if (v2 > 1 && (v4 = v2, [self characterAtIndex:0] == 34) && objc_msgSend(self, "characterAtIndex:", v3) == 34)
  {
    if (v4 == 2)
    {
      selfCopy = &stru_2853953A0;
    }

    else
    {
      selfCopy = [self substringWithRange:{1, v4 - 2}];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)_bcs_looksLikeEmailAddress
{
  v2 = [self length];
  if (v2 < 3)
  {
    return 0;
  }

  v4 = v2;
  v5 = [self rangeOfString:@"@"];
  v3 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 != v4 - 1)
    {
      return [self rangeOfString:@"@" options:0 range:{v5 + 1, v4 + ~v5}] == 0x7FFFFFFFFFFFFFFFLL;
    }

    return 0;
  }

  return v3;
}

@end
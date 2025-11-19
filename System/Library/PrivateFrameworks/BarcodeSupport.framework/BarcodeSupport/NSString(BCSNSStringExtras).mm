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

  return [a1 stringByTrimmingCharactersInSet:v2];
}

- (id)_bcs_unescapedString
{
  v2 = [a1 rangeOfString:@"\\""];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = a1;
  }

  else
  {
    v4 = v2;
    v5 = [a1 length];
    v3 = [MEMORY[0x277CCAB68] stringWithCapacity:v5];
    v6 = [a1 substringToIndex:v4];
    [v3 appendString:v6];

    if (v4 < v5)
    {
      v7 = 0;
      do
      {
        v8 = [a1 characterAtIndex:v4];
        v7 = (v8 == 92) & ~v7;
        if ((v7 & 1) == 0)
        {
          [v3 appendFormat:@"%C", v8];
        }

        ++v4;
      }

      while (v5 != v4);
    }
  }

  return v3;
}

- (uint64_t)_bcs_urlEncodedQueryValue
{
  if (_bcs_urlEncodedQueryValue_once != -1)
  {
    [NSString(BCSNSStringExtras) _bcs_urlEncodedQueryValue];
  }

  v2 = _bcs_urlEncodedQueryValue_queryValueAllowedCharacters;

  return [a1 stringByAddingPercentEncodingWithAllowedCharacters:v2];
}

- (__CFString)_bcs_stringWithEnclosingDoubleQuotesRemoved
{
  v2 = [a1 length];
  v3 = v2 - 1;
  if (v2 > 1 && (v4 = v2, [a1 characterAtIndex:0] == 34) && objc_msgSend(a1, "characterAtIndex:", v3) == 34)
  {
    if (v4 == 2)
    {
      v5 = &stru_2853953A0;
    }

    else
    {
      v5 = [a1 substringWithRange:{1, v4 - 2}];
    }
  }

  else
  {
    v5 = a1;
  }

  return v5;
}

- (BOOL)_bcs_looksLikeEmailAddress
{
  v2 = [a1 length];
  if (v2 < 3)
  {
    return 0;
  }

  v4 = v2;
  v5 = [a1 rangeOfString:@"@"];
  v3 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5 != v4 - 1)
    {
      return [a1 rangeOfString:@"@" options:0 range:{v5 + 1, v4 + ~v5}] == 0x7FFFFFFFFFFFFFFFLL;
    }

    return 0;
  }

  return v3;
}

@end
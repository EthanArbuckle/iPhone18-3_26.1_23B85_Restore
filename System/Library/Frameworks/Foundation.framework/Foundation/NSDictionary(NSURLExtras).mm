@interface NSDictionary(NSURLExtras)
- (uint64_t)_web_numberForKey:()NSURLExtras;
- (uint64_t)_web_objectForMIMEType:()NSURLExtras;
- (uint64_t)_web_stringForKey:()NSURLExtras;
- (void)_web_intForKey:()NSURLExtras;
@end

@implementation NSDictionary(NSURLExtras)

- (void)_web_intForKey:()NSURLExtras
{
  result = [self _web_numberForKey:?];
  if (result)
  {

    return [result intValue];
  }

  return result;
}

- (uint64_t)_web_stringForKey:()NSURLExtras
{
  v1 = [self objectForKey:?];
  if (_NSIsNSString())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_web_numberForKey:()NSURLExtras
{
  v1 = [self objectForKey:?];
  if (_NSIsNSNumber())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_web_objectForMIMEType:()NSURLExtras
{
  result = [self objectForKey:?];
  if (!result)
  {
    v6 = [a3 rangeOfString:@"/"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v7 = [a3 substringToIndex:v6 + 1];

      return [self objectForKey:v7];
    }
  }

  return result;
}

@end
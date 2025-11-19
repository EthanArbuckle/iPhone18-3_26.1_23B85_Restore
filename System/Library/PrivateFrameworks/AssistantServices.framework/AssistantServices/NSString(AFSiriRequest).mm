@interface NSString(AFSiriRequest)
- (__CFString)_af_stringByRemovingPrefixWithLength:()AFSiriRequest;
- (id)_af_stringByRemovingSuffix:()AFSiriRequest;
@end

@implementation NSString(AFSiriRequest)

- (id)_af_stringByRemovingSuffix:()AFSiriRequest
{
  v4 = a3;
  if ([a1 hasSuffix:v4])
  {
    v5 = [a1 substringToIndex:{objc_msgSend(a1, "length") - objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = [a1 copy];
  }

  v6 = v5;

  return v6;
}

- (__CFString)_af_stringByRemovingPrefixWithLength:()AFSiriRequest
{
  if ([a1 length] >= a3)
  {
    v5 = [a1 substringFromIndex:a3];
  }

  else
  {
    v5 = &stru_1F0512680;
  }

  return v5;
}

@end
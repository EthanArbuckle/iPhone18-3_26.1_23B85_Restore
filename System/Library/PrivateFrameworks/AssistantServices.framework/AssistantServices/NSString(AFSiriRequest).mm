@interface NSString(AFSiriRequest)
- (__CFString)_af_stringByRemovingPrefixWithLength:()AFSiriRequest;
- (id)_af_stringByRemovingSuffix:()AFSiriRequest;
@end

@implementation NSString(AFSiriRequest)

- (id)_af_stringByRemovingSuffix:()AFSiriRequest
{
  v4 = a3;
  if ([self hasSuffix:v4])
  {
    v5 = [self substringToIndex:{objc_msgSend(self, "length") - objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = [self copy];
  }

  v6 = v5;

  return v6;
}

- (__CFString)_af_stringByRemovingPrefixWithLength:()AFSiriRequest
{
  if ([self length] >= a3)
  {
    v5 = [self substringFromIndex:a3];
  }

  else
  {
    v5 = &stru_1F0512680;
  }

  return v5;
}

@end
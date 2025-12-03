@interface NSHTTPCookie(SafariServicesExtras)
- (uint64_t)sf_matchesTopLevelDomain:()SafariServicesExtras;
@end

@implementation NSHTTPCookie(SafariServicesExtras)

- (uint64_t)sf_matchesTopLevelDomain:()SafariServicesExtras
{
  v4 = a3;
  domain = [self domain];
  v6 = [domain isEqualToString:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [@"." stringByAppendingString:v4];
    if ([v4 characterAtIndex:0] == 46)
    {
      v7 = 0;
    }

    else
    {
      domain2 = [self domain];
      v7 = [domain2 hasSuffix:v8];
    }
  }

  return v7;
}

@end
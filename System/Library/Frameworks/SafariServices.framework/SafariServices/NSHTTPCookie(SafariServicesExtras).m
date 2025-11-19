@interface NSHTTPCookie(SafariServicesExtras)
- (uint64_t)sf_matchesTopLevelDomain:()SafariServicesExtras;
@end

@implementation NSHTTPCookie(SafariServicesExtras)

- (uint64_t)sf_matchesTopLevelDomain:()SafariServicesExtras
{
  v4 = a3;
  v5 = [a1 domain];
  v6 = [v5 isEqualToString:v4];

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
      v9 = [a1 domain];
      v7 = [v9 hasSuffix:v8];
    }
  }

  return v7;
}

@end
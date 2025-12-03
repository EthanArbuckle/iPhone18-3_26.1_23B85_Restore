@interface NSURLResponse
- (NSString)ams_storefront;
@end

@implementation NSURLResponse

- (NSString)ams_storefront
{
  selfCopy = self;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    allHeaderFields = [(NSURLResponse *)v3 allHeaderFields];
    v5 = [allHeaderFields ams_objectForCaseInsensitiveKey:AMSHTTPHeaderSetStoreFront];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      allHeaderFields2 = [(NSURLResponse *)v3 allHeaderFields];
      v7 = [allHeaderFields2 ams_objectForCaseInsensitiveKey:@"X-Apple-Request-Store-Front"];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
@interface __NSCFError
- (BOOL)isEqual:(id)equal;
- (__NSCFError)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)userInfo;
@end

@implementation __NSCFError

- (id)userInfo
{
  v2 = CFErrorCopyUserInfo(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, equal) != 0;
}

- (__NSCFError)initWithCoder:(id)coder
{
  v4 = objc_alloc(objc_lookUpClass("NSError"));

  return [v4 initWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(objc_class *)objc_lookUpClass("NSError") allocWithZone:zone];
  domain = [(__NSCFError *)self domain];
  code = [(__NSCFError *)self code];
  userInfo = [(__NSCFError *)self userInfo];

  return [(objc_class *)v4 initWithDomain:domain code:code userInfo:userInfo];
}

@end
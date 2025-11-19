@interface __NSCFError
- (BOOL)isEqual:(id)a3;
- (__NSCFError)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)userInfo;
@end

@implementation __NSCFError

- (id)userInfo
{
  v2 = CFErrorCopyUserInfo(self);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
  {
    return 1;
  }

  return _CFNonObjCEqual(self, a3) != 0;
}

- (__NSCFError)initWithCoder:(id)a3
{
  v4 = objc_alloc(objc_lookUpClass("NSError"));

  return [v4 initWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(objc_class *)objc_lookUpClass("NSError") allocWithZone:a3];
  v5 = [(__NSCFError *)self domain];
  v6 = [(__NSCFError *)self code];
  v7 = [(__NSCFError *)self userInfo];

  return [(objc_class *)v4 initWithDomain:v5 code:v6 userInfo:v7];
}

@end
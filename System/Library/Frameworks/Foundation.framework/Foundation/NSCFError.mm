@interface NSCFError
- (BOOL)isEqual:(id)a3;
- (NSCFError)initWithCoder:(id)a3;
- (id)_callStackReturnAddresses;
- (id)userInfo;
@end

@implementation NSCFError

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

  return _CFNonObjCEqual() != 0;
}

- (NSCFError)initWithCoder:(id)a3
{
  v4 = [NSError alloc];

  return [(NSError *)v4 initWithCoder:a3];
}

- (id)userInfo
{
  v2 = CFErrorCopyUserInfo(self);

  return v2;
}

- (id)_callStackReturnAddresses
{
  v2 = _CFErrorCopyCallStackReturnAddresses();

  return v2;
}

@end
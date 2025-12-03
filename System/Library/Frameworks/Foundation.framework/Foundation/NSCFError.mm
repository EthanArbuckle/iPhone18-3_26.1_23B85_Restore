@interface NSCFError
- (BOOL)isEqual:(id)equal;
- (NSCFError)initWithCoder:(id)coder;
- (id)_callStackReturnAddresses;
- (id)userInfo;
@end

@implementation NSCFError

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

  return _CFNonObjCEqual() != 0;
}

- (NSCFError)initWithCoder:(id)coder
{
  v4 = [NSError alloc];

  return [(NSError *)v4 initWithCoder:coder];
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
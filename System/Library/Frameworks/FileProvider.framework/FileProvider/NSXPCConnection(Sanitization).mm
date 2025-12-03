@interface NSXPCConnection(Sanitization)
- (id)fp_sanitizer;
@end

@implementation NSXPCConnection(Sanitization)

- (id)fp_sanitizer
{
  userInfo = [self userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    userInfo2 = [self userInfo];
  }

  else
  {
    userInfo2 = 0;
  }

  return userInfo2;
}

@end
@interface NSXPCConnection(Sanitization)
- (id)fp_sanitizer;
@end

@implementation NSXPCConnection(Sanitization)

- (id)fp_sanitizer
{
  v2 = [a1 userInfo];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = [a1 userInfo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
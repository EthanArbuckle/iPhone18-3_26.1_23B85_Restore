@interface NSObject
- (id)ncs_baseLoggingPrefix;
@end

@implementation NSObject

- (id)ncs_baseLoggingPrefix
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p>", v4, self];

  return v5;
}

@end
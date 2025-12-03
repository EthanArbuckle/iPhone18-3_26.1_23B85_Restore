@interface NSError
+ (id)gc_VirtualControllerError:(void *)error userInfo:;
@end

@implementation NSError

+ (id)gc_VirtualControllerError:(void *)error userInfo:
{
  errorCopy = error;
  objc_opt_self();
  v5 = [NSError errorWithDomain:@"GCVirtualControllerError" code:a2 userInfo:errorCopy];

  return v5;
}

@end
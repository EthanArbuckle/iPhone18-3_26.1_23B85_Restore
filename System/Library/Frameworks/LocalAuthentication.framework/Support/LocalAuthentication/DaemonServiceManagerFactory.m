@interface DaemonServiceManagerFactory
+ (id)build;
@end

@implementation DaemonServiceManagerFactory

+ (id)build
{
  v2 = objc_opt_new();

  return v2;
}

@end
@interface FPNotifyCacheDelegate
- (void)cache:(id)a3 willEvictObject:(id)a4;
@end

@implementation FPNotifyCacheDelegate

- (void)cache:(id)a3 willEvictObject:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([v4 intValue]);
  }
}

@end
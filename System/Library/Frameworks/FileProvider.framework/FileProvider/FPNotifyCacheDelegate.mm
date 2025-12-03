@interface FPNotifyCacheDelegate
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation FPNotifyCacheDelegate

- (void)cache:(id)cache willEvictObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    notify_cancel([objectCopy intValue]);
  }
}

@end
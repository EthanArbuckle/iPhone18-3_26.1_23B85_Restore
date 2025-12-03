@interface CATimerManager
+ (id)getWeakReferenceOfObject:(id)object;
- (CATimerManager)init;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation CATimerManager

- (CATimerManager)init
{
  v3.receiver = self;
  v3.super_class = CATimerManager;
  return [(CATimerManager *)&v3 init];
}

+ (id)getWeakReferenceOfObject:(id)object
{
  v4 = objc_opt_new();
  [v4 setTimerSource:object];

  return v4;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  [(CATimerManager *)self timerSource];
  v4 = objc_opt_class();

  return [v4 instanceMethodSignatureForSelector:selector];
}

- (void)forwardInvocation:(id)invocation
{
  timerSource = [(CATimerManager *)self timerSource];

  [invocation invokeWithTarget:timerSource];
}

@end
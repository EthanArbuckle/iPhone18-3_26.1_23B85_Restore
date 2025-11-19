@interface ATXAggregateLogger
@end

@implementation ATXAggregateLogger

void __37___ATXAggregateLogger_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_34;
  sharedInstance__pasExprOnceResult_34 = v1;

  objc_autoreleasePoolPop(v0);
}

@end
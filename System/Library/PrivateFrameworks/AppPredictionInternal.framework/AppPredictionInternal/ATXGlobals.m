@interface ATXGlobals
@end

@implementation ATXGlobals

void __29___ATXGlobals_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_46;
  sharedInstance__pasExprOnceResult_46 = v1;

  objc_autoreleasePoolPop(v0);
}

@end
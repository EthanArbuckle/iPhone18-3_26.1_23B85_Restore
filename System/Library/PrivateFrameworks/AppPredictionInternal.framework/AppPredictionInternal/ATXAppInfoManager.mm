@interface ATXAppInfoManager
@end

@implementation ATXAppInfoManager

void __36___ATXAppInfoManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [_ATXAppInfoManager alloc];
  v2 = +[_ATXDataStore sharedInstance];
  v3 = [(_ATXAppInfoManager *)v1 initWithDataStore:v2];
  v4 = sharedInstance__pasExprOnceResult_35;
  sharedInstance__pasExprOnceResult_35 = v3;

  objc_autoreleasePoolPop(v0);
}

@end
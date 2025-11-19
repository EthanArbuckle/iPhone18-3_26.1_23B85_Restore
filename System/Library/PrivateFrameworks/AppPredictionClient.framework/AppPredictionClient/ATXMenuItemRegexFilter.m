@interface ATXMenuItemRegexFilter
+ (id)sharedInstance;
- (ATXMenuItemRegexFilter)init;
- (BOOL)shouldFilterOutAction:(id)a3;
@end

@implementation ATXMenuItemRegexFilter

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken7_4 != -1)
  {
    +[ATXMenuItemRegexFilter sharedInstance];
  }

  v3 = sharedInstance__pasExprOnceResult_5;

  return v3;
}

void __40__ATXMenuItemRegexFilter_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_5;
  sharedInstance__pasExprOnceResult_5 = v1;

  objc_autoreleasePoolPop(v0);
}

- (ATXMenuItemRegexFilter)init
{
  v3.receiver = self;
  v3.super_class = ATXMenuItemRegexFilter;
  return [(ATXRegexFilter *)&v3 initWithAssetName:@"ATXMenuItemRegexFilter"];
}

- (BOOL)shouldFilterOutAction:(id)a3
{
  v4 = a3;
  if ([v4 actionType] == 6)
  {
    v5 = [v4 bundleId];
    v6 = [v4 menuItemPath];
    v7 = [ATXMenuItemRegexFilter joinComponentsOfMenuItemPath:v6];
    v8 = [(ATXRegexFilter *)self shouldFilterOutBundleId:v5 andAttribute:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
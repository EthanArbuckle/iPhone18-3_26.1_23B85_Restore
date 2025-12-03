@interface ATXMenuItemRegexFilter
+ (id)sharedInstance;
- (ATXMenuItemRegexFilter)init;
- (BOOL)shouldFilterOutAction:(id)action;
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

- (BOOL)shouldFilterOutAction:(id)action
{
  actionCopy = action;
  if ([actionCopy actionType] == 6)
  {
    bundleId = [actionCopy bundleId];
    menuItemPath = [actionCopy menuItemPath];
    v7 = [ATXMenuItemRegexFilter joinComponentsOfMenuItemPath:menuItemPath];
    v8 = [(ATXRegexFilter *)self shouldFilterOutBundleId:bundleId andAttribute:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
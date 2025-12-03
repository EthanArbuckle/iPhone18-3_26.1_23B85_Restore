@interface LowFuelActionHandler
+ (void)performAction:(id)action inContext:(id)context;
@end

@implementation LowFuelActionHandler

+ (void)performAction:(id)action inContext:(id)context
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    +[SearchSession performLowFuelSearchForEngineType:withObserver:](SearchSession, "performLowFuelSearchForEngineType:withObserver:", [actionCopy engineType], 0);
  }
}

@end
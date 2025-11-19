@interface AMSLogConfig
+ (id)ask_generalLogConfig;
@end

@implementation AMSLogConfig

+ (id)ask_generalLogConfig
{
  if (ask_generalLogConfig_onceToken != -1)
  {
    +[AMSLogConfig(ShelfKit) ask_generalLogConfig];
  }

  v3 = ask_generalLogConfig_logConfig;

  return v3;
}

void __46__AMSLogConfig_ShelfKit__ask_generalLogConfig__block_invoke(id a1)
{
  v3 = objc_alloc_init(AMSMutableLogConfig);
  [v3 setSubsystem:@"com.apple.ShelfKit"];
  [v3 setCategory:@"ASK General"];
  v1 = [v3 copy];
  v2 = ask_generalLogConfig_logConfig;
  ask_generalLogConfig_logConfig = v1;
}

@end
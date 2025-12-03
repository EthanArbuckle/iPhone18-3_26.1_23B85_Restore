@interface ATXPlugInManager
+ (void)setPlugInName:(id)name isEnabled:(BOOL)enabled;
- (_TtC21AppPredictionInternal16ATXPlugInManager)init;
@end

@implementation ATXPlugInManager

+ (void)setPlugInName:(id)name isEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = sub_226836408();
  _s21AppPredictionInternal16ATXPlugInManagerC07setPlugE04name9isEnabledySS_SbtFZ_0(v5, v6, enabledCopy);
}

- (_TtC21AppPredictionInternal16ATXPlugInManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ATXPlugInManager *)&v3 init];
}

@end
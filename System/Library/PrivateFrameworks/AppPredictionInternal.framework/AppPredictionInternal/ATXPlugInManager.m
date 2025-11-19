@interface ATXPlugInManager
+ (void)setPlugInName:(id)a3 isEnabled:(BOOL)a4;
- (_TtC21AppPredictionInternal16ATXPlugInManager)init;
@end

@implementation ATXPlugInManager

+ (void)setPlugInName:(id)a3 isEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = sub_226836408();
  _s21AppPredictionInternal16ATXPlugInManagerC07setPlugE04name9isEnabledySS_SbtFZ_0(v5, v6, v4);
}

- (_TtC21AppPredictionInternal16ATXPlugInManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ATXPlugInManager *)&v3 init];
}

@end
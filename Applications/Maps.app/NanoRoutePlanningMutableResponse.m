@interface NanoRoutePlanningMutableResponse
- (void)setObject:(id)a3 forUserInfoKey:(id)a4 forRouteID:(id)a5;
@end

@implementation NanoRoutePlanningMutableResponse

- (void)setObject:(id)a3 forUserInfoKey:(id)a4 forRouteID:(id)a5
{
  v5.receiver = self;
  v5.super_class = NanoRoutePlanningMutableResponse;
  [(NanoRoutePlanningResponse *)&v5 setObject:a3 forUserInfoKey:a4 forRouteID:a5];
}

@end
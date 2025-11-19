@interface ClimateRecirculationIndicator
- (void)recirculationService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)recirculationService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateRecirculationIndicator

- (void)recirculationService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10003BDBC(v6, a4);
}

- (void)recirculationService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10003C07C(v6, a4);
}

@end
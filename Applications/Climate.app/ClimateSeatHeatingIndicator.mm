@interface ClimateSeatHeatingIndicator
- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4;
- (void)heatingCoolingService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateSeatHeatingIndicator

- (void)heatingCoolingService:(id)a3 didUpdateOn:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_100075AC0(v6, a4);
}

- (void)heatingCoolingService:(id)a3 didUpdateHeatingCoolingLevel:(int)a4
{
  v5 = a3;
  v6 = self;
  sub_100075E60();
}

@end
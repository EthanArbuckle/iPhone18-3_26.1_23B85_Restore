@interface ClimateFanContinuousStepper
- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4;
- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateFanContinuousStepper

- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1000C3300(v6, v4);
}

- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  sub_1000C3AF0(v6, v4);
}

- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1000C539C();
}

@end
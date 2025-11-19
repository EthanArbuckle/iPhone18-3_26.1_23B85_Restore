@interface ClimateFanServiceStepper
- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4;
- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4;
- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4;
@end

@implementation ClimateFanServiceStepper

- (void)fanService:(id)a3 didUpdateFanLevel:(unsigned __int8)a4
{
  v5 = a3;
  v6 = self;
  sub_1000A4748();
}

- (void)fanService:(id)a3 didUpdateOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1000A4844();
}

- (void)fanService:(id)a3 didUpdateAutoMode:(BOOL)a4
{
  v4 = self;
  ClimateStepper.updatePresentation()();
}

@end
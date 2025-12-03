@interface ClimateFanServiceStepper
- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateFanServiceStepper

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  sub_1000A4748();
}

- (void)fanService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_1000A4844();
}

- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode
{
  selfCopy = self;
  ClimateStepper.updatePresentation()();
}

@end
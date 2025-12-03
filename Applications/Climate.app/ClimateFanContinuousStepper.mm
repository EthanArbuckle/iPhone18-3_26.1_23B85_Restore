@interface ClimateFanContinuousStepper
- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateFanContinuousStepper

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  levelCopy = level;
  serviceCopy = service;
  selfCopy = self;
  sub_1000C3300(serviceCopy, levelCopy);
}

- (void)fanService:(id)service didUpdateOn:(BOOL)on
{
  onCopy = on;
  serviceCopy = service;
  selfCopy = self;
  sub_1000C3AF0(serviceCopy, onCopy);
}

- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  sub_1000C539C();
}

@end
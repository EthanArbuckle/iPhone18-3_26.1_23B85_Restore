@interface ClimateSeatHeatingIndicator
- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level;
- (void)heatingCoolingService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateSeatHeatingIndicator

- (void)heatingCoolingService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_100075AC0(serviceCopy, on);
}

- (void)heatingCoolingService:(id)service didUpdateHeatingCoolingLevel:(int)level
{
  serviceCopy = service;
  selfCopy = self;
  sub_100075E60();
}

@end
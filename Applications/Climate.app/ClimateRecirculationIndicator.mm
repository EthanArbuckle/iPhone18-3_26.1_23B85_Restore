@interface ClimateRecirculationIndicator
- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)recirculationService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateRecirculationIndicator

- (void)recirculationService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_10003BDBC(serviceCopy, on);
}

- (void)recirculationService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  sub_10003C07C(serviceCopy, mode);
}

@end
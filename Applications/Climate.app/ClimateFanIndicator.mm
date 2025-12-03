@interface ClimateFanIndicator
- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode;
- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level;
- (void)fanService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateFanIndicator

- (void)fanService:(id)service didUpdateFanLevel:(unsigned __int8)level
{
  serviceCopy = service;
  selfCopy = self;
  sub_10007B468(serviceCopy, level);
}

- (void)fanService:(id)service didUpdateOn:(BOOL)on
{
  selfCopy = self;
  sub_10007AEE4();
}

- (void)fanService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  sub_10007B948(serviceCopy, mode);
}

@end
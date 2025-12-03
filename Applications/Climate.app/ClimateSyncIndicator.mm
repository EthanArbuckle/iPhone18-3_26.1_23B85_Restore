@interface ClimateSyncIndicator
- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on;
@end

@implementation ClimateSyncIndicator

- (void)zonesSyncedService:(id)service didUpdateOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_100098CB4(serviceCopy);
}

@end
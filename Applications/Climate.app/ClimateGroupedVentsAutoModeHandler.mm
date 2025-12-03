@interface ClimateGroupedVentsAutoModeHandler
- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode;
@end

@implementation ClimateGroupedVentsAutoModeHandler

- (void)ventService:(id)service didUpdateAutoMode:(BOOL)mode
{
  serviceCopy = service;
  selfCopy = self;
  sub_100037474(serviceCopy, mode);
}

@end
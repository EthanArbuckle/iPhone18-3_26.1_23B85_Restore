@interface ClimateCompressorIndicator
- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on;
@end

@implementation ClimateCompressorIndicator

- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_10005D080(serviceCopy, on);
}

@end
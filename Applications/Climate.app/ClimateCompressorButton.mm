@interface ClimateCompressorButton
- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
@end

@implementation ClimateCompressorButton

- (void)cabinService:(id)service didUpdateCompressorOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_100003390();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_100003458();
}

@end
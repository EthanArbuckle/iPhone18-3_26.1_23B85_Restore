@interface ClimateHVACButton
- (void)cabinService:(id)service didUpdateHvacOn:(BOOL)on;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
@end

@implementation ClimateHVACButton

- (void)cabinService:(id)service didUpdateHvacOn:(BOOL)on
{
  serviceCopy = service;
  selfCopy = self;
  sub_10005771C();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_100057284();
}

@end
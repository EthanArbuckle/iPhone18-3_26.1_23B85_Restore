@interface ClimateMaxACButton
- (void)cabinService:(id)service didUpdateMaxACOn:(BOOL)on;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
@end

@implementation ClimateMaxACButton

- (void)cabinService:(id)service didUpdateMaxACOn:(BOOL)on
{
  selfCopy = self;
  sub_1000C10C4();
  [(ClimateMaxACButton *)selfCopy setEnabled:sub_1000979E0() < 8];
  sub_100097B60();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_100097B60();
}

@end
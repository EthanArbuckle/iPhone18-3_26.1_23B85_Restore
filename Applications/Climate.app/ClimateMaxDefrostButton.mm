@interface ClimateMaxDefrostButton
- (void)cabinService:(id)service didUpdateMaxDefrostOn:(BOOL)on;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter;
@end

@implementation ClimateMaxDefrostButton

- (void)cabinService:(id)service didUpdateMaxDefrostOn:(BOOL)on
{
  selfCopy = self;
  sub_1000C10C4();
  [(ClimateMaxDefrostButton *)selfCopy setEnabled:sub_100004D14() < 8];
  sub_100004E94();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)filter
{
  selfCopy = self;
  sub_100004E94();
}

@end
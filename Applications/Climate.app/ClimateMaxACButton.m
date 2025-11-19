@interface ClimateMaxACButton
- (void)cabinService:(id)a3 didUpdateMaxACOn:(BOOL)a4;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
@end

@implementation ClimateMaxACButton

- (void)cabinService:(id)a3 didUpdateMaxACOn:(BOOL)a4
{
  v4 = self;
  sub_1000C10C4();
  [(ClimateMaxACButton *)v4 setEnabled:sub_1000979E0() < 8];
  sub_100097B60();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_100097B60();
}

@end
@interface ClimateMaxDefrostButton
- (void)cabinService:(id)a3 didUpdateMaxDefrostOn:(BOOL)a4;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
@end

@implementation ClimateMaxDefrostButton

- (void)cabinService:(id)a3 didUpdateMaxDefrostOn:(BOOL)a4
{
  v4 = self;
  sub_1000C10C4();
  [(ClimateMaxDefrostButton *)v4 setEnabled:sub_100004D14() < 8];
  sub_100004E94();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_100004E94();
}

@end
@interface ClimateHVACButton
- (void)cabinService:(id)a3 didUpdateHvacOn:(BOOL)a4;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
@end

@implementation ClimateHVACButton

- (void)cabinService:(id)a3 didUpdateHvacOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_10005771C();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_100057284();
}

@end
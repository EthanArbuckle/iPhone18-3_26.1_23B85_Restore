@interface ClimateCompressorButton
- (void)cabinService:(id)a3 didUpdateCompressorOn:(BOOL)a4;
- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3;
@end

@implementation ClimateCompressorButton

- (void)cabinService:(id)a3 didUpdateCompressorOn:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100003390();
}

- (void)didUpdateColorFilterPreferenceWithFilter:(int64_t)a3
{
  v3 = self;
  sub_100003458();
}

@end
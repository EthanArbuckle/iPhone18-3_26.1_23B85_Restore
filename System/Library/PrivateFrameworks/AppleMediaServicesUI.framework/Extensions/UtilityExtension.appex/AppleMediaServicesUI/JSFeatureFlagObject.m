@interface JSFeatureFlagObject
- (BOOL)isEnabled:(id)a3;
- (id)isEnabledBatch:(id)a3;
@end

@implementation JSFeatureFlagObject

- (BOOL)isEnabled:(id)a3
{
  sub_10004494C();
  v4 = self;
  v5 = sub_10001E840();

  return v5 & 1;
}

- (id)isEnabledBatch:(id)a3
{
  v4 = sub_100044A1C();
  v5 = self;
  sub_10001E8E4(v4);

  v6.super.isa = sub_100044A0C().super.isa;

  return v6.super.isa;
}

@end
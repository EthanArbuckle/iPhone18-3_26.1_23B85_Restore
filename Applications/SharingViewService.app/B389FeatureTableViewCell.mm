@interface B389FeatureTableViewCell
- (_TtC18SharingViewService24B389FeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation B389FeatureTableViewCell

- (_TtC18SharingViewService24B389FeatureTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_1000174C8(v4, v5);
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1000171C0();
}

@end
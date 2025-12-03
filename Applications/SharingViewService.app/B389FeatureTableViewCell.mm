@interface B389FeatureTableViewCell
- (_TtC18SharingViewService24B389FeatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation B389FeatureTableViewCell

- (_TtC18SharingViewService24B389FeatureTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  sub_1000171C0();
}

@end
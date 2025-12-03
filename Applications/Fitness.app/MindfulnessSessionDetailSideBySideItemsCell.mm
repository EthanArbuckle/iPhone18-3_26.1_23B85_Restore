@interface MindfulnessSessionDetailSideBySideItemsCell
- (_TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation MindfulnessSessionDetailSideBySideItemsCell

- (_TtC10FitnessApp43MindfulnessSessionDetailSideBySideItemsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1003F6458(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1003F72A0();
}

@end
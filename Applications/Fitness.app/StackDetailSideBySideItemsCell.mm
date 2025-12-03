@interface StackDetailSideBySideItemsCell
- (_TtC10FitnessApp30StackDetailSideBySideItemsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
@end

@implementation StackDetailSideBySideItemsCell

- (_TtC10FitnessApp30StackDetailSideBySideItemsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1002DD2E8(style, identifier, v6);
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1002DE28C();
}

@end
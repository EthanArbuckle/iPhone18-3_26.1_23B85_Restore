@interface AddToYourRingTableViewCell
- (_TtC10FitnessApp26AddToYourRingTableViewCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp26AddToYourRingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation AddToYourRingTableViewCell

- (_TtC10FitnessApp26AddToYourRingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1002DF964(style, identifier, v6);
}

- (_TtC10FitnessApp26AddToYourRingTableViewCell)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC10FitnessApp26AddToYourRingTableViewCell____lazy_storage___heightConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
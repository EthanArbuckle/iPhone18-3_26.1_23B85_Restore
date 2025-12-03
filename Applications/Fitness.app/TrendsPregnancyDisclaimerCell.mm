@interface TrendsPregnancyDisclaimerCell
- (_TtC10FitnessApp29TrendsPregnancyDisclaimerCell)initWithCoder:(id)coder;
- (_TtC10FitnessApp29TrendsPregnancyDisclaimerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TrendsPregnancyDisclaimerCell

- (_TtC10FitnessApp29TrendsPregnancyDisclaimerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10053CF94(style, identifier, v6);
}

- (_TtC10FitnessApp29TrendsPregnancyDisclaimerCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC10FitnessApp29TrendsPregnancyDisclaimerCell_textView;
  sub_1000059F8(0, &qword_1008E2D40);
  *(&self->super.super.super.super.isa + v4) = sub_100555C98();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
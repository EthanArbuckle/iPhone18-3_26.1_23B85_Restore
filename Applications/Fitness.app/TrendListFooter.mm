@interface TrendListFooter
- (_TtC10FitnessApp15TrendListFooter)initWithCoder:(id)a3;
- (_TtC10FitnessApp15TrendListFooter)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TrendListFooter

- (_TtC10FitnessApp15TrendListFooter)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1003B0F3C(a3, a4, v6);
}

- (_TtC10FitnessApp15TrendListFooter)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC10FitnessApp15TrendListFooter_textView;
  *(&self->super.super.super.super.isa + v3) = sub_1003B0754();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
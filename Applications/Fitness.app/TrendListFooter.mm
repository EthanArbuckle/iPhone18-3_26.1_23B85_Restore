@interface TrendListFooter
- (_TtC10FitnessApp15TrendListFooter)initWithCoder:(id)coder;
- (_TtC10FitnessApp15TrendListFooter)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TrendListFooter

- (_TtC10FitnessApp15TrendListFooter)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1003B0F3C(style, identifier, v6);
}

- (_TtC10FitnessApp15TrendListFooter)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC10FitnessApp15TrendListFooter_textView;
  *(&self->super.super.super.super.isa + v3) = sub_1003B0754();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
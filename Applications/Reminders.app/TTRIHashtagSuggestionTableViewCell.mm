@interface TTRIHashtagSuggestionTableViewCell
- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithCoder:(id)a3;
- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIHashtagSuggestionTableViewCell

- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10010C0B4(a3, a4, v6);
}

- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
@interface TTRIHashtagSuggestionTableViewCell
- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithCoder:(id)coder;
- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIHashtagSuggestionTableViewCell

- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10010C0B4(style, identifier, v6);
}

- (_TtC9Reminders34TTRIHashtagSuggestionTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
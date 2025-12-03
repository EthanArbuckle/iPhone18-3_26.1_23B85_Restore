@interface FMEmptyListButton
- (NSString)accessibilityLabel;
- (_TtC6FindMy17FMEmptyListButton)initWithCoder:(id)coder;
@end

@implementation FMEmptyListButton

- (_TtC6FindMy17FMEmptyListButton)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor;
  *(&self->super.super.super.super.super.isa + v4) = [objc_opt_self() systemBlueColor];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_10028383C();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
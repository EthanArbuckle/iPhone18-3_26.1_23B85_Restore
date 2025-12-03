@interface ScheduleDaysOfWeekCell
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithCoder:(id)coder;
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)dayButtonPressed:(id)pressed;
@end

@implementation ScheduleDaysOfWeekCell

- (void)dayButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_1000B7C04(pressedCopy);
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1000B82D4(style, identifier, v6);
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithCoder:(id)coder
{
  *&self->delegate[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
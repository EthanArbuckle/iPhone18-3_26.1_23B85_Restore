@interface ScheduleDaysOfWeekCell
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithCoder:(id)a3;
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)dayButtonPressed:(id)a3;
@end

@implementation ScheduleDaysOfWeekCell

- (void)dayButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B7C04(v4);
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1000B82D4(a3, a4, v6);
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell)initWithCoder:(id)a3
{
  *&self->delegate[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleDaysOfWeekCell_isEditable) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end
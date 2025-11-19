@interface ScheduleTimePickerCell
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell)initWithCoder:(id)a3;
- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)timeChanged;
@end

@implementation ScheduleTimePickerCell

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1000BBB24(v4, v5);
}

- (_TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell)initWithCoder:(id)a3
{
  v4 = type metadata accessor for Calendar.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&self->delegate[OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6FindMyP33_E1D0B8A6ADDE9504767060C8F9C7ED2F22ScheduleTimePickerCell_timePicker;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(UIDatePicker) init];
  (*(v5 + 104))(v7, enum case for Calendar.Identifier.gregorian(_:), v4);
  Calendar.init(identifier:)();
  (*(v5 + 8))(v7, v4);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)timeChanged
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_1000AA620(v3);
    swift_unknownObjectRelease();
  }
}

@end
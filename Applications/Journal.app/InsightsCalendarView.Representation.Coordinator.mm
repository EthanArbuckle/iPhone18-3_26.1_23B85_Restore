@interface InsightsCalendarView.Representation.Coordinator
- (BOOL)dateSelection:(id)selection canSelectDate:(id)date;
- (_TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator)init;
- (id)calendarView:(id)view decorationForDateComponents:(id)components;
- (void)calendarView:(id)view didChangeVisibleDateComponentsFrom:(id)from;
- (void)dateSelection:(id)selection didSelectDate:(id)date;
@end

@implementation InsightsCalendarView.Representation.Coordinator

- (id)calendarView:(id)view decorationForDateComponents:(id)components
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10022BCF8();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)dateSelection:(id)selection didSelectDate:(id)date
{
  v6 = type metadata accessor for InsightsCalendarView.Representation(0);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD9850);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v21 - v14;
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  if (date)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = type metadata accessor for DateComponents();
    (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  }

  else
  {
    v19 = type metadata accessor for DateComponents();
    (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  }

  v20 = OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent;
  swift_beginAccess();
  sub_10022BC1C(self + v20, v8, type metadata accessor for InsightsCalendarView.Representation);
  sub_1000082B4(v17, v15, &unk_100AD9850);
  sub_1000082B4(v15, v12, &unk_100AD9850);
  sub_1000F24EC(&unk_100AD97D0);
  Binding.wrappedValue.setter();
  sub_100004F84(v15, &unk_100AD9850);
  sub_10022C254(v8, type metadata accessor for InsightsCalendarView.Representation);
  sub_100004F84(v17, &unk_100AD9850);
}

- (BOOL)dateSelection:(id)selection canSelectDate:(id)date
{
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InsightsCalendarView.Representation(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  if (date)
  {
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = type metadata accessor for DateComponents();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = type metadata accessor for DateComponents();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  v18 = OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent;
  swift_beginAccess();
  sub_10022BC1C(self + v18, v12, type metadata accessor for InsightsCalendarView.Representation);
  selfCopy = self;
  sub_100228E20(v9);
  sub_10022C254(v12, type metadata accessor for InsightsCalendarView.Representation);
  v20 = sub_10088FE98(v15);

  (*(v7 + 8))(v9, v6);
  sub_100004F84(v15, &unk_100AD9850);
  return !v20;
}

- (void)calendarView:(id)view didChangeVisibleDateComponentsFrom:(id)from
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10022A98C(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
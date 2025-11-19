@interface TrendsDataProvider
- (_TtC10FitnessApp18TrendsDataProvider)init;
- (void)didReceiveNotificationWithNote:(id)a3;
- (void)wheelchairUseChangedWithNote:(id)a3;
@end

@implementation TrendsDataProvider

- (void)wheelchairUseChangedWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10028D75C();

  (*(v5 + 8))(v7, v4);
}

- (void)didReceiveNotificationWithNote:(id)a3
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (!a3)
  {
    v18 = type metadata accessor for Notification();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
    v19 = self;
LABEL_7:
    sub_10006CD84();
    goto LABEL_8;
  }

  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = type metadata accessor for Notification();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = qword_1008DA550;
  v14 = self;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Calendar();
  sub_10001AC90(v15, qword_100925018);
  v16 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_lastCalculatedDate;
  swift_beginAccess();
  (*(v6 + 16))(v8, v14 + v16, v5);
  v17 = Calendar.isDateInToday(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:

  sub_10000EA04(v11, &qword_1008E5718);
}

- (_TtC10FitnessApp18TrendsDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
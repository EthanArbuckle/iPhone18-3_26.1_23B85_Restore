@interface TrendsAvailabilityManager
+ (NSString)trendsAvailabilityDidChangeNotification;
- (_TtC10FitnessApp25TrendsAvailabilityManager)init;
- (void)activitySummaryDidChangeWithNote:(id)note;
- (void)updateWithNote:(id)note;
@end

@implementation TrendsAvailabilityManager

+ (NSString)trendsAvailabilityDidChangeNotification
{
  if (qword_1008DAD60 != -1)
  {
    swift_once();
  }

  v3 = qword_100925E00;

  return v3;
}

- (void)activitySummaryDidChangeWithNote:(id)note
{
  v5 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (note)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Notification();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_100545EF0(v7);

  sub_10000EA04(v7, &qword_1008E5718);
}

- (void)updateWithNote:(id)note
{
  v5 = sub_100140278(&qword_1008E5718);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (note)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Notification();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_10001FF10();

  sub_10000EA04(v7, &qword_1008E5718);
}

- (_TtC10FitnessApp25TrendsAvailabilityManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
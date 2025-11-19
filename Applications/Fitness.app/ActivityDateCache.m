@interface ActivityDateCache
- (NSCalendar)calendar;
- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4;
- (void)dealloc;
- (void)setCurrentDeviceDate:(id)a3;
- (void)setCurrentSelectedDate:(id)a3;
@end

@implementation ActivityDateCache

- (void)setCurrentDeviceDate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentDeviceDate);
  *(self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentDeviceDate) = a3;
  v3 = a3;
}

- (void)setCurrentSelectedDate:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentSelectedDate);
  *(self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_currentSelectedDate) = a3;
  v3 = a3;
}

- (NSCalendar)calendar
{
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_calendar, v3, v5);
  v8.super.isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC10FitnessApp17ActivityDateCache_dateCache);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ActivityDateCache();
  [(ActivityDateCache *)&v4 dealloc];
}

- (void)dateCacheDidUpdate:(id)a3 onNotification:(id)a4
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = Notification.name.getter();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_100248104();
LABEL_9:

  (*(v6 + 8))(v8, v5);
}

@end
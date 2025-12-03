@interface JSStoreMetricsObject
- (_TtC11AppStoreKit20JSStoreMetricsObject)init;
- (id)flushUnrecordedEvents;
- (id)recordEvent:(id)event :(id)a4;
@end

@implementation JSStoreMetricsObject

- (id)recordEvent:(id)event :(id)a4
{
  sub_1E175AD10();
  eventCopy = event;
  v8 = a4;
  selfCopy = self;
  v10 = sub_1E1AF6D4C();
  v11 = sub_1E1AF6D5C();

  return v11;
}

- (id)flushUnrecordedEvents
{
  sub_1E175AD10();
  selfCopy = self;
  v4 = sub_1E1AF6D4C();
  v5 = sub_1E1AF6D5C();

  return v5;
}

- (_TtC11AppStoreKit20JSStoreMetricsObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
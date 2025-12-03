@interface JSStoreMetricsObject
- (_TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject)init;
- (id)flushUnrecordedEvents;
- (id)recordEvent:(id)event :(id)a4;
@end

@implementation JSStoreMetricsObject

- (id)recordEvent:(id)event :(id)a4
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  eventCopy = event;
  v8 = a4;
  selfCopy = self;
  v10 = sub_2227396EC();
  v11 = sub_2227396FC();

  return v11;
}

- (id)flushUnrecordedEvents
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  selfCopy = self;
  v4 = sub_2227396EC();
  v5 = sub_2227396FC();

  return v5;
}

- (_TtC27AppStoreComponentsDaemonKit20JSStoreMetricsObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
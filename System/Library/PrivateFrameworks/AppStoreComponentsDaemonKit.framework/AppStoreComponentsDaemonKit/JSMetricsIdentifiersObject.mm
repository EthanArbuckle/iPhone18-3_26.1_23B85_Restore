@interface JSMetricsIdentifiersObject
- (NSString)currentTopic;
- (_TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject)init;
- (id)getIdentifierForContextSync:(id)a3;
@end

@implementation JSMetricsIdentifiersObject

- (NSString)currentTopic
{
  v2 = self;
  MetricsTopicProvider.currentMetricsTopic.getter();

  v3 = sub_22273916C();

  return v3;
}

- (id)getIdentifierForContextSync:(id)a3
{
  sub_22262E364(0, &qword_281312B48, 0x277CD4640);
  v5 = a3;
  v6 = self;
  v7 = sub_2227396EC();
  v8 = sub_2227396FC();

  return v8;
}

- (_TtC27AppStoreComponentsDaemonKit26JSMetricsIdentifiersObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface JSMetricsIdentifiersObject
- (NSString)currentTopic;
- (_TtC11AppStoreKit26JSMetricsIdentifiersObject)init;
- (id)getIdentifierForContext:(id)a3;
- (id)getIdentifierForContextSync:(id)a3;
- (id)getMetricsFieldsForContexts:(id)a3;
@end

@implementation JSMetricsIdentifiersObject

- (NSString)currentTopic
{
  MetricsTopicProvider.currentMetricsTopic.getter();
  v2 = sub_1E1AF5DBC();

  return v2;
}

- (id)getIdentifierForContext:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E15DA248(v4, "MetricIdentifierPromise", "MetricIdentifier", sub_1E15DBCDC);

  return v6;
}

- (id)getIdentifierForContextSync:(id)a3
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  v5 = a3;
  v6 = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)getMetricsFieldsForContexts:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1E15DA248(v4, "MetricFieldsPromise", "MetricFields", sub_1E15DBA64);

  return v6;
}

- (_TtC11AppStoreKit26JSMetricsIdentifiersObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
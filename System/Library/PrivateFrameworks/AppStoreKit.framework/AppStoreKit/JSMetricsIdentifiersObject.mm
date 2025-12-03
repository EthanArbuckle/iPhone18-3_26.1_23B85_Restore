@interface JSMetricsIdentifiersObject
- (NSString)currentTopic;
- (_TtC11AppStoreKit26JSMetricsIdentifiersObject)init;
- (id)getIdentifierForContext:(id)context;
- (id)getIdentifierForContextSync:(id)sync;
- (id)getMetricsFieldsForContexts:(id)contexts;
@end

@implementation JSMetricsIdentifiersObject

- (NSString)currentTopic
{
  MetricsTopicProvider.currentMetricsTopic.getter();
  v2 = sub_1E1AF5DBC();

  return v2;
}

- (id)getIdentifierForContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  v6 = sub_1E15DA248(contextCopy, "MetricIdentifierPromise", "MetricIdentifier", sub_1E15DBCDC);

  return v6;
}

- (id)getIdentifierForContextSync:(id)sync
{
  sub_1E13006E4(0, &qword_1EE1E2DB8);
  syncCopy = sync;
  selfCopy = self;
  v7 = sub_1E1AF6D4C();
  v8 = sub_1E1AF6D5C();

  return v8;
}

- (id)getMetricsFieldsForContexts:(id)contexts
{
  contextsCopy = contexts;
  selfCopy = self;
  v6 = sub_1E15DA248(contextsCopy, "MetricFieldsPromise", "MetricFields", sub_1E15DBA64);

  return v6;
}

- (_TtC11AppStoreKit26JSMetricsIdentifiersObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
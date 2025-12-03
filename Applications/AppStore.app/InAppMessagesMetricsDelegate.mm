@interface InAppMessagesMetricsDelegate
- (_TtC8AppStore28InAppMessagesMetricsDelegate)init;
- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties;
@end

@implementation InAppMessagesMetricsDelegate

- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties
{
  v20 = type metadata accessor for MetricsFieldsContext();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &eventCopy - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &eventCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MetricsData();
  v13 = *(v19 - 8);
  __chkstk_darwin(v19);
  v15 = &eventCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  eventCopy = event;
  selfCopy = self;

  MetricsData.init(fields:includingFields:excludingFields:shouldFlush:)();
  v17 = OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline;
  swift_beginAccess();
  (*(v10 + 16))(v12, selfCopy + v17, v9);
  static MetricsFieldsContext.emptyContext.getter();
  MetricsPipeline.process(_:using:)();

  (*(v6 + 8))(v8, v20);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v19);
}

- (_TtC8AppStore28InAppMessagesMetricsDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
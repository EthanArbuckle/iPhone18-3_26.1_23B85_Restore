@interface InAppMessagesMetricsDelegate
- (_TtC8AppStore28InAppMessagesMetricsDelegate)init;
- (void)messageDidReportMetricsEvent:(id)a3 eventProperties:(id)a4;
@end

@implementation InAppMessagesMetricsDelegate

- (void)messageDidReportMetricsEvent:(id)a3 eventProperties:(id)a4
{
  v20 = type metadata accessor for MetricsFieldsContext();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricsPipeline();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MetricsData();
  v13 = *(v19 - 8);
  __chkstk_darwin(v19);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = a3;
  v16 = self;

  MetricsData.init(fields:includingFields:excludingFields:shouldFlush:)();
  v17 = OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline;
  swift_beginAccess();
  (*(v10 + 16))(v12, v16 + v17, v9);
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
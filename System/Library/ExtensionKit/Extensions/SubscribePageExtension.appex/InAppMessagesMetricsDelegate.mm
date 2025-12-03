@interface InAppMessagesMetricsDelegate
- (_TtC22SubscribePageExtension28InAppMessagesMetricsDelegate)init;
- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties;
@end

@implementation InAppMessagesMetricsDelegate

- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties
{
  selfCopy = self;
  v20 = sub_100752B34();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007527A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007524D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100752F44();
  eventCopy = event;
  v16 = selfCopy;

  sub_1007524C4();
  (*(v9 + 16))(v11, v16 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesMetricsDelegate_metricsPipeline, v8);
  sub_100752B14();
  sub_100752794();

  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

- (_TtC22SubscribePageExtension28InAppMessagesMetricsDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
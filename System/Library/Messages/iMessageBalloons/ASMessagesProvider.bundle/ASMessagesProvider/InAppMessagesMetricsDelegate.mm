@interface InAppMessagesMetricsDelegate
- (_TtC18ASMessagesProvider28InAppMessagesMetricsDelegate)init;
- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties;
@end

@implementation InAppMessagesMetricsDelegate

- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties
{
  selfCopy = self;
  v20 = sub_768CD0();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768940();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_768670();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7690F0();
  eventCopy = event;
  v16 = selfCopy;

  sub_768660();
  (*(v9 + 16))(v11, v16 + OBJC_IVAR____TtC18ASMessagesProvider28InAppMessagesMetricsDelegate_metricsPipeline, v8);
  sub_768CB0();
  sub_768930();

  (*(v5 + 8))(v7, v20);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

- (_TtC18ASMessagesProvider28InAppMessagesMetricsDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
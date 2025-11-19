@interface MetricsBridge
+ (id)metricsFieldsFromResult:(id)a3;
+ (void)enqueueAppInstallationEventsWithEvents:(id)a3;
+ (void)metricsFieldsFrom:(NSURLSessionTask *)a3 taskMetrics:(NSURLSessionTaskMetrics *)a4 error:(NSError *)a5 session:(NSURLSession *)a6 bag:(AMSBagProtocol *)a7 completionHandler:(id)a8;
- (_TtC9appstored13MetricsBridge)init;
@end

@implementation MetricsBridge

+ (void)enqueueAppInstallationEventsWithEvents:(id)a3
{
  type metadata accessor for AppInstallationEvent();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100143830(v3);
}

+ (id)metricsFieldsFromResult:(id)a3
{
  v3 = a3;
  v4 = sub_1001440A4(v3);

  if (v4)
  {
    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

+ (void)metricsFieldsFrom:(NSURLSessionTask *)a3 taskMetrics:(NSURLSessionTaskMetrics *)a4 error:(NSError *)a5 session:(NSURLSession *)a6 bag:(AMSBagProtocol *)a7 completionHandler:(id)a8
{
  v15 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(a8);
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = v18;
  v19[8] = a1;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1004377B0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1004366D0;
  v22[5] = v21;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  swift_unknownObjectRetain();
  sub_1001BD9B4(0, 0, v17, &unk_1004344E0, v22);
}

- (_TtC9appstored13MetricsBridge)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MetricsBridge();
  return [(MetricsBridge *)&v3 init];
}

@end
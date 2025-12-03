@interface MetricsBridge
+ (id)metricsFieldsFromResult:(id)result;
+ (void)enqueueAppInstallationEventsWithEvents:(id)events;
+ (void)metricsFieldsFrom:(NSURLSessionTask *)from taskMetrics:(NSURLSessionTaskMetrics *)metrics error:(NSError *)error session:(NSURLSession *)session bag:(AMSBagProtocol *)bag completionHandler:(id)handler;
- (_TtC9appstored13MetricsBridge)init;
@end

@implementation MetricsBridge

+ (void)enqueueAppInstallationEventsWithEvents:(id)events
{
  type metadata accessor for AppInstallationEvent();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100143830(v3);
}

+ (id)metricsFieldsFromResult:(id)result
{
  resultCopy = result;
  v4 = sub_1001440A4(resultCopy);

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

+ (void)metricsFieldsFrom:(NSURLSessionTask *)from taskMetrics:(NSURLSessionTaskMetrics *)metrics error:(NSError *)error session:(NSURLSession *)session bag:(AMSBagProtocol *)bag completionHandler:(id)handler
{
  v15 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = from;
  v19[3] = metrics;
  v19[4] = error;
  v19[5] = session;
  v19[6] = bag;
  v19[7] = v18;
  v19[8] = self;
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
  fromCopy = from;
  metricsCopy = metrics;
  errorCopy = error;
  sessionCopy = session;
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
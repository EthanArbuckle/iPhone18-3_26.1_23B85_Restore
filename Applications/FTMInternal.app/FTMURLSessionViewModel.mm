@interface FTMURLSessionViewModel
- (_TtC11FTMInternal22FTMURLSessionViewModel)init;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
@end

@implementation FTMURLSessionViewModel

- (_TtC11FTMInternal22FTMURLSessionViewModel)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_cancellable) = 0;
  v3 = OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_operationQueue;
  *(&self->super.isa + v3) = [objc_allocWithZone(NSOperationQueue) init];
  *(&self->super.isa + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_sessionArray) = _swiftEmptyArrayStorage;
  *(&self->super.isa + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_downloadTask) = 0;
  v4 = self + OBJC_IVAR____TtC11FTMInternal22FTMURLSessionViewModel_didSessionStart;
  v5 = type metadata accessor for FTMURLSessionViewModel();
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v7.receiver = self;
  v7.super_class = v5;
  return [(FTMURLSessionViewModel *)&v7 init];
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10026B3E8();
  (*(v6 + 8))(v9, v5);
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10026B530(sub_10026A568, &unk_1003212E0);
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10026B530(nullsub_1, &unk_1003212B8);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_10026B530(nullsub_1, &unk_100321290);
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  sessionCopy = session;
  taskCopy = task;
  metricsCopy = metrics;
  selfCopy = self;
  sub_10026B530(nullsub_1, &unk_100321268);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_10026B7BC(taskCopy, error);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_10026BD50();
}

@end
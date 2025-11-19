@interface FTMURLSessionViewModel
- (_TtC11FTMInternal22FTMURLSessionViewModel)init;
- (void)URLSession:(id)a3 didCreateTask:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
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

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
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

- (void)URLSession:(id)a3 didCreateTask:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10026B530(sub_10026A568, &unk_1003212E0);
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10026B530(nullsub_1, &unk_1003212B8);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10026B530(nullsub_1, &unk_100321290);
}

- (void)URLSession:(id)a3 task:(id)a4 didFinishCollectingMetrics:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_10026B530(nullsub_1, &unk_100321268);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10026B7BC(v9, a5);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10026BD50();
}

@end
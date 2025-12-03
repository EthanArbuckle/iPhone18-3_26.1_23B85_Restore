@interface AssetsDownloader
- (_TtC8Podcasts16AssetsDownloader)init;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
@end

@implementation AssetsDownloader

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_1003763C4();
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_100376790(taskCopy, error);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_100377420(taskCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_100378028(taskCopy, written, write);
}

- (_TtC8Podcasts16AssetsDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface AssetsDownloader
- (_TtC8Podcasts16AssetsDownloader)init;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
@end

@implementation AssetsDownloader

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003763C4();
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_100376790(v9, a5);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_100377420(v13, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = self;
  sub_100378028(v12, a6, a7);
}

- (_TtC8Podcasts16AssetsDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface FairPlayAssetsDownloader
- (_TtC8Podcasts24FairPlayAssetsDownloader)init;
- (void)URLSession:(id)session assetDownloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
@end

@implementation FairPlayAssetsDownloader

- (_TtC8Podcasts24FairPlayAssetsDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  uRLAsset = [taskCopy URLAsset];
  sub_100286E40(uRLAsset, v11, sessionCopy, taskCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)URLSession:(id)session assetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load
{
  var3 = load->var1.var3;
  v15[0] = load->var0.var0;
  v15[1] = *&load->var0.var1;
  v16 = *&load->var0.var3;
  v17 = *&load->var1.var1;
  v18 = var3;
  sub_100009F1C(0, &qword_100579C90);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  sub_1002616C8(taskCopy, v11, v15);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  selfCopy = self;
  errorCopy = error;
  sub_10025B6DC(sessionCopy, taskCopy, error);
}

@end
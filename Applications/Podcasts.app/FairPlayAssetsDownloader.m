@interface FairPlayAssetsDownloader
- (_TtC8Podcasts24FairPlayAssetsDownloader)init;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
@end

@implementation FairPlayAssetsDownloader

- (_TtC8Podcasts24FairPlayAssetsDownloader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = [v13 URLAsset];
  sub_100286E40(v15, v11, v12, v13);

  (*(v9 + 8))(v11, v8);
}

- (void)URLSession:(id)a3 assetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7
{
  var3 = a7->var1.var3;
  v15[0] = a7->var0.var0;
  v15[1] = *&a7->var0.var1;
  v16 = *&a7->var0.var3;
  v17 = *&a7->var1.var1;
  v18 = var3;
  sub_100009F1C(0, &qword_100579C90);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1002616C8(v13, v11, v15);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_10025B6DC(v8, v9, a5);
}

@end
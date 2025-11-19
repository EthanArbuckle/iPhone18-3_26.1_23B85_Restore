@interface ObjectCaptureThumbnailProvider
- (_TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider)init;
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation ObjectCaptureThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_10000AE6C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
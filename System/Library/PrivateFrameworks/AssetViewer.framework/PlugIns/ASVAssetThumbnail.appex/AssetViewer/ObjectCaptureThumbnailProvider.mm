@interface ObjectCaptureThumbnailProvider
- (_TtC17ASVAssetThumbnail30ObjectCaptureThumbnailProvider)init;
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation ObjectCaptureThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  requestCopy = request;
  selfCopy = self;
  sub_10000AE6C(requestCopy, selfCopy, v6);
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
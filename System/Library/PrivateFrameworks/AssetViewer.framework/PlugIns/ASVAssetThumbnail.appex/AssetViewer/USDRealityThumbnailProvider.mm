@interface USDRealityThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation USDRealityThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  v7 = sub_10000BE6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  requestCopy = request;
  selfCopy = self;
  fileURL = [requestCopy fileURL];
  sub_10000BE3C();

  sub_100001F64(v10, requestCopy, sub_1000068F0, v12);

  (*(v8 + 8))(v10, v7);
}

@end
@interface USDRealityThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation USDRealityThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v7 = sub_10000BE6C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = self;
  v15 = [v13 fileURL];
  sub_10000BE3C();

  sub_100001F64(v10, v13, sub_1000068F0, v12);

  (*(v8 + 8))(v10, v7);
}

@end
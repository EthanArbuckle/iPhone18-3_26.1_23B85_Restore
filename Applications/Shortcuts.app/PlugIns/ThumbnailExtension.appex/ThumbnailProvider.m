@interface ThumbnailProvider
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation ThumbnailProvider

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_100001360(v8, sub_100001888, v7);
}

@end
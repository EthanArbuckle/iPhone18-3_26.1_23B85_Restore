@interface NSURL
- (BOOL)bk_isStreamingAssetURL;
@end

@implementation NSURL

- (BOOL)bk_isStreamingAssetURL
{
  v2 = [(NSURL *)self pathExtension];
  v3 = [v2 bk_isPlaylistExtension];

  return v3;
}

@end
@interface NSURL
- (BOOL)bk_isStreamingAssetURL;
@end

@implementation NSURL

- (BOOL)bk_isStreamingAssetURL
{
  pathExtension = [(NSURL *)self pathExtension];
  bk_isPlaylistExtension = [pathExtension bk_isPlaylistExtension];

  return bk_isPlaylistExtension;
}

@end
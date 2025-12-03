@interface MPCPlayerPath
- (BOOL)isSystemPodcastsPath;
@end

@implementation MPCPlayerPath

- (BOOL)isSystemPodcastsPath
{
  bundleID = [(MPCPlayerPath *)self bundleID];
  if ([(MPCPlayerPath *)self mediaRemotePlayerPath])
  {
    [(MPCPlayerPath *)self mediaRemotePlayerPath];
    MRNowPlayingPlayerPathGetClient();
    v4 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
    if ([v4 count])
    {
      lastObject = [v4 lastObject];

      bundleID = lastObject;
    }
  }

  v6 = [bundleID isEqualToString:@"com.apple.podcasts"];

  return v6;
}

@end
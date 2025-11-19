@interface MPCPlayerPath
- (BOOL)isSystemPodcastsPath;
@end

@implementation MPCPlayerPath

- (BOOL)isSystemPodcastsPath
{
  v3 = [(MPCPlayerPath *)self bundleID];
  if ([(MPCPlayerPath *)self mediaRemotePlayerPath])
  {
    [(MPCPlayerPath *)self mediaRemotePlayerPath];
    MRNowPlayingPlayerPathGetClient();
    v4 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
    if ([v4 count])
    {
      v5 = [v4 lastObject];

      v3 = v5;
    }
  }

  v6 = [v3 isEqualToString:@"com.apple.podcasts"];

  return v6;
}

@end
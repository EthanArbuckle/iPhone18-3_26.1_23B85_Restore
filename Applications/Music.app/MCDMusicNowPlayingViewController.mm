@interface MCDMusicNowPlayingViewController
+ (id)musicNowPlayingViewController;
@end

@implementation MCDMusicNowPlayingViewController

+ (id)musicNowPlayingViewController
{
  v2 = [MCDNowPlayingViewController alloc];
  v3 = MCDMusicBundleIdentifier;
  v4 = [v2 initWithBundleID:MCDMusicBundleIdentifier appName:0];
  v5 = [MCDNowPlayingContentManager alloc];
  v6 = objc_opt_new();
  v7 = [(MCDNowPlayingContentManager *)v5 initWithDelegate:v4 dataSource:v6 bundleID:v3];

  [v4 setContentManager:v7];
  v8 = [MCDUpNextViewController alloc];
  contentManager = [v4 contentManager];
  playerResponse = [v4 playerResponse];
  tracklist = [playerResponse tracklist];
  v12 = [(MCDUpNextViewController *)v8 initWithContentManager:contentManager tracklist:tracklist];
  [v4 setPlaybackQueueViewController:v12];

  [v4 setPlayActivityFeatureName:@"now_playing"];

  return v4;
}

@end
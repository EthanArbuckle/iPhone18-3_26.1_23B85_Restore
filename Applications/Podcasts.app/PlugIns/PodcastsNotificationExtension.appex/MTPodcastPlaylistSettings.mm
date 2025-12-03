@interface MTPodcastPlaylistSettings
- (void)setNeedsUpdate:(BOOL)update;
@end

@implementation MTPodcastPlaylistSettings

- (void)setNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  playlist = [(MTPodcastPlaylistSettings *)self playlist];
  needsUpdate = [playlist needsUpdate];

  flags = [(MTPodcastPlaylistSettings *)self flags];
  if (((((flags & 2) == 0) ^ updateCopy) & 1) == 0)
  {
    v8 = updateCopy | needsUpdate;
    v9 = 2;
    if (!updateCopy)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:flags & 0xFFFFFFFFFFFFFFFDLL | v9];
    playlist2 = [(MTPodcastPlaylistSettings *)self playlist];
    [playlist2 setNeedsUpdate:v8 & 1];

    playlistIfDefault = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    needsUpdate2 = [playlistIfDefault needsUpdate];

    playlistIfDefault2 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [playlistIfDefault2 setNeedsUpdate:(updateCopy | needsUpdate2) & 1];
  }
}

@end
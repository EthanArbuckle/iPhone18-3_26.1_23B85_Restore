@interface MTPodcastPlaylistSettings
- (void)setNeedsUpdate:(BOOL)a3;
@end

@implementation MTPodcastPlaylistSettings

- (void)setNeedsUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcastPlaylistSettings *)self playlist];
  v6 = [v5 needsUpdate];

  v7 = [(MTPodcastPlaylistSettings *)self flags];
  if (((((v7 & 2) == 0) ^ v3) & 1) == 0)
  {
    v8 = v3 | v6;
    v9 = 2;
    if (!v3)
    {
      v9 = 0;
    }

    [(MTPodcastPlaylistSettings *)self setFlags:v7 & 0xFFFFFFFFFFFFFFFDLL | v9];
    v10 = [(MTPodcastPlaylistSettings *)self playlist];
    [v10 setNeedsUpdate:v8 & 1];

    v11 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    v12 = [v11 needsUpdate];

    v13 = [(MTPodcastPlaylistSettings *)self playlistIfDefault];
    [v13 setNeedsUpdate:(v3 | v12) & 1];
  }
}

@end
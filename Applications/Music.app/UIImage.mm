@interface UIImage
+ (id)playlistPlaceholderForPlaylist:(id)playlist;
+ (id)playlistPlaceholderForPlaylistType:(int64_t)type;
@end

@implementation UIImage

+ (id)playlistPlaceholderForPlaylistType:(int64_t)type
{
  if (type == 1)
  {
    smartPlaylistPlaceholder = [self smartPlaylistPlaceholder];
  }

  else if (type == 3)
  {
    smartPlaylistPlaceholder = [self playlistFolderPlaceholder];
  }

  else
  {
    if (type == 2)
    {
      [self geniusPlaylistPlaceholder];
    }

    else
    {
      [self playlistPlaceholder];
    }
    smartPlaylistPlaceholder = ;
  }

  return smartPlaylistPlaceholder;
}

+ (id)playlistPlaceholderForPlaylist:(id)playlist
{
  playlistCopy = playlist;
  if ([playlistCopy hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    type = [playlistCopy type];
  }

  else
  {
    type = 0;
  }

  v6 = [self playlistPlaceholderForPlaylistType:type];

  return v6;
}

@end
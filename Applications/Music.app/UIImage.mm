@interface UIImage
+ (id)playlistPlaceholderForPlaylist:(id)a3;
+ (id)playlistPlaceholderForPlaylistType:(int64_t)a3;
@end

@implementation UIImage

+ (id)playlistPlaceholderForPlaylistType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [a1 smartPlaylistPlaceholder];
  }

  else if (a3 == 3)
  {
    v3 = [a1 playlistFolderPlaceholder];
  }

  else
  {
    if (a3 == 2)
    {
      [a1 geniusPlaylistPlaceholder];
    }

    else
    {
      [a1 playlistPlaceholder];
    }
    v3 = ;
  }

  return v3;
}

+ (id)playlistPlaceholderForPlaylist:(id)a3
{
  v4 = a3;
  if ([v4 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v5 = [v4 type];
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 playlistPlaceholderForPlaylistType:v5];

  return v6;
}

@end
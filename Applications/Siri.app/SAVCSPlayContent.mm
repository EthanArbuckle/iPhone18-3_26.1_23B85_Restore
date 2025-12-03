@interface SAVCSPlayContent
- (id)_sr_playerForHighResolutionPlayback:(BOOL)playback;
@end

@implementation SAVCSPlayContent

- (id)_sr_playerForHighResolutionPlayback:(BOOL)playback
{
  playbackCopy = playback;
  if ([(SAVCSPlayContent *)self playTrailer])
  {
    if (playbackCopy)
    {
      [(SAVCSPlayContent *)self hiresTrailerUri];
    }

    else
    {
      [(SAVCSPlayContent *)self lowresTrailerUri];
    }
    v6 = ;
    if (v6)
    {
      v5 = [[AVPlayer alloc] initWithURL:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
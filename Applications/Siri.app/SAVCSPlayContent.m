@interface SAVCSPlayContent
- (id)_sr_playerForHighResolutionPlayback:(BOOL)a3;
@end

@implementation SAVCSPlayContent

- (id)_sr_playerForHighResolutionPlayback:(BOOL)a3
{
  v3 = a3;
  if ([(SAVCSPlayContent *)self playTrailer])
  {
    if (v3)
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
@interface DemoPlayerView
- (AVPlayer)player;
- (void)setPlayer:(id)a3;
@end

@implementation DemoPlayerView

- (AVPlayer)player
{
  v2 = [(DemoPlayerView *)self layer];
  v3 = [v2 player];

  return v3;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v5 = [(DemoPlayerView *)self layer];
  [v5 setPlayer:v4];
}

@end
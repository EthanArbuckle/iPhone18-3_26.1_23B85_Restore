@interface DemoPlayerView
- (AVPlayer)player;
- (void)setPlayer:(id)player;
@end

@implementation DemoPlayerView

- (AVPlayer)player
{
  layer = [(DemoPlayerView *)self layer];
  player = [layer player];

  return player;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  layer = [(DemoPlayerView *)self layer];
  [layer setPlayer:playerCopy];
}

@end
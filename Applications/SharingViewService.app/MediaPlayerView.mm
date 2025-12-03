@interface MediaPlayerView
+ (Class)layerClass;
- (AVPlayer)player;
- (void)setPlayer:(id)player;
@end

@implementation MediaPlayerView

- (AVPlayer)player
{
  selfCopy = self;
  layer = [(MediaPlayerView *)selfCopy layer];
  objc_opt_self();
  player = [swift_dynamicCastObjCClassUnconditional() player];

  return player;
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  selfCopy = self;
  layer = [(MediaPlayerView *)selfCopy layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer:playerCopy];
}

+ (Class)layerClass
{
  sub_1000122EC(0, &qword_1001BAA40);

  return swift_getObjCClassFromMetadata();
}

@end
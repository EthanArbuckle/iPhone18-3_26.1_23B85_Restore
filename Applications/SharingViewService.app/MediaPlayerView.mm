@interface MediaPlayerView
+ (Class)layerClass;
- (AVPlayer)player;
- (void)setPlayer:(id)a3;
@end

@implementation MediaPlayerView

- (AVPlayer)player
{
  v2 = self;
  v3 = [(MediaPlayerView *)v2 layer];
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() player];

  return v4;
}

- (void)setPlayer:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [(MediaPlayerView *)v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setPlayer:v4];
}

+ (Class)layerClass
{
  sub_1000122EC(0, &qword_1001BAA40);

  return swift_getObjCClassFromMetadata();
}

@end
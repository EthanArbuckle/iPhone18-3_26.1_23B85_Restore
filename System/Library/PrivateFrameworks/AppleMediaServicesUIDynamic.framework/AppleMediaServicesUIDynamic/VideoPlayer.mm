@interface VideoPlayer
- (_TtC27AppleMediaServicesUIDynamic11VideoPlayer)initWithURL:(id)a3;
- (void)pause;
- (void)play;
@end

@implementation VideoPlayer

- (void)play
{
  v2 = self;
  VideoPlayer.play()();
}

- (void)pause
{
  v2 = self;
  VideoPlayer.pause()();
}

- (_TtC27AppleMediaServicesUIDynamic11VideoPlayer)initWithURL:(id)a3
{
  v3 = sub_1CA19ADF8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1CA19ADA8();
  VideoPlayer.init(url:)();
}

@end
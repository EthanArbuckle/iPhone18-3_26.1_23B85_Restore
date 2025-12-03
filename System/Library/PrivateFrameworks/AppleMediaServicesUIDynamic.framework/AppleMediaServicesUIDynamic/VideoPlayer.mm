@interface VideoPlayer
- (_TtC27AppleMediaServicesUIDynamic11VideoPlayer)initWithURL:(id)l;
- (void)pause;
- (void)play;
@end

@implementation VideoPlayer

- (void)play
{
  selfCopy = self;
  VideoPlayer.play()();
}

- (void)pause
{
  selfCopy = self;
  VideoPlayer.pause()();
}

- (_TtC27AppleMediaServicesUIDynamic11VideoPlayer)initWithURL:(id)l
{
  v3 = sub_1CA19ADF8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1CA19ADA8();
  VideoPlayer.init(url:)();
}

@end
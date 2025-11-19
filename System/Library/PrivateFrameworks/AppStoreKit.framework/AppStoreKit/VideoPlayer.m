@interface VideoPlayer
- (_TtC11AppStoreKit11VideoPlayer)init;
- (_TtC11AppStoreKit11VideoPlayer)initWithPlayerItem:(id)a3;
- (_TtC11AppStoreKit11VideoPlayer)initWithURL:(id)a3;
- (void)pause;
- (void)play;
@end

@implementation VideoPlayer

- (void)play
{
  v2 = self;
  sub_1E13FA4B0();
}

- (void)pause
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for VideoPlayer();
  v2 = v4.receiver;
  [(VideoPlayer *)&v4 pause];
  v3 = OBJC_IVAR____TtC11AppStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v2[v3] = 0;
}

- (_TtC11AppStoreKit11VideoPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11AppStoreKit11VideoPlayer)initWithURL:(id)a3
{
  v3 = sub_1E1AEFCCC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E1AEFC5C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11AppStoreKit11VideoPlayer)initWithPlayerItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end